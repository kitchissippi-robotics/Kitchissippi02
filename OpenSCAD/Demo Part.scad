// Hardware Metrics

hwBoltDiameter = 4 / 2;		
hwNutDiameter = 10.5 / 2;
hwWasherDiamter = 11.2 / 2;

hwTubeOutsideDiameter = 19.1;
hwTubeInsideDiameter = 15.5;
hwTubeThickness = (hwTubeOutsideDiameter - hwTubeInsideDiameter) / 2;

// Design Metrics

kWallThickness = 2.5;	// thickness of shell walls
kInnerStub = 20;		// how far the projection goes inside the tube



hSize = kWallThickness + hwTubeOutsideDiameter + hwTubeThickness;

// create inner stub

difference() {
	// inner support block
	translate([kWallThickness + hwTubeThickness, 0, 0])
		cube([hwTubeInsideDiameter,kInnerStub,hwTubeInsideDiameter]);	
	// bolt hole
	translate([0, 4.3, 7.6]) {
		rotate(a=[0,90,0]){
			cylinder(h = hSize * 2, r = hwBoltDiameter, center = true);
		}
	}
}


difference() {
	difference() {	// outer shell
	
		cube([kWallThickness + hwTubeOutsideDiameter + kWallThickness, kInnerStub, hwTubeOutsideDiameter]);
		translate([kWallThickness, 0,0])
			cube([hwTubeOutsideDiameter, kInnerStub, hwTubeOutsideDiameter - kWallThickness]);
		}
	// bolt hole
color([0,0,1])
	translate([hwTubeOutsideDiameter /2 + kWallThickness, 4.3, 7.6]) rotate(a=[0,90,0])
		cylinder(h = (kWallThickness + hwTubeOutsideDiameter + kWallThickness ) , r = hwBoltDiameter, center = true);			
}


