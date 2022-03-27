set projDir "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/vivado"
set projName "ALUpart"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/au_top_0.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/button_conditioner_1.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/edge_detector_2.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/alucheckfsm_3.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/reset_conditioner_4.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/pressbutton_5.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/pipeline_6.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/counter_7.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/alumanualcheckfsm_8.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/aluromcheckfsm_9.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/multi_seven_seg_10.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/multi_dec_ctr_11.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/pn_gen_12.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/pos_to_led_13.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/decoder_14.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/alu_15.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/rom_16.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/counter_17.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/seven_seg_18.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/decimal_counter_19.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/adder_20.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/mul_21.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/boolean_22.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/compare_23.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/shifter_24.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/enq_25.v" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/verilog/shd_26.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "F:/Alchitry/Alchitry\ Labs/library/components/au.xdc" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/constraint/alchitry.xdc" "D:/SUTD/term4/G4_50.001_1D/ALUpart/work/constraint/io.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
