v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -660 60 -520 {
lab=#net1}
N 60 -660 390 -660 {
lab=#net1}
N 390 -660 390 -620 {
lab=#net1}
N 210 -410 210 -390 {
lab=GND}
N 210 -410 390 -410 {
lab=GND}
N 390 -500 390 -410 {
lab=GND}
N 60 -460 130 -460 {
lab=GND}
N 130 -460 210 -460 {
lab=GND}
N 210 -460 210 -410 {
lab=GND}
N 330 -480 330 -440 {
lab=vbias}
N 510 -560 540 -560 {
lab=Open_loop}
N 250 -520 260 -520 {
lab=inn_OL}
N 530 -560 530 -530 {
lab=Open_loop}
N 530 -470 530 -410 {
lab=GND}
N 390 -410 530 -410 {
lab=GND}
N 140 -610 260 -610 {
lab=inp_OL}
N 260 -610 260 -600 {
lab=inp_OL}
N 140 -550 140 -520 {
lab=inn_OL}
N 140 -530 250 -530 {
lab=inn_OL}
N 250 -530 250 -520 {
lab=inn_OL}
N 100 -970 100 -830 {
lab=#net2}
N 100 -970 430 -970 {
lab=#net2}
N 430 -970 430 -930 {
lab=#net2}
N 250 -720 250 -700 {
lab=GND}
N 250 -720 430 -720 {
lab=GND}
N 430 -810 430 -720 {
lab=GND}
N 100 -770 170 -770 {
lab=GND}
N 170 -770 250 -770 {
lab=GND}
N 250 -770 250 -720 {
lab=GND}
N 370 -790 370 -750 {
lab=vbias}
N 550 -870 580 -870 {
lab=CM_gain}
N 290 -830 300 -830 {
lab=in_CM}
N 570 -870 570 -840 {
lab=CM_gain}
N 570 -780 570 -720 {
lab=GND}
N 430 -720 570 -720 {
lab=GND}
N 180 -860 180 -830 {
lab=#net3}
N 290 -840 290 -830 {
lab=in_CM}
N 300 -940 300 -910 {
lab=in_CM}
N 180 -940 300 -940 {
lab=in_CM}
N 180 -940 180 -920 {
lab=in_CM}
N 290 -940 290 -840 {
lab=in_CM}
N 250 -860 250 -830 {
lab=vbias}
N 60 -340 60 -200 {
lab=#net4}
N 60 -340 390 -340 {
lab=#net4}
N 390 -340 390 -300 {
lab=#net4}
N 210 -90 210 -70 {
lab=GND}
N 210 -90 390 -90 {
lab=GND}
N 390 -180 390 -90 {
lab=GND}
N 60 -140 130 -140 {
lab=GND}
N 130 -140 210 -140 {
lab=GND}
N 210 -140 210 -90 {
lab=GND}
N 330 -160 330 -120 {
lab=vbias}
N 510 -240 540 -240 {
lab=Vout_DC}
N 200 -200 250 -200 {
lab=Vout_DC}
N 250 -200 260 -200 {
lab=Vout_DC}
N 110 -220 110 -140 {
lab=GND}
N 110 -280 260 -280 {
lab=VDC}
N 530 -240 530 -210 {
lab=Vout_DC}
N 530 -150 530 -90 {
lab=GND}
N 390 -90 530 -90 {
lab=GND}
C {devices/title.sym} 160 30 0 0 {name=l1 author="The-Hung"}
C {devices/code_shown.sym} 810 -790 0 0 {name=spice only_toplevel=false 
value="

.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control

*****************AC analysis************
ac dec 20 1 1e10
let Open_Loop_Gain = v(Open_loop)/(v(inp_OL)-v(inn_OL))
let Common_mode_gain = v(CM_gain)/v(in_CM)
let Phase_Degree = 180*cph(v(Open_loop)/(v(inp_OL)-v(inn_OL)))/pi
let CMRR=Open_Loop_Gain/Common_mode_gain
plot v(Vout_DC)
plot db(Open_Loop_Gain) Phase_Degree
plot db(CMRR)
write AC.raw

.save all
.endc
"}
C {/foss/designs/Opamp_HG/OpampHG.sym} 410 -560 0 0 {name=x4}
C {devices/vsource.sym} 60 -490 0 0 {name=VDD3 value=3.3 savecurrent=false}
C {devices/gnd.sym} 210 -390 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 330 -460 0 0 {name=p14 sig_type=std_logic lab=vbias
}
C {devices/opin.sym} 540 -560 0 0 {name=p15 lab=Open_loop}
C {devices/vsource.sym} 140 -490 0 0 {name=VDC3 value="1.65" savecurrent=false}
C {sky130_fd_pr/cap_mim_m3_2.sym} 530 -500 0 0 {name=C4 model=cap_mim_m3_2 W=63 L=40 MF=1 spiceprefix=X}
C {devices/vsource.sym} 140 -580 0 0 {name=VDC4 value="AC 1" savecurrent=false}
C {devices/lab_pin.sym} 200 -610 1 0 {name=p16 sig_type=std_logic lab=inp_OL}
C {devices/lab_pin.sym} 210 -530 1 0 {name=p17 sig_type=std_logic lab=inn_OL}
C {/foss/designs/Opamp_HG/OpampHG.sym} 450 -870 0 0 {name=x5}
C {devices/vsource.sym} 100 -800 0 0 {name=VDD4 value=3.3 savecurrent=false}
C {devices/gnd.sym} 250 -700 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 370 -770 0 0 {name=p18 sig_type=std_logic lab=vbias
}
C {devices/opin.sym} 580 -870 0 0 {name=p19 lab=CM_gain}
C {devices/vsource.sym} 180 -800 0 0 {name=VDC5 value="1.65" savecurrent=false}
C {sky130_fd_pr/cap_mim_m3_2.sym} 570 -810 0 0 {name=C5 model=cap_mim_m3_2 W=63 L=40 MF=1 spiceprefix=X}
C {devices/vsource.sym} 180 -890 0 0 {name=VDC6 value="AC 1" savecurrent=false}
C {devices/lab_pin.sym} 250 -940 3 0 {name=p20 sig_type=std_logic lab=in_CM}
C {devices/vsource.sym} 250 -800 0 0 {name=Vbias value=1.12 savecurrent=false}
C {devices/lab_pin.sym} 250 -850 0 0 {name=p1 sig_type=std_logic lab=vbias
}
C {/foss/designs/Opamp_HG/OpampHG.sym} 410 -240 0 0 {name=x1}
C {devices/vsource.sym} 60 -170 0 0 {name=VDD1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 210 -70 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 330 -140 0 0 {name=p8 sig_type=std_logic lab=vbias
}
C {devices/opin.sym} 540 -240 0 0 {name=p9 lab=Vout_DC}
C {devices/lab_pin.sym} 220 -200 0 0 {name=p10 sig_type=std_logic lab=Vout_DC}
C {devices/vsource.sym} 110 -250 0 0 {name=VDC value="1.65 AC 1" savecurrent=false}
C {devices/lab_wire.sym} 180 -280 1 0 {name=p12 sig_type=std_logic lab=VDC}
C {sky130_fd_pr/cap_mim_m3_2.sym} 530 -180 0 0 {name=C2 model=cap_mim_m3_2 W=63 L=40 MF=1 spiceprefix=X}
