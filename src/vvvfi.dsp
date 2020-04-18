import("stdfaust.lib");

sync = hslider("Sync[style:radio{'Async':0;'Sync':1;}]", 0, 0, 1, 1);

freq = nentry("freq",440,440,440,1);
gain = nentry("gain",0.5,0,1,0.1);
gate = button("gate");
process = os.triangle(freq)*gain*gate*sync;