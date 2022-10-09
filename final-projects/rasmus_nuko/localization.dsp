import("stdfaust.lib");

EAR(i) = _ <: (_ * bypass), gain * (bypass-1)*(co.compressor_mono(ratio, thresh, att, rel)) :> _
with{
  bypass = checkbox("[0]BYPASS");
  ratio  = hslider("v:EARS/h:[0]Volume/[0]ratio[style:knob]", 10, 1, 30, 0.01)             : si.smoo;   // ratio in 1:value
  thresh = hslider("v:EARS/h:[0]Volume/[1]threshold[style:knob]", -23, -30, 0, 0.01)       : si.smoo;   // threshold in value dB
  gain   = hslider("v:EARS/h:[0]Volume/[2]make up[style:knob]", 1, 0, 6, 0.01)             : si.smoo;   // gain as a scalar (* output)
  att    = 0.001 * hslider("v:EARS/h:[1]Speed/attack[style:knob]", 0.1, 0.1, 30, 0.1)      : si.smoo;   // attack in value sec
  rel    = 0.001 * hslider("v:EARS/h:[1]Speed/realease[style:knob]", 600, 0.100, 1000, 1)  : si.smoo;   // release in value sec
};

EARS(N) = par(i, N, EAR(i));

process = 0,_~+(1):soundfile("audio[url:{'basketball.flac'}]",2):!,!,_,_ : EARS(2);
