// Hardware Metrics

hwBoltDiameter = 4 / 2;		
hwNutDiameter = 10.5 / 2;
hwWasherDiamter = 11.2 / 2;

hwTubeOutsideDiameter = 19.1;
hwTubeInsideDiameter = 15.5;
hwTubeThickness = (hwTubeOutsideDiameter - hwTubeInsideDiameter) / 2;

// Design Metrics

kWallThickness = 2.5;		// thickness of shell walls
kInnerStub = 10;				// how far the projection goes inside the tube
kOuterStub = 25;				// how far the projection goes outside the tube
kBeadCompensation = 0.5 / 2; // nozzle size divided in half


hSize = kWallThickness + hwTubeOutsideDiameter + hwTubeThickness;

// create inner stub

difference() {
	// inner support block
	translate([kWallThickness + hwTubeThickness, 0, 0])
		cube([hwTubeInsideDiameter,kInnerStub,hwTubeInsideDiameter]);	
	// bolt hole
	translate([0, 4.3, 7.6]) {
		rotate(a=[0,90,0]){
			cylinder(h = hSize * 2, r = hwBoltDiameter + kBeadCompensation, center = true, $fn = 16);
		}
	}
}


difference() {
	difference() {	// outer shell
	// sketchup polygon design, converted to messy math points
translate([2.4,kOuterStub,0])
rotate([90,-90,0])
linear_extrude(height = kOuterStub + kWallThickness)
polygon( points = [[0,0],[0,3],[1.7,3.3],[3.7,3.6],[5.6,3.8],[7.6,3.8],[9.6,3.8],[11.5,3.6],[13.5,3.3],[15.4, 2.9],[17.3,2.4],[19.2,1.8],
[19.8,-0.01],[20.3,-1.9],[19.2+1.5,-3.5],[19.2 + 1.8, -5.8],[19.2 + 1.9, -7.7],[19.2 + 2, -9.6],[19.2 + 1.9, -11.7],[19.2 + 1.8, -13.6],[19.2 + 1.5, - 15.5],[19.2 + 1.1, - 17.5],[19.2 + 0.6, -19.3], [19.2, -21.2],
[17.3, -21.2 - 0.6] ,[15.4, -21.2 - 1.1] ,[13.5, -21.2 - 1.5] ,[11.5,  -21.2 - 1.8] ,[9.6, -21.2 - 1.9] ,[7.6, -21.2 - 2] ,[5.6, -21.2 - 1.9] ,[3.7,  -21.2 -1.8] ,[1.7, -21.2 - 1.5] ,[0,  -21.2 - 1.1],
[0, 0]] );
		//cube([kWallThickness + hwTubeOutsideDiameter + kWallThickness, kInnerStub, hwTubeOutsideDiameter]);
		translate([kWallThickness, 0,-1])
			cube([hwTubeOutsideDiameter, kOuterStub, hwTubeOutsideDiameter - kWallThickness +1]);
		}
	// bolt hole
	translate([hwTubeOutsideDiameter /2 + kWallThickness, 4.3, 7.6]) rotate(a=[0,90,0])
		cylinder(h = (kWallThickness + hwTubeOutsideDiameter + kWallThickness + 5) , r = hwBoltDiameter + kBeadCompensation, center = true, $fn = 16);	
	// washer inset
	translate([hwTubeOutsideDiameter + kWallThickness +4.4, 4.3, 7.6]) rotate(a=[0,90,0])
		cylinder(h = (kWallThickness *2) , r = hwWasherDiamter + kBeadCompensation, center = true, $fn = 16);	
	// nut inset
	translate([-0.7, 4.3, 7.6]) rotate(a=[0,90,0])
		cylinder(h = (kWallThickness) , r = hwWasherDiamter + kBeadCompensation, center = true, $fn = 6);		
}


// test polygon



