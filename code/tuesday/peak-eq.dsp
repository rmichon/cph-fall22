import("stdfaust.lib");

N = 10;

peakEqualizer = seq(i,N,hgroup("main",myPeakEq(i)))
with{
    myPeakEq(j) = fi.peak_eq(vslider("level%j",0,-90,12,0.01),1000,500);
};

process = peakEqualizer;

