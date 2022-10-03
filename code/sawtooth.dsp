import("stdfaust.lib");

f = hslider("freq",440,50,1000,0.1);
g = hslider("gain",0.5,0,1,0.01);
t = checkbox("gate");

process = os.sawtooth(f)*t*g; 
