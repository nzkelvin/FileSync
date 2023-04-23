difference () {
	translate(v = [-43.2,191.7,0]) { 
		linear_extrude(file = "starflake-nodes.dxf", height = 1.5, center = false, convexity = 10, twist = 0);
	}
	difference () {
		cylinder(h = 3, r1 = 500, r2 = 500, center = false);
		cylinder(h = 4, r1 = 50, r2 = 50, center = false);
	}
}