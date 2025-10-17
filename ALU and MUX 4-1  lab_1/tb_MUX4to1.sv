//====================================
// Testbench for Parametrizable 4:1 MUX
//====================================
`timescale 1ns/1ps

module tb_MUX4to1;

    // Parameters
    parameter WIDTH = 8;

    // DUT signals
    logic [WIDTH-1:0] D0, D1, D2, D3;
    logic [1:0]       Sel;
    logic [WIDTH-1:0] Y;

    // Instantiate MUX
    MUX4to1 #(.WIDTH(WIDTH)) uut (
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .Sel(Sel),
        .Y(Y)
    );

    // Test sequence
    initial begin
        $display("Starting MUX testbench...");
        $dumpfile("mux_wave.vcd");
        $dumpvars(0, tb_MUX4to1);

        // Initialize inputs
        D0 = 8'h11;
        D1 = 8'h22;
        D2 = 8'h33;
        D3 = 8'h44;

        // Test all select combinations
        for (int i = 0; i < 4; i++) begin
            Sel = i;
            #10;
            $display("Sel=%b -> Output=%h", Sel, Y);
        end

        #10;
        $display("MUX test completed.");
        $finish;
    end

endmodule
