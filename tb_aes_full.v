module tb_aes_full;
    reg  [127:0] pt, key;
    wire [127:0] ct;

    aes_128_full dut (.plaintext(pt), .key(key), .ciphertext(ct));

    initial begin
        pt  = 128'h00112233445566778899aabbccddeeff;
        key = 128'h000102030405060708090a0b0c0d0e0f;

        #10;
        $finish;
    end
endmodule