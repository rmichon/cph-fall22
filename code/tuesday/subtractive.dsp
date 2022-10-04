import("stdfaust.lib");

f = hslider("h:main/v:[1]midi/freq",200,50,1000,0.01);
g = hslider("h:main/v:[1]midi/gain",1,0,1,0.01);
t = button("h:main/v:[1]midi/gate");

att = hslider("h:main/h:[0]params/att[style:knob]",0.1,0.001,1,0.001);
ct = hslider("h:main/h:[0]params/cuttof[style:knob]",4000,100,10000,0.01);

synth = os.sawtooth(f)*envelope : fi.resonlp(ctf,8,0.5)
with{
    envelope = en.adsr(att,0,1,0.1,t)*g;
    ctf = envelope*ct + 300;
};

process = synth ; 

