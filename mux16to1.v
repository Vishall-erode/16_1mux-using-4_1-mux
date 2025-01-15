module mux16to1(
  input wire [15:0] data, 
 input wire [3:0] sel,
  output  wire  y
);
 wire [3:0] y1;
  genvar i;
  generate for (i = 0; i < 4; i = i + 1) begin : mux_gen 
  mux4to1 mux ( .data(data[i*4 +: 4]), 
 .sel(sel[1:0]), 
.y(y1[i]) 
 ); 
end 
endgenerate
mux4to1  mux4 ( .data(y1), .sel(sel[3:2]), .y(y) );
 endmodule
