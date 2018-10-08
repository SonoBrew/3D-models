// Making a container for the HC-sr04
$fn=100;

thickness=2;
width=45;
height=20;
sonic_r=8;

padding=2;

difference(){
    cube([width+padding,height+padding,thickness], center=true);

    union(){
        translate([13.5,0,-thickness/2]) cylinder(h=thickness,r=sonic_r+padding/2);
        translate([-13.5,0,-thickness/2]) cylinder(h=thickness,r=sonic_r+padding/2);
    }
}
