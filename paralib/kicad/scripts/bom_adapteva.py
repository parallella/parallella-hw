#
# Python script to generate a BOM from a KiCad generic netlist
#
# Standard for Adapteva Schematics
#
#   Required attributes: Manufacturer, MFRPN, Description (in DCM file)

from __future__ import print_function

# Import the KiCad python helper module and the csv formatter
import kicad_netlist_reader
import csv
import sys

if len(sys.argv) != 3 and len(sys.argv) != 4:
    print("Usage ", __file__, "<generic_netlist.xml> <output.csv> [all|coll|each]", file=sys.stderr)
    sys.exit(1)

type = "coll"
if len(sys.argv) == 4:
    type = sys.argv[3]

def myEqu(self, other):
    """myEqu is a more advanced equivalence function for components which is
    used by component grouping. Normal operation is to group components based
    on their Value, Library source, and Library part.

    Here we also compare the custom fields Manufacturer, Mfr P/N, and "DNI"
    as well as the assigned footprint. If these fields are not used in some
    parts they will simply be ignored (they will match as both will be empty
    strings).

    """
    result = True
    if self.getValue() != other.getValue():
        result = False
    elif self.getLibName() != other.getLibName():
        result = False
    elif self.getPartName() != other.getPartName():
        result = False
    elif self.getFootprint() != other.getFootprint():
        result = False
    elif self.getField("Manufacturer") != other.getField("Manufacturer"):
        result = False
    elif self.getField("MFRPN") != other.getField("MFRPN"):
        result = False
    elif self.getField("DNI") != other.getField("DNI"):
        result = False
    return result

# Override the component equivalence operator - it is important to do this
# before loading the netlist, otherwise all components will have the original
# equivalency operator.  NOTE this is "eq" not "equ"!
kicad_netlist_reader.comp.__eq__ = myEqu

# Generate an instance of a generic netlist, and load the netlist tree from
# the command line option. If the file doesn't exist, execution will stop
net = kicad_netlist_reader.netlist(sys.argv[1])

# Open a file to write to, if the file cannot be opened report error
try:
    f = open(sys.argv[2], 'w')
except IOError:
    print(__file__, ":", e, file=sys.stderr)
    sys.exit(2)

# subset the components to those wanted in the BOM, controlled
# by blacklists

kicad_netlist_reader.excluded_references = [
    'TP[0-9]+',
    'MH[0-9]+',
    'FID[0-9]+'
    ]

components = net.getInterestingComponents()

compfields = net.gatherComponentFieldUnion(components)
partfields = net.gatherLibPartFieldUnion()

columnset = compfields | partfields     # union

# remove Reference, Value, Datasheet, and Footprint, they will come from 'columns' below
columnset -= set( ['Reference', 'Value', 'Footprint', 'Manufacturer', 'MFRPN', 'DNI'] )

# prepend an initial 'hard coded' list and put the enchilada into list 'columns'
columns = ['Item', 'Qty', 'Reference(s)', 'DNI', 'MFRPN', 'Description', 'Manufacturer', 
    'Lib', 'Part Name', 'Footprint', 'Datasheet'] + sorted(list(columnset))

# Create a new csv writer object to use as the output formatter
out = csv.writer(f, lineterminator='\n', delimiter=',', quotechar='\"', quoting=csv.QUOTE_MINIMAL)

# override csv.writer's writerow() to support utf8 encoding:
def writerow( acsvwriter, columns ):
    utf8row = []
    for col in columns:
        utf8row.append( str(col).encode('utf8') )
    acsvwriter.writerow( utf8row )

# Output a set of rows as a header providing general information
writerow( out, ['Source:', net.getSource()] )
writerow( out, ['Date:', net.getDate()] )
writerow( out, ['Tool:', net.getTool()] )
writerow( out, ['Component Count:', len(components)] )
writerow( out, [] )

if type == "all" or type == "each":

    print( "Generating per-item list..." )
    writerow( out, ['Individual Components:'] )
    writerow( out, [] )                        # blank line
    writerow( out, columns )

    # Output all the interesting components individually first:
    row = []
    for c in components:
        del row[:]
        row.append('')                                      # item is blank in individual table
        row.append('')                                      # Qty is always 1, why print it
        row.append( c.getRef() )                            # Reference
        row.append( c.getField("DNI") )                     # DNI
        row.append( c.getField("MFRPN") )                   # Mfr's Part #
        row.append( c.getDescription() )
        row.append( c.getField("Manufacturer") )
        row.append( c.getLibName() )
        row.append( c.getPartName() )
        row.append( c.getFootprint() )
        row.append( c.getDocs() )

        # from column 11 upwards, use the fieldnames to grab the data
        for field in columns[11:]:
            row.append( c.getField( field ) );

        writerow( out, row )

    writerow( out, [] )                        # blank line
    writerow( out, [] )                        # blank line
    writerow( out, [] )                        # blank line

if type == "all" or type == "coll":

    print( 'Generating collated list...' )
    writerow( out, ['Collated Components:'] )
    writerow( out, [] )                        # blank line
    writerow( out, columns )                   # reuse same columns

    # Get all of the components in groups of matching parts + values
    # (see kicad_netlist_reader.py)
    grouped = net.groupComponents(components)

    # Output component information organized by group, aka as collated:
    item = 0
    row = []
    for group in grouped:
        del row[:]
        refs = ""

        # Add the reference of every component in the group and keep a reference
        # to the component so that the other data can be filled in once per group
        for component in group:
            if len(refs) > 0:
                refs += ","
            refs += component.getRef()
            c = component

        # Fill in the component groups common data
        # columns = ['Item', 'Qty', 'Reference(s)', 'DNI', 'MFRPN', 'Description', 'Manufacturer', 
        #              'Lib', 'Part Name', 'Footprint', 'Datasheet'] + sorted(list(columnset))

        item += 1
        row.append( item )
        row.append( len(group) )
        row.append( refs );
        row.append( c.getField("DNI") )                     # DNI
        row.append( c.getField("MFRPN") )                   # Mfr's Part #
        row.append( c.getDescription() )
        row.append( c.getField("Manufacturer") )
        row.append( c.getLibName() )
        row.append( c.getPartName() )
        row.append( c.getFootprint() )
        row.append( c.getDocs() )

        # from column 11 upwards, use the fieldnames to grab the data
        for field in columns[11:]:
            row.append( net.getGroupField(group, field) );

        writerow( out,  row  )

f.close()

