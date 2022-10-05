import("stdfaust.lib");

freq = hslider("freq",400,50,2000,0.01);
gain = hslider("gain",1,0,1,0.01);
gate = checkbox("gate");
s = nentry("select",0,0,2,1);

synth2 = par(i,3,generator(i)*((s == i) : si.smoo)) :> _*gate*gain
with{
    //generator(0) = os.osc(freq);
    //generator(1) = os.sawtooth(freq);
    //generator(2) = os.triangle(freq);
    generator(n) = ba.take(n+1,(os.osc(freq),os.sawtooth(freq),os.triangle(freq)));
};

synth = os.osc(freq)*(s == 0),os.sawtooth(freq)*(s == 1),os.triangle(freq)*(s == 2) :> _*gate*gain;

process = synth2

