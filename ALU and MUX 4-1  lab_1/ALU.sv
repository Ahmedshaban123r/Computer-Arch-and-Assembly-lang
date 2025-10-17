//===========================
// Parametrizable ALU
//===========================
module ALU #(
    parameter WIDTH = 8   // Bit width of operands
)(
    input  logic [WIDTH-1:0] A, B,   // ALU inputs
    input  logic [2:0]       ALU_Sel, // ALU control
    output logic [WIDTH-1:0] Result,  // ALU result
    output logic              CarryOut, Zero
);

    logic [WIDTH:0] tmp; // for carry handling in addition/subtraction

    always_comb begin
        case (ALU_Sel)
            3'b000: tmp = A + B;             // Addition
            3'b001: tmp = A - B;             // Subtraction
            3'b010: tmp = A & B;             // AND
            3'b011: tmp = A | B;             // OR
            3'b100: tmp = A ^ B;             // XOR
            3'b101: tmp = ~(A | B);          // NOR
            3'b110: tmp = A << 1;            // Logical left shift
            3'b111: tmp = A >> 1;            // Logical right shift
            default: tmp = '0;
        endcase

        Result   = tmp[WIDTH-1:0];
        CarryOut = tmp[WIDTH];
        Zero     = (Result == '0);
    end

endmodule

