import("stdfaust.lib");

onePole(a1) = _*(1-a1) : A~B 
with{
    A = +;
    B = _*a1;
};

f = hslider("freq",200,50,1000,30) : onePole(0.999);
g = hslider("gain",1,0,1,0.01) : onePole(0.999);

process = os.osc(f)*g ; 
