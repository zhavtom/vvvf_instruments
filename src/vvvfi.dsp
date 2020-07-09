import("stdfaust.lib");

g_core(x) = hgroup("[0]General", x);
g_ctl(x) = hgroup("[1]Control", x);
g_osc(x) = g_ctl(vgroup("[0]Oscillator", x));
g_opt(x) = g_ctl(vgroup("[1]Options", x));

sync = g_core(hslider("[0]Sync", 0, 0, 1, 1));
gate = g_core(button("[1]gate"));
freq = g_core(hslider("[2]freq", 440, 1, 4000, 1));

cff = g_osc(hslider("[0]Car Freq / Pulse Mode", 30, 0, 100, 0.01)/100);
mff = g_osc(hslider("[1]Mod Freq", 0, 0, 100, 0.01));
mlv = g_osc(hslider("[2]Mod Level", 0, 0, 100, 0.01)/100);

ssp = g_opt(hslider("[0]Spectrum Spread", 0, 0, 1, 1));
rnd = g_opt(hslider("[1]Random Mod", 0, 0, 100, 0.01));
hfsi = g_opt(hslider("[2]High Freq Position", 0, 0, 2, 1));

gain = g_ctl(vslider("[2]Gain", 50, 0, 100, 0.1))/200;

mf = mff * ba.if(sync, freq/100, 1);
cf = ba.if(sync, (floor(cff^2*14)*2+1)*mf, freq*2^(cff*3));

dt = (floor(cff^2*14) <: _ != _@(1)) + (floor(sync) != floor(sync)@(1));

phasor(freq) = os.hs_phasor(8, freq/8, dt);
base_osc(freq, ph) = sin((ph+phasor(freq))*ma.PI*2);

ssp_s = os.osc(cf/8)*ssp*20;
rnd_s = no.noise*rnd*20:fi.lowpass(1,cf*8);
hfsi_s = ba.if(hfsi > 0, base_osc(0.5*cf/(3-hfsi)+rnd_s, 1/8), 1);

car_osc = base_osc((cf+rnd_s+ssp_s)/(ba.if(hfsi > 0, 2, 1)), 0) * -1;
mod_osc(ph) = base_osc(mf, ph) * mlv * hfsi_s;

cp(x) = ma.tanh(50*x/2);

vlt1 = (mod_osc(0) - car_osc);
vlt2 = (mod_osc(1/3) - car_osc);
vlt3 = (mod_osc(2/3) - car_osc);

u = cp(vlt1);
v = cp(vlt2);
w = cp(vlt3);

process = (v-w)*gain*gate;