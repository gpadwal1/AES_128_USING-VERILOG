module subbytes_128 (
    input  [127:0] state_in,
    output [127:0] state_out
);
    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : SUB_BYTE
            sbox sb (
                .input_byte  (state_in[8*i +: 8]),   // FIXED
                .output_byte (state_out[8*i +: 8])   // FIXED
            );
        end
    endgenerate

endmodule
