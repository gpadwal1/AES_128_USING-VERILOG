module mixcolumns_128 (
    input  [127:0] state_in,
    output [127:0] state_out
);
    // Galois Field Multiplication by 2
    function [7:0] mul2(input [7:0] b);
        mul2 = {b[6:0], 1'b0} ^ (8'h1b & {8{b[7]}});
    endfunction

    // Galois Field Multiplication by 3 (mul2 XORed with itself)
    function [7:0] mul3(input [7:0] b);
        mul3 = mul2(b) ^ b;
    endfunction

    wire [7:0] s [0:15];
    wire [7:0] mo [0:15];

    genvar j;
    generate
        for(j=0; j<16; j=j+1)
            assign s[j] = state_in[127 - 8*j -: 8];
            
        for (genvar k=0; k<4; k=k+1) begin : col_logic
            // column = [s[4k], s[4k+1], s[4k+2], s[4k+3]]
            assign mo[4*k+0] = mul2(s[4*k+0]) ^ mul3(s[4*k+1]) ^ s[4*k+2] ^ s[4*k+3];
            assign mo[4*k+1] = s[4*k+0] ^ mul2(s[4*k+1]) ^ mul3(s[4*k+2]) ^ s[4*k+3];
            assign mo[4*k+2] = s[4*k+0] ^ s[4*k+1] ^ mul2(s[4*k+2]) ^ mul3(s[4*k+3]);
            assign mo[4*k+3] = mul3(s[4*k+0]) ^ s[4*k+1] ^ s[4*k+2] ^ mul2(s[4*k+3]);
        end
    endgenerate

    // Concatenate back to 128-bit
    assign state_out = {mo[0],mo[1],mo[2],mo[3],mo[4],mo[5],mo[6],mo[7],
                        mo[8],mo[9],mo[10],mo[11],mo[12],mo[13],mo[14],mo[15]};
endmodule