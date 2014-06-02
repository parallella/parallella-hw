//  OpenSCAD model of the Samtec BTH-030-01 connector (body only)
//  5/30/14 By F. Huettig, Adapteva, Inc.
//  Free for any use, no warrantees.

width = 20;  // mm
depth = 5.969;
chamfer = 1.5;
i_wid = 16.89;  // width/depth of 'cutout'
i_depth = 3.937;
height = 4.064;
innerheight = 1.5;  // Not sure about this one

// derived
xctr = width/2;
yctr = depth/2;
i_left = xctr - (i_wid/2);
i_bot  = yctr - (i_depth/2);

// vertecies of poly's
outer = [
[0, depth],
[width, depth],
[width, chamfer],
[width-chamfer, 0],
[chamfer, 0],
[0, chamfer]
];

inner = [
[i_left, i_bot],
[i_left, depth-i_bot],
[width-i_left, depth-i_bot],
[width-i_left, i_bot]
];

scale(10 / 25.4)   // Wings3D will assume units of 1/10" (??)
	translate([-xctr, -yctr, 0])
		difference() {
		linear_extrude(height, false)
			polygon(outer);

		translate([0, 0, innerheight])
			linear_extrude(height, false)  // intentionally higher than needed?
				polygon(inner);
		}

