module tb_16mux;

   
    reg [15:0] data;
    reg [3:0] sel;

    wire y;

    
    mux16to1 uut (
        .data(data),
        .sel(sel),
        .y(y)
    );

    initial begin
       
        data = 16'b0000000000000000;
        sel = 4'b0000;

        
        #10;
        
        
        data = 16'b1010101010101010; sel = 4'b0000; #10;
        
        
        data = 16'b1010101010101010; sel = 4'b0001; #10;
        
        
        data = 16'b1010101010101010; sel = 4'b0010; #10;
        
       
        data = 16'b1010101010101010; sel = 4'b0011; #10;

       
        data = 16'b1010101010101010; sel = 4'b0100; #10;

        
        data = 16'b1010101010101010; sel = 4'b0101; #10;

        
        data = 16'b1010101010101010; sel = 4'b0110; #10;

        
        data = 16'b1010101010101010; sel = 4'b0111; #10;

        
        data = 16'b1010101010101010; sel = 4'b1000; #10;

        
        data = 16'b1010101010101010; sel = 4'b1001; #10;

        
        data = 16'b1010101010101010; sel = 4'b1010; #10;

        
        data = 16'b1010101010101010; sel = 4'b1011; #10;

        
        data = 16'b1010101010101010; sel = 4'b1100; #10;

        
        data = 16'b1010101010101010; sel = 4'b1101; #10;

        
        data = 16'b1010101010101010; sel = 4'b1110; #10;

        
        data = 16'b1010101010101010; sel = 4'b1111; #10;

        
        $finish;
    end
      
    initial begin
        $monitor("At time %t, sel = %b, data = %b, y = %b", $time, sel, data, y);
    end
endmodule

              