include <roundedcube.scad>
$fn=80;

reika=11;
vinous=10;
siirto=-2;

module kokopaska() {

  difference() {
    difference() {
      union() {
	translate([0,siirto,0])
	  difference() {
	  sphere(d=49+4);
	  sphere(d=49);
	  translate([0,0,33])cube(60,true);

	}
	rotate([vinous,0,0])
	  difference() {
	  cylinder(d=18,h=55,center=true);
	  translate([0,0,24])cube(60,true);
	}
	translate([0,3,-16])
	  rotate([90+14,0,0])
	  difference() {
	  cylinder(d=14,h=55,center=true);
	  translate([0,0,24])cube(60,true);
	}
	translate([0,0,-14])rotate([93,0,0]) cylinder( d=10,h=26);
      }
      rotate([vinous,0,0])   cylinder(d=reika,h=60,center=true,$fn=10);
      translate([0,3,-11.5])
	rotate([90+vinous,0,0])
	translate([0,-2,-15])  cylinder(d=6,h=30,center=true);
    }
    translate([0,siirto,0])
      difference() {
      sphere(d=77);
      sphere(d=53);
    }
  }
}


module pallo() {
  difference(){
    union() {
      kokopaska();
      translate([0,siirto,0])
	translate([-7,-15,-30])
	roundedcube([14,30,10],radius=2);
    }
    translate([0,siirto,0])
      translate([0,0,-30]) cylinder(d=6,h=10);
    translate([0,siirto,0])
      translate([0,5,-23]) cylinder(d=10,h=5);
    translate([0,siirto,0])
      translate([0,27,-9.6]) rotate([100,0,0]) cylinder(d=10,h=10);
  }
}


module kahva() {
difference(){
translate([0,55,1])roundedcube([20,150,10],radius=3,center=true);
translate([0,0,-37])      sphere(d=72);
translate([0,0,-1])	roundedcube([14,30,10],radius=2,center=true);
 translate([0,0,0]) cylinder(d=5,h=10);
 }
}

module kaikki() {
  difference(){
    union()  {
      kahva();
      color("RED")translate([0,0,-26])rotate([180,0,0]) pallo();
    }
    //    translate([0,0,-20]) cube(100);
  }
}

kaikki();

//kahva();

/*
difference(){
pallo();
translate([0,0,-30]) cube(100);
}
*/

//pallo();

kaikki();
