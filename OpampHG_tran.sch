v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -200 200 -200 {
lab=GND}
N 200 -200 250 -200 {
lab=GND}
N 250 -200 270 -200 {
lab=GND}
N 270 -200 270 -150 {
lab=GND}
N 520 -220 520 -150 {
lab=GND}
N 520 -370 520 -340 {
lab=#net1}
N 60 -370 60 -260 {
lab=#net1}
N 200 -290 200 -260 {
lab=vinp}
N 250 -290 250 -260 {
lab=vinn}
N 340 -320 390 -320 {
lab=vinp}
N 340 -240 390 -240 {
lab=vinn}
N 460 -200 460 -160 {
lab=vbias}
N 120 -300 120 -260 {
lab=vbias}
N 640 -280 680 -280 {
lab=Vout}
N 660 -280 660 -240 {
lab=Vout}
N 520 -180 660 -180 {
lab=GND}
N 680 -280 930 -280 {
lab=Vout}
N 60 -410 60 -370 {
lab=#net1}
N 60 -410 220 -410 {
lab=#net1}
N 280 -410 520 -410 {
lab=#net1}
N 520 -410 520 -370 {
lab=#net1}
N 820 -200 820 -180 {
lab=GND}
N 660 -180 820 -180 {
lab=GND}
N 220 -410 280 -410 {
lab=#net1}
C {devices/title.sym} 160 30 0 0 {name=l1 author="The-Hung"}
C {devices/vsource.sym} 200 -230 0 0 {name=Vp value="SIN(1.6 1u 1K 0 0.0 0.0)" savecurrent=false}
C {devices/vsource.sym} 250 -230 0 0 {name=Vn value="SIN(1.6 1u 1K 0 0.0 180)" savecurrent=false}
C {devices/vsource.sym} 60 -230 0 0 {name=VDD value=3.3 savecurrent=false}
C {devices/gnd.sym} 270 -150 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 520 -150 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 120 -230 0 0 {name=Vbias value=1.12 savecurrent=false}
C {devices/lab_pin.sym} 200 -280 0 0 {name=p1 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 360 -320 1 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 250 -280 0 0 {name=p3 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 360 -240 1 0 {name=p4 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 120 -290 0 0 {name=p5 sig_type=std_logic lab=vbias
}
C {devices/lab_pin.sym} 460 -170 0 0 {name=p6 sig_type=std_logic lab=vbias
}
C {devices/opin.sym} 930 -280 0 0 {name=p7 lab=Vout
}
C {devices/code_shown.sym} 120 -740 0 0 {name=spice only_toplevel=false 
value="
.control

****************Transient Analysis******
tran 0.1m 5m
plot v(vinp) v(vinn) 
plot v(Vout) 
plot v(x3.vout_prior)
write Output_tran.raw

.save all
.endc
"}
C {sky130_fd_pr/cap_mim_m3_2.sym} 660 -210 0 0 {name=C1 model=cap_mim_m3_2 W=63 L=40 MF=1 spiceprefix=X}
C {/foss/designs/Opamp_HG/OpampHG.sym} 540 -280 0 0 {name=x3}
C {devices/res.sym} 820 -230 0 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {devices/code.sym} 680 -690 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
