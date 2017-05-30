union () {
	linear_extrude(height = 2, center = false, convexity = 0, $fn=50)
		import (file = "./tapa.dxf", layer = "tapa-alzado");
	linear_extrude(height = 5, center = false, convexity = 0, $fn=50)
		import (file = "./tapa.dxf", layer = "tapa-soportes-pcb");
}

