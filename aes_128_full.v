module aes_128_full (
    input  [127:0] plaintext,
    input  [127:0] key,
    output [127:0] ciphertext
);
    wire [1407:0] all_round_keys;
    wire [127:0] state [0:10];
    // 1. Expand the user key into 11 round keys
    key_expansion_128 KE (
        .key_in(key),
        .round_keys(all_round_keys)
    );
    // 2. Initial Round (AddRoundKey only)
    add_round_key_128 ARK0 (
        .state_in(plaintext),
        .round_key(all_round_keys[1407:1280]), // First 128 bits
        .state_out(state[0])
    );
    // 3. Rounds 1 to 10
    genvar i;
    generate
        for (i = 1; i <= 10; i = i + 1) begin : round_loop
            aes_round_logic R (
                .state_in(state[i-1]),
                .round_key(all_round_keys[1407 - (i*128) -: 128]),
                .is_final(i == 10), // Round 10 doesn't do MixColumns
                .state_out(state[i])
            );
        end
    endgenerate
    assign ciphertext = state[10];
endmodule