module sprite_engine (	input wire clk,
						input wire prev_enable,
						input wire[5:0] sprite_id,
						input wire[7:0] screenX,
						input wire[7:0] screenY,
						input wire[5:0] requested_sprite_id,
						input wire[15:0] set_address,
						input wire program_active,
						input wire[15:0] mem_address,
						input wire[7:0] rgbin,
						input wire[7:0] membus,
						input wire clear,
						input wire[7:0] setx,
						input wire[7:0] sety,
						output reg[7:0] rgbout,
						output wire[7:0] membus_out,
						output wire clk_out,
						output reg[15:0] mem_address_out,
						output reg enable_out,
						output wire[5:0] sprite_id_out,
						output wire[7:0] screenXout,
						output wire[7:0] screenYout,
						output wire program_active_out,
						output wire[7:0] setxout,
						output wire[7:0] setyout,
						output wire[5:0] requested_sprite_id_out,
						output wire[15:0] set_address_out,
						output wire clear_out);

//define all module IO:


assign clk_out = clk;
assign clear_out = clear;
assign screenXout = screenX;
assign screenYout = screenY;
assign membus_out = membus;
assign program_active_out = program_active;
assign setxout = setx;
assign setyout = sety;
assign requested_sprite_id_out = requested_sprite_id;
assign sprite_id_out = 1 + sprite_id;
assign set_address_out = set_address;

//internal variables
reg[15:0] sprite_address = 0;
reg[7:0] x = 0;
reg[7:0] y = 0;


function [7:0] mem_address_gen;//return the address of the next pixel no the sprite
input [7:0] xrel, yrel, base_address;
begin
	mem_address_gen = base_address+xrel+8*yrel;
end
endfunction

reg result;
function in_bounds;//return if current pixel location is in the sprite's regioneroni.
input [7:0] xbase, ybase, xcurrent, ycurrent;
begin
	result = 0;
	if(xcurrent >= xbase 
		&& xcurrent < xbase+8 
		&& ycurrent >= ybase 
		&& ycurrent < ybase+8)
	begin
		result = 1;
	end
	in_bounds = result;
end
endfunction

always @(posedge program_active)//reprogram sprite's coordinates and memory location on the fly
begin
	if(requested_sprite_id==sprite_id)
	begin
		sprite_address=set_address;
		x=setx;
		y=sety;
	end
end

always @(posedge clk)//handle pixel data and stuff
begin
	rgbout = in_bounds(x,y,screenX,screenY) == 1 ? membus : rgbin;
	mem_address_out = in_bounds(x,y,screenX,screenY)==1 && !prev_enable ? (mem_address_gen(screenX-x,screenY-y,sprite_address)) : mem_address;
	enable_out = prev_enable || in_bounds(x,y,screenX,screenY) == 1 || membus!=0 ? 1 : 0;
end

always @(posedge clear)
begin
	x=0;
	y=0;
	sprite_address=0;
end

endmodule