//
// ktCLOCK2
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 2;




R1 = 33+0.5;
RR = 11;




difference()
{
    rotate([45, 0, 0]) union()
    {
        cover();
        //base();
    }
    translate([-100/2, -100/2, -100+15]) cube([100, 100, 100]);
}





module cover()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(r=(R1+2)/2, h=50, $fn=100);
    }
    
    translate([-(22-RR)/2, -(20-RR)/2, 0+gap1])
    minkowski()
    {
        cube([22-RR, 20-RR, 50-1]);
        cylinder(r=RR/2, h=1, $fn=100);
    }
        
        
    //translate([-22/2, -14/2, 0+gap1]) cube([22, 14, 10]);
    //translate([-15.5/2, -20/2, 0+gap1]) cube([15.5, 20, 10]);
    translate([0, 0, -1]) cylinder(r=R1/2, h=50, $fn=100);
   
}
}

module base()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(r=(R1-0.5)/2, h=50-8.5, $fn=100);
    }
}
}





/*R = 10;
R2 = 7;
R3 = 7.5;
T = 10;



cover();
translate([0, 100, 0])
top();
translate([0, 200, 0])
base();

module cover()
{
difference()
{
    union()
    {
        translate([-(87.5+th*2-R)/2, -(40-R)/2, 0])
        minkowski()
        {
            cube([87.5+th*2-R, 40-R, 16.5+th+10-1]);
            cylinder(r=R/2, h=1, $fn=100);
        }
    }
   
    translate([-(29)/2, (34-1.5)/2-gap1, -gap1]) cube([29, 1.5, 12]);
    translate([-(87.5)/2, -(34+1.5)/2, -gap1]) cube([87.5, 34, 16.5]);
    hull()
    {
        translate([-(87.5)/2+(87.5-60)/2, -(34+1.5)/2+8.5, 16.5-gap2]) cube([60, 19, 1]);
        translate([-(87.5+th*2-R2-th*2)/2, -(40-R2-th*2)/2, 16.5+th+10-1+1+gap1])
        minkowski()
        {
            cube([87.5+th*2-R2-th*2, 40-R2-th*2, 0.1]);
            cylinder(r=R2/2, h=1, $fn=100);
        }
    }
    translate([-(19)/2, -(34)/2-5-gap1, -gap1]) cube([19, 5.5, 2]);

   
}
}


module top()
{
difference()
{
    union()
    {
        hull()
        {
        translate([-(38)/2, -(20)/2+7, 20]) cube([38, 20, 0.1]);
        translate([0, 0, 0]) cylinder(r=(R3+1)/2, h=0.1, $fn=100);
        }
    }
    translate([0, -R3/2, 0]) rotate([-T, 0, 0]) translate([0, R3/2, 0]) cylinder(r=R3/2, h=30, $fn=100);
}
translate([-(15)/2, -(15)/2+7, 20+0.1+-2]) cube([15, 15, 2]);
}


module base()
{
difference()
{
    union()
    {
        translate([0, 0, -6]) rotate([-T, 0, 0]) cylinder(r1=70/2, r2=0/2, h=30, $fn=100);
    }
    translate([0, 0, -6]) rotate([-T, 0, 0]) cylinder(r=R3/2, h=30, $fn=100);
    
    translate([-(100)/2, -(100)/2, -100]) cube([200, 200, 100]);
}
translate([-10/2, -10/2, 0]) cube([10, 10, 2]);
}
*/