v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 30 -820 830 -420 {flags=graph
y1=2.7e-08
y2=1.7e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5.55112e-17
x2=7
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="inoise_spectrum
onoise_spectrum"
color="4 7"
dataset=-1
unitx=1
logx=1
logy=0
hilight_wave=2}
N 30 -340 30 -200 {
lab=#net1}
N 30 -340 360 -340 {
lab=#net1}
N 360 -340 360 -300 {
lab=#net1}
N 180 -90 180 -70 {
lab=GND}
N 180 -90 360 -90 {
lab=GND}
N 360 -180 360 -90 {
lab=GND}
N 30 -140 100 -140 {
lab=GND}
N 100 -140 180 -140 {
lab=GND}
N 180 -140 180 -90 {
lab=GND}
N 300 -160 300 -120 {
lab=vbias}
N 480 -240 510 -240 {
lab=Output_noise}
N 170 -200 220 -200 {
lab=Output_noise}
N 220 -200 230 -200 {
lab=Output_noise}
N 80 -220 80 -140 {
lab=GND}
N 80 -280 230 -280 {
lab=Input_noise}
N 500 -240 500 -210 {
lab=Output_noise}
N 500 -150 500 -90 {
lab=GND}
N 360 -90 500 -90 {
lab=GND}
N 510 -240 610 -240 {
lab=Output_noise}
N 600 -240 600 -210 {
lab=Output_noise}
N 600 -150 600 -90 {
lab=GND}
N 500 -90 600 -90 {
lab=GND}
N 220 -190 220 -150 {
lab=vbias}
C {devices/title.sym} 160 30 0 0 {name=l1 author="The-Hung"}
C {devices/code_shown.sym} 90 -1120 0 0 {name=spice only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control

*****************Noise Analysis**********
noise v(Output_noise, 0) VDC8 dec 10 1 1e7
setplot noise1
write noise1.raw

.endc
"}
C {devices/res.sym} 600 -180 0 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {/foss/designs/Opamp_HG/OpampHG.sym} 380 -240 0 0 {name=x7}
C {devices/vsource.sym} 30 -170 0 0 {name=VDD6 value=3.3 savecurrent=false}
C {devices/gnd.sym} 180 -70 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} 300 -140 0 0 {name=p25 sig_type=std_logic lab=vbias
}
C {devices/opin.sym} 610 -240 0 0 {name=p26 lab=Output_noise}
C {devices/lab_pin.sym} 220 -200 0 0 {name=p27 sig_type=std_logic lab=Output_noise}
C {devices/vsource.sym} 80 -250 0 0 {name=VDC8 value="1 AC 1" savecurrent=false}
C {devices/lab_wire.sym} 130 -280 2 0 {name=p28 sig_type=std_logic lab=Input_noise}
C {sky130_fd_pr/cap_mim_m3_2.sym} 500 -180 0 0 {name=C7 model=cap_mim_m3_2 W=63 L=40 MF=1 spiceprefix=X}
C {devices/launcher.sym} 100 -850 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/noise1.raw noise"
}
C {devices/vsource.sym} 220 -120 0 0 {name=Vbias1 value=1.12 savecurrent=false}
C {devices/lab_pin.sym} 220 -180 0 0 {name=p8 sig_type=std_logic lab=vbias
}
