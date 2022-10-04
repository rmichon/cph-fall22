import("stdfaust.lib");

string(freq,fdbk) = A~B
with{
    dSamp = ma.SR/freq - 1.5;
    A = +;
    B = de.fdelay4(ma.SR,dSamp)*fdbk : fi.lowpass(3,12000);
};

process = button("gate") : ba.impulsify : string(1000,0.99) ;

