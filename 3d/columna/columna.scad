difference() {
	linear_extrude(height = 8.5, center = false, convexity = 0)
		import (file = "columna.dxf", layer = "columna");

	union() {
		translate([0,0,-.5])
		linear_extrude(height = 10, center = false, convexity = 0)
			import (file = "columna.dxf", layer = "rebaje-perfil-izq");

		translate([0,0,6])
			linear_extrude(height = 3, center = false, convexity = 0)
				import (file = "columna.dxf", layer = "rebaje-planta");

		color("Red")
		translate([0,0,2])
			linear_extrude(height = 6.5, center = false, convexity = 10, $fn=20)
				import (file = "columna.dxf", layer = "columnas-planta-taladros");

		color("Blue")
		rotate([0,90,0])
			translate([-(4.5+2),0,0])
				linear_extrude(height = 6.5, center = false, convexity = 0, $fn=20)
					import (file = "columna.dxf", layer = "columnas-perfil-izq-taladros");

		translate([0,0,7.5])
			linear_extrude(height = 2, center = false, convexity = 0)
				import (file = "columna.dxf", layer = "columna-orientación");

	}
}