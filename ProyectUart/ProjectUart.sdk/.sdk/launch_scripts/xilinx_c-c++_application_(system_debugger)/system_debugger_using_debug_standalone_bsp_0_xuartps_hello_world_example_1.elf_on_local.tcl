connect -url tcp:127.0.0.1:3121
source C:/Xilinx/Xilinx_Training/ProyectUart/ProjectUart.sdk/designbd_uart_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78402A"} -index 0
loadhw C:/Xilinx/Xilinx_Training/ProyectUart/ProjectUart.sdk/designbd_uart_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78402A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78402A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78402A"} -index 0
dow C:/Xilinx/Xilinx_Training/ProyectUart/ProjectUart.sdk/standalone_bsp_0_xuartps_hello_world_example_1/Debug/standalone_bsp_0_xuartps_hello_world_example_1.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A78402A"} -index 0
con
