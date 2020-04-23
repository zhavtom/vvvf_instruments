import("stdfaust.lib");

rnd = hslider("rnd", 0, 0, 100, 0.01);
freq = hslider("freq", 440, 1, 4000, 1);
gate = button("gate");
ssp = checkbox("ssp");
hfsi = checkbox("hfsi");
sync = checkbox("sync");
fphs = checkbox("fphs");
mff = hslider("mff", 0, 0, 100, 0.01);
mf = mff * ba.if(sync, freq/100, 1);
mlv = hslider("mlv", 0, 0, 100, 0.01)/100;
cff = hslider("cff", 0, 0, 100, 0.01)/100;
cf = ba.if(sync, (floor(cff^2*14)*2+1)*mf, freq*2^(cff*3));

phasor(freq) = (+(freq/ma.SR) ~ ma.decimal);
base_osc(freq, ph) = sin((ph+phasor(freq))*ma.PI*2);

ssp_s = os.osc(cf/8)*ssp*20;
rnd_s = (no.noise-0.5)*rnd*20;
hfsi_s = ba.if(hfsi, base_osc(cf*3, 0), 1);

car_osc = base_osc(cf+rnd_s+ssp_s, 0) * -1;
mod_osc(ph) = base_osc(mf, ph) * hfsi_s * mlv;

vlt1 = mod_osc(0) < car_osc;
vlt2 = mod_osc(1/3) < car_osc;
vlt3 = mod_osc(2/3) < car_osc;

process = ((vlt1-vlt2)*fphs-(vlt2-vlt3))/(1+fphs)*gate;