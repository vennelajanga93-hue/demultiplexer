module demux1x2 (
    input D,
    input Sel,
    output Y0,
    output Y1
);

assign Y0 = (~Sel) & D;
assign Y1 = Sel & D;

endmodule