//  OpenSCAD model for adding shrouds to pin headers
//  5/30/14 By F. Huettig, Adapteva, Inc.
//  Free for any use, no warrantees.

/*  2mm 2x15
width = 32.65;  // mm
depth = 6.3;
cutout_wid = 2.4;
cutout_depth = 4.7-0.86;
i_wid = 30.85;  // width/depth of 'digout'
i_depth = 4.5;
height = 4.7;
innerheight = 0.86;  // Not sure about this one
altitude = 1.7;
*/

// 2mm 2x7
width = 16.65;  // mm
depth = 6.3;
cutout_wid = 2.4;
cutout_depth = 4.7-0.86;
i_wid = 14.85;  // width/depth of 'digout'
i_depth = 4.5;
height = 4.7;
innerheight = 0.86;  // Not sure about this one
altitude = 1.7;


// derived
xctr = width/2;
yctr = depth/2;
i_left = xctr - (i_wid/2);
i_bot  = yctr - (i_depth/2);
c_left = xctr - (cutout_wid/2);
c_bot  = height - cutout_depth;

// virtecies of poly's
outer = [
[0, depth],
[width, depth],
[width, 0],
[0, 0]
];

inner = [
[i_left, i_bot],
[i_left, depth-i_bot],
[width-i_left, depth-i_bot],
[width-i_left, i_bot]
];

cutout = [
[c_left, yctr-depth],
[c_left, yctr],
[c_left+cutout_wid, yctr],
[c_left+cutout_wid, yctr-depth]
];

scale(10 / 25.4)  // Wings3D will assume units of 1/10" (??)
	translate([-xctr, -yctr, altitude]) {
		difference() {
			linear_extrude(height, false)
				polygon(outer);

			translate([0, 0, innerheight])
				linear_extrude(height, false)  // intentionally higher than needed?
					polygon(inner);

			translate([0, 0, c_bot])
				linear_extrude(height, false)
					polygon(cutout);
		}
	}
