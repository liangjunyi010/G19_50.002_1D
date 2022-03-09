set projDir "D:/Alchitry\ Labs/ALUpart/work/vivado"
set projName "ALUpart"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/Alchitry\ Labs/ALUpart/work/verilog/au_top_0.v" "D:/Alchitry\ Labs/ALUpart/work/verilog/adder_tester_1.v" "D:/Alchitry\ Labs/ALUpart/work/verilog/reset_conditioner_2.v" "D:/Alchitry\ Labs/ALUpart/work/verilog/counter_3.v" "D:/Alchitry\ Labs/ALUpart/work/verilog/adder_4.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "F:/Alchitry/Alchitry\ Labs/library/components/au.xdc" "D:/Alchitry\ Labs/ALUpart/work/constraint/alchitry.xdc" "D:/Alchitry\ Labs/ALUpart/work/constraint/io.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
