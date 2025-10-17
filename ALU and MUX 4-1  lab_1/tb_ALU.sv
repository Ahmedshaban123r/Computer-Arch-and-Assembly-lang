//====================================
// Testbench for Parametrizable ALU
//====================================
`timescale 1ns/1ps

module tb_ALU;

    // Parameters
    parameter WIDTH = 8;

    // DUT (Device Under Test) signals
    logic [WIDTH-1:0] A, B;
    logic [2:0]       ALU_Sel;
    logic [WIDTH-1:0] Result;
    logic             CarryOut, Zero;

    // Instantiate ALU
    ALU #(.WIDTH(WIDTH)) uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Result(Result),
        .CarryOut(CarryOut),
        .Zero(Zero)
    );

    // Test sequence
    initial begin
        $display("Starting ALU testbench...");
        $dumpfile("alu_wave.vcd");   // optional for GTKWave
        $dumpvars(0, tb_ALU);

        A = 8'h0A;  // 10
        B = 8'h03;  // 3

        for (int i = 0; i < 8; i++) begin
            ALU_Sel = i;
            #10; // wait 10ns
            $display("ALU_Sel=%b | A=%0d | B=%0d | Result=%0d | Carry=%b | Zero=%b",
                     ALU_Sel, A, B, Result, CarryOut, Zero);
        end

        #10;
        $display("ALU test completed.");
        $finish;
    end

endmodule

