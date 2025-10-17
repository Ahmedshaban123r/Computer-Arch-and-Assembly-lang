//===========================
// Parametrizable 4:1 MUX
//===========================
module MUX4to1 #(
    parameter WIDTH = 8
)(
    input  logic [WIDTH-1:0] D0, D1, D2, D3, // Inputs
    input  logic [1:0]       Sel,             // Select signal
    output logic [WIDTH-1:0] Y                // Output
);

    always_comb begin
        case (Sel)
            2'b00: Y = D0;
            2'b01: Y = D1;
            2'b10: Y = D2;
            2'b11: Y = D3;
            default: Y = '0;
        endcase
    end

endmodule

