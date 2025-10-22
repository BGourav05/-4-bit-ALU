//=========================================
// 4-bit ALU
// Performs ADD, SUB, AND, OR, XOR
// Includes flags: Zero, Carry, Overflow
//=========================================
module ALU_4bit (
    input  [3:0] A, B,
    input  [2:0] Sel,
    output reg [3:0] Result,
    output reg Carry,
    output reg Zero,
    output reg Overflow
);

    reg [4:0] temp;  // For operations that may produce carry

    always @(*) begin
        case (Sel)
            3'b000: begin
                temp = A + B;
                Result = temp[3:0];
                Carry = temp[4];
            end

            3'b001: begin
                temp = A - B;
                Result = temp[3:0];
                Carry = temp[4];
            end

            3'b010: begin
                Result = A & B;
                Carry = 0;
            end

            3'b011: begin
                Result = A | B;
                Carry = 0;
            end

            3'b100: begin
                Result = A ^ B;
                Carry = 0;
            end

            default: begin
                Result = 4'b0000;
                Carry = 0;
            end
        endcase

        // Flag calculations
        Zero = (Result == 4'b0000) ? 1 : 0;
        Overflow = (Sel == 3'b000 || Sel == 3'b001) ?
                   ((A[3] == B[3]) && (Result[3] != A[3])) : 0;
    end
endmodule
