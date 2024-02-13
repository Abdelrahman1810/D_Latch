module testbench ();
    parameter LAT_WIDTH = 8;
    reg aset, gate, aclr;
    reg [LAT_WIDTH-1:0] data;
    wire [LAT_WIDTH-1:0] q;
    D_latch #(LAT_WIDTH)dlat(aset, gate, aclr, data, q);

    initial begin
        aclr = 1;
        aset = 1;
        gate = 1;
        data = 3;
        #2;
        repeat(50) begin
            aclr = $random;
            aset = $random;
            gate = $random;
            data = $random;
            #2;
        end

        aclr = 0;
        aset = 0;
        repeat(150) begin
            gate = $random;
            data = $random;
            #2;
        end
    end
endmodule