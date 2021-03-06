# 
# Synthesis run script generated by Vivado
# 

set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.cache/wt [current_project]
set_property parent.project_path C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0.xci
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_10/bd_3fbf_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_16/bd_3fbf_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_23/bd_3fbf_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_30/bd_3fbf_m02s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_37/bd_3fbf_m03s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_44/bd_3fbf_m04s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_45/bd_3fbf_m04arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_46/bd_3fbf_m04rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_47/bd_3fbf_m04awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_48/bd_3fbf_m04wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_49/bd_3fbf_m04bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_38/bd_3fbf_m03arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_39/bd_3fbf_m03rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_40/bd_3fbf_m03awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_41/bd_3fbf_m03wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_42/bd_3fbf_m03bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_31/bd_3fbf_m02arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_32/bd_3fbf_m02rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_33/bd_3fbf_m02awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_34/bd_3fbf_m02wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_35/bd_3fbf_m02bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_24/bd_3fbf_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_25/bd_3fbf_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_26/bd_3fbf_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_27/bd_3fbf_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_28/bd_3fbf_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_17/bd_3fbf_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_18/bd_3fbf_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_19/bd_3fbf_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_20/bd_3fbf_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_21/bd_3fbf_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_11/bd_3fbf_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_12/bd_3fbf_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_13/bd_3fbf_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_14/bd_3fbf_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_15/bd_3fbf_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_2/bd_3fbf_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_3/bd_3fbf_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_4/bd_3fbf_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_5/bd_3fbf_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_6/bd_3fbf_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_1/bd_3fbf_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/bd_0/ip/ip_1/bd_3fbf_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/ooc.xdc]
set_property is_locked true [get_files c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.runs/Memory_design_axi_smc_0_synth_1 -new_name Memory_design_axi_smc_0 -ip [get_ips Memory_design_axi_smc_0]]

if { $cached_ip eq {} } {

synth_design -top Memory_design_axi_smc_0 -part xc7z010clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix Memory_design_axi_smc_0_ Memory_design_axi_smc_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Memory_design_axi_smc_0_stub.v
 lappend ipCachedFiles Memory_design_axi_smc_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Memory_design_axi_smc_0_stub.vhdl
 lappend ipCachedFiles Memory_design_axi_smc_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Memory_design_axi_smc_0_sim_netlist.v
 lappend ipCachedFiles Memory_design_axi_smc_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Memory_design_axi_smc_0_sim_netlist.vhdl
 lappend ipCachedFiles Memory_design_axi_smc_0_sim_netlist.vhdl

 config_ip_cache -add -dcp Memory_design_axi_smc_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips Memory_design_axi_smc_0]
}

rename_ref -prefix_all Memory_design_axi_smc_0_

write_checkpoint -force -noxdef Memory_design_axi_smc_0.dcp

catch { report_utilization -file Memory_design_axi_smc_0_utilization_synth.rpt -pb Memory_design_axi_smc_0_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.runs/Memory_design_axi_smc_0_synth_1/Memory_design_axi_smc_0.dcp c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.runs/Memory_design_axi_smc_0_synth_1/Memory_design_axi_smc_0.dcp c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.runs/Memory_design_axi_smc_0_synth_1/Memory_design_axi_smc_0_stub.v c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.runs/Memory_design_axi_smc_0_synth_1/Memory_design_axi_smc_0_stub.vhdl c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.runs/Memory_design_axi_smc_0_synth_1/Memory_design_axi_smc_0_sim_netlist.v c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.runs/Memory_design_axi_smc_0_synth_1/Memory_design_axi_smc_0_sim_netlist.vhdl c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.ip_user_files/ip/Memory_design_axi_smc_0]} {
  catch { 
    file copy -force c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_stub.v C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.ip_user_files/ip/Memory_design_axi_smc_0
  }
}

if {[file isdir C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.ip_user_files/ip/Memory_design_axi_smc_0]} {
  catch { 
    file copy -force c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_smc_0/Memory_design_axi_smc_0_stub.vhdl C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.ip_user_files/ip/Memory_design_axi_smc_0
  }
}
