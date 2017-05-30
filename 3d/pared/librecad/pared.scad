linear_extrude(height = 2, center = false, convexity = 10, $fn=50)
   import (file = "pared.dxf", layer = "pared-alzado");

for ( y_position = [2, 92.5] ) {
	translate([42,y_position,0])
		difference() {
			cube([16,5.5,7], center=false);

			translate([8,3.5,3.5])
			rotate([90,0,0])
				cylinder(10, 1.25, 1.25, true, $fn=50);
		}
}
