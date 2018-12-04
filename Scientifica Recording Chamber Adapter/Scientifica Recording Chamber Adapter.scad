union(){
    //base
    difference(){
        cylinder(h=2,r=32.5,$fn=180);//base cylinder
        translate([-21,-12,1]) cube([42,24,1],centre=true);//outer slot for perfusion chamber
        translate([-19,-10,0]) cube([38,20,1],centre=true);//inner slot for perfusion chamber
        
        translate([10,20,0]) cylinder(h=2,r=2,$fn=90);//screw hole
        translate([10,-20,0]) cylinder(h=2,r=2,$fn=90);//screw hole
    }
    //upper ring
    difference(){
        translate([0,0,2]) cylinder(h=5,r=50,$fn=180);//outer cylinder
        translate([0,0,2]) cylinder(h=5,r=30,$fn=180);//inner cylinder to be subtracted
        
        translate([10,40,2]) cylinder(h=3,r=4,$fn=90);//magnet hole
        translate([-10,40,2]) cylinder(h=3,r=4,$fn=90);//magnet hole
        translate([0,-40,2]) cylinder(h=3,r=4,$fn=90);//magnet hole
        translate([40,0,2]) cylinder(h=3,r=4,$fn=90);//magnet hole
        translate([-40,0,2]) cylinder(h=3,r=4,$fn=90);//magnet hole
   
        translate([-25,0,5.5]) rotate([0,-90,0]) cylinder(h=25,r=0.63,$fn=90);//aCSF inlet hole           
    }
    difference(){
        translate([13,-45,7]) cube([6,15,4],centre=true); //vacuum outlet block
        translate([16,-30,9]) rotate([90,0,0]) cylinder(h=15,r=0.63,$fn=90);//vacuum outlet hole
    }
    
     
};

//
////Tube holders
//
//// to shift the holders to the basefor easier printing, make the translate
//// in line 38 to [0,0,0]
////To not print the holders altogether, comment out everything that follows.
//
translate([0,-20,7]){
//translate([0,0,0]){
    difference(){
        union(){
            difference(){
                translate([10,60,2]) cylinder(h=20,r=5,$fn=90);//pillar1
                translate([10,30,-1]) rotate([-60,0,0]) cylinder(h=60,r=0.63,$fn=90,centre=true);//hole in pillar1
            }
            difference(){
                translate([-10,60,2]) cylinder(h=20,r=5,$fn=90);//pillar2
                translate([-10,30,-1]) rotate([-60,0,0]) cylinder(h=60,r=0.63,$fn=90,centre=true);//hole in pillar2
            }
            
            translate([-15,55,0]) cube([30,10,2]);//base of the pillars
        };
        
        translate([10,60,0]) cylinder(h=3,r=4,$fn=90);//magnet hole
        translate([-10,60,0]) cylinder(h=3,r=4,$fn=90);//magnet hole
    }
}
