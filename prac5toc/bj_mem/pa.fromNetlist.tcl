
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name bj_mem -dir "E:/prac5toc/bj_mem/planAhead_run_2" -part xc3s1000ft256-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/prac5toc/bj_mem/bj.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/prac5toc/bj_mem} {ipcore_dir} }
add_files [list {ipcore_dir/bj_mem.ncf}] -fileset [get_property constrset [current_run]]
set_property target_constrs_file "pines.ucf" [current_fileset -constrset]
add_files [list {pines.ucf}] -fileset [get_property constrset [current_run]]
link_design
