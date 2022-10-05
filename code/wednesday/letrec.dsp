import("stdfaust.lib");

/*
onePole(a1) = A~B 
with{
    A = +;
    B = _*a1;
};
*/

onePole(a1,x) = y
letrec{
    'y = x + y*a1;
};

process = onePole(0.999);
