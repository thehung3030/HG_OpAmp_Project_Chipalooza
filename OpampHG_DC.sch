v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 40 -1140 840 -740 {flags=graph
y1=0
y2=3.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3.3

subdivx=4
xlabmag=1.0
ylabmag=1.0
node="icmr
ocmr"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N 50 -680 50 -540 {
lab=#net1}
N 50 -680 380 -680 {
lab=#net1}
N 380 -680 380 -640 {
lab=#net1}
N 200 -430 200 -410 {
lab=GND}
N 200 -430 380 -430 {
lab=GND}
N 380 -520 380 -430 {
lab=GND}
N 50 -480 120 -480 {
lab=GND}
N 120 -480 200 -480 {
lab=GND}
N 200 -480 200 -430 {
lab=GND}
N 320 -500 320 -460 {
lab=vbias}
N 500 -580 530 -580 {
lab=Vdc_offset}
N 240 -540 250 -540 {
lab=VCM}
N 520 -580 520 -550 {
lab=Vdc_offset}
N 520 -490 520 -430 {
lab=GND}
N 380 -430 520 -430 {
lab=GND}
N 130 -630 250 -630 {
lab=input_DC}
N 250 -630 250 -620 {
lab=input_DC}
N 130 -570 130 -540 {
lab=VCM}
N 130 -550 240 -550 {
lab=VCM}
N 240 -550 240 -540 {
lab=VCM}
N 700 -680 700 -540 {
lab=#net2}
N 700 -680 1030 -680 {
lab=#net2}
N 1030 -680 1030 -640 {
lab=#net2}
N 850 -430 850 -410 {
lab=GND}
N 850 -430 1030 -430 {
lab=GND}
N 1030 -520 1030 -430 {
lab=GND}
N 700 -480 770 -480 {
lab=GND}
N 770 -480 850 -480 {
lab=GND}
N 850 -480 850 -430 {
lab=GND}
N 970 -500 970 -460 {
lab=vbias}
N 1150 -580 1180 -580 {
lab=OCMR}
N 840 -540 890 -540 {
lab=OCMR}
N 890 -540 900 -540 {
lab=OCMR}
N 750 -560 750 -480 {
lab=GND}
N 750 -620 900 -620 {
lab=ICMR}
N 1170 -580 1170 -550 {
lab=OCMR}
N 1170 -490 1170 -430 {
lab=GND}
N 1030 -430 1170 -430 {
lab=GND}
N 440 -530 440 -490 {
lab=vbias}
C {devices/title.sym} 160 30 0 0 {name=l1 author="The-Hung"}
C {devices/code_shown.sym} 50 -320 0 0 {name=spice only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control

*****************dc analysis************
dc VDC2 -5m 5m 1m 
plot v(Vdc_offset) v(VCM)
dc VDC7 0 3.3 0.1
plot v(OCMR) v(ICMR)   
write DC.raw
.save all
.endc
"}
C {/foss/designs/Opamp_HG/OpampHG.sym} 400 -580 0 0 {name=x2}
C {devices/vsource.sym} 50 -510 0 0 {name=VDD2 value=3.3 savecurrent=false}
C {devices/gnd.sym} 200 -410 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 320 -480 0 0 {name=p11 sig_type=std_logic lab=vbias
}
C {devices/opin.sym} 530 -580 0 0 {name=p13 lab=Vdc_offset}
C {devices/vsource.sym} 130 -510 0 0 {name=VDC1 value="1.65" savecurrent=false}
C {sky130_fd_pr/cap_mim_m3_2.sym} 520 -520 0 0 {name=C3 model=cap_mim_m3_2 W=63 L=40 MF=1 spiceprefix=X}
C {devices/vsource.sym} 130 -600 0 0 {name=VDC2 value="0" savecurrent=false}
C {/foss/designs/Opamp_HG/OpampHG.sym} 1050 -580 0 0 {name=x6}
C {devices/vsource.sym} 700 -510 0 0 {name=VDD5 value=3.3 savecurrent=false}
C {devices/gnd.sym} 850 -410 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 970 -480 0 0 {name=p21 sig_type=std_logic lab=vbias
}
C {devices/opin.sym} 1180 -580 0 0 {name=p22 lab=OCMR}
C {devices/lab_pin.sym} 860 -540 0 0 {name=p23 sig_type=std_logic lab=OCMR}
C {devices/vsource.sym} 750 -590 0 0 {name=VDC7 value="0" savecurrent=false}
C {devices/lab_wire.sym} 820 -620 1 0 {name=p24 sig_type=std_logic lab=ICMR}
C {sky130_fd_pr/cap_mim_m3_2.sym} 1170 -520 0 0 {name=C6 model=cap_mim_m3_2 W=63 L=40 MF=1 spiceprefix=X}
C {devices/lab_pin.sym} 190 -550 1 0 {name=p8 sig_type=std_logic lab=VCM}
C {devices/vsource.sym} 440 -460 0 0 {name=Vbias1 value=1.12 savecurrent=false}
C {devices/lab_pin.sym} 440 -520 0 0 {name=p9 sig_type=std_logic lab=vbias
}
C {devices/launcher.sym} 110 -1170 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/DC.raw dc"
}
C {devices/lab_pin.sym} 200 -630 1 0 {name=p1 sig_type=std_logic lab=input_DC}
