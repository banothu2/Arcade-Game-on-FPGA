module bg_color_map	( input			[9:0] DrawX, 	DrawY,	fg_x, fg_y,
								input	[3:0]	fg_move, bg_move,
								input fg_shoot,
					  output logic  [7:0] Red, 		Green, 		Blue);

	logic bg_on, bg2_on, fg_on;
	logic [9:0]	shape_x = 100;
	logic [9:0] shape_y = 100;
	logic [9:0] fg_size_x = 38;
	logic [9:0] fg_size_y = 40;
	logic [9:0] shape_size_x = 253;
	logic [9:0] shape_size_y = 212;
	logic [7:0] sprite_addr;
	logic [1011:0] sprite_data;
	logic [7:0] figure_addr;
	logic [151:0] fg_data;

	background_rom bg_instance(.addr(sprite_addr), .data(sprite_data));
	fg_rom fg_instance(.addr(figure_addr),.data(fg_data));

	/* Begin First Always Comb 
		Purpose: 
	*/
	always_comb
		begin
		
			if(DrawX >= shape_x && DrawX < shape_x + shape_size_x && DrawY >= shape_y && DrawY < shape_y + shape_size_y)
				begin
					bg_on = 1'b1;
					bg2_on = 1'b0;
					fg_on = 1'b0;
					figure_addr = 8'b0;
					sprite_addr = (DrawY - shape_y);
					if(DrawX >= fg_x && DrawX < fg_x + fg_size_x && DrawY >= fg_y && DrawY < fg_y + fg_size_y)
						begin
							fg_on = 1'b1;
							figure_addr = (DrawY - fg_y);
							bg_on = 1'b0;
						end
					else
						begin
							fg_on = 1'b0;
							figure_addr = 8'b0;
						end
				end
			else if(DrawX >= shape_size_x + shape_x && DrawX < 2*shape_size_x + shape_x && DrawY >= shape_y && DrawY < shape_y + shape_size_y)
				begin
					bg2_on = 1'b1;
					bg_on = 1'b0;
					fg_on = 1'b0;
					figure_addr = 8'b0;
					sprite_addr = (DrawY - shape_y);
					if(DrawX >= fg_x && DrawX < fg_x + fg_size_x && DrawY >= fg_y && DrawY < fg_y + fg_size_y)
						begin
							fg_on = 1'b1;
							bg2_on = 1'b0;
							figure_addr = (DrawY - fg_y);
						end
					else
						begin
							fg_on = 1'b0;
							figure_addr = 8'b0;
						end	
				end
			else
				begin
					bg_on = 1'b0;
					bg2_on = 1'b0;
					fg_on = 1'b0;
					sprite_addr = 8'b0;
					figure_addr = 8'b0;
				end
				
				/*if(DrawX >= shape_x && DrawX < shape_x + fg_size_x && DrawY >= shape_y && DrawY < shape_y + fg_size_y)
						begin
							fg_on = 1'b1;
							figure_addr = (DrawY - shape_y);
						end
					else
						begin
							fg_on = 1'b0;
							figure_addr = 8'b0;
						end
			/*
				if(DrawX >= fg_x && DrawX < fg_x + fg_size_x && DrawY >= fg_y && DrawY < fg_y + fg_size_y)
				begin
					bg_on = 1'b0;
					fg_on = 1'b1;
					bg2_on = 1'b0;
					figure_addr = (DrawY - shape_y);
					sprite_addr = 8'b0;
				end
				else
				begin
					bg_on = 1'b0;
					bg2_on = 1'b0;
					fg_on = 1'b0;
					sprite_addr = 8'b0;
					figure_addr = 8'b0;
				end
			*/
		end
	/* End of first always comb logic - Purpose: */
	// -------------------------------------------------------------------------------------------------------------------------
	/* Begin second always comb logic 
		Purpose: 
	*/
	always_comb
		begin:RGB_display
			if ((bg_on == 1'b1))
				begin
					if (sprite_data[1011-(4*(DrawX - shape_x) + 1)] == 1'b0)
						begin
							if (sprite_data[1011 - 4*(DrawX - shape_x) + 2] == 1'b0)
								begin
									if (sprite_data[1011- 4*(DrawX - shape_x) + 3] == 1'b0)
										begin
											Red = 8'h00;
											Green = 8'h00;
											Blue = 8'h00;
										end
									else
										begin
											Red = 8'h00;
											Green = 8'd130;
											Blue = 8'd98;
										end
								end
							else
								begin
									if (sprite_data[1011 - 4*(DrawX - shape_x) + 3] == 1'b0)
										begin
											Red = 8'd206;
											Green = 8'd203;
											Blue = 8'd206;
										end
									else
										begin
											Red = 8'd255;
											Green = 8'd251;
											Blue = 8'd255;
										end
								end
						end
					else
						begin
							Red = 8'h00;
							Green = 8'd73;
							Blue = 8'd8;
						end
				end
			else if (bg2_on == 1'b1)
				begin
					if (sprite_data[(4*(DrawX - shape_x - shape_size_x) + 1)] == 1'b0)
						begin
							if (sprite_data[4*(DrawX - shape_x - shape_size_x) + 2] == 1'b0)
								begin
									if (sprite_data[4*(DrawX - shape_x - shape_size_x) + 3] == 1'b0)
										begin
											Red = 8'h00;
											Green = 8'h00;
											Blue = 8'h00;
										end
									else
										begin
											Red = 8'h00;
											Green = 8'd130;
											Blue = 8'd198;
										end
								end
							else
								begin
									if (sprite_data[4*(DrawX - shape_x - shape_size_x) + 3] == 1'b0)
										begin
											Red = 8'd206;
											Green = 8'd203;
											Blue = 8'd206;
										end
									else
										begin
											Red = 8'd255;
											Green = 8'd251;
											Blue = 8'd255;
										end
								end
						end
					else
						begin
							Red = 8'h00;
							Green = 8'd73;
							Blue = 8'd8;
						end
				end
				else if (fg_on == 1)
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
													Red = 8'h00;
													Green = 8'h00;
													Blue = 8'h00;
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
				Figure Colors:
				0:255 255 255
				1:48 32 16
				2:160 72 32
				3:120 40 8
				4:128 104 88
				5:192 168 144
				6:96 72 56
				7:224 128 80
				8:248 192 136
				9:248 248 208
				10:248 40 8
				11:24 48 72
				12:248 232 232
				13:24 112 136
				14:80 184 192
				15:248 224 88
			
			*/

			
		end
		/* End of always comb logic 2 */
endmodule
