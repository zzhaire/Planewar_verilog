# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/verilog_projects/test090_plane_war/test090_plane_war.cache/wt [current_project]
set_property parent.project_path D:/verilog_projects/test090_plane_war/test090_plane_war.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/verilog_projects/test090_plane_war/test090_plane_war.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files D:/verilog_projects/test090_plane_war/test090_plane_wars.data/use-coe/my_plane.coe
add_files D:/verilog_projects/test090_plane_war/test090_plane_wars.data/use-coe/bullet0.coe
add_files D:/verilog_projects/test090_plane_war/test090_plane_wars.data/use-coe/enemy0.coe
add_files D:/verilog_projects/test090_plane_war/test090_plane_wars.data/use-coe/music.coe
add_files D:/verilog_projects/test090_plane_war/test090_plane_wars.data/use-coe/cover0.coe
add_files D:/verilog_projects/test090_plane_war/test090_plane_wars.data/use-coe/end0.coe
add_files D:/verilog_projects/test090_plane_war/test090_plane_wars.data/use-coe/bg_image.coe
read_verilog -library xil_defaultlib {
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/bg_image.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/digital.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/divider.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/end_module.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/game_module.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/key_board.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/mp3_driver.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/start_module.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/vga_driver.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/vga_driver_image.v
  D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/new/top_module.v
}
read_ip -quiet D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_start_music/rom_start_music.xci
set_property used_in_implementation false [get_files -all d:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_start_music/rom_start_music_ooc.xdc]

read_ip -quiet D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_bg_image/rom_bg_image.xci
set_property used_in_implementation false [get_files -all d:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_bg_image/rom_bg_image_ooc.xdc]

read_ip -quiet D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_myplane_image/rom_myplane_image.xci
set_property used_in_implementation false [get_files -all d:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_myplane_image/rom_myplane_image_ooc.xdc]

read_ip -quiet D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_atk_image/rom_atk_image.xci
set_property used_in_implementation false [get_files -all d:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_atk_image/rom_atk_image_ooc.xdc]

read_ip -quiet D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_enemy_image/rom_enemy_image.xci
set_property used_in_implementation false [get_files -all d:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_enemy_image/rom_enemy_image_ooc.xdc]

read_ip -quiet D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_start_image/rom_start_image.xci
set_property used_in_implementation false [get_files -all d:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_start_image/rom_start_image_ooc.xdc]

read_ip -quiet D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_end_image/rom_end_image.xci
set_property used_in_implementation false [get_files -all d:/verilog_projects/test090_plane_war/test090_plane_war.srcs/sources_1/ip/rom_end_image/rom_end_image_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/constrs_1/new/game.xdc
set_property used_in_implementation false [get_files D:/verilog_projects/test090_plane_war/test090_plane_war.srcs/constrs_1/new/game.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top_module -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_module.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_module_utilization_synth.rpt -pb top_module_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
