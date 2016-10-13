module sprite_tester(	input wire clk,
						input wire start_program,
						output reg program_active,
						output reg[7:0] setx,
						output reg[7:0] sety,
						output reg[5:0] requested_sprite_id,
						output reg[15:0] set_address,
						input wire sprite_1_on,
						input wire sprite_2_on,
						input wire clear,
						output reg clear_out);

reg already_programmed = 0;

always @(posedge clk)
begin
	if(program_active==1 && !already_programmed)
	begin
		if(sprite_1_on==1)
		begin
			program_active=1;
			setx = 50;
			sety = 100;
			requested_sprite_id = 1;
			set_address = 64;
		end
		else if (sprite_1_on==1) begin
			program_active=1;
			setx = 200;
			sety = 250;
			requested_sprite_id = 2;
			set_address = 128;
		end
		else if (clear == 1) begin
			program_active = 0;
			clear_out = 1;
		end
	end
end

always @(negedge start_program)
begin
	already_programmed = 0;
	clear_out = 0;
	program_active = 0;
end

endmodule