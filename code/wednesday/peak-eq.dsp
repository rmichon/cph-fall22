import("stdfaust.lib");

N = 10;

peakEqualizer = seq(i,N,hgroup("main",myPeakEq(i)))
with{
    myPeakEq(j) = fi.peak_eq(level,ctFreq,BW)
    with{
        level = vslider("v:band%j/[2]level",0,-90,20,0.01);
        ctFreq = vslider("v:band%j/[0]freq[style:knob]",50+j*1000,50,20000,0.01);
        BW = vslider("v:band%j/[1]BW[style:knob]",100,20,1000,0.01);

    };
};

process = peakEqualizer;
