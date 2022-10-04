import("stdfaust.lib");

echo(d,f) = A~B
with{
    dSamp = d*ma.SR;
    A = +;
    B = de.delay(ma.SR,dSamp)*f;
};

process = echo(0.1,0.5) ; 

