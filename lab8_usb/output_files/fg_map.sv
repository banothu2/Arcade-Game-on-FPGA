


module fg_color_map ( input [9:0] 	DrawX, DrawY, //fg_x, fg_y,
							 output [9:0]	Red, Green, Blue
							 );
	logic fg0_on, fg1_on;
	logic [9:0] 	fg_x = 100;
	logic [9:0] 	fg_y = 100;
	logic [9:0]		width = 38;
	logic [9:0] 	height = 40;
	logic [7:0]		fg_addr;
	logic [151:0]	fg_data;
	fg_rom figure_instance1	(.addr(fg_addr), .data(fg_data));
	
	always_comb
	begin
		if(DrawX >= fg_x && DrawX < fg_x + width && DrawY >= fg_y && DrawY < fg_y + height)
		begin
			fg0_on = 1'b1;
			fg1_on = 1'b0;
			fg_addr = DrawY - fg_y;
		end
		else
		begin
			fg0_on = 1'b0;
			fg1_on = 1'b0;
			fg_addr = 9'b0;
		end
	end
	
	always_comb
	begin
		if (fg0_on == 1)
				begin
					if(fg_data[151 - (4*(DrawX - fg_x))] == 1'b0)
						begin
							if(fg_data[151 - (4*(DrawX - fg_x)+1)] == 1'b0)
								begin
									if(fg_data[151 - (4*(DrawX - fg_x)+2)] == 1'b0)
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'h0: Same color
													Red = 8'hff;
													Green = 8'hff;
													Blue = 8'hff;
												end
											else
												begin
													//4'h1: 48 32 16
													Red = 8'h30;
													Green = 8'h20;
													Blue = 8'h10;
												end
										end
									else
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'h2: 128 104 88
													Red = 8'd128;
													Green = 8'd104;
													Blue = 8'd88;
												end
											else
												begin
													//4'h3: 160 72 31
													Red = 8'd160;
													Green = 8'd72;
													Blue = 8'd31;
												end
										end
								end
							else
								begin
									// 4:128 104 88
									// 5:192 168 144
									// 6:96 72 56
									// 7:224 128 80
									if(fg_data[151 - (4*(DrawX - fg_x)+2)] == 1'b0)
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'h4: 120 40 8
													Red = 8'd120;
													Green = 8'd40;
													Blue = 8'd8;
												end
											else
												begin
													//4'h5: 192 168 144
													Red = 8'hc0;
													Green = 8'ha8;
													Blue = 8'h90;
												end
										end
									else
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'h6: 248 192 136
													Red = 8'd248;
													Green = 8'd192;
													Blue = 8'd136;
												end
											else
												begin
													//4'h7: 224 128 80
													Red = 8'he0;
													Green = 8'h80;
													Blue = 8'h50;
												end
										end
								end
						end
					else
						begin
							// 8:248 192 136
							// 9:248 248 208
							// 10:248 40 8
							// 11:24 48 72
							// 12:248 232 232
							// 13:24 112 136
							// 14:80 184 192
							// 15:248 224 88
							if(fg_data[151 - (4*(DrawX - fg_x)+1)] == 1'b0)
								begin
									if(fg_data[151 - (4*(DrawX - fg_x)+2)] == 1'b0)
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'h8: 96 72 56
													Red = 8'd96;
													Green = 8'd72;
													Blue = 8'd56;
												end
											else
												begin
													//4'h9:248 232 232
													Red = 8'hf8;
													Green = 8'd232;
													Blue = 8'd232;
												end
										end
									else
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'ha: 248 248 208
													Red = 8'hf8;
													Green = 8'd248;
													Blue = 8'd208;
												end
											else
												begin
													//4'hb: 24 48 72
													Red = 8'h18;
													Green = 8'h30;
													Blue = 8'h48;
												end
										end
								end
							else
								begin
									// 12:248 232 232
									// 13:24 112 136
									// 14:80 184 192
									// 15:248 224 88
									if(fg_data[151 - (4*(DrawX - fg_x)+2)] == 1'b0)
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'hc: 24 112 136
													Red = 8'd24;
													Green = 8'd112;
													Blue = 8'd136;
												end
											else
												begin
													//4'hd: 80 184 192
													Red = 8'd80;
													Green = 8'd184;
													Blue = 8'd192;
												end
										end
									else
										begin
											if(fg_data[151 - (4*(DrawX - fg_x)+3)] == 1'b0)
												begin
													//4'he: 248 40 8
													Red = 8'd248;
													Green = 8'd40;
													Blue = 8'd8;
												end
											else
												begin
													//4'hf: 248 224 88
													Red = 8'hf8;
													Green = 8'he0;
													Blue = 8'h58;
												end
										end
								end
						end
				end

			else
				begin
					Red = 8'h0;
					Green = 8'h0;
					Blue = 8'h0;
				end
		/*
			case (fg_data[(4*(DrawX - fg_x)):(4*(DrawX - fg_x)+3)])
				4'h0:
					begin
						//4'h0: Same color
						Red = 8'h0;
						Green = 8'h0;
						Blue = 8'h0;
					end
				4'h1:
					begin
						//4'h1: 48 32 16
						Red = 8'h30;
						Green = 8'h20;
						Blue = 8'h10;
					end
				4'h2:
					begin
						//4'h2: 160 72 32
						Red = 8'ha0;
						Green = 8'h48;
						Blue = 8'h20;
					end
				4'h3:
					begin
						//4'h3: 120 40 8
						Red = 8'h78;
						Green = 8'h28;
						Blue = 8'h08;
					end
				4'h4:
					begin
						//4'h4: 128 104 88
						Red = 8'h80;
						Green = 8'h68;
						Blue = 8'h58;
					end
				4'h5:
					begin
						//4'h5: 192 168 144
						Red = 8'hc0;
						Green = 8'ha8;
						Blue = 8'h90;
					end
				4'h6:
					begin
						//4'h6: 96 72 56
						Red = 8'h60;
						Green = 8'h48;
						Blue = 8'h38;
					end
				4'h7:
					begin
						//4'h7: 224 128 80
						Red = 8'he0;
						Green = 8'h80;
						Blue = 8'h50;
					end
				4'h8:
					begin
						//4'h8: 248 192 136
						Red = 8'hf8;
						Green = 8'hc0;
						Blue = 8'h88;
					end
				4'h9:
					begin
						//4'h9:248 248 208
						Red = 8'hf8;
						Green = 8'hf8;
						Blue = 8'hd0;
					end
				4'ha:
					begin
						//4'ha: 248 40 8
						Red = 8'hf8;
						Green = 8'h28;
						Blue = 8'h08;
					end
				4'hb:
					begin
						//4'hb: 24 48 72
						Red = 8'h18;
						Green = 8'h30;
						Blue = 8'h48;
					end
				4'hc:
					begin
						//4'hc: 248 232 232
						Red = 8'hf8;
						Green = 8'he8;
						Blue = 8'he8;
					end
				4'hd:
					begin
						//4'hd: 24 112 136
						Red = 8'h18;
						Green = 8'h70;
						Blue = 8'h88;
					end
				4'he:
					begin
						//4'he: 80 184 192
						Red = 8'h50;
						Green = 8'hb8;
						Blue = 8'hc0;
					end
				4'hf:
					begin
						//4'hf: 248 224 88
						Red = 8'hf8;
						Green = 8'he0;
						Blue = 8'h58;
					end
				default:
					begin
						Red = 8'h0;
						Green = 8'h0;
						Blue = 8'h0;
					end
			endcase
		end */
	end
endmodule
				
				