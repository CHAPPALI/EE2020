@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xsim slow_blink_test_behav -key {Behavioral:sim_1:Functional:slow_blink_test} -tclbatch slow_blink_test.tcl -view F:/Vivado/lab_3/slow_blink_test_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
