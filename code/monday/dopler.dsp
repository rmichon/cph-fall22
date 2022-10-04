import("stdfaust.lib");

delay(dSec) = de.delay(ma.SR,d)
with{
    d = dSec*ma.SR;
};

dopler(freq,ind) = delay(LFO*ind)
with{
    LFO = os.osc(freq)*0.5 + 0.5;
};

f = hslider("freq",1,0.001,5,0.001);
i = hslider("index",1,0,1,0.01);

process = dopler(f,i); 
