// Illumination stage for dark-field configuration
// Created by Sanli Faez 11/10/2020
// Last version 20/10/2022
// Physics of Light in Complex Systems (LINX)
// Utrecht University

// Design number 2.4
// Adopted for Olympus 10x Objective

echo(version=version());

sw = 22; //slide width
sl = 40; // slide length

module counterscrew(){
    union(){
        translate([0,-sw/2-5,-3.5]) cube([10,14,5], center=true); //counter press arm
        translate([0,-sw/2-6,-3]) cylinder(10,d=4.5, $fn = 80, center=true); //fastening screw hole
    }
}

module holder(){
    union(){
    translate([sl/2,-4,0]) cube([4,sw+26,4], center=true); //side frame 
    translate([-sl/2,-4,0]) cube([4,sw+24,4], center=true); //side frame 
    translate([0,sw/2+9,0]) cube([sl+18,8,4], center=true); //side frame 
    for(i = [1:4]){ //mounting holes
        difference(){ 
            rotate([0,0,i*90]) translate([25,25,-2]) cylinder(4, d=10, $fn = 40, center=false); 
            rotate([0,0,i*90]) translate([25,25,-2]) cylinder(4, d=3.8, $fn = 16, center=false);}}
       }
    }


difference(){
    union(){
        translate([0,0,-7.5]) difference(){cube([120,100,6], center=true);  union(){
            translate([15,15,-5]) cylinder(h=4.5, d=2.5, $fn=80);
            rotate([0,0,90]) translate([15,15,-5]) cylinder(h=4.5, d=2.5, $fn=80); 
            rotate([0,0,180]) translate([15,15,-5]) cylinder(h=4.5, d=2.5, $fn=80); 
            rotate([0,0,270]) translate([15,15,-5]) cylinder(h=4.5, d=2.5, $fn=80);
            }}; //base        
        
        translate([-8,-49,-39]) cube([16,29,34]); //handle CHANGE 2
        translate([-48,-18,-37]) cube([6,36,30]); //reflection side holder
        difference(){
            rotate([0,110,0]) translate([5,0,72]) cube([50,41,70], center=true); //laser holder
            translate([53,-30,-4.6]) cube([20,55,10]);
            rotate([0,110,0]) translate([18,0,78]) cube([27,15,80], center=true); //laser holder
            rotate([0,110,0]) translate([22,0,90]) rotate([90,0,0]) cylinder(h=60, d=4.5, $fn = 20, center=true); //fastening screw
            rotate([0,110,0]) translate([22,0,70]) rotate([90,0,0]) cylinder(h=60, d=4.5, $fn = 20, center=true); //fastening screw
            translate([14,-21,-53]) cube([22,42,40]);
            translate([40,0,10]) cube([30,50,30], center = true);
        }
        //for(i = [1:4]){ //placement points
        //    rotate([0,0,i*90]) translate([15,15,-10.8]) difference(){
        //        cylinder(h=3, d=5.8, $fn=80); 
         //       cylinder(h=3, d=2.50, $fn=80);  
          //  }
       // }
    }
    rotate([0,110,0]) cylinder(h=80, d=10, $fn = 20); // illumination path, tube holder
    translate([-50,8.6,-18.5]) cube([10,5,6]); // left spacing for screwdriver
    translate([-50,-13.6,-18.5]) cube([10,5,6]); // right spacing for screwdriver
    rotate([0,110,0]) translate([0,0,50]) cylinder(h=60, d=31.3, $fn = 160); // illumination path
    rotate([0,-110,0]) cylinder(h=80, d=10, $fn = 20); //reflection path
    cylinder(h=80, d=26, center = true, $fn = 40);    // imaging axis
    translate([0,0,5]) cube([200,60,12], center=true); //flattening cut
    translate([-10,-38,-40.5]) cube([25,19,30]); //handle holder CHANGE 3
    translate([0,-60,-26.2]) rotate([-90,0,0]) cylinder(h=40, d=6.8, $fn = 40); // handle holder CHANGE 1
    //translate([12.5,30,-48.5]) rotate([-90,0,0]) cylinder(h=40, d=6.5, $fn = 40); // handle holder
    translate([0,0,-19])rotate([0,-90,0])for(i = [1:4]){ //reflection side holes
                rotate([0,0,i*90]) translate([15,15,40]) cylinder(15, d=3.8, $fn = 20, center=false); 
        }
    translate([-40,-20,-8]) cube([6,40,10]); //reflection side holder
    translate([0,0,0]) counterscrew();
    //for(i = [1:4]){ //mounting holes
    //    rotate([0,0,i*90]) translate([50,50,-20]) cylinder(20, d//=3.8, $fn = 20, center=false); 
    //    rotate([0,0,i*90]) translate([50,50,-14.1]) cylinder(3, //d=7.4, $fn = 6, center=false); 
    //    }
    //
        
    rotate([0,0,90]) translate([45,55,-20]) cylinder(20, d=3.8, $fn = 20, center=false); 
    rotate([0,0,90]) translate([45,55,-11.5]) cylinder(3, d=7.4, $fn = 6, center=false); 
        
    rotate([0,0,2*90]) translate([55,45,-11.5]) cylinder(3, d=7.4, $fn = 6, center=false); 
    rotate([0,0,2*90]) translate([55,45,-20]) cylinder(20, d=3.8, $fn = 20, center=false); 
    
    rotate([0,0,270]) translate([45,55,-11.5]) cylinder(3, d=7.4, $fn = 6, center=false); 
    rotate([0,0,270]) translate([45,55,-20]) cylinder(20, d=3.8, $fn = 20, center=false); 
    
    rotate([0,0,360]) translate([55,45,-11.5]) cylinder(3, d=7.4, $fn = 6, center=false); 
    rotate([0,0,360]) translate([55,45,-20]) cylinder(20, d=3.8, $fn = 20, center=false); 

    }  