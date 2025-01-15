module mux4to1(
 input wire [3:0] data,
 input wire [1:0] sel,
 output wire y
);
assign y = (sel == 2'b00)? data[0]:
           (sel == 2'b01)? data[1]:
           (sel == 2'b10)? data[2]:
            data[3];
endmodule
