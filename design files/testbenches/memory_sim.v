module virtual_memory(
	output reg[7:0] data = 0,
	input wire clk,
	input wire[15:0] address);


always @(negedge clk)
begin
	data = address * 2;
end

endmodule