module shiftrows_128 (
    input  [127:0] state_in,
    output [127:0] state_out
);
    wire [7:0] s [0:15];

    // Extract bytes (s[0] is the MSB/First Byte)
    genvar i;
    generate
        for (i=0; i<16; i=i+1)
            assign s[i] = state_in[127 - 8*i -: 8];
    endgenerate

    // Reassemble in Column-Major order after shifting rows
    // Row 0: s0, s4, s8, s12 -> no shift
    // Row 1: s1, s5, s9, s13 -> left shift 1: s5, s9, s13, s1
    // Row 2: s2, s6, s10, s14 -> left shift 2: s10, s14, s2, s6
    // Row 3: s3, s7, s11, s15 -> left shift 3: s15, s3, s7, s11

    assign state_out = {
        s[0], s[5], s[10], s[15], // Column 0
        s[4], s[9], s[14], s[3],  // Column 1
        s[8], s[13], s[2], s[7],  // Column 2
        s[12], s[1], s[6], s[11]  // Column 3
    };
endmodule