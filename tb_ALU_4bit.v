`timescale 1ns / 1ps

module tb_ALU_4bit();
    reg [3:0] A, B;
    reg [2:0] Sel;
    wire [3:0] Result;
    wire Carry, Zero, Overflow;

    ALU_4bit uut (
        .A(A),
        .B(B),
        .Sel(Sel),
        .Result(Result),
        .Carry(Carry),
        .Zero(Zero),
        .Overflow(Overflow)
    );

    initial begin
        $display("Time\tA\tB\tSel\tResult\tCarry\tZero\tOverflow");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, A, B, Sel, Result, Carry, Zero, Overflow);

        A = 4'b0101; B = 4'b0011; Sel = 3'b000; #10;
        A = 4'b1000; B = 4'b0010; Sel = 3'b001; #10;
        A = 4'b1100; B = 4'b1010; Sel = 3'b010; #10;
        A = 4'b1100; B = 4'b1010; Sel = 3'b011; #10;
        A = 4'b1100; B = 4'b1010; Sel = 3'b100; #10;

        $finish;
    end
endmodule
