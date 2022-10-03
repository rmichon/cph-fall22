import("stdfaust.lib");

am(index,freq) = _*mod*(1-index)
with{
    mod = os.osc(freq)*0.5 + 0.5;    
};

process = am(0,500) ;
