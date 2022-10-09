import("stdfaust.lib");
import("logic.dsp");

/**
* Cochlear implant simulation
*/

//                normal,    noise,       sinewave
simulation = _ <: *(g1*0.5), g2*noise(N), g3*sine(N) :> *(vol)
with {
    // amount of channels (2 to 9)
    N = 9;

    // volume
    vol = hslider("Volume",1,0,2,0.01);

    // gates
    g1 = checkbox("[0]Normal"); 
    g2 = checkbox("[1]Noise"); 
    g3 = checkbox("[2]Sinewave");
};

process = simulation;