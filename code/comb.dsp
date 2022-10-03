import("stdfaust.lib");

comb(del,b1) = _ <: _,_@del*b1 :> _;

zero = hslider("zero",1,-1,1,0.01);
d = hslider("delay",1,0,300,1);

process = no.noise : comb(d,zero);
