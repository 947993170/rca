
always @(*) begin
    if (!rstn) begin
        BK_0_round_0 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_0 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h0: begin
                BK_0_round_0[31:24] = SM4_out_0;
                BK_0_round_0[23:16] = SM4_out_1;
                BK_0_round_0[15:8]  = SM4_out_2;
                BK_0_round_0[7:0]   = SM4_out_3;
            end
            default: BK_0_round_0 = BK_0_round_0;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_0 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_0 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h0: begin
                B_0_round_0[31:24]  = SM4_out_4;
                B_0_round_0[23:16]  = SM4_out_5;
                B_0_round_0[15:8]   = SM4_out_6;
                B_0_round_0[7:0]    = SM4_out_7;
            end
            default: B_0_round_0 = B_0_round_0;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_1 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_1 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h0: begin
                BK_1_round_1[31:24] = SM4_out_8;
                BK_1_round_1[23:16] = SM4_out_9;
                BK_1_round_1[15:8]  = SM4_out_10;
                BK_1_round_1[7:0]   = SM4_out_11;
            end
            default: BK_1_round_1 = BK_1_round_1;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_1 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_1 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h0: begin
                B_1_round_1[31:24]  = SM4_out_12;
            end
            6'h1: begin
                B_1_round_1[23:16]  = SM4_out_0;
                B_1_round_1[15:8]   = SM4_out_1;
                B_1_round_1[7:0]    = SM4_out_2;
            end
            default: B_1_round_1 = B_1_round_1;
        endcase
    end
end

always @(*) begin
        case (clk_cnt_all)
            6'h1: begin
                BK_0_round_2[31:24] = SM4_out_3;
                BK_0_round_2[23:16] = SM4_out_4;
                BK_0_round_2[15:8]  = SM4_out_5;
                BK_0_round_2[7:0]   = SM4_out_6;
            end
            default: BK_0_round_2 = 32'h0;
        endcase
end

always @(*) begin
    if (!rstn) begin
        B_0_round_2 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_2 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1: begin
                B_0_round_2[31:24]  = SM4_out_7;
                B_0_round_2[23:16]  = SM4_out_8;
                B_0_round_2[15:8]   = SM4_out_9;
                B_0_round_2[7:0]    = SM4_out_10;
            end
            default: B_0_round_2 = B_0_round_2;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_3 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_3 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1: begin
                BK_1_round_3[31:24] = SM4_out_11;
                BK_1_round_3[23:16] = SM4_out_12;
            end
            6'h2: begin
                BK_1_round_3[15:8]  = SM4_out_0;
                BK_1_round_3[7:0]   = SM4_out_1;
            end
            default: BK_1_round_3 = BK_1_round_3;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_3 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_3 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h2: begin
                B_1_round_3[31:24]  = SM4_out_2;
                B_1_round_3[23:16]  = SM4_out_3;
                B_1_round_3[15:8]   = SM4_out_4;
                B_1_round_3[7:0]    = SM4_out_5;
            end
            default: B_1_round_3 = B_1_round_3;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_4 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_4 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h2: begin
                BK_0_round_4[31:24] = SM4_out_6;
                BK_0_round_4[23:16] = SM4_out_7;
                BK_0_round_4[15:8]  = SM4_out_8;
                BK_0_round_4[7:0]   = SM4_out_9;
            end
            default: BK_0_round_4 = BK_0_round_4;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_4 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_4 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h2: begin
                B_0_round_4[31:24]  = SM4_out_10;
                B_0_round_4[23:16]  = SM4_out_11;
                B_0_round_4[15:8]   = SM4_out_12;
            end
            6'h3: begin
                B_0_round_4[7:0]    = SM4_out_0;
            end
            default: B_0_round_4 = B_0_round_4;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_5 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_5 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h3: begin
                BK_1_round_5[31:24] = SM4_out_1;
                BK_1_round_5[23:16] = SM4_out_2;
                BK_1_round_5[15:8]  = SM4_out_3;
                BK_1_round_5[7:0]   = SM4_out_4;
            end
            default: BK_1_round_5 = BK_1_round_5;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_5 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_5 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h3: begin
                B_1_round_5[31:24]  = SM4_out_5;
                B_1_round_5[23:16]  = SM4_out_6;
                B_1_round_5[15:8]   = SM4_out_7;
                B_1_round_5[7:0]    = SM4_out_8;
            end
            default: B_1_round_5 = B_1_round_5;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_6 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_6 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h3: begin
                BK_0_round_6[31:24] = SM4_out_9;
                BK_0_round_6[23:16] = SM4_out_10;
                BK_0_round_6[15:8]  = SM4_out_11;
                BK_0_round_6[7:0]   = SM4_out_12;
            end
            default: BK_0_round_6 = BK_0_round_6;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_6 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_6 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h4: begin
                B_0_round_6[31:24]  = SM4_out_0;
                B_0_round_6[23:16]  = SM4_out_1;
                B_0_round_6[15:8]   = SM4_out_2;
                B_0_round_6[7:0]    = SM4_out_3;
            end
            default: B_0_round_6 = B_0_round_6;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_7 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_7 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h4: begin
                BK_1_round_7[31:24] = SM4_out_4;
                BK_1_round_7[23:16] = SM4_out_5;
                BK_1_round_7[15:8]  = SM4_out_6;
                BK_1_round_7[7:0]   = SM4_out_7;
            end
            default: BK_1_round_7 = BK_1_round_7;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_7 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_7 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h4: begin
                B_1_round_7[31:24]  = SM4_out_8;
                B_1_round_7[23:16]  = SM4_out_9;
                B_1_round_7[15:8]   = SM4_out_10;
                B_1_round_7[7:0]    = SM4_out_11;
            end
            default: B_1_round_7 = B_1_round_7;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_8 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_8 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h4: begin
                BK_0_round_8[31:24] = SM4_out_12;
            end
            6'h5: begin
                BK_0_round_8[23:16] = SM4_out_0;
                BK_0_round_8[15:8]  = SM4_out_1;
                BK_0_round_8[7:0]   = SM4_out_2;
            end
            default: BK_0_round_8 = BK_0_round_8;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_8 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_8 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h5: begin
                B_0_round_8[31:24]  = SM4_out_3;
                B_0_round_8[23:16]  = SM4_out_4;
                B_0_round_8[15:8]   = SM4_out_5;
                B_0_round_8[7:0]    = SM4_out_6;
            end
            default: B_0_round_8 = B_0_round_8;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_9 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_9 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h5: begin
                BK_1_round_9[31:24] = SM4_out_7;
                BK_1_round_9[23:16] = SM4_out_8;
                BK_1_round_9[15:8]  = SM4_out_9;
                BK_1_round_9[7:0]   = SM4_out_10;
            end
            default: BK_1_round_9 = BK_1_round_9;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_9 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_9 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h5: begin
                B_1_round_9[31:24]  = SM4_out_11;
                B_1_round_9[23:16]  = SM4_out_12;
            end
            6'h6: begin
                B_1_round_9[15:8]   = SM4_out_0;
                B_1_round_9[7:0]    = SM4_out_1;
            end
            default: B_1_round_9 = B_1_round_9;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_10 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_10 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h6: begin
                BK_0_round_10[31:24]= SM4_out_2;
                BK_0_round_10[23:16]= SM4_out_3;
                BK_0_round_10[15:8] = SM4_out_4;
                BK_0_round_10[7:0]  = SM4_out_5;
            end
            default: BK_0_round_10 = BK_0_round_10;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_10 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_10 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h6: begin
                B_0_round_10[31:24] = SM4_out_6;
                B_0_round_10[23:16] = SM4_out_7;
                B_0_round_10[15:8]  = SM4_out_8;
                B_0_round_10[7:0]   = SM4_out_9;
            end
            default: B_0_round_10 = B_0_round_10;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_11 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_11 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h6: begin
                BK_1_round_11[31:24]= SM4_out_10;
                BK_1_round_11[23:16]= SM4_out_11;
                BK_1_round_11[15:8] = SM4_out_12;
            end
            6'h7: begin
                BK_1_round_11[7:0]  = SM4_out_0;
            end
            default: BK_1_round_11 = BK_1_round_11;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_11 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_11 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h7: begin
                B_1_round_11[31:24] = SM4_out_1;
                B_1_round_11[23:16] = SM4_out_2;
                B_1_round_11[15:8]  = SM4_out_3;
                B_1_round_11[7:0]   = SM4_out_4;
            end
            default: B_1_round_11 = B_1_round_11;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_12 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_12 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h7: begin
                BK_0_round_12[31:24]= SM4_out_5;
                BK_0_round_12[23:16]= SM4_out_6;
                BK_0_round_12[15:8] = SM4_out_7;
                BK_0_round_12[7:0]  = SM4_out_8;
            end
            default: BK_0_round_12 = BK_0_round_12;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_12 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_12 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h7: begin
                B_0_round_12[31:24] = SM4_out_9;
                B_0_round_12[23:16] = SM4_out_10;
                B_0_round_12[15:8]  = SM4_out_11;
                B_0_round_12[7:0]   = SM4_out_12;
            end
            default: B_0_round_12 = B_0_round_12;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_13 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_13 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h8: begin
                BK_1_round_13[31:24]= SM4_out_0;
                BK_1_round_13[23:16]= SM4_out_1;
                BK_1_round_13[15:8] = SM4_out_2;
                BK_1_round_13[7:0]  = SM4_out_3;
            end
            default: BK_1_round_13 = BK_1_round_13;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_13 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_13 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h8: begin
                B_1_round_13[31:24] = SM4_out_4;
                B_1_round_13[23:16] = SM4_out_5;
                B_1_round_13[15:8]  = SM4_out_6;
                B_1_round_13[7:0]   = SM4_out_7;
            end
            default: B_1_round_13 = B_1_round_13;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_14 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_14 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h8: begin
                BK_0_round_14[31:24]= SM4_out_8;
                BK_0_round_14[23:16]= SM4_out_9;
                BK_0_round_14[15:8] = SM4_out_10;
                BK_0_round_14[7:0]  = SM4_out_11;
            end
            default: BK_0_round_14 = BK_0_round_14;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_14 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_14 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h8: begin
                B_0_round_14[31:24] = SM4_out_12;
            end
            6'h9: begin
                B_0_round_14[23:16] = SM4_out_0;
                B_0_round_14[15:8]  = SM4_out_1;
                B_0_round_14[7:0]   = SM4_out_2;
            end
            default: B_0_round_14 = B_0_round_14;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_15 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_15 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h9: begin
                BK_1_round_15[31:24]= SM4_out_3;
                BK_1_round_15[23:16]= SM4_out_4;
                BK_1_round_15[15:8] = SM4_out_5;
                BK_1_round_15[7:0]  = SM4_out_6;
            end
            default: BK_1_round_15 = BK_1_round_15;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_15 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_15 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h9: begin
                B_1_round_15[31:24] = SM4_out_7;
                B_1_round_15[23:16] = SM4_out_8;
                B_1_round_15[15:8]  = SM4_out_9;
                B_1_round_15[7:0]   = SM4_out_10;
            end
            default: B_1_round_15 = B_1_round_15;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_16 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_16 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h9: begin
                BK_0_round_16[31:24]= SM4_out_11;
                BK_0_round_16[23:16]= SM4_out_12;
            end
            6'ha: begin
                BK_0_round_16[15:8] = SM4_out_0;
                BK_0_round_16[7:0]  = SM4_out_1;
            end
            default: BK_0_round_16 = BK_0_round_16;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_16 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_16 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'ha: begin
                B_0_round_16[31:24] = SM4_out_2;
                B_0_round_16[23:16] = SM4_out_3;
                B_0_round_16[15:8]  = SM4_out_4;
                B_0_round_16[7:0]   = SM4_out_5;
            end
            default: B_0_round_16 = B_0_round_16;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_17 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_17 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'ha: begin
                BK_1_round_17[31:24]= SM4_out_6;
                BK_1_round_17[23:16]= SM4_out_7;
                BK_1_round_17[15:8] = SM4_out_8;
                BK_1_round_17[7:0]  = SM4_out_9;
            end
            default: BK_1_round_17 = BK_1_round_17;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_17 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_17 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'ha: begin
                B_1_round_17[31:24] = SM4_out_10;
                B_1_round_17[23:16] = SM4_out_11;
                B_1_round_17[15:8]  = SM4_out_12;
            end
            6'hb: begin
                B_1_round_17[7:0]   = SM4_out_0;
            end
            default: B_1_round_17 = B_1_round_17;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_18 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_18 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hb: begin
                BK_0_round_18[31:24]= SM4_out_1;
                BK_0_round_18[23:16]= SM4_out_2;
                BK_0_round_18[15:8] = SM4_out_3;
                BK_0_round_18[7:0]  = SM4_out_4;
            end
            default: BK_0_round_18 = BK_0_round_18;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_18 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_18 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hb: begin
                B_0_round_18[31:24] = SM4_out_5;
                B_0_round_18[23:16] = SM4_out_6;
                B_0_round_18[15:8]  = SM4_out_7;
                B_0_round_18[7:0]   = SM4_out_8;
            end
            default: B_0_round_18 = B_0_round_18;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_19 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_19 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hb: begin
                BK_1_round_19[31:24]= SM4_out_9;
                BK_1_round_19[23:16]= SM4_out_10;
                BK_1_round_19[15:8] = SM4_out_11;
                BK_1_round_19[7:0]  = SM4_out_12;
            end
            default: BK_1_round_19 = BK_1_round_19;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_19 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_19 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hc: begin
                B_1_round_19[31:24] = SM4_out_0;
                B_1_round_19[23:16] = SM4_out_1;
                B_1_round_19[15:8]  = SM4_out_2;
                B_1_round_19[7:0]   = SM4_out_3;
            end
            default: B_1_round_19 = B_1_round_19;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_20 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_20 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hc: begin
                BK_0_round_20[31:24]= SM4_out_4;
                BK_0_round_20[23:16]= SM4_out_5;
                BK_0_round_20[15:8] = SM4_out_6;
                BK_0_round_20[7:0]  = SM4_out_7;
            end
            default: BK_0_round_20 = BK_0_round_20;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_20 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_20 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hc: begin
                B_0_round_20[31:24] = SM4_out_8;
                B_0_round_20[23:16] = SM4_out_9;
                B_0_round_20[15:8]  = SM4_out_10;
                B_0_round_20[7:0]   = SM4_out_11;
            end
            default: B_0_round_20 = B_0_round_20;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_21 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_21 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hc: begin
                BK_1_round_21[31:24]= SM4_out_12;
            end
            6'hd: begin
                BK_1_round_21[23:16]= SM4_out_0;
                BK_1_round_21[15:8] = SM4_out_1;
                BK_1_round_21[7:0]  = SM4_out_2;
            end
            default: BK_1_round_21 = BK_1_round_21;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_21 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_21 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hd: begin
                B_1_round_21[31:24] = SM4_out_3;
                B_1_round_21[23:16] = SM4_out_4;
                B_1_round_21[15:8]  = SM4_out_5;
                B_1_round_21[7:0]   = SM4_out_6;
            end
            default: B_1_round_21 = B_1_round_21;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_22 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_22 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hd: begin
                BK_0_round_22[31:24]= SM4_out_7;
                BK_0_round_22[23:16]= SM4_out_8;
                BK_0_round_22[15:8] = SM4_out_9;
                BK_0_round_22[7:0]  = SM4_out_10;
            end
            default: BK_0_round_22 = BK_0_round_22;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_22 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_22 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hd: begin
                B_0_round_22[31:24] = SM4_out_11;
                B_0_round_22[23:16] = SM4_out_12;
            end
            6'he: begin
                B_0_round_22[15:8]  = SM4_out_0;
                B_0_round_22[7:0]   = SM4_out_1;
            end
            default: B_0_round_22 = B_0_round_22;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_23 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_23 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'he: begin
                BK_1_round_23[31:24]= SM4_out_2;
                BK_1_round_23[23:16]= SM4_out_3;
                BK_1_round_23[15:8] = SM4_out_4;
                BK_1_round_23[7:0]  = SM4_out_5;
            end
            default: BK_1_round_23 = BK_1_round_23;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_23 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_23 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'he: begin
                B_1_round_23[31:24] = SM4_out_6;
                B_1_round_23[23:16] = SM4_out_7;
                B_1_round_23[15:8]  = SM4_out_8;
                B_1_round_23[7:0]   = SM4_out_9;
            end
            default: B_1_round_23 = B_1_round_23;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_24 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_24 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'he: begin
                BK_0_round_24[31:24]= SM4_out_10;
                BK_0_round_24[23:16]= SM4_out_11;
                BK_0_round_24[15:8] = SM4_out_12;
            end
            6'hf: begin
                BK_0_round_24[7:0]  = SM4_out_0;
            end
            default: BK_0_round_24 = BK_0_round_24;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_24 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_24 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hf: begin
                B_0_round_24[31:24] = SM4_out_1;
                B_0_round_24[23:16] = SM4_out_2;
                B_0_round_24[15:8]  = SM4_out_3;
                B_0_round_24[7:0]   = SM4_out_4;
            end
            default: B_0_round_24 = B_0_round_24;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_25 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_25 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hf: begin
                BK_1_round_25[31:24]= SM4_out_5;
                BK_1_round_25[23:16]= SM4_out_6;
                BK_1_round_25[15:8] = SM4_out_7;
                BK_1_round_25[7:0]  = SM4_out_8;
            end
            default: BK_1_round_25 = BK_1_round_25;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_25 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_25 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'hf: begin
                B_1_round_25[31:24] = SM4_out_9;
                B_1_round_25[23:16] = SM4_out_10;
                B_1_round_25[15:8]  = SM4_out_11;
                B_1_round_25[7:0]   = SM4_out_12;
            end
            default: B_1_round_25 = B_1_round_25;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_26 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_26 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h10: begin
                BK_0_round_26[31:24]= SM4_out_0;
                BK_0_round_26[23:16]= SM4_out_1;
                BK_0_round_26[15:8] = SM4_out_2;
                BK_0_round_26[7:0]  = SM4_out_3;
            end
            default: BK_0_round_26 = BK_0_round_26;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_26 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_26 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h10: begin
                B_0_round_26[31:24] = SM4_out_4;
                B_0_round_26[23:16] = SM4_out_5;
                B_0_round_26[15:8]  = SM4_out_6;
                B_0_round_26[7:0]   = SM4_out_7;
            end
            default: B_0_round_26 = B_0_round_26;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_27 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_27 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h10: begin
                BK_1_round_27[31:24]= SM4_out_8;
                BK_1_round_27[23:16]= SM4_out_9;
                BK_1_round_27[15:8] = SM4_out_10;
                BK_1_round_27[7:0]  = SM4_out_11;
            end
            default: BK_1_round_27 = BK_1_round_27;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_27 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_27 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h10: begin
                B_1_round_27[31:24] = SM4_out_12;
            end
            6'h11: begin
                B_1_round_27[23:16] = SM4_out_0;
                B_1_round_27[15:8]  = SM4_out_1;
                B_1_round_27[7:0]   = SM4_out_2;
            end
            default: B_1_round_27 = B_1_round_27;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_28 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_28 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h11: begin
                BK_0_round_28[31:24]= SM4_out_3;
                BK_0_round_28[23:16]= SM4_out_4;
                BK_0_round_28[15:8] = SM4_out_5;
                BK_0_round_28[7:0]  = SM4_out_6;
            end
            default: BK_0_round_28 = BK_0_round_28;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_28 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_28 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h11: begin
                B_0_round_28[31:24] = SM4_out_7;
                B_0_round_28[23:16] = SM4_out_8;
                B_0_round_28[15:8]  = SM4_out_9;
                B_0_round_28[7:0]   = SM4_out_10;
            end
            default: B_0_round_28 = B_0_round_28;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_29 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_29 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h11: begin
                BK_1_round_29[31:24]= SM4_out_11;
                BK_1_round_29[23:16]= SM4_out_12;
            end
            6'h12: begin
                BK_1_round_29[15:8] = SM4_out_0;
                BK_1_round_29[7:0]  = SM4_out_1;
            end
            default: BK_1_round_29 = BK_1_round_29;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_29 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_29 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h12: begin
                B_1_round_29[31:24] = SM4_out_2;
                B_1_round_29[23:16] = SM4_out_3;
                B_1_round_29[15:8]  = SM4_out_4;
                B_1_round_29[7:0]   = SM4_out_5;
            end
            default: B_1_round_29 = B_1_round_29;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_30 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_30 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h12: begin
                BK_0_round_30[31:24]= SM4_out_6;
                BK_0_round_30[23:16]= SM4_out_7;
                BK_0_round_30[15:8] = SM4_out_8;
                BK_0_round_30[7:0]  = SM4_out_9;
            end
            default: BK_0_round_30 = BK_0_round_30;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_30 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_30 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h12: begin
                B_0_round_30[31:24] = SM4_out_10;
                B_0_round_30[23:16] = SM4_out_11;
                B_0_round_30[15:8]  = SM4_out_12;
            end
            6'h13: begin
                B_0_round_30[7:0]   = SM4_out_0;
            end
            default: B_0_round_30 = B_0_round_30;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_31 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_31 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h13: begin
                BK_1_round_31[31:24]= SM4_out_1;
                BK_1_round_31[23:16]= SM4_out_2;
                BK_1_round_31[15:8] = SM4_out_3;
                BK_1_round_31[7:0]  = SM4_out_4;
            end
            default: BK_1_round_31 = BK_1_round_31;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_31 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_31 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h13: begin
                B_1_round_31[31:24] = SM4_out_5;
                B_1_round_31[23:16] = SM4_out_6;
                B_1_round_31[15:8]  = SM4_out_7;
                B_1_round_31[7:0]   = SM4_out_8;
            end
            default: B_1_round_31 = B_1_round_31;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_32 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_32 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h14: begin
                BK_0_round_32[31:24]= SM4_out_0;
                BK_0_round_32[23:16]= SM4_out_1;
                BK_0_round_32[15:8] = SM4_out_2;
                BK_0_round_32[7:0]  = SM4_out_3;
            end
            default: BK_0_round_32 = BK_0_round_32;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_32 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_32 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h14: begin
                B_0_round_32[31:24] = SM4_out_4;
                B_0_round_32[23:16] = SM4_out_5;
                B_0_round_32[15:8]  = SM4_out_6;
                B_0_round_32[7:0]   = SM4_out_7;
            end
            default: B_0_round_32 = B_0_round_32;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_33 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_33 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h14: begin
                BK_1_round_33[31:24]= SM4_out_8;
                BK_1_round_33[23:16]= SM4_out_9;
                BK_1_round_33[15:8] = SM4_out_10;
                BK_1_round_33[7:0]  = SM4_out_11;
            end
            default: BK_1_round_33 = BK_1_round_33;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_33 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_33 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h14: begin
                B_1_round_33[31:24] = SM4_out_12;
            end
            6'h15: begin
                B_1_round_33[23:16] = SM4_out_0;
                B_1_round_33[15:8]  = SM4_out_1;
                B_1_round_33[7:0]   = SM4_out_2;
            end
            default: B_1_round_33 = B_1_round_33;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_34 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_34 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h15: begin
                BK_0_round_34[31:24]= SM4_out_3;
                BK_0_round_34[23:16]= SM4_out_4;
                BK_0_round_34[15:8] = SM4_out_5;
                BK_0_round_34[7:0]  = SM4_out_6;
            end
            default: BK_0_round_34 = BK_0_round_34;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_34 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_34 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h15: begin
                B_0_round_34[31:24] = SM4_out_7;
                B_0_round_34[23:16] = SM4_out_8;
                B_0_round_34[15:8]  = SM4_out_9;
                B_0_round_34[7:0]   = SM4_out_10;
            end
            default: B_0_round_34 = B_0_round_34;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_35 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_35 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h15: begin
                BK_1_round_35[31:24]= SM4_out_11;
                BK_1_round_35[23:16]= SM4_out_12;
            end
            6'h16: begin
                BK_1_round_35[15:8] = SM4_out_0;
                BK_1_round_35[7:0]  = SM4_out_1;
            end
            default: BK_1_round_35 = BK_1_round_35;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_35 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_35 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h16: begin
                B_1_round_35[31:24] = SM4_out_2;
                B_1_round_35[23:16] = SM4_out_3;
                B_1_round_35[15:8]  = SM4_out_4;
                B_1_round_35[7:0]   = SM4_out_5;
            end
            default: B_1_round_35 = B_1_round_35;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_36 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_36 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h16: begin
                BK_0_round_36[31:24]= SM4_out_6;
                BK_0_round_36[23:16]= SM4_out_7;
                BK_0_round_36[15:8] = SM4_out_8;
                BK_0_round_36[7:0]  = SM4_out_9;
            end
            default: BK_0_round_36 = BK_0_round_36;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_36 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_36 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h16: begin
                B_0_round_36[31:24] = SM4_out_10;
                B_0_round_36[23:16] = SM4_out_11;
                B_0_round_36[15:8]  = SM4_out_12;
                B_0_round_36[7:0]  = 8'h0;
            end
            6'h17: begin
                B_0_round_36[31:24] = B_0_round_36[31:24];
                B_0_round_36[23:16] = B_0_round_36[23:16];
                B_0_round_36[15:8]  = B_0_round_36[15:8] ;
                B_0_round_36[7:0]   = SM4_out_0;
            end
            default: B_0_round_36 = B_0_round_36;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_37 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_37 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h17: begin
                BK_1_round_37[31:24]= SM4_out_1;
                BK_1_round_37[23:16]= SM4_out_2;
                BK_1_round_37[15:8] = SM4_out_3;
                BK_1_round_37[7:0]  = SM4_out_4;
            end
            default: BK_1_round_37 = BK_1_round_37;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_37 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_37 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h17: begin
                B_1_round_37[31:24] = SM4_out_5;
                B_1_round_37[23:16] = SM4_out_6;
                B_1_round_37[15:8]  = SM4_out_7;
                B_1_round_37[7:0]   = SM4_out_8;
            end
            default: B_1_round_37 = B_1_round_37;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_38 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_38 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h17: begin
                BK_0_round_38[31:24]= SM4_out_9;
                BK_0_round_38[23:16]= SM4_out_10;
                BK_0_round_38[15:8] = SM4_out_11;
                BK_0_round_38[7:0]  = SM4_out_12;
            end
            default: BK_0_round_38 = BK_0_round_38;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_38 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_38 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h18: begin
                B_0_round_38[31:24] = SM4_out_0;
                B_0_round_38[23:16] = SM4_out_1;
                B_0_round_38[15:8]  = SM4_out_2;
                B_0_round_38[7:0]   = SM4_out_3;
            end
            default: B_0_round_38 = B_0_round_38;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_39 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_39 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h18: begin
                BK_1_round_39[31:24]= SM4_out_4;
                BK_1_round_39[23:16]= SM4_out_5;
                BK_1_round_39[15:8] = SM4_out_6;
                BK_1_round_39[7:0]  = SM4_out_7;
            end
            default: BK_1_round_39 = BK_1_round_39;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_39 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_39 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h18: begin
                B_1_round_39[31:24] = SM4_out_8;
                B_1_round_39[23:16] = SM4_out_9;
                B_1_round_39[15:8]  = SM4_out_10;
                B_1_round_39[7:0]   = SM4_out_11;
            end
            default: B_1_round_39 = B_1_round_39;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_40 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_40 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h18: begin
                BK_0_round_40[31:24]= SM4_out_12;
            end
            6'h19: begin
                BK_0_round_40[23:16]= SM4_out_0;
                BK_0_round_40[15:8] = SM4_out_1;
                BK_0_round_40[7:0]  = SM4_out_2;
            end
            default: BK_0_round_40 = BK_0_round_40;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_40 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_40 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h19: begin
                B_0_round_40[31:24] = SM4_out_3;
                B_0_round_40[23:16] = SM4_out_4;
                B_0_round_40[15:8]  = SM4_out_5;
                B_0_round_40[7:0]   = SM4_out_6;
            end
            default: B_0_round_40 = B_0_round_40;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_41 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_41 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h19: begin
                BK_1_round_41[31:24]= SM4_out_7;
                BK_1_round_41[23:16]= SM4_out_8;
                BK_1_round_41[15:8] = SM4_out_9;
                BK_1_round_41[7:0]  = SM4_out_10;
            end
            default: BK_1_round_41 = BK_1_round_41;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_41 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_41 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h19: begin
                B_1_round_41[31:24] = SM4_out_11;
                B_1_round_41[23:16] = SM4_out_12;
            end
            6'h1a: begin
                B_1_round_41[15:8]  = SM4_out_0;
                B_1_round_41[7:0]   = SM4_out_1;
            end
            default: B_1_round_41 = B_1_round_41;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_42 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_42 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1a: begin
                BK_0_round_42[31:24]= SM4_out_2;
                BK_0_round_42[23:16]= SM4_out_3;
                BK_0_round_42[15:8] = SM4_out_4;
                BK_0_round_42[7:0]  = SM4_out_5;
            end
            default: BK_0_round_42 = BK_0_round_42;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_42 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_42 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1a: begin
                B_0_round_42[31:24] = SM4_out_6;
                B_0_round_42[23:16] = SM4_out_7;
                B_0_round_42[15:8]  = SM4_out_8;
                B_0_round_42[7:0]   = SM4_out_9;
            end
            default: B_0_round_42 = B_0_round_42;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_43 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_43 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1a: begin
                BK_1_round_43[31:24]= SM4_out_10;
                BK_1_round_43[23:16]= SM4_out_11;
                BK_1_round_43[15:8] = SM4_out_12;
            end
            6'h1b: begin
                BK_1_round_43[7:0]  = SM4_out_0;
            end
            default: BK_1_round_43 = BK_1_round_43;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_43 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_43 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1b: begin
                B_1_round_43[31:24] = SM4_out_1;
                B_1_round_43[23:16] = SM4_out_2;
                B_1_round_43[15:8]  = SM4_out_3;
                B_1_round_43[7:0]   = SM4_out_4;
            end
            default: B_1_round_43 = B_1_round_43;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_44 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_44 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1b: begin
                BK_0_round_44[31:24]= SM4_out_5;
                BK_0_round_44[23:16]= SM4_out_6;
                BK_0_round_44[15:8] = SM4_out_7;
                BK_0_round_44[7:0]  = SM4_out_8;
            end
            default: BK_0_round_44 = BK_0_round_44;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_44 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_44 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1b: begin
                B_0_round_44[31:24] = SM4_out_9;
                B_0_round_44[23:16] = SM4_out_10;
                B_0_round_44[15:8]  = SM4_out_11;
                B_0_round_44[7:0]   = SM4_out_12;
            end
            default: B_0_round_44 = B_0_round_44;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_45 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_45 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1c: begin
                BK_1_round_45[31:24]= SM4_out_0;
                BK_1_round_45[23:16]= SM4_out_1;
                BK_1_round_45[15:8] = SM4_out_2;
                BK_1_round_45[7:0]  = SM4_out_3;
            end
            default: BK_1_round_45 = BK_1_round_45;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_45 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_45 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1c: begin
                B_1_round_45[31:24] = SM4_out_4;
                B_1_round_45[23:16] = SM4_out_5;
                B_1_round_45[15:8]  = SM4_out_6;
                B_1_round_45[7:0]   = SM4_out_7;
            end
            default: B_1_round_45 = B_1_round_45;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_46 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_46 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1c: begin
                BK_0_round_46[31:24]= SM4_out_8;
                BK_0_round_46[23:16]= SM4_out_9;
                BK_0_round_46[15:8] = SM4_out_10;
                BK_0_round_46[7:0]  = SM4_out_11;
            end
            default: BK_0_round_46 = BK_0_round_46;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_46 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_46 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1c: begin
                B_0_round_46[31:24] = SM4_out_12;
            end
            6'h1d: begin
                B_0_round_46[23:16] = SM4_out_0;
                B_0_round_46[15:8]  = SM4_out_1;
                B_0_round_46[7:0]   = SM4_out_2;
            end
            default: B_0_round_46 = B_0_round_46;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_47 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_47 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1d: begin
                BK_1_round_47[31:24]= SM4_out_3;
                BK_1_round_47[23:16]= SM4_out_4;
                BK_1_round_47[15:8] = SM4_out_5;
                BK_1_round_47[7:0]  = SM4_out_6;
            end
            default: BK_1_round_47 = BK_1_round_47;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_47 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_47 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1d: begin
                B_1_round_47[31:24] = SM4_out_7;
                B_1_round_47[23:16] = SM4_out_8;
                B_1_round_47[15:8]  = SM4_out_9;
                B_1_round_47[7:0]   = SM4_out_10;
            end
            default: B_1_round_47 = B_1_round_47;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_48 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_48 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1d: begin
                BK_0_round_48[31:24]= SM4_out_11;
                BK_0_round_48[23:16]= SM4_out_12;
            end
            6'h1e: begin
                BK_0_round_48[15:8] = SM4_out_0;
                BK_0_round_48[7:0]  = SM4_out_1;
            end
            default: BK_0_round_48 = BK_0_round_48;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_48 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_48 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1e: begin
                B_0_round_48[31:24] = SM4_out_2;
                B_0_round_48[23:16] = SM4_out_3;
                B_0_round_48[15:8]  = SM4_out_4;
                B_0_round_48[7:0]   = SM4_out_5;
            end
            default: B_0_round_48 = B_0_round_48;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_49 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_49 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1e: begin
                BK_1_round_49[31:24]= SM4_out_6;
                BK_1_round_49[23:16]= SM4_out_7;
                BK_1_round_49[15:8] = SM4_out_8;
                BK_1_round_49[7:0]  = SM4_out_9;
            end
            default: BK_1_round_49 = BK_1_round_49;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_49 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_49 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1e: begin
                B_1_round_49[31:24] = SM4_out_10;
                B_1_round_49[23:16] = SM4_out_11;
                B_1_round_49[15:8]  = SM4_out_12;
            end
            6'h1f: begin
                B_1_round_49[7:0]   = SM4_out_0;
            end
            default: B_1_round_49 = B_1_round_49;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_50 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_50 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1f: begin
                BK_0_round_50[31:24]= SM4_out_1;
                BK_0_round_50[23:16]= SM4_out_2;
                BK_0_round_50[15:8] = SM4_out_3;
                BK_0_round_50[7:0]  = SM4_out_4;
            end
            default: BK_0_round_50 = BK_0_round_50;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_50 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_50 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1f: begin
                B_0_round_50[31:24] = SM4_out_5;
                B_0_round_50[23:16] = SM4_out_6;
                B_0_round_50[15:8]  = SM4_out_7;
                B_0_round_50[7:0]   = SM4_out_8;
            end
            default: B_0_round_50 = B_0_round_50;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_51 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_51 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h1f: begin
                BK_1_round_51[31:24]= SM4_out_9;
                BK_1_round_51[23:16]= SM4_out_10;
                BK_1_round_51[15:8] = SM4_out_11;
                BK_1_round_51[7:0]  = SM4_out_12;
            end
            default: BK_1_round_51 = BK_1_round_51;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_51 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_51 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h20: begin
                B_1_round_51[31:24] = SM4_out_0;
                B_1_round_51[23:16] = SM4_out_1;
                B_1_round_51[15:8]  = SM4_out_2;
                B_1_round_51[7:0]   = SM4_out_3;
            end
            default: B_1_round_51 = B_1_round_51;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_52 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_52 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h20: begin
                BK_0_round_52[31:24]= SM4_out_4;
                BK_0_round_52[23:16]= SM4_out_5;
                BK_0_round_52[15:8] = SM4_out_6;
                BK_0_round_52[7:0]  = SM4_out_7;
            end
            default: BK_0_round_52 = BK_0_round_52;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_52 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_52 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h20: begin
                B_0_round_52[31:24] = SM4_out_8;
                B_0_round_52[23:16] = SM4_out_9;
                B_0_round_52[15:8]  = SM4_out_10;
                B_0_round_52[7:0]   = SM4_out_11;
            end
            default: B_0_round_52 = B_0_round_52;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_53 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_53 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h20: begin
                BK_1_round_53[31:24]= SM4_out_12;
            end
            6'h21: begin
                BK_1_round_53[23:16]= SM4_out_0;
                BK_1_round_53[15:8] = SM4_out_1;
                BK_1_round_53[7:0]  = SM4_out_2;
            end
            default: BK_1_round_53 = BK_1_round_53;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_53 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_53 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h21: begin
                B_1_round_53[31:24] = SM4_out_3;
                B_1_round_53[23:16] = SM4_out_4;
                B_1_round_53[15:8]  = SM4_out_5;
                B_1_round_53[7:0]   = SM4_out_6;
            end
            default: B_1_round_53 = B_1_round_53;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_54 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_54 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h21: begin
                BK_0_round_54[31:24]= SM4_out_7;
                BK_0_round_54[23:16]= SM4_out_8;
                BK_0_round_54[15:8] = SM4_out_9;
                BK_0_round_54[7:0]  = SM4_out_10;
            end
            default: BK_0_round_54 = BK_0_round_54;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_54 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_54 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h21: begin
                B_0_round_54[31:24] = SM4_out_11;
                B_0_round_54[23:16] = SM4_out_12;
            end
            6'h22: begin
                B_0_round_54[15:8]  = SM4_out_0;
                B_0_round_54[7:0]   = SM4_out_1;
            end
            default: B_0_round_54 = B_0_round_54;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_55 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_55 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h22: begin
                BK_1_round_55[31:24]= SM4_out_2;
                BK_1_round_55[23:16]= SM4_out_3;
                BK_1_round_55[15:8] = SM4_out_4;
                BK_1_round_55[7:0]  = SM4_out_5;
            end
            default: BK_1_round_55 = BK_1_round_55;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_55 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_55 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h22: begin
                B_1_round_55[31:24] = SM4_out_6;
                B_1_round_55[23:16] = SM4_out_7;
                B_1_round_55[15:8]  = SM4_out_8;
                B_1_round_55[7:0]   = SM4_out_9;
            end
            default: B_1_round_55 = B_1_round_55;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_56 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_56 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h22: begin
                BK_0_round_56[31:24]= SM4_out_10;
                BK_0_round_56[23:16]= SM4_out_11;
                BK_0_round_56[15:8] = SM4_out_12;
            end
            6'h23: begin
                BK_0_round_56[7:0]  = SM4_out_0;
            end
            default: BK_0_round_56 = BK_0_round_56;
        endcase
    end
end

always @(*) begin
        case (clk_cnt_all)
            6'h23: begin
                B_0_round_56[31:24] = SM4_out_1;
                B_0_round_56[23:16] = SM4_out_2;
                B_0_round_56[15:8]  = SM4_out_3;
                B_0_round_56[7:0]   = SM4_out_4;
            end
            default: B_0_round_56 = B_0_round_56;
        endcase
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_57 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_57 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h23: begin
                BK_1_round_57[31:24]= SM4_out_5;
                BK_1_round_57[23:16]= SM4_out_6;
                BK_1_round_57[15:8] = SM4_out_7;
                BK_1_round_57[7:0]  = SM4_out_8;
            end
            default: BK_1_round_57 = BK_1_round_57;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_57 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_57 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h23: begin
                B_1_round_57[31:24] = SM4_out_9;
                B_1_round_57[23:16] = SM4_out_10;
                B_1_round_57[15:8]  = SM4_out_11;
                B_1_round_57[7:0]   = SM4_out_12;
            end
            default: B_1_round_57 = B_1_round_57;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_58 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_58 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h24: begin
                BK_0_round_58[31:24]= SM4_out_0;
                BK_0_round_58[23:16]= SM4_out_1;
                BK_0_round_58[15:8] = SM4_out_2;
                BK_0_round_58[7:0]  = SM4_out_3;
            end
            default: BK_0_round_58 = BK_0_round_58;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_58 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_58 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h24: begin
                B_0_round_58[31:24] = SM4_out_4;
                B_0_round_58[23:16] = SM4_out_5;
                B_0_round_58[15:8]  = SM4_out_6;
                B_0_round_58[7:0]   = SM4_out_7;
            end
            default: B_0_round_58 = B_0_round_58;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_59 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_59 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h24: begin
                BK_1_round_59[31:24]= SM4_out_8;
                BK_1_round_59[23:16]= SM4_out_9;
                BK_1_round_59[15:8] = SM4_out_10;
                BK_1_round_59[7:0]  = SM4_out_11;
            end
            default: BK_1_round_59 = BK_1_round_59;
        endcase
    end
end

always @(*) begin
        case (clk_cnt_all)
            6'h24: begin
                B_1_round_59[31:24] = SM4_out_12;
            end
            6'h25: begin
                B_1_round_59[23:16] = SM4_out_0;
                B_1_round_59[15:8]  = SM4_out_1;
                B_1_round_59[7:0]   = SM4_out_2;
            end
            default: B_1_round_59 = 32'h0;
        endcase
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_60 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_60 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h25: begin
                BK_0_round_60[31:24]= SM4_out_3;
                BK_0_round_60[23:16]= SM4_out_4;
                BK_0_round_60[15:8] = SM4_out_5;
                BK_0_round_60[7:0]  = SM4_out_6;
            end
            default: BK_0_round_60 = BK_0_round_60;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_60 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_60 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h25: begin
                B_0_round_60[31:24] = SM4_out_7;
                B_0_round_60[23:16] = SM4_out_8;
                B_0_round_60[15:8]  = SM4_out_9;
                B_0_round_60[7:0]   = SM4_out_10;
            end
            default: B_0_round_60 = B_0_round_60;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_61 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_61 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h25: begin
                BK_1_round_61[31:24]= SM4_out_11;
                BK_1_round_61[23:16]= SM4_out_12;
            end
            6'h26: begin
                BK_1_round_61[15:8] = SM4_out_0;
                BK_1_round_61[7:0]  = SM4_out_1;
            end
            default: BK_1_round_61 = BK_1_round_61;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_61 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_61 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h26: begin
                B_1_round_61[31:24] = SM4_out_2;
                B_1_round_61[23:16] = SM4_out_3;
                B_1_round_61[15:8]  = SM4_out_4;
                B_1_round_61[7:0]   = SM4_out_5;
            end
            default: B_1_round_61 = B_1_round_61;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_0_round_62 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_0_round_62 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h26: begin
                BK_0_round_62[31:24]= SM4_out_6;
                BK_0_round_62[23:16]= SM4_out_7;
                BK_0_round_62[15:8] = SM4_out_8;
                BK_0_round_62[7:0]  = SM4_out_9;
            end
            default: BK_0_round_62 = BK_0_round_62;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_0_round_62 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_0_round_62 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h26: begin
                B_0_round_62[31:24] = SM4_out_10;
                B_0_round_62[23:16] = SM4_out_11;
                B_0_round_62[15:8]  = SM4_out_12;
            end
            6'h27: begin
                B_0_round_62[7:0]   = SM4_out_0;
            end
            default: B_0_round_62 = B_0_round_62;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        BK_1_round_63 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        BK_1_round_63 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h27: begin
                BK_1_round_63[31:24]= SM4_out_1;
                BK_1_round_63[23:16]= SM4_out_2;
                BK_1_round_63[15:8] = SM4_out_3;
                BK_1_round_63[7:0]  = SM4_out_4;
            end
            default: BK_1_round_63 = BK_1_round_63;
        endcase
    end
end

always @(*) begin
    if (!rstn) begin
        B_1_round_63 = 32'h0;
    end else if (cfg[2:1] == 2'b00 || cfg[2:1] == 2'b01 || cfg[2:1] == 2'b10) begin
        B_1_round_63 = 32'h0;
    end else begin
        case (clk_cnt_all)
            6'h27: begin
                B_1_round_63[31:24] = SM4_out_5;
                B_1_round_63[23:16] = SM4_out_6;
                B_1_round_63[15:8]  = SM4_out_7;
                B_1_round_63[7:0]   = SM4_out_8;
            end
            default: B_1_round_63 = B_1_round_63;
        endcase
    end
end
