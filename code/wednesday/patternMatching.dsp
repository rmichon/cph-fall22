import("stdfaust.lib");

oneZero(b1) = _ <: _,(_@1)*b1 :> _; 

fir((b0,bv)) = _ <: _*b0,R(1,bv) :> _
with{
    R(n,(bn,bv)) = _@n*bn, R(n+1,bv);
    R(n,bn) = _@n*(bn);
};
fir(b0) = _*b0;

process = fir((0.1,0.2,0.9,-4)); 

