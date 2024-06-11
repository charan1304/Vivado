open_proj vv.xpr

set run_name impl_1
set cpu_count 8

launch_runs $run_name -to_step write_bitstream -jobs $cpu_count
wait_on_run $run_name

set status [get_property STATUS [get_runs $run_name]]
if {$status != "write_bitstream Complete!"} {
  exit 1
}
exit 0