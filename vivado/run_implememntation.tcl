open_proj vv.xpr

set run_name impl_1
set cpu_count 8

reset_runs $run_name
launch_runs $run_name -jobs $cpu_count
wait_on_run $run_name

set status [get_property STATUS [get_runs $run_name]]
if {$status != "route_design Complete!"} {
  exit 1
}
exit 0