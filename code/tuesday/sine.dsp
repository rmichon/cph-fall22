import("stdfaust.lib");

phasor(freq) = (A~B)
with{
    delta = freq/ma.SR;
    A = _;
    B = (_+delta) : ma.frac;
};

freq = hslider("freq",440,50,2000,0.01);

sine(freq) = phasor(freq)*2*ma.PI : sin;

process = sine(freq);
