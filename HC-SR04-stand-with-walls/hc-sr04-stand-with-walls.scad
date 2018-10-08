// HC-sr04 stand with walls
$fn=100;

module hc_sr04(thickness=2,padding=2){
    width=50;
    height=20;
    sonic_r=8;
    support_width=15;
    
    union(){
        rotate([90,0,0]) translate([0,(height+padding)/2,0]) {
            difference(){
                cube([width+padding,height+padding,thickness], center=true);

                union(){
                    translate([13.5,0,-thickness/2]) cylinder(h=thickness,r=sonic_r+padding/2);
                    translate([-13.5,0,-thickness/2]) cylinder(h=thickness,r=sonic_r+padding/2);
                    translate([0,height/2-3,0]) cube([9,4,thickness], center=true);
                    translate([4,height/2-3,0]) cylinder(r=2,h=thickness, center=true);
                    translate([-4,height/2-3,0]) cylinder(r=2,h=thickness, center=true);
                    
                    down=0.5;
                    translate([0,height/2-3,-thickness+down]) cube([9,4.5,thickness], center=true);
                    translate([4.5,height/2-3,-thickness+down]) cylinder(r=2.25,h=thickness, center=true);
                    translate([-4.5,height/2-3,-thickness+down]) cylinder(r=2.25,h=thickness, center=true);
                    
                    translate([0,-height/2+2,-thickness/4]) cube([9,4,thickness], center=true);
                }
            }
        }
        translate([-thickness/2-(width+padding)/2,-thickness/2,0]) cube([thickness,support_width,height+padding]);
        translate([-thickness/2+(width+padding)/2,-thickness/2,0]) cube([thickness,support_width,height+padding]);
    }
    
}

rotate([90,0,0]) hc_sr04();