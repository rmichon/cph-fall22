import("stdfaust.lib");
import("static.dsp");

/**
* Cochlear implant simulation setup
*/

// setup of noise-band processor
noise(N) = _,no.noise <: s :> fi.lowpass6e(5000)
with {
    n(f,bw) = noiseband(f,bw), bandpass(f,bw) : *;
    s = run_par(n,N);
};

// setup of sinewave processor
sine(N) = _ <: s :> _
with {
    s = run_par(sinewave,N);
};


// modulate envelope of signal with noise
noiseband(f,bw) = lowpass(6,1200) : bandpass(f,bw) : envelope : lowpass(2,160);


// modulate envelope of signal with sinewave
sinewave(f,bw) = lowpass(6,1200) : bandpass(f,bw) : envelope : lowpass(2,400) : *(os.osc(f));

/**
* Helper functions and algorithms
*/

// lowpass filter
lowpass(o,f) = fi.lowpass(o,f);

// bandpass filter
bandpass(f,bw) = fi.bandpass(Nh,fl,fu)
with {
    Nh = 3;
    fl = f - (bw/2);
    fu = f + (bw/2);
};

// Envelope extraction
envelope = an.rms_envelope_rect(0.004);


/**
* General util functions
*/

take(n,values) = ba.take(index, values)
with {
    index = (n % ba.count(values)) + 1;
};

// run stuff in parallel
run_par(s,N) = par(i,N,run(i))
with {
    run(j) = s(f,bw)
    with {
        f = take(j,fN(N));
        bw = take(j,bwN(N));
    };
};
