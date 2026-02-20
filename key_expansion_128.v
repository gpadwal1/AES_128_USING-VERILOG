module key_expansion_128 (
    input  [127:0] key_in,
    output [1407:0] round_keys
);
    wire [31:0] w [0:43];
    
    // Round 0 Key (Original Key)
    assign w[0] = key_in[127:96];
    assign w[1] = key_in[95:64];
    assign w[2] = key_in[63:32];
    assign w[3] = key_in[31:0];

    genvar i;
    generate
        for (i = 4; i < 44; i = i + 1) begin : gen_w
            wire [31:0] temp;
            if (i % 4 == 0) begin : rot_sub_rcon
                wire [31:0] rot_word = {w[i-1][23:0], w[i-1][31:24]};
                wire [31:0] sub_word;
                
                // Reusing your S-Box
                sbox sb0 (.input_byte(rot_word[31:24]), .output_byte(sub_word[31:24]));
                sbox sb1 (.input_byte(rot_word[23:16]), .output_byte(sub_word[23:16]));
                sbox sb2 (.input_byte(rot_word[15:8]),  .output_byte(sub_word[15:8]));
                sbox sb3 (.input_byte(rot_word[7:0]),   .output_byte(sub_word[7:0]));
                
                assign temp = sub_word ^ {get_rcon(i/4), 24'h0};
            end else begin : direct
                assign temp = w[i-1];
            end
            assign w[i] = w[i-4] ^ temp;
        end
    endgenerate

    // Pack words into the 1408-bit bus
    generate
        for (i = 0; i < 11; i = i + 1) begin : pack_keys
            assign round_keys[1407 - (i*128) -: 128] = {w[i*4], w[i*4+1], w[i*4+2], w[i*4+3]};
        end
    endgenerate

    function [7:0] get_rcon(input integer r);
        case(r)
            1: get_rcon = 8'h01; 2: get_rcon = 8'h02; 3: get_rcon = 8'h04;
            4: get_rcon = 8'h08; 5: get_rcon = 8'h10; 6: get_rcon = 8'h20;
            7: get_rcon = 8'h40; 8: get_rcon = 8'h80; 9: get_rcon = 8'h1B;
            10: get_rcon = 8'h36; default: get_rcon = 8'h00;
        endcase
    endfunction
endmodule