
#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {main_clk_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {Clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {m_usb_system|sdram_pll|sd1|pll7|clk[0]} -source [get_pins {m_usb_system|sdram_pll|sd1|pll7|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -phase -54.000 -master_clock {main_clk_50} [get_pins {m_usb_system|sdram_pll|sd1|pll7|clk[0]}] 
create_generated_clock -name {m_usb_system|sdram_pll|sd1|pll7|clk[1]} -source [get_pins {m_usb_system|sdram_pll|sd1|pll7|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -phase -54.000 -master_clock {main_clk_50} [get_pins {m_usb_system|sdram_pll|sd1|pll7|clk[1]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {main_clk_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {CLOCK_50}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {m_usb_system|sdram_pll|sd1|pll7|clk[0]} -source [get_pins {m_usb_system|sdram_pll|sd1|pll7|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -phase -54.000 -master_clock {main_clk_50} [get_pins {m_usb_system|sdram_pll|sd1|pll7|clk[0]}] 
create_generated_clock -name {m_usb_system|sdram_pll|sd1|pll7|clk[1]} -source [get_pins {m_usb_system|sdram_pll|sd1|pll7|inclk[0]}] -duty_cycle 50.000 -multiply_by 1 -phase -54.000 -master_clock {main_clk_50} [get_pins {m_usb_system|sdram_pll|sd1|pll7|clk[1]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[0]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[0]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[1]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[1]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[2]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[2]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[3]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[3]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[4]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[4]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[5]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[5]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[6]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[6]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[7]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[7]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[8]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[8]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[9]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[9]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[10]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[10]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[11]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[11]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[12]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[12]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[13]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[13]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[14]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[14]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_DATA[15]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[15]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {Reset}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Reset}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {OTG_INT}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_INT}]

set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[0]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[0]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[1]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[1]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[2]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[2]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[3]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[3]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[4]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[4]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[5]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[5]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[6]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[6]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[7]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[7]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[8]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[8]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[9]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[9]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[10]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[10]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[11]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[11]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[12]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[12]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[13]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[13]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[14]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[14]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[15]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[15]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[16]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[16]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[17]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[17]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[18]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[18]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[19]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[19]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[20]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[20]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[21]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[21]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[22]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[22]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[23]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[23]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[24]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[24]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[25]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[25]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[26]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[26]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[27]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[27]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[28]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[28]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[29]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[29]}]
set_input_delay -add_delay -max -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  3.000 [get_ports {sdram_wire_dq[31]}]
set_input_delay -add_delay -min -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[31]}]







set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX0[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX0[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX0[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX0[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX0[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX0[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX0[6]}]


set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX1[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX1[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX1[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX1[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX1[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX1[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX1[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX2[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX2[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX2[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX2[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX2[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX2[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX2[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX3[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX3[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX3[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX3[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX3[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX3[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX3[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX4[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX4[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX4[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX4[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX4[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX4[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX4[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX5[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX5[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX5[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX5[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX5[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX5[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX5[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX6[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX6[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX6[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX6[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX6[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX6[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX6[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX7[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX7[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX7[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX7[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX7[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX7[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {HEX7[6]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[7]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDG[8]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[7]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[8]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[9]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[10]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[11]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[12]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[13]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[14]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[15]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[16]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {LEDR[17]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Red[7]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Blue[7]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {Green[7]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {VGA_clk}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sync}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {blank}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {vs}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {hs}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[7]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[8]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[9]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[10]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[11]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[12]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[13]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[14]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_DATA[15]}]


set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_CS_N}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_RD_N}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_WR_N}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_RST_N}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_ADDR[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {OTG_ADDR[1]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[7]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[8]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[9]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[10]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[11]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_addr[12]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[1]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[3]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[4]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[5]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[6]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[7]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[8]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[9]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[10]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[11]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[12]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[13]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[14]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[15]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[16]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[17]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[18]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[19]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[20]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[21]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[22]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[23]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[24]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[25]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[26]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[27]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[28]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[29]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[30]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dq[31]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_ba[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_ba[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dqm[0]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dqm[1]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dqm[2]}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_dqm[3]}]

set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_ras_n}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_cas_n}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_cke}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_we_n}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_cs_n}]
set_output_delay -add_delay  -clock [get_clocks {m_usb_system|sdram_pll|sd1|pll7|clk[0]}]  2.000 [get_ports {sdram_wire_clk}]



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_registers {*altera_avalon_st_clock_crosser:*|in_data_buffer*}] -to [get_registers {*altera_avalon_st_clock_crosser:*|out_data_buffer*}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -from [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_nios2_oci_break:the_usb_system_nios2_qsys_0_nios2_oci_break|break_readreg*}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_tck:the_usb_system_nios2_qsys_0_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_nios2_oci_debug:the_usb_system_nios2_qsys_0_nios2_oci_debug|*resetlatch}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_tck:the_usb_system_nios2_qsys_0_jtag_debug_module_tck|*sr[33]}]
set_false_path -from [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_nios2_oci_debug:the_usb_system_nios2_qsys_0_nios2_oci_debug|monitor_ready}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_tck:the_usb_system_nios2_qsys_0_jtag_debug_module_tck|*sr[0]}]
set_false_path -from [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_nios2_oci_debug:the_usb_system_nios2_qsys_0_nios2_oci_debug|monitor_error}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_tck:the_usb_system_nios2_qsys_0_jtag_debug_module_tck|*sr[34]}]
set_false_path -from [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_nios2_ocimem:the_usb_system_nios2_qsys_0_nios2_ocimem|*MonDReg*}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_tck:the_usb_system_nios2_qsys_0_jtag_debug_module_tck|*sr*}]
set_false_path -from [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_tck:the_usb_system_nios2_qsys_0_jtag_debug_module_tck|*sr*}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_sysclk:the_usb_system_nios2_qsys_0_jtag_debug_module_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_jtag_debug_module_wrapper:the_usb_system_nios2_qsys_0_jtag_debug_module_wrapper|usb_system_nios2_qsys_0_jtag_debug_module_sysclk:the_usb_system_nios2_qsys_0_jtag_debug_module_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*usb_system_nios2_qsys_0:*|usb_system_nios2_qsys_0_nios2_oci:the_usb_system_nios2_qsys_0_nios2_oci|usb_system_nios2_qsys_0_nios2_oci_debug:the_usb_system_nios2_qsys_0_nios2_oci_debug|monitor_go}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************














