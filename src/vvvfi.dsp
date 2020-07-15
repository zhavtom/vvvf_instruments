import("stdfaust.lib");

g_core(x) = hgroup("[0]General", x);
g_ctl(x) = hgroup("[1]Control", x);
g_osc(x) = g_ctl(vgroup("[0]Oscillator", x));
g_opt(x) = g_ctl(vgroup("[1]Options", x));

sync = g_core(hslider("[0]Sync", 0, 0, 1, 1));
gate = g_core(button("[1]gate"));
freq = g_core(hslider("[2]freq", 440, 1, 4000, 1));
bend = g_core(hslider("[3]Bend", 0, -12, 12, 0.01));

pext = g_osc(hslider("[0]Pulse Extend[unit:%]", 0, 0, 100, 0.1))/100;
pls = g_osc(hslider("[1]Pulse Mode[unit:P]", 1, 1, 57, 2));
mff = g_osc(hslider("[2]Mod Freq", 0, 0, 100, 0.1));
mlv = g_osc(hslider("[3]Mod Level[unit:%]", 0, 0, 200, 0.1))/100;

ssp = g_opt(hslider("[0]Spectrum Spread", 0, 0, 1, 1));
rnd = g_opt(hslider("[1]Random Mod[unit:%]", 0, 0, 100, 0.1));
hfsi = g_opt(hslider("[2]High Freq Position", 0, 0, 2, 1));
plv = g_opt(hslider("[3]Pulse Level", 2, 2, 3, 1))-2;

gain = g_ctl(vslider("[2]Gain[unit:%]", 50, 0, 100, 0.1))/200;

mf = mff * ba.if(sync, freq/8, 128);
cf = ba.if(sync, pls*mf, freq*(2^(bend/12))*128);

hs = os.phasor(1, mf/256) > 0.5 <: _ == _@(1) : ba.if(sync, _, hfsi == hfsi@(1));

phasor(f) = (+(f/ma.SR/128) ~ ma.decimal*hs);

base_osc(f, ph) = sin((ph+phasor(f))*ma.PI*2);

rnd_s = no.gnoise(1):fi.lowpass(1, 2):*(rnd)*(1-sync);
ssp_s = os.osc(mf/4) > 0 : *(2)-1 : *(1000)*(ssp)*(1-sync);
hfsi_s = ba.if(hfsi > 0, base_osc(0.5*cf/(3-hfsi), 1/8), 1);

car_osc = base_osc((cf+ssp_s)*ba.if(hfsi > 0, 0.5, 1), rnd_s) * (1+plv) * -1;
mod_osc(ph) = base_osc(mf, ph+(pext/pls)*0.5) * mlv^2 * hfsi_s * (1+plv+sync*plv*2);

vlt(ph) = ma.signum(mod_osc(ph) - car_osc + plv) + ma.signum(mod_osc(ph) - car_osc - plv): *(0.5);

process = (vlt(1/3)-vlt(2/3))*gate*gain <: _, _;