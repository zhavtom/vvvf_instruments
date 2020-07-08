import("stdfaust.lib");

rnd = hslider("rnd", 0, 0, 100, 0.01);
freq = hslider("freq", 440, 1, 4000, 1);
gate = button("gate");
ssp = checkbox("ssp");
hfsi = hslider("hfsi", 0, 0, 2, 1);
sync = checkbox("sync");
fphs = checkbox("fphs");
mff = hslider("mff", 0, 0, 100, 0.01);
mf = mff * ba.if(sync, freq/100, 1);
mlv = hslider("mlv", 0, 0, 100, 0.01)/100;
cff = hslider("cff", 0, 0, 100, 0.01)/100;
cf = ba.if(sync, (floor(cff^2*14)*2+1)*mf, freq*2^(cff*3));

phasor(freq) = os.sawtooth(freq)/2+0.5;
base_osc(freq, ph) = sin((ph+phasor(freq))*ma.PI*2);

ssp_s = os.osc(cf/8)*ssp*20;
rnd_s = no.noise*rnd*20:fi.lowpass(1,5000);
hfsi_s = ba.if(hfsi > 0, base_osc(0.5*cf/(3-hfsi)+rnd_s, 1/8), 1);

car_osc = base_osc((cf+rnd_s+ssp_s)/(ba.if(hfsi > 0, 2, 1)), 0) * -1;
mod_osc(ph) = base_osc(mf, ph) * mlv * hfsi_s;

cpr(x) = atan(15*x)/1.5;

vlt1 = (mod_osc(0) - car_osc);
vlt2 = (mod_osc(1/3) - car_osc);
vlt3 = (mod_osc(2/3) - car_osc);

u = cpr(vlt1);
v = cpr(vlt2);
w = cpr(vlt3);

process = ((v-w)*fphs-(u-v))/(1+fphs):fi.lowpass3e(8000)*gate;