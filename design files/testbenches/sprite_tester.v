module sprite_tester(	output reg clk,
						output reg prev_enable = 0,
						output reg[5:0] sprite_id = 0,
						output reg[7:0] screenX = 0,
						output reg[7:0] screenY = 0,
						output reg[5:0] requested_sprite_id = 0,
						output reg[15:0] set_address =0 ,
						output reg program_active = 0,
						output reg[15:0] mem_address = 0,
						output reg[7:0] rgbin = 0,
						output reg[7:0] membus = 0,
						output reg clear = 0,
						output reg[7:0] setx = 0,
						output reg[7:0] sety = 0,
						input wire[7:0] rgbout,
						input wire[7:0] membus_out ,
						input wire clk_out,
						input wire[15:0] mem_address_out,
						input wire enable_out,
						input wire[5:0] sprite_id_out,
						input wire[7:0] screenXout,
						input wire[7:0] screenYout,
						input wire program_active_out,
						input wire[7:0] setxout,
						input wire[7:0] setyout,
						input wire[5:0] requested_sprite_id_out,
						input wire[15:0] set_address_out,
						input wire clear_out);

	reg in_frame = 1;
	reg clk_internal = 0;

	initial //create dumpfiles
	begin
		clk=0;
		$dumpfile("sprite_test.vcd");
		$dumpvars;

		#1000000 $finish;

	end

	//generate clock signal:
	always
	begin
		#1 clk_internal = !clk_internal;
	end

	//create counter values based on clock:
	always @(posedge clk_internal)
	begin
		screenX=screenX+1;
		if(screenX>250)
		begin
			screenX = 0;
			screenY = screenY + 1;
		end
		if(screenY > 250)
		begin
			in_frame = 0;
			#30 in_frame = 1;
			screenY = 0;
		end
		else begin
			clk = 1;
			#1 clk = 0;
		end

	end

	reg[2:0] cycle = 0;

	//Do some test programming:
	always @(negedge in_frame)
	begin
		$display("here");
		if(cycle == 1)
		begin
			program_active = 1;
			setx = 100;
			sety = 50;
			set_address = 64;
			requested_sprite_id = 0;
		end
		else if(cycle == 2)
		begin
			program_active = 1;
			setx = 200;
			sety = 100;
			set_address = 128;
			requested_sprite_id = 0;
		end

		#2 program_active = 0;
		cycle = cycle + 1;
	end
endmodule
