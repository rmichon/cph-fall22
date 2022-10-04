import("stdfaust.lib");

sawtooth(freq) = (A~B)*2 - 1
with{
    delta = freq/ma.SR;
    A = _;
    B = (_+delta) : ma.frac;
};

freq = hslider("freq",100,50,2000,0.01);

process = os.sawtooth(freq);

