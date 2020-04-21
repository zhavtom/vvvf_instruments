import("stdfaust.lib");

sgn = _ <: >(0) - <(0);
rnd = hslider("rnd", 0, 0, 100, 0.01);
rndmod = (no.noise-0.5)*rnd*20;

freq = hslider("freq", 440, 1, 4000, 1);
gate = button("gate");

ssp = checkbox("ssp");

sync = checkbox("sync");
fphs = checkbox("fphs");
mff = hslider("mff", 0, 0, 100, 0.01);
mf = mff * ba.if(sync, freq/100, 1);
mlv = hslider("mlv", 0, 0, 100, 0.01)/100;
cff = hslider("cff", 0, 0, 100, 0.01)/100;
cf = ba.if(sync, (floor(cff^2*14)*2+1)*mf, freq*2^(cff*3));

spctspr = os.osc((freq+cf)/8)*ssp*20;

phasor(freq) = (+(freq/ma.SR) ~ ma.decimal);

car_osc = sin(phasor(cf+rndmod+spctspr)*(ma.PI*2)) * -1;
mod_osc(freq, ph) = sin((ph+phasor(freq))*(ma.PI*2)) * mlv;

vlt1 = sgn(mod_osc(mf, 0)-car_osc);
vlt2 = sgn(mod_osc(mf, 1/3)-car_osc);
vlt3 = sgn(mod_osc(mf, 2/3)-car_osc);

process = ((vlt1-vlt2)*fphs-(vlt2-vlt3))/(1+fphs)*gate;