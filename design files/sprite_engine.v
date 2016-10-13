module sprite_engine (clk, clk_out, screenX,screenY, rgbin, rgbout, screenXout, 
	screenYout, membus, membus_out, mem_address, mem_address_out, enable_out, prev_enable, requested_sprite_id, requested_sprite_id_out,
	set_address, set_address_out, program_active_out, program_active, setx, sety, setxout, setyout,
	sprite_id, sprite_id_out, clear, clear_out);

//define all module IO:

input clk;
wire clk;
output clk_out;
wire clk_out;
assign clk_out = clk;

input clear;
wire clear;
output clear_out;
wire clear_out;
assign clear_out = clear;

input[7:0] rgbin;
wire[7:0] rgbin;

input[7:0] screenX;
wire[7:0] screenX;
output[7:0] screenXout;
wire[7:0] screenXout;
assign screenXout = screenX;

input[7:0] screenY;
wire[7:0] screenY;
output[7:0] screenYout;
wire[7:0] screenYout;
assign screenYout = screenY;

output[7:0] rgbout;
reg[7:0] rgbout;

output enable_out;
reg enable_out;

input prev_enable;
wire prev_enable;

input[7:0] membus;
wire[7:0] membus;
output[7:0] membus_out;
wire[7:0] membus_out;
assign membus_out = membus;

input[15:0] mem_address;
wire[15:0] mem_address;
output[15:0] mem_address_out;
reg[15:0] mem_address_out;

input[15:0] set_address;
wire[15:0] set_address;
output[15:0] set_address_out;
wire[15:0] set_address_out;
assign set_address_out = set_address;

input program_active;
output program_active_out;
wire program_active;
wire program_active_out;
assign program_active_out = program_active;

input[7:0] setx;
wire[7:0] setx;
input[7:0] sety;
wire[7:0] sety;
output[7:0] setxout;
wire[7:0] setxout;
output[7:0] setyout;
wire[7:0] setyout;
assign setxout = setx;
assign setyout = sety;

input[5:0] requested_sprite_id;
wire[5:0] requested_sprite_id;
output[5:0] requested_sprite_id_out;
wire[5:0] requested_sprite_id_out;
assign requested_sprite_id_out = requested_sprite_id;

input[5:0] sprite_id;
wire[5:0] sprite_id;
output[5:0] sprite_id_out;
wire[5:0] sprite_id_out;
assign sprite_id_out = 1 + sprite_id;


//internal variables
reg[15:0] sprite_address;
reg[7:0] x;
reg[7:0] y;


function inbounds;//return if current pixel location is in the sprite's regioneroni.
input xbase, ybase, xcurrent, ycurrent;
begin
	inbounds = (screenX>=x && screenX<x+8 && screenY >= y && screenY < y+8);
end
endfunction

function mem_address_gen;//return the address of the next pixel no the sprite
input xrel, yrel, base_address;
begin
	mem_address_gen = base_address+xrel+8*yrel;
end
endfunction

always @(posedge program_active)//reprogram sprite's coordinates and memory location on the fly
begin
	if(requested_sprite_id==sprite_id)
	begin
		sprite_address=set_address;
		x<=setx;
		y<=sety;
	end
end

always @(posedge clk)//handle pixel data and stuff
begin
	rgbout <= (inbounds(x,y,screenX,screenY)) ? membus : rgbin;
	mem_address_out <= inbounds && !prev_enable ? (mem_address_gen(x,y,sprite_address)) : mem_address;
	enable_out <= prev_enable || inbounds || membus!=0 ? 1 : 0;
end

always @(posedge clear)
begin
	x=0;
	y=0;
	sprite_address=0;
end

endmodule