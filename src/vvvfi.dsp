import("stdfaust.lib");

g_core(x) = hgroup("[0]General", x);
g_ctl(x) = hgroup("[1]Control", x);
g_osc(x) = g_ctl(vgroup("[0]Oscillator", x));
g_opt(x) = g_ctl(vgroup("[1]Options", x));

sync = g_core(hslider("[0]Sync", 0, 0, 1, 1));
gate = g_core(button("[1]gate"));
freq = g_core(hslider("[2]freq", 440, 1, 4000, 0.1));
bend = g_core(hslider("[3]Bend[midi:pitchwheel]", 0, -12, 12, 0.0001));

pls = g_osc(hslider("[1]Pulse Multiply", 1, 1, 57, 2));
pinv = g_osc(hslider("[2]Polar Invert", 0, 0, 1, 1));
mff = g_osc(hslider("[3]Mod Freq", 0, 0, 100, 0.01));
mlv = g_osc(hslider("[4]Mod Level", 0, 0, 100, 0.01))/100;

ssp = g_opt(hslider("[0]Spectrum Spread", 0, 0, 1, 1));
rnd = g_opt(hslider("[1]Random Mod", 0, 0, 100, 0.01));
hfsi = g_opt(hslider("[2]High Freq Position", 0, 0, 2, 1));
plv = g_opt(hslider("[3]Pulse Level", 2, 2, 3, 1))-2;

gain = g_ctl(vslider("[2]Gain", 50, 0, 100, 0.1))/200;

osp = 1024;

mf = mff * ba.if(sync, freq/128, 1);
cf = ba.if(sync, pls*mf, freq*2^(bend/12));

dt = (pls <: _ != _@(1)) | (floor(sync) != floor(sync)@(1)) | ((mlv < 1) != (mlv < 1)@(1));

phasor(f) = os.hs_phasor(osp, f, dt)/osp;
base_osc(f, ph) = sin((ph+phasor(f))*ma.PI*2)@(1);

rnd_s = no.gnoise(1):fi.lowpass(1, 2):*(rnd)*(1-sync);
ssp_s = os.osc(mf*20) > 0 : *(2)-1 : *(10): *(ssp)*(1-sync);
hfsi_s = ba.if(hfsi > 0, base_osc(0.5*cf/(3-hfsi), 1/8), 1);

car_osc(ph) = base_osc((cf+ssp_s)*ba.if(hfsi > 0, 0.5, 1), 0+rnd_s) * (1+plv);
mod_osc(ph) = base_osc(mf, ph) * mlv * hfsi_s * ba.if(pinv, 3, -1) * (1+plv+sync*plv*2);

vlt(ph) = ma.signum(mod_osc(ph) - car_osc(ph) + plv) + ma.signum(mod_osc(ph) - car_osc(ph) - plv): *(0.5);

process = (vlt(1/3)-vlt(2/3))*gain*gate <: _,_;