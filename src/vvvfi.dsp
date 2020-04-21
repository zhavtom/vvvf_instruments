import("stdfaust.lib");

sgn = _ <: >(0) - <(0);
rnd = (no.noise-0.5)*hslider("Random Mod", 0, 0, 100, 0.01)*20;

freq = hslider("freq", 1, 1, 1, 1);
gate = hslider("gate", 1, 1, 1, 1);

ssp = os.osc(freq/2)*checkbox("Spectrum Spread")*15;

sync = checkbox("Sync");
fphs = checkbox("Full Phases");
mf = hslider("Mod Freq", 0, 0, 100, 0.01) * ba.if(sync, freq/100, 1);
mlv = hslider("Mod Level", 0, 0, 100, 0.01)/100;
cff = hslider("Car Freq Factor", 0, 0, 100, 0.01)/100;
cf = ba.if(sync, (floor(cff^2*14)*2+1)*mf, freq*2^(cff*3));

phasor(freq) = (+(freq/ma.SR) ~ ma.decimal);

car_osc = sin(phasor(cf+rnd+ssp)*(ma.PI*2)) * -1;
mod_osc(freq, ph) = sin((ph+phasor(freq))*(ma.PI*2)) * mlv;

vlt1 = sgn(mod_osc(mf, 0)-car_osc);
vlt2 = sgn(mod_osc(mf, 1/3)-car_osc);
vlt3 = sgn(mod_osc(mf, 2/3)-car_osc);

process = ((vlt1-vlt2)*fphs-(vlt2-vlt3))/(1+fphs)*gate;