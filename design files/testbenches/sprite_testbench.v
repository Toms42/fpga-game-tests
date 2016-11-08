module testbench;
	wire clk;
	wire prev_enable;
	wire[5:0] sprite_id;
	wire[7:0] screenXwire;
	wire[7:0] screenYwire;
	wire[5:0] requested_sprite_idwire;
	wire[15:0] set_address;
	wire program_activewire;
	wire[15:0] mem_addresswire;
	wire[7:0] rgbinwire;
	wire[7:0] membuswire;
	wire clearwire;
	wire[7:0] setxwire;
	wire[7:0] setywire;
	wire[7:0] rgbout;
	wire[7:0] membus_out;
	wire clk_out;
	wire[15:0] mem_address_out;
	wire enable_out;
	wire[5:0] sprite_id_out;
	wire[7:0] screenXout;
	wire[7:0] screenYout;
	wire program_active_out;
	wire[7:0] setxout;
	wire[7:0] setyout;
	wire[5:0] requested_sprite_id_out;
	wire[15:0] set_address_out;
	wire clear_out;


	sprite_tester tester(clk,
	prev_enable,
	sprite_id,
	screenXwire,
	screenYwire,
	requested_sprite_idwire,
	set_address,
	program_activewire,
	rgbinwire,
	clearwire,
	setxwire,
	setywire,
	rgbout,
	membus_out,
	clk_out,
	mem_address_out,
	enable_out,
	sprite_id_out,
	screenXout,
	screenYout,
	program_active_out,
	setxout,
	setyout,
	requested_sprite_id_out,
	set_address_out,
	clear_out);

	sprite_engine se(clk,
	prev_enable,
	sprite_id,
	screenXwire,
	screenYwire,
	requested_sprite_idwire,
	set_address,
	program_activewire,
	mem_addresswire,
	rgbinwire,
	membuswire,
	clearwire,
	setxwire,
	setywire,
	rgbout,
	membus_out,
	clk_out,
	mem_address_out,
	enable_out,
	sprite_id_out,
	screenXout,
	screenYout,
	program_active_out,
	setxout,
	setyout,
	requested_sprite_id_out,
	set_address_out,
	clear_out);

	virtual_memory mem(
		membuswire,
		clk,
		mem_address_out);

endmodule