module add_round_key_128 (
    input  [127:0] state_in,    ////plaintext (ASCII Values)
    input  [127:0] round_key,     // Round keys (ASCII Values)
    output [127:0] state_out
);
    // XOR each bit with round key
    assign state_out = state_in ^ round_key;
endmodule
