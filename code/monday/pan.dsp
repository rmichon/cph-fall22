import("stdfaust.lib");

p = sqrt(hslider("pan",1,0,1,0.01)) : si.smoo;

process = _<: _*(1-p),_*p; 
