module upsampler(	input wire clk_in,
					output reg clk_out,
					output reg[7:0] x_out,
					input wire[9:0] x_in,
					output reg[7:0] y_out,
					input wire[8:0] y_in,
					input wire[7:0] rgb_in,
					output reg[7:0] r,
					output reg[7:0] g,
					output reg[7:0] b,
					input wire[9:0] counterH,
					input wire[9:0] counterV,
					output reg between_frames
	);

/*horizontal timing parameters: (in pixel clocks)
 *
 * Sync: 96
 * Back Porch: 48
 * display interval: 640
 * front porch: 16
 *
 * parameters are the *last* clock cycle of each section
 */

localparam[9:0] hs = 96;
localparam[9:0] hbp = 144;
localparam[9:0] hd = 784;
localparam[9:0] hfp = 800;

/*vertical timing paraneters: (in lines)
 *
 * Sync: 2
 * Back Porch: 33
 * display interval: 480
 * front porch: 10
 *
 * parameters are the *last* line of each section
 */

localparam[9:0] vs = 2;
localparam[9:0] vbp = 35;
localparam[9:0] vd = 515;
localparam[9:0] vfp = 525;



always @(posedge clk_in)
begin
	if(counterH>hbp && counterH<hfp && counterV>vbp && counterV<vfp)
	begin
		//set x and y coordinates to downsample resolution by 2
		x_out <= (counterH-hbp)/2;
		y_out <= (counterV-vbp)/2;

		//set colors to upsample 8 bit color to 24 bit color.
		r = ((rgb_in >> 5) & 3'b111) * 2^8 / 2^3;
		g = ((rgb_in >> 2) & 3'b111) * 2^8 / 2^3;
		b = ((rgb_in) & 2'b11) * 2^8 / 2^2;

		//set output clock.
		if(counterH % 2 == 1)
		begin
			clk_out=1;
		end
		else begin
			clk_out=0;
		end

		if(counterV>vfp)
		begin
			between_frames = 1;
		end
		else
		begin
			between_frames = 0;
		end
	end
end

endmodule