import("stdfaust.lib");

sawtooth(freq) = (A~B)/period*2-1
with{
    period = ma.SR/freq;
    A = _;
    B = (_+1)%period;
};

process = sawtooth(1500);
