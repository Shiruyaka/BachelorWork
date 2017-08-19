# 
# Synthesis run script generated by Vivado
# 

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
read_vhdl -library xil_defaultlib {
  C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/new/Encoder.vhd
  C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/hdl/Memory_design_wrapper.vhd
  C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/new/Compressor.vhd
  C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/new/Driver.vhd
}
add_files C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/Memory_design.bd
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_processing_system7_0_0/Memory_design_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_blk_mem_gen_0_0/Memory_design_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_bram_ctrl_0_0/Memory_design_axi_bram_ctrl_0_0_ooc.xdc]
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
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_rst_ps7_0_50M_0/Memory_design_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_rst_ps7_0_50M_0/Memory_design_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_rst_ps7_0_50M_0/Memory_design_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_blk_mem_gen_0_1/Memory_design_blk_mem_gen_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_bram_ctrl_1_0/Memory_design_axi_bram_ctrl_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_blk_mem_gen_0_2/Memory_design_blk_mem_gen_0_2_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_bram_ctrl_2_0/Memory_design_axi_bram_ctrl_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_blk_mem_gen_1_0/Memory_design_blk_mem_gen_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_bram_ctrl_3_0/Memory_design_axi_bram_ctrl_3_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_blk_mem_gen_0_3/Memory_design_blk_mem_gen_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/ip/Memory_design_axi_bram_ctrl_4_0/Memory_design_axi_bram_ctrl_4_0_ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/Memory_design_ooc.xdc]
set_property is_locked true [get_files C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/sources_1/bd/Memory_design/Memory_design.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/constrs_1/new/ZYBO.xdc
set_property used_in_implementation false [get_files C:/Users/Tomek/Desktop/TabledAsymetricNumeralSystems-master/TabledAsymmetricNumeralSystems/TabledAsymmetricNumeralSystems.srcs/constrs_1/new/ZYBO.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top Compressor -part xc7z010clg400-1


write_checkpoint -force -noxdef Compressor.dcp

catch { report_utilization -file Compressor_utilization_synth.rpt -pb Compressor_utilization_synth.pb }
