import("stdfaust.lib");

oneZero(b1) = _ <: _,_'*b1 :> _;

zero = hslider("zero",1,-1,1,0.01);

process = no.noise : oneZero(zero);
