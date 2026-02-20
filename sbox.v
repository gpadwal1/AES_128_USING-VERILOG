// AES 8-bit S-Box (Complete - 256 values)
module sbox (
    input  wire [7:0] input_byte,
    output reg  [7:0] output_byte
);

always @(*) begin
    case (input_byte)
        8'h00: output_byte = 8'h63; 8'h01: output_byte = 8'h7C;
        8'h02: output_byte = 8'h77; 8'h03: output_byte = 8'h7B;
        8'h04: output_byte = 8'hF2; 8'h05: output_byte = 8'h6B;
        8'h06: output_byte = 8'h6F; 8'h07: output_byte = 8'hC5;
        8'h08: output_byte = 8'h30; 8'h09: output_byte = 8'h01;
        8'h0A: output_byte = 8'h67; 8'h0B: output_byte = 8'h2B;
        8'h0C: output_byte = 8'hFE; 8'h0D: output_byte = 8'hD7;
        8'h0E: output_byte = 8'hAB; 8'h0F: output_byte = 8'h76;

        8'h10: output_byte = 8'hCA; 8'h11: output_byte = 8'h82;
        8'h12: output_byte = 8'hC9; 8'h13: output_byte = 8'h7D;
        8'h14: output_byte = 8'hFA; 8'h15: output_byte = 8'h59;
        8'h16: output_byte = 8'h47; 8'h17: output_byte = 8'hF0;
        8'h18: output_byte = 8'hAD; 8'h19: output_byte = 8'hD4;
        8'h1A: output_byte = 8'hA2; 8'h1B: output_byte = 8'hAF;
        8'h1C: output_byte = 8'h9C; 8'h1D: output_byte = 8'hA4;
        8'h1E: output_byte = 8'h72; 8'h1F: output_byte = 8'hC0;

        8'h20: output_byte = 8'hB7; 8'h21: output_byte = 8'hFD;
        8'h22: output_byte = 8'h93; 8'h23: output_byte = 8'h26;
        8'h24: output_byte = 8'h36; 8'h25: output_byte = 8'h3F;
        8'h26: output_byte = 8'hF7; 8'h27: output_byte = 8'hCC;
        8'h28: output_byte = 8'h34; 8'h29: output_byte = 8'hA5;
        8'h2A: output_byte = 8'hE5; 8'h2B: output_byte = 8'hF1;
        8'h2C: output_byte = 8'h71; 8'h2D: output_byte = 8'hD8;
        8'h2E: output_byte = 8'h31; 8'h2F: output_byte = 8'h15;

        8'h30: output_byte = 8'h04; 8'h31: output_byte = 8'hC7;
        8'h32: output_byte = 8'h23; 8'h33: output_byte = 8'hC3;
        8'h34: output_byte = 8'h18; 8'h35: output_byte = 8'h96;
        8'h36: output_byte = 8'h05; 8'h37: output_byte = 8'h9A;
        8'h38: output_byte = 8'h07; 8'h39: output_byte = 8'h12;
        8'h3A: output_byte = 8'h80; 8'h3B: output_byte = 8'hE2;
        8'h3C: output_byte = 8'hEB; 8'h3D: output_byte = 8'h27;
        8'h3E: output_byte = 8'hB2; 8'h3F: output_byte = 8'h75;

        8'h40: output_byte = 8'h09; 8'h41: output_byte = 8'h83;
        8'h42: output_byte = 8'h2C; 8'h43: output_byte = 8'h1A;
        8'h44: output_byte = 8'h1B; 8'h45: output_byte = 8'h6E;
        8'h46: output_byte = 8'h5A; 8'h47: output_byte = 8'hA0;
        8'h48: output_byte = 8'h52; 8'h49: output_byte = 8'h3B;
        8'h4A: output_byte = 8'hD6; 8'h4B: output_byte = 8'hB3;
        8'h4C: output_byte = 8'h29; 8'h4D: output_byte = 8'hE3;
        8'h4E: output_byte = 8'h2F; 8'h4F: output_byte = 8'h84;

        8'h50: output_byte = 8'h53; 8'h51: output_byte = 8'hD1;
        8'h52: output_byte = 8'h00; 8'h53: output_byte = 8'hED;
        8'h54: output_byte = 8'h20; 8'h55: output_byte = 8'hFC;
        8'h56: output_byte = 8'hB1; 8'h57: output_byte = 8'h5B;
        8'h58: output_byte = 8'h6A; 8'h59: output_byte = 8'hCB;
        8'h5A: output_byte = 8'hBE; 8'h5B: output_byte = 8'h39;
        8'h5C: output_byte = 8'h4A; 8'h5D: output_byte = 8'h4C;
        8'h5E: output_byte = 8'h58; 8'h5F: output_byte = 8'hCF;

        8'h60: output_byte = 8'hD0; 8'h61: output_byte = 8'hEF;
        8'h62: output_byte = 8'hAA; 8'h63: output_byte = 8'hFB;
        8'h64: output_byte = 8'h43; 8'h65: output_byte = 8'h4D;
        8'h66: output_byte = 8'h33; 8'h67: output_byte = 8'h85;
        8'h68: output_byte = 8'h45; 8'h69: output_byte = 8'hF9;
        8'h6A: output_byte = 8'h02; 8'h6B: output_byte = 8'h7F;
        8'h6C: output_byte = 8'h50; 8'h6D: output_byte = 8'h3C;
        8'h6E: output_byte = 8'h9F; 8'h6F: output_byte = 8'hA8;

        8'h70: output_byte = 8'h51; 8'h71: output_byte = 8'hA3;
        8'h72: output_byte = 8'h40; 8'h73: output_byte = 8'h8F;
        8'h74: output_byte = 8'h92; 8'h75: output_byte = 8'h9D;
        8'h76: output_byte = 8'h38; 8'h77: output_byte = 8'hF5;
        8'h78: output_byte = 8'hBC; 8'h79: output_byte = 8'hB6;
        8'h7A: output_byte = 8'hDA; 8'h7B: output_byte = 8'h21;
        8'h7C: output_byte = 8'h10; 8'h7D: output_byte = 8'hFF;
        8'h7E: output_byte = 8'hF3; 8'h7F: output_byte = 8'hD2;

        8'h80: output_byte = 8'hCD; 8'h81: output_byte = 8'h0C;
        8'h82: output_byte = 8'h13; 8'h83: output_byte = 8'hEC;
        8'h84: output_byte = 8'h5F; 8'h85: output_byte = 8'h97;
        8'h86: output_byte = 8'h44; 8'h87: output_byte = 8'h17;
        8'h88: output_byte = 8'hC4; 8'h89: output_byte = 8'hA7;
        8'h8A: output_byte = 8'h7E; 8'h8B: output_byte = 8'h3D;
        8'h8C: output_byte = 8'h64; 8'h8D: output_byte = 8'h5D;
        8'h8E: output_byte = 8'h19; 8'h8F: output_byte = 8'h73;

        8'h90: output_byte = 8'h60; 8'h91: output_byte = 8'h81;
        8'h92: output_byte = 8'h4F; 8'h93: output_byte = 8'hDC;
        8'h94: output_byte = 8'h22; 8'h95: output_byte = 8'h2A;
        8'h96: output_byte = 8'h90; 8'h97: output_byte = 8'h88;
        8'h98: output_byte = 8'h46; 8'h99: output_byte = 8'hEE;
        8'h9A: output_byte = 8'hB8; 8'h9B: output_byte = 8'h14;
        8'h9C: output_byte = 8'hDE; 8'h9D: output_byte = 8'h5E;
        8'h9E: output_byte = 8'h0B; 8'h9F: output_byte = 8'hDB;

        8'hA0: output_byte = 8'hE0; 8'hA1: output_byte = 8'h32;
        8'hA2: output_byte = 8'h3A; 8'hA3: output_byte = 8'h0A;
        8'hA4: output_byte = 8'h49; 8'hA5: output_byte = 8'h06;
        8'hA6: output_byte = 8'h24; 8'hA7: output_byte = 8'h5C;
        8'hA8: output_byte = 8'hC2; 8'hA9: output_byte = 8'hD3;
        8'hAA: output_byte = 8'hAC; 8'hAB: output_byte = 8'h62;
        8'hAC: output_byte = 8'h91; 8'hAD: output_byte = 8'h95;
        8'hAE: output_byte = 8'hE4; 8'hAF: output_byte = 8'h79;

        8'hB0: output_byte = 8'hE7; 8'hB1: output_byte = 8'hC8;
        8'hB2: output_byte = 8'h37; 8'hB3: output_byte = 8'h6D;
        8'hB4: output_byte = 8'h8D; 8'hB5: output_byte = 8'hD5;
        8'hB6: output_byte = 8'h4E; 8'hB7: output_byte = 8'hA9;
        8'hB8: output_byte = 8'h6C; 8'hB9: output_byte = 8'h56;
        8'hBA: output_byte = 8'hF4; 8'hBB: output_byte = 8'hEA;
        8'hBC: output_byte = 8'h65; 8'hBD: output_byte = 8'h7A;
        8'hBE: output_byte = 8'hAE; 8'hBF: output_byte = 8'h08;

        8'hC0: output_byte = 8'hBA; 8'hC1: output_byte = 8'h78;
        8'hC2: output_byte = 8'h25; 8'hC3: output_byte = 8'h2E;
        8'hC4: output_byte = 8'h1C; 8'hC5: output_byte = 8'hA6;
        8'hC6: output_byte = 8'hB4; 8'hC7: output_byte = 8'hC6;
        8'hC8: output_byte = 8'hE8; 8'hC9: output_byte = 8'hDD;
        8'hCA: output_byte = 8'h74; 8'hCB: output_byte = 8'h1F;
        8'hCC: output_byte = 8'h4B; 8'hCD: output_byte = 8'hBD;
        8'hCE: output_byte = 8'h8B; 8'hCF: output_byte = 8'h8A;

        8'hD0: output_byte = 8'h70; 8'hD1: output_byte = 8'h3E;
        8'hD2: output_byte = 8'hB5; 8'hD3: output_byte = 8'h66;
        8'hD4: output_byte = 8'h48; 8'hD5: output_byte = 8'h03;
        8'hD6: output_byte = 8'hF6; 8'hD7: output_byte = 8'h0E;
        8'hD8: output_byte = 8'h61; 8'hD9: output_byte = 8'h35;
        8'hDA: output_byte = 8'h57; 8'hDB: output_byte = 8'hB9;
        8'hDC: output_byte = 8'h86; 8'hDD: output_byte = 8'hC1;
        8'hDE: output_byte = 8'h1D; 8'hDF: output_byte = 8'h9E;

        8'hE0: output_byte = 8'hE1; 8'hE1: output_byte = 8'hF8;
        8'hE2: output_byte = 8'h98; 8'hE3: output_byte = 8'h11;
        8'hE4: output_byte = 8'h69; 8'hE5: output_byte = 8'hD9;
        8'hE6: output_byte = 8'h8E; 8'hE7: output_byte = 8'h94;
        8'hE8: output_byte = 8'h9B; 8'hE9: output_byte = 8'h1E;
        8'hEA: output_byte = 8'h87; 8'hEB: output_byte = 8'hE9;
        8'hEC: output_byte = 8'hCE; 8'hED: output_byte = 8'h55;
        8'hEE: output_byte = 8'h28; 8'hEF: output_byte = 8'hDF;

        8'hF0: output_byte = 8'h8C; 8'hF1: output_byte = 8'hA1;
        8'hF2: output_byte = 8'h89; 8'hF3: output_byte = 8'h0D;
        8'hF4: output_byte = 8'hBF; 8'hF5: output_byte = 8'hE6;
        8'hF6: output_byte = 8'h42; 8'hF7: output_byte = 8'h68;
        8'hF8: output_byte = 8'h41; 8'hF9: output_byte = 8'h99;
        8'hFA: output_byte = 8'h2D; 8'hFB: output_byte = 8'h0F;
        8'hFC: output_byte = 8'hB0; 8'hFD: output_byte = 8'h54;
        8'hFE: output_byte = 8'hBB; 8'hFF: output_byte = 8'h16;
    endcase
end
endmodule
