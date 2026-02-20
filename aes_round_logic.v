module aes_round_logic (
    input  [127:0] state_in,
    input  [127:0] round_key,
    input          is_final,
    output [127:0] state_out
);
    wire [127:0] sb, sr, mc;

    subbytes_128  SB_INST (.state_in(state_in), .state_out(sb));
    shiftrows_128 SR_INST (.state_in(sb),       .state_out(sr));
    mixcolumns_128 MC_INST(.state_in(sr),       .state_out(mc));

    // The last round skips MixColumns
    wire [127:0] after_mc = is_final ? sr : mc;

    add_round_key_128 ARK_INST (
        .state_in(after_mc),
        .round_key(round_key),
        .state_out(state_out)
    );
endmodule