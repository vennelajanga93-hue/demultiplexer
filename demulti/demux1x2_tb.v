`timescale 1ns/1ps

module demux1x2_tb;

reg D;
reg Sel;

wire Y0;
wire Y1;

demux1x2 uut (
    .D(D),
    .Sel(Sel),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $dumpfile("demux1x2.vcd");
    $dumpvars(0, demux1x2_tb);

    $display("D Sel | Y0 Y1");
    $monitor("%b  %b  | %b  %b", D, Sel, Y0, Y1);

    D = 0; Sel = 0; #10;
    D = 1; Sel = 0; #10;
    D = 0; Sel = 1; #10;
    D = 1; Sel = 1; #10;

    $finish;
end

endmodule