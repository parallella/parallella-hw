# Parallella Boards

This section contains all PCB-related info, including schematics, pcb layouts, and libraries.
FPGA pin constraints are also included for each board with an FPGA.

## Projects

```
archive              - Old boards, for reference
paracard-template    - KiCad template for Parallella Daughtercards
parallella-I         - Current Parallella
parallella-porcupine - Connector breakout board for Parallella
```

## Templates

To install the paracard-template onto your system, copy the entire directory to your KiCad
template directory, keeping the name the same.  KiCad will pick this up the next time it is
started.  On my Linux system it's under _~/kicad/template/_.  Or for the more adventurous,
drop it into the the system templates: Windows PC directory _C:\Program Files\KiCad\share\template_,
or on Linux under _/usr/local/share/kicad/template_, although
the application seemed to be looking for it under _/usr/local/share/template_ and I haven't
found where to change that path.  In the meantime I added a link from where it's looking 
to where it is.

If you don't want to do that, you can simply open the project where it sits, and save it to
another project as you like.  In any case you may have to re-set the library paths for your system.

## Libraries

I recommend the [kicadlibrarian utility](http://www.compuphase.com/electronics/kicadlibrarian_en.htm)
to help managing the libraries.  I was not able to get the package from Slavco's repository to install on my Ubuntu 13.10 x86-64 laptop, but it built easily from source.

## Notes about 3D models

I found [this guide](http://happyrobotlabs.com/posts/tutorials/tutorial-3d-kicad-parts-using-openscad-and-wings3d/)
helpful.

It recommends creating the models in [OpenSCAD](http://www.openscad.org/), which is 
a great 3D scripting language.  It's easy to see how models can be parameterized to re-use 
one source for many similar parts.  There is a [user manual here](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual).

Note that OpenSCAD claims their units are millimiters, but by the time the model got to 
KiCad it came out off by a factor of 0.3937, apparently Wings3D uses units of 0.1", bizarre. 
This is easily repaired either in the source model by doing a final translation to units of 0.1" 
(as I've done with conn_samtec_bth_60), or in KiCad's model editor.  The model is rendered 
and exported as STL, too bad OpenSCAD doesn't speak VRML which is a very similar script-like 
format that looks quite similar to OpenSCAD's.

The STL model then needs to be translated to binary (apparently) or it won't import into 
Wings3D, which is done with [meshconv from here](http://www.cs.princeton.edu/~min/meshconv/).
The tool also claims to be removing a pile of duplicate faces, not sure if Wings was having
trouble with that or just the ascii-binary issue.

```
meshconv -c stl model.stl -o model.conv.stl
```

And finally [Wings3D](http://www.wings3d.com/) is used to convert the STL model to VRML and 
optionally add color to the model.

