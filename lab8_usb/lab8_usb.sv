//-------------------------------------------------------------------------
//      lab7_usb.sv                                                      --
//      Christine Chen                                                   --
//      Fall 2014                                                        --
//                                                                       --
//      Fall 2014 Distribution                                           --
//                                                                       --
//      For use with ECE 385 Lab 7                                       --
//      UIUC ECE Department                                              --
//-------------------------------------------------------------------------

module  lab8_usb 		( input         Clk,
                                     Reset,
							  output [6:0]  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7,
							  output [8:0]  LEDG,
							  output [17:0] LEDR,
							  // VGA Interface 
                       output [7:0]  Red,
							                Green,
												 Blue,
							  output        VGA_clk,
							                sync,
												 blank,
												 vs,
												 hs,
							  // CY7C67200 Interface
							  inout [15:0]  OTG_DATA,						//	CY7C67200 Data bus 16 Bits
							  output [1:0]  OTG_ADDR,						//	CY7C67200 Address 2 Bits
							  output        OTG_CS_N,						//	CY7C67200 Chip Select
												 OTG_RD_N,						//	CY7C67200 Write
												 OTG_WR_N,						//	CY7C67200 Read
												 OTG_RST_N,						//	CY7C67200 Reset
							  input			 OTG_INT,						//	CY7C67200 Interrupt
							  // SDRAM Interface for Nios II Software
							  output [12:0] sdram_wire_addr,				// SDRAM Address 13 Bits
							  inout [31:0]  sdram_wire_dq,				// SDRAM Data 32 Bits
							  output [1:0]  sdram_wire_ba,				// SDRAM Bank Address 2 Bits
							  output [3:0]  sdram_wire_dqm,				// SDRAM Data Mast 4 Bits
							  output			 sdram_wire_ras_n,			// SDRAM Row Address Strobe
							  output			 sdram_wire_cas_n,			// SDRAM Column Address Strobe
							  output			 sdram_wire_cke,				// SDRAM Clock Enable
							  output			 sdram_wire_we_n,				// SDRAM Write Enable
							  output			 sdram_wire_cs_n,				// SDRAM Chip Select
							  output			 sdram_clk						// SDRAM Clock
											);
    
    logic Reset_h;
	 logic [7:0] keycode;
	 logic [7:0] keycode_three_four;
    
    assign {Reset_h}=~ (Reset);  // The push buttons are active low
	 assign OTG_FSPEED = 1'bz;
	 assign OTG_LSPEED = 1'bz;
	    
	 usb_system usbsys_instance(
										 .clk_clk(Clk),         
										 .reset_reset_n(1'b1),   
										 .sdram_wire_addr(sdram_wire_addr), 
										 .sdram_wire_ba(sdram_wire_ba),   
										 .sdram_wire_cas_n(sdram_wire_cas_n),
										 .sdram_wire_cke(sdram_wire_cke),  
										 .sdram_wire_cs_n(sdram_wire_cs_n), 
										 .sdram_wire_dq(sdram_wire_dq),   
										 .sdram_wire_dqm(sdram_wire_dqm),  
										 .sdram_wire_ras_n(sdram_wire_ras_n),
										 .sdram_wire_we_n(sdram_wire_we_n), 
										 .sdram_out_clk_clk(sdram_clk),
										 .keycode_export(keycode_three_four), 
										 .usb_DATA(OTG_DATA),    
										 .usb_ADDR(OTG_ADDR),    
										 .usb_RD_N(OTG_RD_N),    
										 .usb_WR_N(OTG_WR_N),    
										 .usb_CS_N(OTG_CS_N),    
										 .usb_RST_N(OTG_RST_N),   
										 .usb_INT(OTG_INT) );
	/*input        Clk,       // 50 MHz clock
                                      Reset,     // reset signal
                         output logic hs,        // Horizontal sync pulse.  Active low
								              vs,        // Vertical sync pulse.  Active low
												  pixel_clk, // 25 MHz pixel clock output
												  blank,     // Blanking interval indicator.  Active low.
												  sync,      // Composite Sync signal.  Active low.  We don't use it in this lab,
												             //   but the video DAC on the DE2 board requires an input for it.
								 output [9:0] DrawX,     // horizontal coordinate
								              DrawY
	*/
	logic [9:0] DrawX,DrawY;
	vga_controller vgactl_instance(
											.Clk(Clk),
											.Reset(Reset_h),
											.hs(hs),
											.vs(vs),
											.pixel_clk(VGA_clk),
											.blank(blank),
											.sync(sync),
											.DrawX(DrawX),
											.DrawY(DrawY));
											
	/*input        [9:0] BallX, BallY, DrawX, DrawY, Ball_size,
                       output logic [7:0]  Red, Green, Blue
	*/
	//logic [9:0] BallX,BallY,BallS;
	/*fg_color_map fg_instance(.DrawX(DrawX),
									 .DrawY(DrawY),
									 .Red(Red),
									 .Green(Green),
									 .Blue(Blue));*/
	logic [9:0]	fg_x, fg_y;
	logic [3:0] fg_move, bg_move;
	logic fg_shoot;
	figure fg_instance 	(	.Reset(Reset_h),
									.frame_clk(vs),
									.keycode_move(keycode_three_four),
									.fg_x(fg_x),
									.fg_y(fg_y),
									.fg_move(fg_move),
									.bg_move(bg_move),
									.fg_shoot(fg_shoot));
									 
	bg_color_map bg_instance(.DrawX(DrawX),
									 .DrawY(DrawY),
									 .fg_x(fg_x),
									 .fg_y(fg_y),
									 .fg_shoot(fg_shoot),
									 .fg_move(fg_move),
									 .bg_move(bg_move),
									 .Red(Red),
									 .Green(Green),
									 .Blue(Blue));
									 
	/*color_mapper colormap_instance(.BallX(BallX),
											 .BallY(BallY),
											 .Ball_size(BallS),
											 .DrawX(DrawX),
											 .DrawY(DrawY),
											 .Red(Red),
											 .Blue(Blue),
											 .Green(Green));
											 */
	//logic [7:0] curr_key;
	//ball ball_instance(.Reset(Reset_h),.frame_clk(vs),.keycode(curr_key),.BallX(BallX),.BallY(BallY),.BallS(BallS));
	//reg_8 buffer(.Reset(Reset_h),.Clk(Clk),.Shift_In(1'b0),.Shift_En(1'b0),.Load(1),.D(keycode),.Shift_Out(),.Data_Out(curr_key));							
endmodule
