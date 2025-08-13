module reconfig_sbox_blk
(
    input  wire         clk,
    input  wire         rstn, 
    //input  wire         bsy_tmp, 
    input  wire [ 5:0]  clk_cnt_all, 
    input  wire [ 2:0]  cfg,  
    input  wire [127:0] sbox_din, 
    input  wire [127:0] sbox_kin, 
    output reg  [127:0] sbox_dout,
    output reg  [127:0] sbox_kout,
    output wire         d_vld_out, 
    output wire         k_vld_out
);

    // key reg wire
    reg  [31:0]  rk_round_0;
    reg  [31:0]  rk_round_1;
    reg  [31:0]  rk_round_2;
    reg  [31:0]  rk_round_3;
    reg  [31:0]  rk_round_4;
    reg  [31:0]  rk_round_5;
    reg  [31:0]  rk_round_6;
    reg  [31:0]  rk_round_7;
    reg  [31:0]  rk_round_8;
    reg  [31:0]  rk_round_9;
    reg  [31:0]  rk_round_10;
    reg  [31:0]  rk_round_11;
    reg  [31:0]  rk_round_12;
    reg  [31:0]  rk_round_13;
    reg  [31:0]  rk_round_14;
    reg  [31:0]  rk_round_15;
    reg  [31:0]  rk_round_16;
    reg  [31:0]  rk_round_17;
    reg  [31:0]  rk_round_18;
    reg  [31:0]  rk_round_19;
    reg  [31:0]  rk_round_20;
    reg  [31:0]  rk_round_21;
    reg  [31:0]  rk_round_22;
    reg  [31:0]  rk_round_23;
    reg  [31:0]  rk_round_24;
    reg  [31:0]  rk_round_25;
    reg  [31:0]  rk_round_26;
    reg  [31:0]  rk_round_27;
    reg  [31:0]  rk_round_28;
    reg  [31:0]  rk_round_29;
    reg  [31:0]  rk_round_30;
    reg  [31:0]  rk_round_31;
    reg  [31:0]  rk_round_32;
    reg  [31:0]  rk_round_33;
    reg  [31:0]  rk_round_34;
    reg  [31:0]  rk_round_35;
    reg  [31:0]  rk_round_36;
    reg  [31:0]  rk_round_37;
    reg  [31:0]  rk_round_38;
    reg  [31:0]  rk_round_39;
    reg  [31:0]  rk_round_40;
    reg  [31:0]  rk_round_41;
    reg  [31:0]  rk_round_42;
    reg  [31:0]  rk_round_43;
    reg  [31:0]  rk_round_44;
    reg  [31:0]  rk_round_45;
    reg  [31:0]  rk_round_46;
    reg  [31:0]  rk_round_47;
    reg  [31:0]  rk_round_48;
    reg  [31:0]  rk_round_49;
    reg  [31:0]  rk_round_50;
    reg  [31:0]  rk_round_51;
    reg  [31:0]  rk_round_52;
    reg  [31:0]  rk_round_53;
    reg  [31:0]  rk_round_54;
    reg  [31:0]  rk_round_55;
    reg  [31:0]  rk_round_56;
    reg  [31:0]  rk_round_57;
    reg  [31:0]  rk_round_58;
    reg  [31:0]  rk_round_59;
    reg  [31:0]  rk_round_60;
    reg  [31:0]  rk_round_61;
    reg  [31:0]  rk_round_62;
    reg  [31:0]  rk_round_63;
    wire [127:0] Ki;
    wire [31:0]  k3_0;
    wire [31:0]  k2_0;
    wire [31:0]  k1_0;
    wire [31:0]  k0_0;
    reg  [31:0]  AK_0;
    reg  [31:0]  rk_0;
    reg  [31:0]  LK_0;
    reg  [31:0]  CK_0;
    reg  [31:0]  BK_0;
    reg  [31:0]  BK_0_round_0;
    reg  [31:0]  BK_0_round_2;
    reg  [31:0]  BK_0_round_4;
    reg  [31:0]  BK_0_round_6;
    reg  [31:0]  BK_0_round_8;
    reg  [31:0]  BK_0_round_10;
    reg  [31:0]  BK_0_round_12;
    reg  [31:0]  BK_0_round_14;
    reg  [31:0]  BK_0_round_16;
    reg  [31:0]  BK_0_round_18;
    reg  [31:0]  BK_0_round_20;
    reg  [31:0]  BK_0_round_22;
    reg  [31:0]  BK_0_round_24;
    reg  [31:0]  BK_0_round_26;
    reg  [31:0]  BK_0_round_28;
    reg  [31:0]  BK_0_round_30;
    reg  [31:0]  BK_0_round_32;
    reg  [31:0]  BK_0_round_34;
    reg  [31:0]  BK_0_round_36;
    reg  [31:0]  BK_0_round_38;
    reg  [31:0]  BK_0_round_40;
    reg  [31:0]  BK_0_round_42;
    reg  [31:0]  BK_0_round_44;
    reg  [31:0]  BK_0_round_46;
    reg  [31:0]  BK_0_round_48;
    reg  [31:0]  BK_0_round_50;
    reg  [31:0]  BK_0_round_52;
    reg  [31:0]  BK_0_round_54;
    reg  [31:0]  BK_0_round_56;
    reg  [31:0]  BK_0_round_58;
    reg  [31:0]  BK_0_round_60;
    reg  [31:0]  BK_0_round_62;
    
    reg  [31:0]  AK_1;
    reg  [31:0]  rk_1;
    reg  [31:0]  LK_1;
    reg  [31:0]  CK_1;
    reg  [31:0]  BK_1;
    reg  [31:0]  BK_1_round_1;
    reg  [31:0]  BK_1_round_3;
    reg  [31:0]  BK_1_round_5;
    reg  [31:0]  BK_1_round_7;
    reg  [31:0]  BK_1_round_9;
    reg  [31:0]  BK_1_round_11;
    reg  [31:0]  BK_1_round_13;
    reg  [31:0]  BK_1_round_15;
    reg  [31:0]  BK_1_round_17;
    reg  [31:0]  BK_1_round_19;
    reg  [31:0]  BK_1_round_21;
    reg  [31:0]  BK_1_round_23;
    reg  [31:0]  BK_1_round_25;
    reg  [31:0]  BK_1_round_27;
    reg  [31:0]  BK_1_round_29;
    reg  [31:0]  BK_1_round_31;
    reg  [31:0]  BK_1_round_33;
    reg  [31:0]  BK_1_round_35;
    reg  [31:0]  BK_1_round_37;
    reg  [31:0]  BK_1_round_39;
    reg  [31:0]  BK_1_round_41;
    reg  [31:0]  BK_1_round_43;
    reg  [31:0]  BK_1_round_45;
    reg  [31:0]  BK_1_round_47;
    reg  [31:0]  BK_1_round_49;
    reg  [31:0]  BK_1_round_51;
    reg  [31:0]  BK_1_round_53;
    reg  [31:0]  BK_1_round_55;
    reg  [31:0]  BK_1_round_57;
    reg  [31:0]  BK_1_round_59;
    reg  [31:0]  BK_1_round_61;
    reg  [31:0]  BK_1_round_63;
    
    // data reg wire
    reg  [31:0]  rd_round_0;
    reg  [31:0]  rd_round_1;
    reg  [31:0]  rd_round_2;
    reg  [31:0]  rd_round_3;
    reg  [31:0]  rd_round_4;
    reg  [31:0]  rd_round_5;
    reg  [31:0]  rd_round_6;
    reg  [31:0]  rd_round_7;
    reg  [31:0]  rd_round_8;
    reg  [31:0]  rd_round_9;
    reg  [31:0]  rd_round_10;
    reg  [31:0]  rd_round_11;
    reg  [31:0]  rd_round_12;
    reg  [31:0]  rd_round_13;
    reg  [31:0]  rd_round_14;
    reg  [31:0]  rd_round_15;
    reg  [31:0]  rd_round_16;
    reg  [31:0]  rd_round_17;
    reg  [31:0]  rd_round_18;
    reg  [31:0]  rd_round_19;
    reg  [31:0]  rd_round_20;
    reg  [31:0]  rd_round_21;
    reg  [31:0]  rd_round_22;
    reg  [31:0]  rd_round_23;
    reg  [31:0]  rd_round_24;
    reg  [31:0]  rd_round_25;
    reg  [31:0]  rd_round_26;
    reg  [31:0]  rd_round_27;
    reg  [31:0]  rd_round_28;
    reg  [31:0]  rd_round_29;
    reg  [31:0]  rd_round_30;
    reg  [31:0]  rd_round_31;
    reg  [31:0]  rd_round_32;
    reg  [31:0]  rd_round_33;
    reg  [31:0]  rd_round_34;
    reg  [31:0]  rd_round_35;
    reg  [31:0]  rd_round_36;
    reg  [31:0]  rd_round_37;
    reg  [31:0]  rd_round_38;
    reg  [31:0]  rd_round_39;
    reg  [31:0]  rd_round_40;
    reg  [31:0]  rd_round_41;
    reg  [31:0]  rd_round_42;
    reg  [31:0]  rd_round_43;
    reg  [31:0]  rd_round_44;
    reg  [31:0]  rd_round_45;
    reg  [31:0]  rd_round_46;
    reg  [31:0]  rd_round_47;
    reg  [31:0]  rd_round_48;
    reg  [31:0]  rd_round_49;
    reg  [31:0]  rd_round_50;
    reg  [31:0]  rd_round_51;
    reg  [31:0]  rd_round_52;
    reg  [31:0]  rd_round_53;
    reg  [31:0]  rd_round_54;
    reg  [31:0]  rd_round_55;
    reg  [31:0]  rd_round_56;
    reg  [31:0]  rd_round_57;
    reg  [31:0]  rd_round_58;
    reg  [31:0]  rd_round_59;
    reg  [31:0]  rd_round_60;
    reg  [31:0]  rd_round_61;
    reg  [31:0]  rd_round_62;
    reg  [31:0]  rd_round_63;
    wire [31:0]  d3_0;
    wire [31:0]  d2_0;
    wire [31:0]  d1_0;
    wire [31:0]  d0_0;
    reg  [31:0]  A_0;
    reg  [31:0]  B_0_round_0;
    reg  [31:0]  B_0_round_2;
    reg  [31:0]  B_0_round_4;
    reg  [31:0]  B_0_round_6;
    reg  [31:0]  B_0_round_8;
    reg  [31:0]  B_0_round_10;
    reg  [31:0]  B_0_round_12;
    reg  [31:0]  B_0_round_14;
    reg  [31:0]  B_0_round_16;
    reg  [31:0]  B_0_round_18;
    reg  [31:0]  B_0_round_20;
    reg  [31:0]  B_0_round_22;
    reg  [31:0]  B_0_round_24;
    reg  [31:0]  B_0_round_26;
    reg  [31:0]  B_0_round_28;
    reg  [31:0]  B_0_round_30;
    reg  [31:0]  B_0_round_32;
    reg  [31:0]  B_0_round_34;
    reg  [31:0]  B_0_round_36;
    reg  [31:0]  B_0_round_38;
    reg  [31:0]  B_0_round_40;
    reg  [31:0]  B_0_round_42;
    reg  [31:0]  B_0_round_44;
    reg  [31:0]  B_0_round_46;
    reg  [31:0]  B_0_round_48;
    reg  [31:0]  B_0_round_50;
    reg  [31:0]  B_0_round_52;
    reg  [31:0]  B_0_round_54;
    reg  [31:0]  B_0_round_56;
    reg  [31:0]  B_0_round_58;
    reg  [31:0]  B_0_round_60;
    reg  [31:0]  B_0_round_62;
    reg  [31:0]  B_0;
    reg  [31:0]  L_0;
    reg  [31:0]  rd_0;

    reg  [31:0]  A_1;
    reg  [31:0]  B_1;
    reg  [31:0]  B_1_round_1;
    reg  [31:0]  B_1_round_3;
    reg  [31:0]  B_1_round_5;
    reg  [31:0]  B_1_round_7;
    reg  [31:0]  B_1_round_9;
    reg  [31:0]  B_1_round_11;
    reg  [31:0]  B_1_round_13;
    reg  [31:0]  B_1_round_15;
    reg  [31:0]  B_1_round_17;
    reg  [31:0]  B_1_round_19;
    reg  [31:0]  B_1_round_21;
    reg  [31:0]  B_1_round_23;
    reg  [31:0]  B_1_round_25;
    reg  [31:0]  B_1_round_27;
    reg  [31:0]  B_1_round_29;
    reg  [31:0]  B_1_round_31;
    reg  [31:0]  B_1_round_33;
    reg  [31:0]  B_1_round_35;
    reg  [31:0]  B_1_round_37;
    reg  [31:0]  B_1_round_39;
    reg  [31:0]  B_1_round_41;
    reg  [31:0]  B_1_round_43;
    reg  [31:0]  B_1_round_45;
    reg  [31:0]  B_1_round_47;
    reg  [31:0]  B_1_round_49;
    reg  [31:0]  B_1_round_51;
    reg  [31:0]  B_1_round_53;
    reg  [31:0]  B_1_round_55;
    reg  [31:0]  B_1_round_57;
    reg  [31:0]  B_1_round_59;
    reg  [31:0]  B_1_round_61;
    reg  [31:0]  B_1_round_63;
    reg  [31:0]  L_1;
    reg  [31:0]  rd_1;

    // sbox in and out reg and wire
    reg     [7:0]   AES_128_in_0 ;
    reg     [7:0]   AES_192_in_0 ;
    reg     [7:0]   AES_256_in_0 ;
    reg     [7:0]   SM4_in_0     ;
    reg     [7:0]   AES_128_out_0;
    reg     [7:0]   AES_192_out_0;
    reg     [7:0]   AES_256_out_0;
    reg     [7:0]   SM4_out_0    ;
    reg     [7:0]   sbox_in_0    ;
    wire    [7:0]   sbox_out_0   ;
    reg     [7:0]   AES_128_in_1 ;
    reg     [7:0]   AES_192_in_1 ;
    reg     [7:0]   AES_256_in_1 ;
    reg     [7:0]   SM4_in_1     ;
    reg     [7:0]   AES_128_out_1;
    reg     [7:0]   AES_192_out_1;
    reg     [7:0]   AES_256_out_1;
    reg     [7:0]   SM4_out_1    ;
    reg     [7:0]   sbox_in_1    ;
    wire    [7:0]   sbox_out_1   ;
    reg     [7:0]   AES_128_in_2 ;
    reg     [7:0]   AES_192_in_2 ;
    reg     [7:0]   AES_256_in_2 ;
    reg     [7:0]   SM4_in_2     ;
    reg     [7:0]   AES_128_out_2;
    reg     [7:0]   AES_192_out_2;
    reg     [7:0]   AES_256_out_2;
    reg     [7:0]   SM4_out_2    ;
    reg     [7:0]   sbox_in_2    ;
    wire    [7:0]   sbox_out_2   ;
    reg     [7:0]   AES_128_in_3 ;
    reg     [7:0]   AES_192_in_3 ;
    reg     [7:0]   AES_256_in_3 ;
    reg     [7:0]   SM4_in_3     ;
    reg     [7:0]   AES_128_out_3;
    reg     [7:0]   AES_192_out_3;
    reg     [7:0]   AES_256_out_3;
    reg     [7:0]   SM4_out_3    ;
    reg     [7:0]   sbox_in_3    ;
    wire    [7:0]   sbox_out_3   ;
    reg     [7:0]   AES_128_in_4 ;
    reg     [7:0]   AES_192_in_4 ;
    reg     [7:0]   AES_256_in_4 ;
    reg     [7:0]   SM4_in_4     ;
    reg     [7:0]   AES_128_out_4;
    reg     [7:0]   AES_192_out_4;
    reg     [7:0]   AES_256_out_4;
    reg     [7:0]   SM4_out_4    ;
    reg     [7:0]   sbox_in_4    ;
    wire    [7:0]   sbox_out_4   ;
    reg     [7:0]   AES_128_in_5 ;
    reg     [7:0]   AES_192_in_5 ;
    reg     [7:0]   AES_256_in_5 ;
    reg     [7:0]   SM4_in_5     ;
    reg     [7:0]   AES_128_out_5;
    reg     [7:0]   AES_192_out_5;
    reg     [7:0]   AES_256_out_5;
    reg     [7:0]   SM4_out_5    ;
    reg     [7:0]   sbox_in_5    ;
    wire    [7:0]   sbox_out_5   ;
    reg     [7:0]   AES_128_in_6 ;
    reg     [7:0]   AES_192_in_6 ;
    reg     [7:0]   AES_256_in_6 ;
    reg     [7:0]   SM4_in_6     ;
    reg     [7:0]   AES_128_out_6;
    reg     [7:0]   AES_192_out_6;
    reg     [7:0]   AES_256_out_6;
    reg     [7:0]   SM4_out_6    ;
    reg     [7:0]   sbox_in_6    ;
    wire    [7:0]   sbox_out_6   ;
    reg     [7:0]   AES_128_in_7 ;
    reg     [7:0]   AES_192_in_7 ;
    reg     [7:0]   AES_256_in_7 ;
    reg     [7:0]   SM4_in_7     ;
    reg     [7:0]   AES_128_out_7;
    reg     [7:0]   AES_192_out_7;
    reg     [7:0]   AES_256_out_7;
    reg     [7:0]   SM4_out_7    ;
    reg     [7:0]   sbox_in_7    ;
    wire    [7:0]   sbox_out_7   ;
    reg     [7:0]   AES_128_in_8 ;
    reg     [7:0]   AES_192_in_8 ;
    reg     [7:0]   AES_256_in_8 ;
    reg     [7:0]   SM4_in_8     ;
    reg     [7:0]   AES_128_out_8;
    reg     [7:0]   AES_192_out_8;
    reg     [7:0]   AES_256_out_8;
    reg     [7:0]   SM4_out_8    ;
    reg     [7:0]   sbox_in_8    ;
    wire    [7:0]   sbox_out_8   ;
    reg     [7:0]   AES_128_in_9 ;
    reg     [7:0]   AES_192_in_9 ;
    reg     [7:0]   AES_256_in_9 ;
    reg     [7:0]   SM4_in_9     ;
    reg     [7:0]   AES_128_out_9;
    reg     [7:0]   AES_192_out_9;
    reg     [7:0]   AES_256_out_9;
    reg     [7:0]   SM4_out_9    ;
    reg     [7:0]   sbox_in_9    ;
    wire    [7:0]   sbox_out_9   ;
    reg     [7:0]   AES_128_in_10 ;
    reg     [7:0]   AES_192_in_10 ;
    reg     [7:0]   AES_256_in_10 ;
    reg     [7:0]   SM4_in_10     ;
    reg     [7:0]   AES_128_out_10;
    reg     [7:0]   AES_192_out_10;
    reg     [7:0]   AES_256_out_10;
    reg     [7:0]   SM4_out_10    ;
    reg     [7:0]   sbox_in_10    ;
    wire    [7:0]   sbox_out_10   ;
    reg     [7:0]   AES_128_in_11 ;
    reg     [7:0]   AES_192_in_11 ;
    reg     [7:0]   AES_256_in_11 ;
    reg     [7:0]   SM4_in_11     ;
    reg     [7:0]   AES_128_out_11;
    reg     [7:0]   AES_192_out_11;
    reg     [7:0]   AES_256_out_11;
    reg     [7:0]   SM4_out_11    ;
    reg     [7:0]   sbox_in_11    ;
    wire    [7:0]   sbox_out_11   ;
    reg     [7:0]   AES_128_in_12 ;
    reg     [7:0]   AES_192_in_12 ;
    reg     [7:0]   AES_256_in_12 ;
    reg     [7:0]   SM4_in_12     ;
    reg     [7:0]   AES_128_out_12;
    reg     [7:0]   AES_192_out_12;
    reg     [7:0]   AES_256_out_12;
    reg     [7:0]   SM4_out_12    ;
    reg     [7:0]   sbox_in_12    ;
    wire    [7:0]   sbox_out_12   ;
    reg     [7:0]   AES_128_in_13 ;
    reg     [7:0]   AES_192_in_13 ;
    reg     [7:0]   AES_256_in_13 ;
    reg     [7:0]   SM4_in_13     ;
    reg     [7:0]   AES_128_out_13;
    reg     [7:0]   AES_192_out_13;
    reg     [7:0]   AES_256_out_13;
    reg     [7:0]   SM4_out_13    ;
    reg     [7:0]   sbox_in_13    ;
    wire    [7:0]   sbox_out_13   ;

    
    reg     [127:0] sbox_din_sm4;
    reg     [127:0] sbox_kin_sm4;
    reg     [127:0] sbox_din_aes;
    reg     [127:0] sbox_kin_aes;
    wire    [127:0] sbox_dout_sm4;
    reg     [127:0] sbox_dout_aes_128;
    reg     [127:0] sbox_kout_aes_128;
    reg     [127:0] sbox_dout_aes_192;
    reg     [127:0] sbox_kout_aes_192;
    reg     [127:0] sbox_dout_aes_256;
    reg     [127:0] sbox_kout_aes_256;
    reg     [31:0]  d_vld_out_t;
    reg     [31:0]  k_vld_out_t;

    reg             cfg_ende_sbox0; //1:enc 0:dec
    reg             cfg_ende_sbox1; //1:enc 0:dec
    reg             cfg_ende_sbox2; //1:enc 0:dec
    reg             cfg_ende_sbox3; //1:enc 0:dec
    reg             cfg_ende_sbox4; //1:enc 0:dec
    reg             cfg_ende_sbox5; //1:enc 0:dec
    reg             cfg_ende_sbox6; //1:enc 0:dec
    reg             cfg_ende_sbox7; //1:enc 0:dec
    reg             cfg_ende_sbox8; //1:enc 0:dec
    reg             cfg_ende_sbox9; //1:enc 0:dec
    reg             cfg_ende_sbox10;//1:enc 0:dec
    reg             cfg_ende_sbox11;//1:enc 0:dec
    reg             cfg_ende_sbox12;//1:enc 0:dec
    reg             cfg_ende_sbox13;//1:enc 0:dec

    // aes reg wire
    reg    [31:0]   sbox_kout_aes_128_clk_0 ;  
    reg    [31:0]   sbox_kout_aes_128_clk_1 ;  
    reg    [31:0]   sbox_kout_aes_128_clk_2 ;
    reg    [31:0]   sbox_kout_aes_128_clk_3 ;
    reg    [31:0]   sbox_kout_aes_128_clk_4 ;
    reg    [31:0]   sbox_kout_aes_128_clk_5 ;
    reg    [31:0]   sbox_kout_aes_128_clk_6 ;
    reg    [31:0]   sbox_kout_aes_128_clk_7 ;
    reg    [31:0]   sbox_kout_aes_128_clk_8 ;
    reg    [31:0]   sbox_kout_aes_128_clk_9 ;
    reg    [31:0]   sbox_kout_aes_128_clk_a ;
    reg    [31:0]   sbox_kout_aes_128_clk_b ;
    reg    [31:0]   sbox_kout_aes_128_clk_c ;
    reg    [31:0]   sbox_kout_aes_128_clk_d ;
    reg    [31:0]   sbox_kout_aes_128_clk_e ;
    reg    [31:0]   sbox_kout_aes_128_clk_f ;
    reg    [31:0]   sbox_kout_aes_128_clk_10;
    reg    [31:0]   sbox_kout_aes_128_clk_11;
    reg    [31:0]   sbox_kout_aes_128_clk_12;
    reg    [31:0]   sbox_kout_aes_128_clk_13;
    reg    [31:0]   sbox_kout_aes_128_clk_14;  
    reg    [31:0]   sbox_kout_aes_128_clk_15;  
    reg    [31:0]   sbox_kout_aes_128_clk_16;
    reg    [31:0]   sbox_kout_aes_128_clk_17;
    reg    [31:0]   sbox_kout_aes_128_clk_18;
    reg    [31:0]   sbox_kout_aes_128_clk_19;
    reg    [31:0]   sbox_kout_aes_128_clk_1a;
    reg    [31:0]   sbox_kout_aes_128_clk_1b;
    reg    [31:0]   sbox_kout_aes_128_clk_1c;
    reg    [31:0]   sbox_kout_aes_128_clk_1d;
    reg    [31:0]   sbox_kout_aes_128_clk_1e;
    reg    [31:0]   sbox_kout_aes_128_clk_1f;
    reg    [31:0]   sbox_kout_aes_128_clk_20 ;
    reg    [31:0]   sbox_kout_aes_128_clk_21;
    reg    [31:0]   sbox_kout_aes_128_clk_22;
    reg    [31:0]   sbox_kout_aes_128_clk_23;
    reg    [31:0]   sbox_kout_aes_128_clk_24;
    reg    [31:0]   sbox_kout_aes_128_clk_25;
    reg    [31:0]   sbox_kout_aes_128_clk_26;
    reg    [31:0]   sbox_kout_aes_128_clk_27;
    reg    [127:0]  sbox_dout_aes_128_clk_0 ;
    reg    [127:0]  sbox_dout_aes_128_clk_1 ;
    reg    [127:0]  sbox_dout_aes_128_clk_2 ;
    reg    [127:0]  sbox_dout_aes_128_clk_3 ;
    reg    [127:0]  sbox_dout_aes_128_clk_4 ;
    reg    [127:0]  sbox_dout_aes_128_clk_5 ;
    reg    [127:0]  sbox_dout_aes_128_clk_6 ;
    reg    [127:0]  sbox_dout_aes_128_clk_7 ;
    reg    [127:0]  sbox_dout_aes_128_clk_8 ;
    reg    [127:0]  sbox_dout_aes_128_clk_9 ;
    reg    [127:0]  sbox_dout_aes_128_clk_a ;
    reg    [127:0]  sbox_dout_aes_128_clk_b ;
    reg    [127:0]  sbox_dout_aes_128_clk_c ;
    reg    [127:0]  sbox_dout_aes_128_clk_d ;
    reg    [127:0]  sbox_dout_aes_128_clk_e ;
    reg    [127:0]  sbox_dout_aes_128_clk_f ;
    reg    [127:0]  sbox_dout_aes_128_clk_10;
    reg    [127:0]  sbox_dout_aes_128_clk_11;
    reg    [127:0]  sbox_dout_aes_128_clk_12;
    reg    [127:0]  sbox_dout_aes_128_clk_13;
    reg    [127:0]  sbox_dout_aes_128_clk_14;  
    reg    [127:0]  sbox_dout_aes_128_clk_15;  
    reg    [127:0]  sbox_dout_aes_128_clk_16;
    reg    [127:0]  sbox_dout_aes_128_clk_17;
    reg    [127:0]  sbox_dout_aes_128_clk_18;
    reg    [127:0]  sbox_dout_aes_128_clk_19;
    reg    [127:0]  sbox_dout_aes_128_clk_1a;
    reg    [127:0]  sbox_dout_aes_128_clk_1b;
    reg    [127:0]  sbox_dout_aes_128_clk_1c;
    reg    [127:0]  sbox_dout_aes_128_clk_1d;
    reg    [127:0]  sbox_dout_aes_128_clk_1e;
    reg    [127:0]  sbox_dout_aes_128_clk_1f;
    reg    [127:0]  sbox_dout_aes_128_clk_20 ;
    reg    [127:0]  sbox_dout_aes_128_clk_21;
    reg    [127:0]  sbox_dout_aes_128_clk_22;
    reg    [127:0]  sbox_dout_aes_128_clk_23;
    reg    [127:0]  sbox_dout_aes_128_clk_24;
    reg    [127:0]  sbox_dout_aes_128_clk_25;
    reg    [127:0]  sbox_dout_aes_128_clk_26;
    reg    [127:0]  sbox_dout_aes_128_clk_27;

    reg    [31:0]   sbox_kout_aes_192_clk_0 ;  
    reg    [31:0]   sbox_kout_aes_192_clk_1 ;  
    reg    [31:0]   sbox_kout_aes_192_clk_2 ;
    reg    [31:0]   sbox_kout_aes_192_clk_3 ;
    reg    [31:0]   sbox_kout_aes_192_clk_4 ;
    reg    [31:0]   sbox_kout_aes_192_clk_5 ;
    reg    [31:0]   sbox_kout_aes_192_clk_6 ;
    reg    [31:0]   sbox_kout_aes_192_clk_7 ;
    reg    [31:0]   sbox_kout_aes_192_clk_8 ;
    reg    [31:0]   sbox_kout_aes_192_clk_9 ;
    reg    [31:0]   sbox_kout_aes_192_clk_a ;
    reg    [31:0]   sbox_kout_aes_192_clk_b ;
    reg    [31:0]   sbox_kout_aes_192_clk_c ;
    reg    [31:0]   sbox_kout_aes_192_clk_d ;
    reg    [31:0]   sbox_kout_aes_192_clk_e ;
    reg    [31:0]   sbox_kout_aes_192_clk_f ;
    reg    [31:0]   sbox_kout_aes_192_clk_10;
    reg    [31:0]   sbox_kout_aes_192_clk_11;
    reg    [31:0]   sbox_kout_aes_192_clk_12;
    reg    [31:0]   sbox_kout_aes_192_clk_13;
    reg    [31:0]   sbox_kout_aes_192_clk_14;  
    reg    [31:0]   sbox_kout_aes_192_clk_15;  
    reg    [31:0]   sbox_kout_aes_192_clk_16;
    reg    [31:0]   sbox_kout_aes_192_clk_17;
    reg    [31:0]   sbox_kout_aes_192_clk_18;
    reg    [31:0]   sbox_kout_aes_192_clk_19;
    reg    [31:0]   sbox_kout_aes_192_clk_1a;
    reg    [31:0]   sbox_kout_aes_192_clk_1b;
    reg    [31:0]   sbox_kout_aes_192_clk_1c;
    reg    [31:0]   sbox_kout_aes_192_clk_1d;
    reg    [31:0]   sbox_kout_aes_192_clk_1e;
    reg    [31:0]   sbox_kout_aes_192_clk_1f;
    reg    [31:0]   sbox_kout_aes_192_clk_20;
    reg    [31:0]   sbox_kout_aes_192_clk_21;
    reg    [31:0]   sbox_kout_aes_192_clk_22;
    reg    [31:0]   sbox_kout_aes_192_clk_23;
    reg    [31:0]   sbox_kout_aes_192_clk_24;
    reg    [31:0]   sbox_kout_aes_192_clk_25;
    reg    [31:0]   sbox_kout_aes_192_clk_26;
    reg    [31:0]   sbox_kout_aes_192_clk_27;
    reg    [127:0]  sbox_dout_aes_192_clk_0 ;
    reg    [127:0]  sbox_dout_aes_192_clk_1 ;
    reg    [127:0]  sbox_dout_aes_192_clk_2 ;
    reg    [127:0]  sbox_dout_aes_192_clk_3 ;
    reg    [127:0]  sbox_dout_aes_192_clk_4 ;
    reg    [127:0]  sbox_dout_aes_192_clk_5 ;
    reg    [127:0]  sbox_dout_aes_192_clk_6 ;
    reg    [127:0]  sbox_dout_aes_192_clk_7 ;
    reg    [127:0]  sbox_dout_aes_192_clk_8 ;
    reg    [127:0]  sbox_dout_aes_192_clk_9 ;
    reg    [127:0]  sbox_dout_aes_192_clk_a ;
    reg    [127:0]  sbox_dout_aes_192_clk_b ;
    reg    [127:0]  sbox_dout_aes_192_clk_c ;
    reg    [127:0]  sbox_dout_aes_192_clk_d ;
    reg    [127:0]  sbox_dout_aes_192_clk_e ;
    reg    [127:0]  sbox_dout_aes_192_clk_f ;
    reg    [127:0]  sbox_dout_aes_192_clk_10;
    reg    [127:0]  sbox_dout_aes_192_clk_11;
    reg    [127:0]  sbox_dout_aes_192_clk_12;
    reg    [127:0]  sbox_dout_aes_192_clk_13;
    reg    [127:0]  sbox_dout_aes_192_clk_14;  
    reg    [127:0]  sbox_dout_aes_192_clk_15;  
    reg    [127:0]  sbox_dout_aes_192_clk_16;
    reg    [127:0]  sbox_dout_aes_192_clk_17;
    reg    [127:0]  sbox_dout_aes_192_clk_18;
    reg    [127:0]  sbox_dout_aes_192_clk_19;
    reg    [127:0]  sbox_dout_aes_192_clk_1a;
    reg    [127:0]  sbox_dout_aes_192_clk_1b;
    reg    [127:0]  sbox_dout_aes_192_clk_1c;
    reg    [127:0]  sbox_dout_aes_192_clk_1d;
    reg    [127:0]  sbox_dout_aes_192_clk_1e;
    reg    [127:0]  sbox_dout_aes_192_clk_1f;
    reg    [127:0]  sbox_dout_aes_192_clk_20;
    reg    [127:0]  sbox_dout_aes_192_clk_21;
    reg    [127:0]  sbox_dout_aes_192_clk_22;
    reg    [127:0]  sbox_dout_aes_192_clk_23;
    reg    [127:0]  sbox_dout_aes_192_clk_24;
    reg    [127:0]  sbox_dout_aes_192_clk_25;
    reg    [127:0]  sbox_dout_aes_192_clk_26;
    reg    [127:0]  sbox_dout_aes_192_clk_27;

    reg    [31:0]   sbox_kout_aes_256_clk_0 ;  
    reg    [31:0]   sbox_kout_aes_256_clk_1 ;  
    reg    [31:0]   sbox_kout_aes_256_clk_2 ;
    reg    [31:0]   sbox_kout_aes_256_clk_3 ;
    reg    [31:0]   sbox_kout_aes_256_clk_4 ;
    reg    [31:0]   sbox_kout_aes_256_clk_5 ;
    reg    [31:0]   sbox_kout_aes_256_clk_6 ;
    reg    [31:0]   sbox_kout_aes_256_clk_7 ;
    reg    [31:0]   sbox_kout_aes_256_clk_8 ;
    reg    [31:0]   sbox_kout_aes_256_clk_9 ;
    reg    [31:0]   sbox_kout_aes_256_clk_a ;
    reg    [31:0]   sbox_kout_aes_256_clk_b ;
    reg    [31:0]   sbox_kout_aes_256_clk_c ;
    reg    [31:0]   sbox_kout_aes_256_clk_d ;
    reg    [31:0]   sbox_kout_aes_256_clk_e ;
    reg    [31:0]   sbox_kout_aes_256_clk_f ;
    reg    [31:0]   sbox_kout_aes_256_clk_10;
    reg    [31:0]   sbox_kout_aes_256_clk_11;
    reg    [31:0]   sbox_kout_aes_256_clk_12;
    reg    [31:0]   sbox_kout_aes_256_clk_13;
    reg    [31:0]   sbox_kout_aes_256_clk_14;  
    reg    [31:0]   sbox_kout_aes_256_clk_15;  
    reg    [31:0]   sbox_kout_aes_256_clk_16;
    reg    [31:0]   sbox_kout_aes_256_clk_17;
    reg    [31:0]   sbox_kout_aes_256_clk_18;
    reg    [31:0]   sbox_kout_aes_256_clk_19;
    reg    [31:0]   sbox_kout_aes_256_clk_1a;
    reg    [31:0]   sbox_kout_aes_256_clk_1b;
    reg    [31:0]   sbox_kout_aes_256_clk_1c;
    reg    [31:0]   sbox_kout_aes_256_clk_1d;
    reg    [31:0]   sbox_kout_aes_256_clk_1e;
    reg    [31:0]   sbox_kout_aes_256_clk_1f;
    reg    [31:0]   sbox_kout_aes_256_clk_20;
    reg    [31:0]   sbox_kout_aes_256_clk_21;
    reg    [31:0]   sbox_kout_aes_256_clk_22;
    reg    [31:0]   sbox_kout_aes_256_clk_23;
    reg    [31:0]   sbox_kout_aes_256_clk_24;
    reg    [31:0]   sbox_kout_aes_256_clk_25;
    reg    [31:0]   sbox_kout_aes_256_clk_26;
    reg    [31:0]   sbox_kout_aes_256_clk_27;
    reg    [127:0]  sbox_dout_aes_256_clk_0 ;
    reg    [127:0]  sbox_dout_aes_256_clk_1 ;
    reg    [127:0]  sbox_dout_aes_256_clk_2 ;
    reg    [127:0]  sbox_dout_aes_256_clk_3 ;
    reg    [127:0]  sbox_dout_aes_256_clk_4 ;
    reg    [127:0]  sbox_dout_aes_256_clk_5 ;
    reg    [127:0]  sbox_dout_aes_256_clk_6 ;
    reg    [127:0]  sbox_dout_aes_256_clk_7 ;
    reg    [127:0]  sbox_dout_aes_256_clk_8 ;
    reg    [127:0]  sbox_dout_aes_256_clk_9 ;
    reg    [127:0]  sbox_dout_aes_256_clk_a ;
    reg    [127:0]  sbox_dout_aes_256_clk_b ;
    reg    [127:0]  sbox_dout_aes_256_clk_c ;
    reg    [127:0]  sbox_dout_aes_256_clk_d ;
    reg    [127:0]  sbox_dout_aes_256_clk_e ;
    reg    [127:0]  sbox_dout_aes_256_clk_f ;
    reg    [127:0]  sbox_dout_aes_256_clk_10;
    reg    [127:0]  sbox_dout_aes_256_clk_11;
    reg    [127:0]  sbox_dout_aes_256_clk_12;
    reg    [127:0]  sbox_dout_aes_256_clk_13;
    reg    [127:0]  sbox_dout_aes_256_clk_14;  
    reg    [127:0]  sbox_dout_aes_256_clk_15;  
    reg    [127:0]  sbox_dout_aes_256_clk_16;
    reg    [127:0]  sbox_dout_aes_256_clk_17;
    reg    [127:0]  sbox_dout_aes_256_clk_18;
    reg    [127:0]  sbox_dout_aes_256_clk_19;
    reg    [127:0]  sbox_dout_aes_256_clk_1a;
    reg    [127:0]  sbox_dout_aes_256_clk_1b;
    reg    [127:0]  sbox_dout_aes_256_clk_1c;
    reg    [127:0]  sbox_dout_aes_256_clk_1d;
    reg    [127:0]  sbox_dout_aes_256_clk_1e;
    reg    [127:0]  sbox_dout_aes_256_clk_1f;
    reg    [127:0]  sbox_dout_aes_256_clk_20;
    reg    [127:0]  sbox_dout_aes_256_clk_21;
    reg    [127:0]  sbox_dout_aes_256_clk_22;
    reg    [127:0]  sbox_dout_aes_256_clk_23;
    reg    [127:0]  sbox_dout_aes_256_clk_24;
    reg    [127:0]  sbox_dout_aes_256_clk_25;
    reg    [127:0]  sbox_dout_aes_256_clk_26;
    reg    [127:0]  sbox_dout_aes_256_clk_27;

    reg     [5:0]   clk_cnt;
    wire            first_round; 

    // clk_cnt_generate
    always @(*) begin
        if (!rstn) begin
            clk_cnt = 6'h0;
        end else if (cfg[2:1] == 2'b00) begin
            clk_cnt = clk_cnt_all % 2; 
        end else if (cfg[2:1] == 2'b01) begin
            clk_cnt = clk_cnt_all % 10; //ZXP edited 20221008
        end else if (cfg[2:1] == 2'b10) begin
            clk_cnt = clk_cnt_all % 10;
        end else begin
            clk_cnt = clk_cnt_all % 8;
        end
    end

    // cfg_ende_sbox generate
    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox0 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox0 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox0 = 1'b1;
                        default :cfg_ende_sbox0 = 1'b0;
                    endcase
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox0 = 1'b1;
                        6'h5    :cfg_ende_sbox0 = 1'b1;
                        default :cfg_ende_sbox0 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox0 = 1'b1;
                        6'h3    :cfg_ende_sbox0 = 1'b1;
                        default :cfg_ende_sbox0 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox1 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox1 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox1 = 1'b1;
                        default :cfg_ende_sbox1 = 1'b0;
                    endcase
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox1 = 1'b1;
                        6'h5    :cfg_ende_sbox1 = 1'b1;
                        default :cfg_ende_sbox1 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox1 = 1'b1;
                        6'h3    :cfg_ende_sbox1 = 1'b1;
                        default :cfg_ende_sbox1 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox2 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox2 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox2 = 1'b1;
                        default :cfg_ende_sbox2 = 1'b0;
                    endcase
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox2 = 1'b1;
                        6'h5    :cfg_ende_sbox2 = 1'b1;
                        default :cfg_ende_sbox2 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox2 = 1'b1;
                        6'h7    :cfg_ende_sbox2 = 1'b1;
                        default :cfg_ende_sbox2 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox3 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox3 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox3 = 1'b1;
                        default :cfg_ende_sbox3 = 1'b0;
                    endcase
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox3 = 1'b1;
                        6'h5    :cfg_ende_sbox3 = 1'b1;
                        default :cfg_ende_sbox3 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h0    :cfg_ende_sbox3 = 1'b1;
                        6'h7    :cfg_ende_sbox3 = 1'b1;
                        default :cfg_ende_sbox3 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox4 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox4 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox4 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h3    :cfg_ende_sbox4 = 1'b1;
                        6'h8    :cfg_ende_sbox4 = 1'b1;
                        default :cfg_ende_sbox4 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h4    :cfg_ende_sbox4 = 1'b1;
                        6'h7    :cfg_ende_sbox4 = 1'b1;
                        default :cfg_ende_sbox4 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox5 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox5 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox5 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h3    :cfg_ende_sbox5 = 1'b1;
                        6'h8    :cfg_ende_sbox5 = 1'b1;
                        default :cfg_ende_sbox5 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h4    :cfg_ende_sbox5 = 1'b1;
                        6'h7    :cfg_ende_sbox5 = 1'b1;
                        default :cfg_ende_sbox5 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox6 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox6 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox6 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h3    :cfg_ende_sbox6 = 1'b1;
                        6'h8    :cfg_ende_sbox6 = 1'b1;
                        default :cfg_ende_sbox6 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox6 = 1'b1;
                        6'h4    :cfg_ende_sbox6 = 1'b1;
                        default :cfg_ende_sbox6 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox7 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox7 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox7 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h3    :cfg_ende_sbox7 = 1'b1;
                        6'h8    :cfg_ende_sbox7 = 1'b1;
                        default :cfg_ende_sbox7 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox7 = 1'b1;
                        6'h4    :cfg_ende_sbox7 = 1'b1;
                        default :cfg_ende_sbox7 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox8 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox8 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox8 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox8 = 1'b1;
                        6'h6    :cfg_ende_sbox8 = 1'b1;
                        default :cfg_ende_sbox8 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox8 = 1'b1;
                        6'h8    :cfg_ende_sbox8 = 1'b1;
                        default :cfg_ende_sbox8 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox9 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox9 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox9 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox9 = 1'b1;
                        6'h6    :cfg_ende_sbox9 = 1'b1;
                        default :cfg_ende_sbox9 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox9 = 1'b1;
                        6'h8    :cfg_ende_sbox9 = 1'b1;
                        default :cfg_ende_sbox9 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox10 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox10 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox10 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox10 = 1'b1;
                        6'h6    :cfg_ende_sbox10 = 1'b1;
                        default :cfg_ende_sbox10 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h5    :cfg_ende_sbox10 = 1'b1;
                        6'h8    :cfg_ende_sbox10 = 1'b1;
                        default :cfg_ende_sbox10 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox11 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox11 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox11 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox11 = 1'b1;
                        6'h6    :cfg_ende_sbox11 = 1'b1;
                        default :cfg_ende_sbox11 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h5    :cfg_ende_sbox11 = 1'b1;
                        6'h8    :cfg_ende_sbox11 = 1'b1;
                        default :cfg_ende_sbox11 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox12 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox12 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox12 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox12 = 1'b1;
                        default :cfg_ende_sbox12 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h2    :cfg_ende_sbox12 = 1'b1;
                        6'h5    :cfg_ende_sbox12 = 1'b1;
                        default :cfg_ende_sbox12 = 1'b0;
                    endcase
                end
            end
        end
    end

    always @(*) begin
        if (!rstn) begin
            cfg_ende_sbox13 = 1'b1;
        end else begin
            if (clk_cnt_all < 6'h14) begin
                cfg_ende_sbox13 = 1'b1;
            end else begin
                if (cfg[2:1] == 2'b00) begin
                    cfg_ende_sbox13 = 1'b0;
                end else if (cfg[2:1] == 2'b01) begin
                    case (clk_cnt)
                        6'h1    :cfg_ende_sbox13 = 1'b1;
                        default :cfg_ende_sbox13 = 1'b0;  
                    endcase
                end else begin
                    case (clk_cnt)
                        6'h2    :cfg_ende_sbox13 = 1'b1;
                        6'h5    :cfg_ende_sbox13 = 1'b1;
                        default :cfg_ende_sbox13 = 1'b0;
                    endcase
                end
            end
        end
    end
    // first_round
    assign first_round = ((clk_cnt_all == 6'h0) & (clk_cnt == 6'b0));

    // sbox_din, sbox_kin
    always @(*) begin
        if (!rstn) begin
            sbox_din_sm4 = 128'h0;
            sbox_din_aes = 128'h0;
        end else begin
            case (cfg[2:1])
                2'b11   : sbox_din_sm4 = sbox_din;
                default : sbox_din_aes = sbox_din;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_kin_sm4 = 128'h0;
            sbox_kin_aes = 128'h0;
        end else begin
            case (cfg[2:1])
                2'b11   : sbox_kin_sm4 = sbox_kin;
                default : sbox_kin_aes = sbox_kin;
            endcase
        end
    end

    // sbox_dout sbox_kout
    always @(*) begin
        if (!rstn) begin
            sbox_dout_aes_128 = 128'h0;
        end else begin
            case (clk_cnt_all)
                6'h1    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_0[127:80], sbox_dout_aes_128_clk_1[79:0]};
                6'h3    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_2[127:80], sbox_dout_aes_128_clk_3[79:0]};
                6'h5    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_4[127:80], sbox_dout_aes_128_clk_5[79:0]};
                6'h7    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_6[127:80], sbox_dout_aes_128_clk_7[79:0]};
                6'h9    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_8[127:80], sbox_dout_aes_128_clk_9[79:0]};
                6'hb    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_a[127:80], sbox_dout_aes_128_clk_b[79:0]};
                6'hd    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_c[127:80], sbox_dout_aes_128_clk_d[79:0]};
                6'hf    : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_e[127:80], sbox_dout_aes_128_clk_f[79:0]};
                6'h11   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_10[127:80],sbox_dout_aes_128_clk_11[79:0]};
                6'h13   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_12[127:80],sbox_dout_aes_128_clk_13[79:0]};
                6'h15   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_14[127:80],sbox_dout_aes_128_clk_15[79:0]};
                6'h17   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_16[127:80],sbox_dout_aes_128_clk_17[79:0]};
                6'h19   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_18[127:80],sbox_dout_aes_128_clk_19[79:0]};
                6'h1b   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_1a[127:80],sbox_dout_aes_128_clk_1b[79:0]};
                6'h1d   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_1c[127:80],sbox_dout_aes_128_clk_1d[79:0]};
                6'h1f   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_1e[127:80],sbox_dout_aes_128_clk_1f[79:0]};
                6'h21   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_20[127:80],sbox_dout_aes_128_clk_21[79:0]};
                6'h23   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_22[127:80],sbox_dout_aes_128_clk_23[79:0]};
                6'h25   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_24[127:80],sbox_dout_aes_128_clk_25[79:0]};
                6'h27   : sbox_dout_aes_128 = {sbox_dout_aes_128_clk_26[127:80],sbox_dout_aes_128_clk_27[79:0]};
                default : sbox_dout_aes_128 = 128'h0;
            endcase
        end     
    end
                    
    always @(*) begin
        if (!rstn) begin
            sbox_kout_aes_128 = 128'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_0 };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32] 
                6'h2    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_2 };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h4    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_4 };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h6    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_6 };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h8    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_8 };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'ha    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_a };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'hc    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_c };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'he    : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_e };//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h10   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_10};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h12   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_12};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h14   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_14};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32] 
                6'h16   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_16};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h18   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_18};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1a   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_1a};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1c   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_1c};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1e   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_1e};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h20   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_20};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h22   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_22};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h24   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_24};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                6'h26   : sbox_kout_aes_128 = {sbox_kin[127:32],sbox_kout_aes_128_clk_26};//20221007:change abox_kout_aes_128[127:32] from 96'h0 to sbox_kin[127:32]
                default : sbox_kout_aes_128 = 128'h0;
            endcase
        end     
    end

    // sbox_dout_aes_192 sbox_kout_aes_192
    always @(*) begin
        if (!rstn) begin
            sbox_dout_aes_192 = 128'h0;
        end else begin
            case (clk_cnt_all)
                6'h1    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_0[127:64], sbox_dout_aes_192_clk_1[63:0]};
                6'h3    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_2[127:32], sbox_dout_aes_192_clk_3[31:0]};
                6'h4    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_3[127:96], sbox_dout_aes_192_clk_4[95:0]};
                6'h6    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_5[127:64], sbox_dout_aes_192_clk_6[63:0]};
                6'h8    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_7[127:32], sbox_dout_aes_192_clk_8[31:0]};
                6'h9    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_8[127:96], sbox_dout_aes_192_clk_9[95:0]};
                6'hb    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_a[127:64], sbox_dout_aes_192_clk_b[63:0]};
                6'hd    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_c[127:32], sbox_dout_aes_192_clk_d[31:0]};
                6'he    : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_d[127:96], sbox_dout_aes_192_clk_e[95:0]};
                6'h10   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_f[127:64], sbox_dout_aes_192_clk_10[63:0]};
                6'h12   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_11[127:32],sbox_dout_aes_192_clk_12[31:0]};
                6'h13   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_12[127:96],sbox_dout_aes_192_clk_13[95:0]};
                6'h15   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_14[127:64],sbox_dout_aes_192_clk_15[63:0]};
                6'h17   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_16[127:32],sbox_dout_aes_192_clk_17[31:0]};
                6'h18   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_17[127:96],sbox_dout_aes_192_clk_18[95:0]};
                6'h1a   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_19[127:64],sbox_dout_aes_192_clk_1a[63:0]};
                6'h1c   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_1b[127:32],sbox_dout_aes_192_clk_1c[31:0]};
                6'h1d   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_1c[127:96],sbox_dout_aes_192_clk_1d[95:0]};
                6'h1f   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_1e[127:64],sbox_dout_aes_192_clk_1f[63:0]};
                6'h21   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_20[127:32],sbox_dout_aes_192_clk_21[31:0]};
                6'h22   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_21[127:96],sbox_dout_aes_192_clk_22[95:0]};
                6'h24   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_23[127:64],sbox_dout_aes_192_clk_24[63:0]};
                6'h26   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_25[127:32],sbox_dout_aes_192_clk_26[31:0]};
                6'h27   : sbox_dout_aes_192 = {sbox_dout_aes_192_clk_26[127:96],sbox_dout_aes_192_clk_27[95:0]};
                default : sbox_dout_aes_192 = 128'h0;
            endcase
        end     
    end
                    
    always @(*) begin
        if (!rstn) begin
            sbox_kout_aes_192 = 128'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_0 };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_1 };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h3    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_3 };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h5    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_5 };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h6    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_6 };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h8    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_8 };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'ha    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_a };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'hb    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_b };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'hd    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_d };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'hf    : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_f };//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h10   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_10};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h12   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_12};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h14   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_14};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h15   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_15};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h17   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_17};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h19   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_19};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1a   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_1a};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1c   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_1c};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1e   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_1e};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1f   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_1f};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h21   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_21};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h23   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_23};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h24   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_24};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                6'h26   : sbox_kout_aes_192 = {sbox_kin[127:32],sbox_kout_aes_192_clk_26};//20221007:change abox_kout_aes_192[127:32] from 96'h0 to sbox_kin[127:32]
                default : sbox_kout_aes_192 = 128'h0;
            endcase
        end     
    end

    // sbox_dout_aes_256 sbox_kout_aes_256
    always @(*) begin
        if (!rstn) begin
            sbox_dout_aes_256 = 128'h0;
        end else begin
            case (clk_cnt_all)
                6'h1    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_0[127:48],  sbox_dout_aes_256_clk_1[47:0]};
                6'h2    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_1[127:96],  sbox_dout_aes_256_clk_2[95:0]};
                6'h4    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_3[127:32],  sbox_dout_aes_256_clk_4[31:0]};
                6'h5    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_4[127:80],  sbox_dout_aes_256_clk_5[79:0]};
                6'h7    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_6[127:16],  sbox_dout_aes_256_clk_7[15:0]};
                6'h8    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_7[127:64],  sbox_dout_aes_256_clk_8[63:0]};
                6'h9    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_8[127:112], sbox_dout_aes_256_clk_9[111:0]};
                6'hb    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_a[127:48],  sbox_dout_aes_256_clk_b[47:0]};  
                6'hc    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_b[127:96],  sbox_dout_aes_256_clk_c[95:0]};  
                6'he    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_d[127:32],  sbox_dout_aes_256_clk_e[31:0]};  
                6'hf    : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_e[127:80],  sbox_dout_aes_256_clk_f[79:0]};  
                6'h11   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_10[127:16], sbox_dout_aes_256_clk_11[15:0]};  
                6'h12   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_11[127:64], sbox_dout_aes_256_clk_12[63:0]};  
                6'h13   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_12[127:112],sbox_dout_aes_256_clk_13[111:0]};
                6'h15   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_14[127:48],  sbox_dout_aes_256_clk_15[47:0]};
                6'h16   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_15[127:96],  sbox_dout_aes_256_clk_16[95:0]};
                6'h18   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_17[127:32],  sbox_dout_aes_256_clk_18[31:0]};
                6'h19   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_18[127:80],  sbox_dout_aes_256_clk_19[79:0]};
                6'h1b   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_1a[127:16],  sbox_dout_aes_256_clk_1b[15:0]};
                6'h1c   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_1b[127:64],  sbox_dout_aes_256_clk_1c[63:0]};
                6'h1d   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_1c[127:112], sbox_dout_aes_256_clk_1d[111:0]};
                6'h1f   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_1e[127:48],  sbox_dout_aes_256_clk_1f[47:0]};  
                6'h20   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_1f[127:96],  sbox_dout_aes_256_clk_20[95:0]};  
                6'h22   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_21[127:32],  sbox_dout_aes_256_clk_22[31:0]};  
                6'h23   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_22[127:80],  sbox_dout_aes_256_clk_23[79:0]};  
                6'h25   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_24[127:16], sbox_dout_aes_256_clk_25[15:0]};  
                6'h26   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_25[127:64], sbox_dout_aes_256_clk_26[63:0]};  
                6'h27   : sbox_dout_aes_256 = {sbox_dout_aes_256_clk_26[127:112],sbox_dout_aes_256_clk_27[111:0]};
                default : sbox_dout_aes_256 = 128'h0;
            endcase
        end     
    end
                    
    always @(*) begin
        if (!rstn) begin
            sbox_kout_aes_256 = 128'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_0};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_1};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h3    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_2[31:16],sbox_kout_aes_256_clk_3[15:0]};//20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h4    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_4};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h5    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_5};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h7    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_7};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h8    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_8};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'ha    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_a};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'hb    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_b};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'hd    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_c[31:16],sbox_kout_aes_256_clk_d[15:0]};//20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'he    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_e};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'hf    : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_f};                                     //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h11   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_11};
                6'h12   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_12};
                6'h14   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_14};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h15   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_15};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h17   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_16[31:16],sbox_kout_aes_256_clk_17[15:0]};//20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h18   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_18};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h19   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_19};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1b   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_1b};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1c   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_1c};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1e   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_1e};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h1f   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_1f};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h21   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_20[31:16],sbox_kout_aes_256_clk_21[15:0]};//20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h22   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_22};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h23   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_23};                                      //20221007:change abox_kout_aes_256[127:32] from 96'h0 to sbox_kin[127:32]
                6'h25   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_25};
                6'h26   : sbox_kout_aes_256 = {sbox_kin[127:32],sbox_kout_aes_256_clk_26};
                default : sbox_kout_aes_256 = 128'h0;
            endcase
        end     
    end
    assign sbox_dout_sm4 = {rd_round_31,rd_round_30,rd_round_29,rd_round_28};

    always @(*) begin
        if (!rstn) begin
           sbox_dout = 128'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_dout = sbox_dout_aes_128;
                2'b01   : sbox_dout = sbox_dout_aes_192;
                2'b10   : sbox_dout = sbox_dout_aes_256;
                default : sbox_dout = sbox_dout_sm4;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_kout = 128'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_kout = sbox_kout_aes_128;
                2'b01   : sbox_kout = sbox_kout_aes_192;
                2'b10   : sbox_kout = sbox_kout_aes_256;
                default : sbox_kout = 128'h0               ;
            endcase
        end
    end

    // d_vld_out

    always @(*) begin
        if (!rstn) begin
            d_vld_out_t = 1'b0;
        end else begin
            if (cfg[2:1] == 2'b00) begin
                case (clk_cnt)
                    6'h0    : d_vld_out_t = 1'b0  ;
                    default : d_vld_out_t = 1'b1  ;
                endcase
            end else if (cfg[2:1] == 2'b01) begin
                case (clk_cnt)
                    6'h0    : d_vld_out_t = 1'b0  ;
                    6'h1    : d_vld_out_t = 1'b1  ;
                    6'h2    : d_vld_out_t = 1'b0  ;
                    6'h3    : d_vld_out_t = 1'b1  ;
                    6'h4    : d_vld_out_t = 1'b1  ;
                    6'h5    : d_vld_out_t = 1'b0  ;
                    6'h6    : d_vld_out_t = 1'b1  ;
                    6'h7    : d_vld_out_t = 1'b0  ;
                    6'h8    : d_vld_out_t = 1'b1  ;
                    default : d_vld_out_t = 1'b1  ;
                endcase
            end else if (cfg[2:1] == 2'b10) begin
                case (clk_cnt)
                    6'h0    : d_vld_out_t = 1'b0  ;
                    6'h1    : d_vld_out_t = 1'b1  ;
                    6'h2    : d_vld_out_t = 1'b1  ;
                    6'h3    : d_vld_out_t = 1'b0  ;
                    6'h4    : d_vld_out_t = 1'b1  ;
                    6'h5    : d_vld_out_t = 1'b1  ;
                    6'h6    : d_vld_out_t = 1'b0  ;
                    6'h7    : d_vld_out_t = 1'b1  ;
                    6'h8    : d_vld_out_t = 1'b1  ;
                    default : d_vld_out_t = 1'b1  ;
                endcase
            end else begin
                d_vld_out_t = 1'b1  ;
            end
        end
    end
    //assign d_vld_out = d_vld_out_t & bsy_tmp;
    assign d_vld_out = d_vld_out_t;

    // k_vld_out
    always @(*) begin
        if (!rstn) begin
            k_vld_out_t = 1'b0;
        end else begin
            if (cfg[2:1] == 2'b00) begin
                case (clk_cnt)
                    6'h0    : k_vld_out_t = 1'b1  ;
                    default : k_vld_out_t = 1'b0  ;
                endcase
            end else if (cfg[2:1] == 2'b01) begin
                case (clk_cnt)
                    6'h0    : k_vld_out_t = 1'b1  ;//changed in 20221009
                    6'h1    : k_vld_out_t = 1'b0  ;//changed in 20221009
                    6'h2    : k_vld_out_t = 1'b0  ;//changed in 20221009
                    6'h3    : k_vld_out_t = 1'b1  ;//changed in 20221009
                    6'h4    : k_vld_out_t = 1'b0  ;//changed in 20221009
                    6'h5    : k_vld_out_t = 1'b1  ;//changed in 20221009
                    6'h6    : k_vld_out_t = 1'b0  ;//changed in 20221009
                    6'h7    : k_vld_out_t = 1'b0  ;//changed in 20221009
                    6'h8    : k_vld_out_t = 1'b1  ;//changed in 20221009
                    default : k_vld_out_t = 1'b0  ;//changed in 20221009
                endcase
            end else if (cfg[2:1] == 2'b10) begin
                case (clk_cnt_all)
                    6'h0    : k_vld_out_t = 1'b1  ;
                    6'h1    : k_vld_out_t = 1'b1  ;
                    6'h2    : k_vld_out_t = 1'b0  ;
                    6'h3    : k_vld_out_t = 1'b1  ;
                    6'h4    : k_vld_out_t = 1'b1  ;
                    6'h5    : k_vld_out_t = 1'b1  ;
                    6'h6    : k_vld_out_t = 1'b0  ;
                    6'h7    : k_vld_out_t = 1'b1  ;
                    6'h8    : k_vld_out_t = 1'b1  ;
                    6'h9    : k_vld_out_t = 1'b0  ;
                    6'ha    : k_vld_out_t = 1'b1  ;
                    6'hb    : k_vld_out_t = 1'b1  ;
                    6'hc    : k_vld_out_t = 1'b0  ;
                    6'hd    : k_vld_out_t = 1'b1  ;
                    6'he    : k_vld_out_t = 1'b1  ;
                    6'hf    : k_vld_out_t = 1'b1  ;
                    6'h10   : k_vld_out_t = 1'b0  ;
                    6'h11   : k_vld_out_t = 1'b1  ;
                    6'h12   : k_vld_out_t = 1'b1  ;
                    6'h13   : k_vld_out_t = 1'b0  ;

                    6'h14   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h15   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h16   : k_vld_out_t = 1'b0  ;//20221009 edited ZXP
                    6'h17   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h18   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h19   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h1a   : k_vld_out_t = 1'b0  ;//20221009 edited ZXP
                    6'h1b   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h1c   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h1d   : k_vld_out_t = 1'b0  ;//20221009 edited ZXP
                    6'h1e   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h1f   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h20   : k_vld_out_t = 1'b0  ;//20221009 edited ZXP
                    6'h21   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h22   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h23   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h24   : k_vld_out_t = 1'b0  ;//20221009 edited ZXP
                    6'h25   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    6'h26   : k_vld_out_t = 1'b1  ;//20221009 edited ZXP
                    default : k_vld_out_t = 1'b0  ;
                endcase
            end else begin
                k_vld_out_t = 1'b1  ;
            end
        end
    end
    //assign k_vld_out = k_vld_out_t & bsy_tmp;
    assign k_vld_out = k_vld_out_t;

    ////////// sm4 block
    // CK_0 for first key_expansion
    always @(*) begin
        if (!rstn) begin
            CK_0 = 32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : CK_0 = 32'h00070e15;
                6'h1    : CK_0 = 32'h383f464d;
                6'h2    : CK_0 = 32'h70777e85;
                6'h3    : CK_0 = 32'ha8afb6bd;
                6'h4    : CK_0 = 32'he0e7eef5;
                6'h5    : CK_0 = 32'he0e7eef5;
                6'h6    : CK_0 = 32'h181f262d;
                6'h7    : CK_0 = 32'h50575e65;
                6'h8    : CK_0 = 32'h888f969d;
                6'h9    : CK_0 = 32'hc0c7ced5;
                6'ha    : CK_0 = 32'hc0c7ced5;
                6'hb    : CK_0 = 32'hf8ff060d;
                6'hc    : CK_0 = 32'h30373e45;
                6'hd    : CK_0 = 32'h686f767d;
                6'he    : CK_0 = 32'ha0a7aeb5;
                6'hf    : CK_0 = 32'ha0a7aeb5;
                6'h10   : CK_0 = 32'hd8dfe6ed;
                6'h11   : CK_0 = 32'h10171e25;
                6'h12   : CK_0 = 32'h484f565d;
                6'h13   : CK_0 = 32'h80878e95;
                6'h14   : CK_0 = 32'h646b7279;
                6'h15   : CK_0 = 32'h2c333a41;
                6'h16   : CK_0 = 32'hf4fb0209;
                6'h17   : CK_0 = 32'hbcc3cad1;
                6'h18   : CK_0 = 32'h848b9299;
                6'h19   : CK_0 = 32'h848b9299;
                6'h1a   : CK_0 = 32'h4c535a61; 
                6'h1b   : CK_0 = 32'h141b2229;
                6'h1c   : CK_0 = 32'hdce3eaf1; 
                6'h1d   : CK_0 = 32'ha4abb2b9;
                6'h1e   : CK_0 = 32'ha4abb2b9;
                6'h1f   : CK_0 = 32'h6c737a81; 
                6'h20   : CK_0 = 32'h343b4249;
                6'h21   : CK_0 = 32'hfc030a11;
                6'h22   : CK_0 = 32'hc4cbd2d9;
                6'h23   : CK_0 = 32'hc4cbd2d9;
                6'h24   : CK_0 = 32'h8c939aa1;
                6'h25   : CK_0 = 32'h545b6269;
                6'h26   : CK_0 = 32'h1c232a31;
            endcase
        end
    end
                    
    // CK_1 for second key_expansion
    always @(*) begin
        if (!rstn) begin
            CK_1 = 32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : CK_1 = 32'h1c232a31;
                6'h1    : CK_1 = 32'h545b6269;
                6'h2    : CK_1 = 32'h545b6269;
                6'h3    : CK_1 = 32'h8c939aa1;
                6'h4    : CK_1 = 32'hc4cbd2d9;
                6'h5    : CK_1 = 32'hfc030a11;
                6'h6    : CK_1 = 32'h343b4249;
                6'h7    : CK_1 = 32'h343b4249;
                6'h8    : CK_1 = 32'h6c737a81; 
                6'h9    : CK_1 = 32'ha4abb2b9;
                6'ha    : CK_1 = 32'hdce3eaf1;
                6'hb    : CK_1 = 32'h141b2229; 
                6'hc    : CK_1 = 32'h4c535a61;
                6'hd    : CK_1 = 32'h4c535a61; 
                6'he    : CK_1 = 32'h848b9299;
                6'hf    : CK_1 = 32'hbcc3cad1;
                6'h10   : CK_1 = 32'hf4fb0209;
                6'h11   : CK_1 = 32'h2c333a41;
                6'h12   : CK_1 = 32'h2c333a41;
                6'h13   : CK_1 = 32'h646b7279;
                6'h14   : CK_1 = 32'h484f565d;
                6'h15   : CK_1 = 32'h10171e25;
                6'h16   : CK_1 = 32'h10171e25;
                6'h17   : CK_1 = 32'hd8dfe6ed;
                6'h18   : CK_1 = 32'ha0a7aeb5;
                6'h19   : CK_1 = 32'h686f767d;
                6'h1a   : CK_1 = 32'h30373e45;
                6'h1b   : CK_1 = 32'h30373e45;
                6'h1c   : CK_1 = 32'hf8ff060d;
                6'h1d   : CK_1 = 32'hc0c7ced5;
                6'h1e   : CK_1 = 32'h888f969d;
                6'h1f   : CK_1 = 32'h50575e65;
                6'h20   : CK_1 = 32'h181f262d;
                6'h21   : CK_1 = 32'h181f262d;
                6'h22   : CK_1 = 32'he0e7eef5;
                6'h23   : CK_1 = 32'ha8afb6bd;
                6'h24   : CK_1 = 32'h70777e85;
                6'h25   : CK_1 = 32'h383f464d;
                6'h26   : CK_1 = 32'h383f464d;
                6'h27   : CK_1 = 32'h00070e15;
            endcase
        end
    end

    parameter FK=128'hA3B1BAC656AA3350677D9197B27022DC;
    assign Ki=sbox_kin_sm4^FK;
    assign {k3_0,k2_0,k1_0,k0_0} = Ki;
    
    always @(*) begin
        if (!rstn) begin
            AK_0 = 32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : AK_0 = k2_0^k1_0^k0_0^CK_0;
                6'h1    : AK_0 = k0_0^rk_round_0^rk_round_1^CK_0;
                6'h2    : AK_0 = rk_round_1 ^rk_round_2 ^rk_round_3 ^CK_0;
                6'h3    : AK_0 = rk_round_3 ^rk_round_4 ^rk_round_5 ^CK_0;
                6'h4    : AK_0 = rk_round_5 ^rk_round_6 ^rk_round_7 ^CK_0;
                6'h5    : AK_0 = rk_round_5 ^rk_round_6 ^rk_round_7 ^CK_0;
                6'h6    : AK_0 = rk_round_7 ^rk_round_8 ^rk_round_9 ^CK_0;
                6'h7    : AK_0 = rk_round_9 ^rk_round_10^rk_round_11^CK_0;
                6'h8    : AK_0 = rk_round_11^rk_round_12^rk_round_13^CK_0;
                6'h9    : AK_0 = rk_round_13^rk_round_14^rk_round_15^CK_0;
                6'ha    : AK_0 = rk_round_13^rk_round_14^rk_round_15^CK_0;
                6'hb    : AK_0 = rk_round_15^rk_round_16^rk_round_17^CK_0;
                6'hc    : AK_0 = rk_round_17^rk_round_18^rk_round_19^CK_0;
                6'hd    : AK_0 = rk_round_19^rk_round_20^rk_round_21^CK_0;
                6'he    : AK_0 = rk_round_21^rk_round_22^rk_round_23^CK_0;
                6'hf    : AK_0 = rk_round_21^rk_round_22^rk_round_23^CK_0;
                6'h10   : AK_0 = rk_round_23^rk_round_24^rk_round_25^CK_0;
                6'h11   : AK_0 = rk_round_25^rk_round_26^rk_round_27^CK_0;
                6'h12   : AK_0 = rk_round_27^rk_round_28^rk_round_29^CK_0;
                6'h14   : AK_0 = rk_round_30^rk_round_29^rk_round_28^CK_0;
                6'h15   : AK_0 = rk_round_28^rk_round_27^rk_round_26^CK_0;
                6'h16   : AK_0 = rk_round_26^rk_round_25^rk_round_24^CK_0;
                6'h17   : AK_0 = rk_round_24^rk_round_23^rk_round_22^CK_0;
                6'h18   : AK_0 = rk_round_22^rk_round_21^rk_round_20^CK_0;
                6'h19   : AK_0 = rk_round_22^rk_round_21^rk_round_20^CK_0;
                6'h1a   : AK_0 = rk_round_20^rk_round_19^rk_round_18^CK_0;
                6'h1b   : AK_0 = rk_round_18^rk_round_17^rk_round_16^CK_0;
                6'h1c   : AK_0 = rk_round_16^rk_round_15^rk_round_14^CK_0;
                6'h1d   : AK_0 = rk_round_14^rk_round_13^rk_round_12^CK_0;
                6'h1e   : AK_0 = rk_round_14^rk_round_13^rk_round_12^CK_0;
                6'h1f   : AK_0 = rk_round_12^rk_round_11^rk_round_10^CK_0;
                6'h20   : AK_0 = rk_round_10^rk_round_9 ^rk_round_8 ^CK_0;
                6'h21   : AK_0 = rk_round_8 ^rk_round_7 ^rk_round_6 ^CK_0;
                6'h22   : AK_0 = rk_round_6 ^rk_round_5 ^rk_round_4 ^CK_0;
                6'h23   : AK_0 = rk_round_6 ^rk_round_5 ^rk_round_4 ^CK_0;
                6'h24   : AK_0 = rk_round_4 ^rk_round_3 ^rk_round_2 ^CK_0;
                6'h25   : AK_0 = rk_round_2 ^rk_round_1 ^rk_round_0 ^CK_0;
                6'h26   : AK_0 = rk_round_0 ^k1_0 ^k0_0 ^CK_0;
                default : AK_0 = 32'h0;
            endcase
        end
    end
    
    always @(*) begin
        if (!rstn) begin
            LK_0 = 32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : LK_0 = BK_0_round_0^{BK_0_round_0[18:0],BK_0_round_0[31:19]}^{BK_0_round_0[8:0],BK_0_round_0[31:9]};
                6'h1    : LK_0 = BK_0_round_2^{BK_0_round_2[18:0],BK_0_round_2[31:19]}^{BK_0_round_2[8:0],BK_0_round_2[31:9]};
                6'h2    : LK_0 = BK_0_round_4^{BK_0_round_4[18:0],BK_0_round_4[31:19]}^{BK_0_round_4[8:0],BK_0_round_4[31:9]};
                6'h3    : LK_0 = BK_0_round_6^{BK_0_round_6[18:0],BK_0_round_6[31:19]}^{BK_0_round_6[8:0],BK_0_round_6[31:9]};
                6'h5    : LK_0 = BK_0_round_8^{BK_0_round_8[18:0],BK_0_round_8[31:19]}^{BK_0_round_8[8:0],BK_0_round_8[31:9]};
                6'h6    : LK_0 = BK_0_round_10^{BK_0_round_10[18:0],BK_0_round_10[31:19]}^{BK_0_round_10[8:0],BK_0_round_10[31:9]};
                6'h7    : LK_0 = BK_0_round_12^{BK_0_round_12[18:0],BK_0_round_12[31:19]}^{BK_0_round_12[8:0],BK_0_round_12[31:9]};
                6'h8    : LK_0 = BK_0_round_14^{BK_0_round_14[18:0],BK_0_round_14[31:19]}^{BK_0_round_14[8:0],BK_0_round_14[31:9]};
                6'ha    : LK_0 = BK_0_round_16^{BK_0_round_16[18:0],BK_0_round_16[31:19]}^{BK_0_round_16[8:0],BK_0_round_16[31:9]};
                6'hb    : LK_0 = BK_0_round_18^{BK_0_round_18[18:0],BK_0_round_18[31:19]}^{BK_0_round_18[8:0],BK_0_round_18[31:9]};
                6'hc    : LK_0 = BK_0_round_20^{BK_0_round_20[18:0],BK_0_round_20[31:19]}^{BK_0_round_20[8:0],BK_0_round_20[31:9]};
                6'hd    : LK_0 = BK_0_round_22^{BK_0_round_22[18:0],BK_0_round_22[31:19]}^{BK_0_round_22[8:0],BK_0_round_22[31:9]};
                6'hf    : LK_0 = BK_0_round_24^{BK_0_round_24[18:0],BK_0_round_24[31:19]}^{BK_0_round_24[8:0],BK_0_round_24[31:9]};
                6'h10   : LK_0 = BK_0_round_26^{BK_0_round_26[18:0],BK_0_round_26[31:19]}^{BK_0_round_26[8:0],BK_0_round_26[31:9]};
                6'h11   : LK_0 = BK_0_round_28^{BK_0_round_28[18:0],BK_0_round_28[31:19]}^{BK_0_round_28[8:0],BK_0_round_28[31:9]};
                6'h12   : LK_0 = BK_0_round_30^{BK_0_round_30[18:0],BK_0_round_30[31:19]}^{BK_0_round_30[8:0],BK_0_round_30[31:9]};
                6'h14   : LK_0 = BK_0_round_32^{BK_0_round_32[18:0],BK_0_round_32[31:19]}^{BK_0_round_32[8:0],BK_0_round_32[31:9]};
                6'h15   : LK_0 = BK_0_round_34^{BK_0_round_34[18:0],BK_0_round_34[31:19]}^{BK_0_round_34[8:0],BK_0_round_34[31:9]};
                6'h16   : LK_0 = BK_0_round_36^{BK_0_round_36[18:0],BK_0_round_36[31:19]}^{BK_0_round_36[8:0],BK_0_round_36[31:9]};
                6'h17   : LK_0 = BK_0_round_38^{BK_0_round_38[18:0],BK_0_round_38[31:19]}^{BK_0_round_38[8:0],BK_0_round_38[31:9]};
                6'h19   : LK_0 = BK_0_round_40^{BK_0_round_40[18:0],BK_0_round_40[31:19]}^{BK_0_round_40[8:0],BK_0_round_40[31:9]};
                6'h1a   : LK_0 = BK_0_round_42^{BK_0_round_42[18:0],BK_0_round_42[31:19]}^{BK_0_round_42[8:0],BK_0_round_42[31:9]};
                6'h1b   : LK_0 = BK_0_round_44^{BK_0_round_44[18:0],BK_0_round_44[31:19]}^{BK_0_round_44[8:0],BK_0_round_44[31:9]};
                6'h1c   : LK_0 = BK_0_round_46^{BK_0_round_46[18:0],BK_0_round_46[31:19]}^{BK_0_round_46[8:0],BK_0_round_46[31:9]};
                6'h1e   : LK_0 = BK_0_round_48^{BK_0_round_48[18:0],BK_0_round_48[31:19]}^{BK_0_round_48[8:0],BK_0_round_48[31:9]};
                6'h1f   : LK_0 = BK_0_round_50^{BK_0_round_50[18:0],BK_0_round_50[31:19]}^{BK_0_round_50[8:0],BK_0_round_50[31:9]};
                6'h20   : LK_0 = BK_0_round_52^{BK_0_round_52[18:0],BK_0_round_52[31:19]}^{BK_0_round_52[8:0],BK_0_round_52[31:9]};
                6'h21   : LK_0 = BK_0_round_54^{BK_0_round_54[18:0],BK_0_round_54[31:19]}^{BK_0_round_54[8:0],BK_0_round_54[31:9]};
                6'h23   : LK_0 = BK_0_round_56^{BK_0_round_56[18:0],BK_0_round_56[31:19]}^{BK_0_round_56[8:0],BK_0_round_56[31:9]};
                6'h24   : LK_0 = BK_0_round_58^{BK_0_round_58[18:0],BK_0_round_58[31:19]}^{BK_0_round_58[8:0],BK_0_round_58[31:9]};
                6'h25   : LK_0 = BK_0_round_60^{BK_0_round_60[18:0],BK_0_round_60[31:19]}^{BK_0_round_60[8:0],BK_0_round_60[31:9]};
                6'h26   : LK_0 = BK_0_round_62^{BK_0_round_62[18:0],BK_0_round_62[31:19]}^{BK_0_round_62[8:0],BK_0_round_62[31:9]};
                default : LK_0 = 32'h0;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            rk_0 = 32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : rk_0 = k3_0 ^ LK_0;
                6'h1    : rk_0 = k1_0 ^ LK_0;
                6'h2    : rk_0 = rk_round_0  ^ LK_0;
                6'h3    : rk_0 = rk_round_2  ^ LK_0;
                6'h5    : rk_0 = rk_round_4  ^ LK_0;
                6'h6    : rk_0 = rk_round_6  ^ LK_0;
                6'h7    : rk_0 = rk_round_8  ^ LK_0;
                6'h8    : rk_0 = rk_round_10 ^ LK_0;
                6'ha    : rk_0 = rk_round_12 ^ LK_0;
                6'hb    : rk_0 = rk_round_14 ^ LK_0;
                6'hc    : rk_0 = rk_round_16 ^ LK_0;
                6'hd    : rk_0 = rk_round_18 ^ LK_0;
                6'hf    : rk_0 = rk_round_20 ^ LK_0;
                6'h10   : rk_0 = rk_round_22 ^ LK_0;
                6'h11   : rk_0 = rk_round_24 ^ LK_0;
                6'h12   : rk_0 = rk_round_26 ^ LK_0;
                6'h14   : rk_0 = rk_round_31 ^ LK_0;
                6'h15   : rk_0 = rk_round_29 ^ LK_0;
                6'h16   : rk_0 = rk_round_27 ^ LK_0;
                6'h17   : rk_0 = rk_round_25 ^ LK_0;
                6'h19   : rk_0 = rk_round_23 ^ LK_0;
                6'h1a   : rk_0 = rk_round_21 ^ LK_0;
                6'h1b   : rk_0 = rk_round_19 ^ LK_0;
                6'h1c   : rk_0 = rk_round_17 ^ LK_0;
                6'h1e   : rk_0 = rk_round_15 ^ LK_0;
                6'h1f   : rk_0 = rk_round_13 ^ LK_0;
                6'h20   : rk_0 = rk_round_11 ^ LK_0;
                6'h21   : rk_0 = rk_round_9  ^ LK_0;
                6'h23   : rk_0 = rk_round_7  ^ LK_0;
                6'h24   : rk_0 = rk_round_5  ^ LK_0;
                6'h25   : rk_0 = rk_round_3  ^ LK_0;
                6'h26   : rk_0 = rk_round_1  ^ LK_0;
                default : rk_0 = 32'h0;
            endcase
        end
    end
    
    always @(*) begin
        if (!rstn) begin
            rk_round_0  = 32'h0;
            rk_round_1  = 32'h0;
            rk_round_2  = 32'h0;
            rk_round_3  = 32'h0;
            rk_round_4  = 32'h0;
            rk_round_5  = 32'h0;
            rk_round_6  = 32'h0;
            rk_round_7  = 32'h0;
            rk_round_8  = 32'h0;
            rk_round_9  = 32'h0;
            rk_round_10 = 32'h0;
            rk_round_11 = 32'h0;
            rk_round_12 = 32'h0;
            rk_round_13 = 32'h0;
            rk_round_14 = 32'h0;
            rk_round_15 = 32'h0;
            rk_round_16 = 32'h0;
            rk_round_17 = 32'h0;
            rk_round_18 = 32'h0;
            rk_round_19 = 32'h0;
            rk_round_20 = 32'h0;
            rk_round_21 = 32'h0;
            rk_round_22 = 32'h0;
            rk_round_23 = 32'h0;
            rk_round_24 = 32'h0;
            rk_round_25 = 32'h0;
            rk_round_26 = 32'h0;
            rk_round_27 = 32'h0;
            rk_round_28 = 32'h0;
            rk_round_29 = 32'h0;
            rk_round_30 = 32'h0;
            rk_round_31 = 32'h0;
            rk_round_32 = 32'h0;
            rk_round_33 = 32'h0;
            rk_round_34 = 32'h0;
            rk_round_35 = 32'h0;
            rk_round_36 = 32'h0;
            rk_round_37 = 32'h0;
            rk_round_38 = 32'h0;
            rk_round_39 = 32'h0;
            rk_round_40 = 32'h0;
            rk_round_41 = 32'h0;
            rk_round_42 = 32'h0;
            rk_round_43 = 32'h0;
            rk_round_44 = 32'h0;
            rk_round_45 = 32'h0;
            rk_round_46 = 32'h0;
            rk_round_47 = 32'h0;
            rk_round_48 = 32'h0;
            rk_round_49 = 32'h0;
            rk_round_50 = 32'h0;
            rk_round_51 = 32'h0;
            rk_round_52 = 32'h0;
            rk_round_53 = 32'h0;
            rk_round_54 = 32'h0;
            rk_round_55 = 32'h0;
            rk_round_56 = 32'h0;
            rk_round_57 = 32'h0;
            rk_round_58 = 32'h0;
            rk_round_59 = 32'h0;
            rk_round_60 = 32'h0;
            rk_round_61 = 32'h0;
            rk_round_62 = 32'h0;
            rk_round_63 = 32'h0;
            rd_round_0  = 32'h0;
            rd_round_1  = 32'h0;
            rd_round_2  = 32'h0;
            rd_round_3  = 32'h0;
            rd_round_4  = 32'h0;
            rd_round_5  = 32'h0;
            rd_round_6  = 32'h0;
            rd_round_7  = 32'h0;
            rd_round_8  = 32'h0;
            rd_round_9  = 32'h0;
            rd_round_10 = 32'h0;
            rd_round_11 = 32'h0;
            rd_round_12 = 32'h0;
            rd_round_13 = 32'h0;
            rd_round_14 = 32'h0;
            rd_round_15 = 32'h0;
            rd_round_16 = 32'h0;
            rd_round_17 = 32'h0;
            rd_round_18 = 32'h0;
            rd_round_19 = 32'h0;
            rd_round_20 = 32'h0;
            rd_round_21 = 32'h0;
            rd_round_22 = 32'h0;
            rd_round_23 = 32'h0;
            rd_round_24 = 32'h0;
            rd_round_25 = 32'h0;
            rd_round_26 = 32'h0;
            rd_round_27 = 32'h0;
            rd_round_28 = 32'h0;
            rd_round_29 = 32'h0;
            rd_round_30 = 32'h0;
            rd_round_31 = 32'h0;
        end else begin
            rk_round_0  = (clk_cnt_all == 6'h0)  ? rk_0 : rk_round_0;
            rk_round_1  = (clk_cnt_all == 6'h0)  ? rk_1 : rk_round_1;
            rk_round_2  = (clk_cnt_all == 6'h1)  ? rk_0 : rk_round_2;
            rk_round_3  = (clk_cnt_all == 6'h2)  ? rk_1 : rk_round_3;
            rk_round_4  = (clk_cnt_all == 6'h2)  ? rk_0 : rk_round_4;
            rk_round_5  = (clk_cnt_all == 6'h3)  ? rk_1 : rk_round_5;
            rk_round_6  = (clk_cnt_all == 6'h3)  ? rk_0 : rk_round_6;
            rk_round_7  = (clk_cnt_all == 6'h4)  ? rk_1 : rk_round_7;
            rk_round_8  = (clk_cnt_all == 6'h5)  ? rk_0 : rk_round_8;
            rk_round_9  = (clk_cnt_all == 6'h5)  ? rk_1 : rk_round_9;
            rk_round_10 = (clk_cnt_all == 6'h6)  ? rk_0 : rk_round_10;
            rk_round_11 = (clk_cnt_all == 6'h7)  ? rk_1 : rk_round_11;
            rk_round_12 = (clk_cnt_all == 6'h7)  ? rk_0 : rk_round_12;
            rk_round_13 = (clk_cnt_all == 6'h8)  ? rk_1 : rk_round_13;
            rk_round_14 = (clk_cnt_all == 6'h8)  ? rk_0 : rk_round_14;
            rk_round_15 = (clk_cnt_all == 6'h9)  ? rk_1 : rk_round_15;
            rk_round_16 = (clk_cnt_all == 6'ha)  ? rk_0 : rk_round_16;
            rk_round_17 = (clk_cnt_all == 6'ha)  ? rk_1 : rk_round_17;
            rk_round_18 = (clk_cnt_all == 6'hb)  ? rk_0 : rk_round_18;
            rk_round_19 = (clk_cnt_all == 6'hb)  ? rk_1 : rk_round_19;
            rk_round_20 = (clk_cnt_all == 6'hc)  ? rk_0 : rk_round_20;
            rk_round_21 = (clk_cnt_all == 6'hd)  ? rk_1 : rk_round_21;
            rk_round_22 = (clk_cnt_all == 6'hd)  ? rk_0 : rk_round_22;
            rk_round_23 = (clk_cnt_all == 6'he)  ? rk_1 : rk_round_23;
            rk_round_24 = (clk_cnt_all == 6'hf)  ? rk_0 : rk_round_24;
            rk_round_25 = (clk_cnt_all == 6'hf)  ? rk_1 : rk_round_25;
            rk_round_26 = (clk_cnt_all == 6'h10) ? rk_0 : rk_round_26;
            rk_round_27 = (clk_cnt_all == 6'h10) ? rk_1 : rk_round_27;
            rk_round_28 = (clk_cnt_all == 6'h11) ? rk_0 : rk_round_28;
            rk_round_29 = (clk_cnt_all == 6'h12) ? rk_1 : rk_round_29;
            rk_round_30 = (clk_cnt_all == 6'h12) ? rk_0 : rk_round_30;
            rk_round_31 = (clk_cnt_all == 6'h13) ? rk_1 : rk_round_31;
            rk_round_32 = (clk_cnt_all == 6'h14) ? rk_0 : rk_round_32;
            rk_round_33 = (clk_cnt_all == 6'h14) ? rk_1 : rk_round_33;
            rk_round_34 = (clk_cnt_all == 6'h15) ? rk_0 : rk_round_34;
            rk_round_35 = (clk_cnt_all == 6'h16) ? rk_1 : rk_round_35;
            rk_round_36 = (clk_cnt_all == 6'h16) ? rk_0 : rk_round_36;
            rk_round_37 = (clk_cnt_all == 6'h17) ? rk_1 : rk_round_37;
            rk_round_38 = (clk_cnt_all == 6'h17) ? rk_0 : rk_round_38;
            rk_round_39 = (clk_cnt_all == 6'h18) ? rk_1 : rk_round_39;
            rk_round_40 = (clk_cnt_all == 6'h19) ? rk_0 : rk_round_40;
            rk_round_41 = (clk_cnt_all == 6'h19) ? rk_1 : rk_round_41;
            rk_round_42 = (clk_cnt_all == 6'h1a) ? rk_0 : rk_round_42;
            rk_round_43 = (clk_cnt_all == 6'h1b) ? rk_1 : rk_round_43;
            rk_round_44 = (clk_cnt_all == 6'h1b) ? rk_0 : rk_round_44;
            rk_round_45 = (clk_cnt_all == 6'h1c) ? rk_1 : rk_round_45;
            rk_round_46 = (clk_cnt_all == 6'h1c) ? rk_0 : rk_round_46;
            rk_round_47 = (clk_cnt_all == 6'h1d) ? rk_1 : rk_round_47;
            rk_round_48 = (clk_cnt_all == 6'h1e) ? rk_0 : rk_round_48;
            rk_round_49 = (clk_cnt_all == 6'h1e) ? rk_1 : rk_round_49;
            rk_round_50 = (clk_cnt_all == 6'h1f) ? rk_0 : rk_round_50;
            rk_round_51 = (clk_cnt_all == 6'h1f) ? rk_1 : rk_round_51;
            rk_round_52 = (clk_cnt_all == 6'h20) ? rk_0 : rk_round_52;
            rk_round_53 = (clk_cnt_all == 6'h21) ? rk_1 : rk_round_53;
            rk_round_54 = (clk_cnt_all == 6'h21) ? rk_0 : rk_round_54;
            rk_round_55 = (clk_cnt_all == 6'h22) ? rk_1 : rk_round_55;
            rk_round_56 = (clk_cnt_all == 6'h23) ? rk_0 : rk_round_56;
            rk_round_57 = (clk_cnt_all == 6'h23) ? rk_1 : rk_round_57;
            rk_round_58 = (clk_cnt_all == 6'h24) ? rk_0 : rk_round_58;
            rk_round_59 = (clk_cnt_all == 6'h24) ? rk_1 : rk_round_59;
            rk_round_60 = (clk_cnt_all == 6'h25) ? rk_0 : rk_round_60;
            rk_round_61 = (clk_cnt_all == 6'h26) ? rk_1 : rk_round_61;
            rk_round_62 = (clk_cnt_all == 6'h26) ? rk_0 : rk_round_62;
            rk_round_63 = (clk_cnt_all == 6'h27) ? rk_1 : rk_round_63;
            if (cfg[0] == 1'b1) begin
                rd_round_0  = (clk_cnt_all == 6'h0) ? rd_0 : rd_round_0;
                rd_round_1  = (clk_cnt_all == 6'h1) ? rd_1 : rd_round_1;
                rd_round_2  = (clk_cnt_all == 6'h1) ? rd_0 : rd_round_2;
                rd_round_3  = (clk_cnt_all == 6'h2) ? rd_1 : rd_round_3;
                rd_round_4  = (clk_cnt_all == 6'h3) ? rd_0 : rd_round_4;
                rd_round_5  = (clk_cnt_all == 6'h3) ? rd_1 : rd_round_5;
                rd_round_6  = (clk_cnt_all == 6'h4) ? rd_0 : rd_round_6;
                rd_round_7  = (clk_cnt_all == 6'h4) ? rd_1 : rd_round_7;
                rd_round_8  = (clk_cnt_all == 6'h5) ? rd_0 : rd_round_8;
                rd_round_9  = (clk_cnt_all == 6'h6) ? rd_1 : rd_round_9;
                rd_round_10 = (clk_cnt_all == 6'h6) ? rd_0 : rd_round_10;
                rd_round_11 = (clk_cnt_all == 6'h7) ? rd_1 : rd_round_11;
                rd_round_12 = (clk_cnt_all == 6'h7) ? rd_0 : rd_round_12;
                rd_round_13 = (clk_cnt_all == 6'h8) ? rd_1 : rd_round_13;
                rd_round_14 = (clk_cnt_all == 6'h9) ? rd_0 : rd_round_14;
                rd_round_15 = (clk_cnt_all == 6'h9) ? rd_1 : rd_round_15;
                rd_round_16 = (clk_cnt_all == 6'ha) ? rd_0 : rd_round_16;
                rd_round_17 = (clk_cnt_all == 6'hb) ? rd_1 : rd_round_17;
                rd_round_18 = (clk_cnt_all == 6'hb) ? rd_0 : rd_round_18;
                rd_round_19 = (clk_cnt_all == 6'hc) ? rd_1 : rd_round_19;
                rd_round_20 = (clk_cnt_all == 6'hc) ? rd_0 : rd_round_20;
                rd_round_21 = (clk_cnt_all == 6'hd) ? rd_1 : rd_round_21;
                rd_round_22 = (clk_cnt_all == 6'he) ? rd_0 : rd_round_22;
                rd_round_23 = (clk_cnt_all == 6'he) ? rd_1 : rd_round_23;
                rd_round_24 = (clk_cnt_all == 6'hf) ? rd_0 : rd_round_24;
                rd_round_25 = (clk_cnt_all == 6'hf) ? rd_1 : rd_round_25;
                rd_round_26 = (clk_cnt_all == 6'h10) ? rd_0 : rd_round_26;
                rd_round_27 = (clk_cnt_all == 6'h11) ? rd_1 : rd_round_27;
                rd_round_28 = (clk_cnt_all == 6'h11) ? rd_0 : rd_round_28;
                rd_round_29 = (clk_cnt_all == 6'h12) ? rd_1 : rd_round_29;
                rd_round_30 = (clk_cnt_all == 6'h13) ? rd_0 : rd_round_30;
                rd_round_31 = (clk_cnt_all == 6'h13) ? rd_1 : rd_round_31;
            end else begin
                rd_round_0  = (clk_cnt_all == 6'h14) ? rd_0 : rd_round_0;
                rd_round_1  = (clk_cnt_all == 6'h15) ? rd_1 : rd_round_1;
                rd_round_2  = (clk_cnt_all == 6'h15) ? rd_0 : rd_round_2;
                rd_round_3  = (clk_cnt_all == 6'h16) ? rd_1 : rd_round_3;
                rd_round_4  = (clk_cnt_all == 6'h17) ? rd_0 : rd_round_4;
                rd_round_5  = (clk_cnt_all == 6'h17) ? rd_1 : rd_round_5;
                rd_round_6  = (clk_cnt_all == 6'h18) ? rd_0 : rd_round_6;
                rd_round_7  = (clk_cnt_all == 6'h18) ? rd_1 : rd_round_7;
                rd_round_8  = (clk_cnt_all == 6'h19) ? rd_0 : rd_round_8;
                rd_round_9  = (clk_cnt_all == 6'h1a) ? rd_1 : rd_round_9;
                rd_round_10 = (clk_cnt_all == 6'h1a) ? rd_0 : rd_round_10;
                rd_round_11 = (clk_cnt_all == 6'h1b) ? rd_1 : rd_round_11;
                rd_round_12 = (clk_cnt_all == 6'h1b) ? rd_0 : rd_round_12;
                rd_round_13 = (clk_cnt_all == 6'h1c) ? rd_1 : rd_round_13;
                rd_round_14 = (clk_cnt_all == 6'h1d) ? rd_0 : rd_round_14;
                rd_round_15 = (clk_cnt_all == 6'h1d) ? rd_1 : rd_round_15;
                rd_round_16 = (clk_cnt_all == 6'h1e) ? rd_0 : rd_round_16;
                rd_round_17 = (clk_cnt_all == 6'h1f) ? rd_1 : rd_round_17;
                rd_round_18 = (clk_cnt_all == 6'h1f) ? rd_0 : rd_round_18;
                rd_round_19 = (clk_cnt_all == 6'h20) ? rd_1 : rd_round_19;
                rd_round_20 = (clk_cnt_all == 6'h20) ? rd_0 : rd_round_20;
                rd_round_21 = (clk_cnt_all == 6'h21) ? rd_1 : rd_round_21;
                rd_round_22 = (clk_cnt_all == 6'h22) ? rd_0 : rd_round_22;
                rd_round_23 = (clk_cnt_all == 6'h22) ? rd_1 : rd_round_23;
                rd_round_24 = (clk_cnt_all == 6'h23) ? rd_0 : rd_round_24;
                rd_round_25 = (clk_cnt_all == 6'h23) ? rd_1 : rd_round_25;
                rd_round_26 = (clk_cnt_all == 6'h24) ? rd_0 : rd_round_26;
                rd_round_27 = (clk_cnt_all == 6'h25) ? rd_1 : rd_round_27;
                rd_round_28 = (clk_cnt_all == 6'h25) ? rd_0 : rd_round_28;
                rd_round_29 = (clk_cnt_all == 6'h26) ? rd_1 : rd_round_29;
                rd_round_30 = (clk_cnt_all == 6'h27) ? rd_0 : rd_round_30;
                rd_round_31 = (clk_cnt_all == 6'h27) ? rd_1 : rd_round_31;
            end
        end
    end
    
    always @(*) begin
        if (!rstn) begin
            AK_1=32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : AK_1=k1_0^k0_0^rk_round_0^CK_1;
                6'h1    : AK_1=rk_round_0 ^rk_round_1 ^rk_round_2 ^CK_1;
                6'h2    : AK_1=rk_round_0 ^rk_round_1 ^rk_round_2 ^CK_1;
                6'h3    : AK_1=rk_round_2 ^rk_round_3 ^rk_round_4 ^CK_1;
                6'h4    : AK_1=rk_round_4 ^rk_round_5 ^rk_round_6 ^CK_1;
                6'h5    : AK_1=rk_round_6 ^rk_round_7 ^rk_round_8 ^CK_1;
                6'h6    : AK_1=rk_round_8 ^rk_round_9 ^rk_round_10^CK_1;
                6'h7    : AK_1=rk_round_8 ^rk_round_9 ^rk_round_10^CK_1;
                6'h8    : AK_1=rk_round_10^rk_round_11^rk_round_12^CK_1;
                6'h9    : AK_1=rk_round_12^rk_round_13^rk_round_14^CK_1;
                6'ha    : AK_1=rk_round_14^rk_round_15^rk_round_16^CK_1;
                6'hb    : AK_1=rk_round_16^rk_round_17^rk_round_18^CK_1;
                6'hc    : AK_1=rk_round_18^rk_round_19^rk_round_20^CK_1;
                6'hd    : AK_1=rk_round_18^rk_round_19^rk_round_20^CK_1;
                6'he    : AK_1=rk_round_20^rk_round_21^rk_round_22^CK_1;
                6'hf    : AK_1=rk_round_22^rk_round_23^rk_round_24^CK_1;
                6'h10   : AK_1=rk_round_24^rk_round_25^rk_round_26^CK_1;
                6'h11   : AK_1=rk_round_26^rk_round_27^rk_round_28^CK_1;
                6'h12   : AK_1=rk_round_26^rk_round_27^rk_round_28^CK_1;
                6'h13   : AK_1=rk_round_28^rk_round_29^rk_round_30^CK_1;
                6'h14   : AK_1=rk_round_29^rk_round_28^rk_round_27^CK_1;
                6'h15   : AK_1=rk_round_27^rk_round_26^rk_round_25^CK_1;
                6'h16   : AK_1=rk_round_27^rk_round_26^rk_round_25^CK_1;
                6'h17   : AK_1=rk_round_25^rk_round_24^rk_round_23^CK_1;
                6'h18   : AK_1=rk_round_23^rk_round_22^rk_round_21^CK_1;
                6'h19   : AK_1=rk_round_21^rk_round_20^rk_round_19^CK_1;
                6'h1a   : AK_1=rk_round_19^rk_round_18^rk_round_17^CK_1;
                6'h1b   : AK_1=rk_round_19^rk_round_18^rk_round_17^CK_1;
                6'h1c   : AK_1=rk_round_17^rk_round_16^rk_round_15^CK_1;
                6'h1d   : AK_1=rk_round_15^rk_round_14^rk_round_13^CK_1;
                6'h1e   : AK_1=rk_round_13^rk_round_12^rk_round_11^CK_1;
                6'h1f   : AK_1=rk_round_11^rk_round_10^rk_round_9 ^CK_1;
                6'h20   : AK_1=rk_round_9 ^rk_round_8 ^rk_round_7 ^CK_1;
                6'h21   : AK_1=rk_round_9 ^rk_round_8 ^rk_round_7 ^CK_1;
                6'h22   : AK_1=rk_round_7 ^rk_round_6 ^rk_round_5 ^CK_1;
                6'h23   : AK_1=rk_round_5 ^rk_round_4 ^rk_round_3 ^CK_1;
                6'h24   : AK_1=rk_round_3 ^rk_round_2 ^rk_round_1 ^CK_1;
                6'h25   : AK_1=rk_round_1 ^rk_round_0 ^k0_0 ^CK_1;
                6'h26   : AK_1=rk_round_1 ^rk_round_0 ^k0_0 ^CK_1;
                6'h27   : AK_1=k2_0 ^k1_0 ^k0_0 ^CK_1;
                default : AK_1=32'h0;
            endcase
        end
    end
    
    always @(*) begin
        if (!rstn) begin
            LK_1 = 32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    : LK_1 = BK_1_round_1^ {BK_1_round_1[18:0], BK_1_round_1[31:19]}^ {BK_1_round_1[8:0], BK_1_round_1[31:9]};
                6'h2    : LK_1 = BK_1_round_3^ {BK_1_round_3[18:0], BK_1_round_3[31:19]}^ {BK_1_round_3[8:0], BK_1_round_3[31:9]};
                6'h3    : LK_1 = BK_1_round_5^ {BK_1_round_5[18:0], BK_1_round_5[31:19]}^ {BK_1_round_5[8:0], BK_1_round_5[31:9]};
                6'h4    : LK_1 = BK_1_round_7^ {BK_1_round_7[18:0], BK_1_round_7[31:19]}^ {BK_1_round_7[8:0], BK_1_round_7[31:9]};
                6'h5    : LK_1 = BK_1_round_9^ {BK_1_round_9[18:0], BK_1_round_9[31:19]}^ {BK_1_round_9[8:0], BK_1_round_9[31:9]};
                6'h7    : LK_1 = BK_1_round_11^{BK_1_round_11[18:0],BK_1_round_11[31:19]}^{BK_1_round_11[8:0],BK_1_round_11[31:9]};
                6'h8    : LK_1 = BK_1_round_13^{BK_1_round_13[18:0],BK_1_round_13[31:19]}^{BK_1_round_13[8:0],BK_1_round_13[31:9]};
                6'h9    : LK_1 = BK_1_round_15^{BK_1_round_15[18:0],BK_1_round_15[31:19]}^{BK_1_round_15[8:0],BK_1_round_15[31:9]};
                6'ha    : LK_1 = BK_1_round_17^{BK_1_round_17[18:0],BK_1_round_17[31:19]}^{BK_1_round_17[8:0],BK_1_round_17[31:9]};
                6'hb    : LK_1 = BK_1_round_19^{BK_1_round_19[18:0],BK_1_round_19[31:19]}^{BK_1_round_19[8:0],BK_1_round_19[31:9]};
                6'hd    : LK_1 = BK_1_round_21^{BK_1_round_21[18:0],BK_1_round_21[31:19]}^{BK_1_round_21[8:0],BK_1_round_21[31:9]};
                6'he    : LK_1 = BK_1_round_23^{BK_1_round_23[18:0],BK_1_round_23[31:19]}^{BK_1_round_23[8:0],BK_1_round_23[31:9]};
                6'hf    : LK_1 = BK_1_round_25^{BK_1_round_25[18:0],BK_1_round_25[31:19]}^{BK_1_round_25[8:0],BK_1_round_25[31:9]};
                6'h10   : LK_1 = BK_1_round_27^{BK_1_round_27[18:0],BK_1_round_27[31:19]}^{BK_1_round_27[8:0],BK_1_round_27[31:9]};
                6'h12   : LK_1 = BK_1_round_29^{BK_1_round_29[18:0],BK_1_round_29[31:19]}^{BK_1_round_29[8:0],BK_1_round_29[31:9]};
                6'h13   : LK_1 = BK_1_round_31^{BK_1_round_31[18:0],BK_1_round_31[31:19]}^{BK_1_round_31[8:0],BK_1_round_31[31:9]};
                6'h14   : LK_1 = BK_1_round_33^{BK_1_round_33[18:0],BK_1_round_33[31:19]}^{BK_1_round_33[8:0],BK_1_round_33[31:9]};
                6'h16   : LK_1 = BK_1_round_35^{BK_1_round_35[18:0],BK_1_round_35[31:19]}^{BK_1_round_35[8:0],BK_1_round_35[31:9]};
                6'h17   : LK_1 = BK_1_round_37^{BK_1_round_37[18:0],BK_1_round_37[31:19]}^{BK_1_round_37[8:0],BK_1_round_37[31:9]};
                6'h18   : LK_1 = BK_1_round_39^{BK_1_round_39[18:0],BK_1_round_39[31:19]}^{BK_1_round_39[8:0],BK_1_round_39[31:9]};
                6'h19   : LK_1 = BK_1_round_41^{BK_1_round_41[18:0],BK_1_round_41[31:19]}^{BK_1_round_41[8:0],BK_1_round_41[31:9]};
                6'h1b   : LK_1 = BK_1_round_43^{BK_1_round_43[18:0],BK_1_round_43[31:19]}^{BK_1_round_43[8:0],BK_1_round_43[31:9]};
                6'h1c   : LK_1 = BK_1_round_45^{BK_1_round_45[18:0],BK_1_round_45[31:19]}^{BK_1_round_45[8:0],BK_1_round_45[31:9]};
                6'h1d   : LK_1 = BK_1_round_47^{BK_1_round_47[18:0],BK_1_round_47[31:19]}^{BK_1_round_47[8:0],BK_1_round_47[31:9]};
                6'h1e   : LK_1 = BK_1_round_49^{BK_1_round_49[18:0],BK_1_round_49[31:19]}^{BK_1_round_49[8:0],BK_1_round_49[31:9]};
                6'h1f   : LK_1 = BK_1_round_51^{BK_1_round_51[18:0],BK_1_round_51[31:19]}^{BK_1_round_51[8:0],BK_1_round_51[31:9]};
                6'h21   : LK_1 = BK_1_round_53^{BK_1_round_53[18:0],BK_1_round_53[31:19]}^{BK_1_round_53[8:0],BK_1_round_53[31:9]};
                6'h22   : LK_1 = BK_1_round_55^{BK_1_round_55[18:0],BK_1_round_55[31:19]}^{BK_1_round_55[8:0],BK_1_round_55[31:9]};
                6'h23   : LK_1 = BK_1_round_57^{BK_1_round_57[18:0],BK_1_round_57[31:19]}^{BK_1_round_57[8:0],BK_1_round_57[31:9]};
                6'h24   : LK_1 = BK_1_round_59^{BK_1_round_59[18:0],BK_1_round_59[31:19]}^{BK_1_round_59[8:0],BK_1_round_59[31:9]};
                6'h26   : LK_1 = BK_1_round_61^{BK_1_round_61[18:0],BK_1_round_61[31:19]}^{BK_1_round_61[8:0],BK_1_round_61[31:9]};
                6'h27   : LK_1 = BK_1_round_63^{BK_1_round_63[18:0],BK_1_round_63[31:19]}^{BK_1_round_63[8:0],BK_1_round_63[31:9]};
                default : LK_1 = 32'h0;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            rk_1 = 32'h0;
        end else begin
            case (clk_cnt_all)
                6'h0    :rk_1 = k2_0^LK_1;
                6'h2    :rk_1 = k0_0^LK_1;
                6'h3    :rk_1 = rk_round_1^LK_1;
                6'h4    :rk_1 = rk_round_3^LK_1;
                6'h5    :rk_1 = rk_round_5^LK_1;
                6'h7    :rk_1 = rk_round_7^LK_1;
                6'h8    :rk_1 = rk_round_9^LK_1;
                6'h9    :rk_1 = rk_round_11^LK_1;
                6'ha    :rk_1 = rk_round_13^LK_1;
                6'hb    :rk_1 = rk_round_15^LK_1;
                6'hd    :rk_1 = rk_round_17^LK_1;
                6'he    :rk_1 = rk_round_19^LK_1;
                6'hf    :rk_1 = rk_round_21^LK_1;
                6'h10   :rk_1 = rk_round_23^LK_1;
                6'h12   :rk_1 = rk_round_25^LK_1;
                6'h13   :rk_1 = rk_round_27^LK_1;
                6'h14   :rk_1 = rk_round_30^LK_1;
                6'h16   :rk_1 = rk_round_28^LK_1;
                6'h17   :rk_1 = rk_round_26^LK_1;
                6'h18   :rk_1 = rk_round_24^LK_1;
                6'h19   :rk_1 = rk_round_22^LK_1;
                6'h1b   :rk_1 = rk_round_20^LK_1;
                6'h1c   :rk_1 = rk_round_18^LK_1;
                6'h1d   :rk_1 = rk_round_16^LK_1;
                6'h1e   :rk_1 = rk_round_14^LK_1;
                6'h1f   :rk_1 = rk_round_12^LK_1;
                6'h21   :rk_1 = rk_round_10^LK_1;
                6'h22   :rk_1 = rk_round_8 ^LK_1;
                6'h23   :rk_1 = rk_round_6 ^LK_1;
                6'h24   :rk_1 = rk_round_4 ^LK_1;
                6'h26   :rk_1 = rk_round_2 ^LK_1;
                6'h27   :rk_1 = rk_round_0 ^LK_1;
                default :rk_1 = 32'h0;
            endcase
        end
    end
    
    ////////////////data
    assign {d3_0,d2_0,d1_0,d0_0} = sbox_din;
    
    always @(*) begin
        if (!rstn) begin
            A_0 = 32'h0;
        end else if (cfg[0] == 1'b1) begin
            case (clk_cnt_all)
                6'h0    : A_0 = d2_0^d1_0^d0_0^rk_round_0;
                6'h1    : A_0 = d0_0^rd_round_0^rd_round_1^rk_round_2;
                6'h2    : A_0 = rd_round_1 ^rd_round_2 ^rd_round_3 ^rk_round_4;
                6'h3    : A_0 = rd_round_1 ^rd_round_2 ^rd_round_3 ^rk_round_4;
                6'h4    : A_0 = rd_round_3 ^rd_round_4 ^rd_round_5 ^rk_round_6;
                6'h5    : A_0 = rd_round_5 ^rd_round_6 ^rd_round_7 ^rk_round_8;
                6'h6    : A_0 = rd_round_7 ^rd_round_8 ^rd_round_9 ^rk_round_10;
                6'h7    : A_0 = rd_round_9 ^rd_round_10^rd_round_11^rk_round_12;
                6'h8    : A_0 = rd_round_11^rd_round_12^rd_round_13^rk_round_14;
                6'h9    : A_0 = rd_round_11^rd_round_12^rd_round_13^rk_round_14;
                6'ha    : A_0 = rd_round_13^rd_round_14^rd_round_15^rk_round_16;
                6'hb    : A_0 = rd_round_15^rd_round_16^rd_round_17^rk_round_18;
                6'hc    : A_0 = rd_round_17^rd_round_18^rd_round_19^rk_round_20;
                6'hd    : A_0 = rd_round_19^rd_round_20^rd_round_21^rk_round_22;
                6'he    : A_0 = rd_round_19^rd_round_20^rd_round_21^rk_round_22;
                6'hf    : A_0 = rd_round_21^rd_round_22^rd_round_23^rk_round_24;
                6'h10   : A_0 = rd_round_23^rd_round_24^rd_round_25^rk_round_26;
                6'h11   : A_0 = rd_round_25^rd_round_26^rd_round_27^rk_round_28;
                6'h12   : A_0 = rd_round_27^rd_round_28^rd_round_29^rk_round_30;
                6'h13   : A_0 = rd_round_27^rd_round_28^rd_round_29^rk_round_30;
                default : A_0 = 32'h0;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h14   : A_0 = d2_0^d1_0^d0_0^rk_round_31;
                6'h15   : A_0 = d0_0^rd_round_0^rd_round_1^rk_round_29;
                6'h16   : A_0 = rd_round_1 ^rd_round_2 ^rd_round_3 ^rk_round_27;
                6'h17   : A_0 = rd_round_1 ^rd_round_2 ^rd_round_3 ^rk_round_27;
                6'h18   : A_0 = rd_round_3 ^rd_round_4 ^rd_round_5 ^rk_round_25;
                6'h19   : A_0 = rd_round_5 ^rd_round_6 ^rd_round_7 ^rk_round_23;
                6'h1a   : A_0 = rd_round_7 ^rd_round_8 ^rd_round_9 ^rk_round_21;
                6'h1b   : A_0 = rd_round_9 ^rd_round_10^rd_round_11^rk_round_19;
                6'h1c   : A_0 = rd_round_11^rd_round_12^rd_round_13^rk_round_17;
                6'h1d   : A_0 = rd_round_11^rd_round_12^rd_round_13^rk_round_17;
                6'h1e   : A_0 = rd_round_13^rd_round_14^rd_round_15^rk_round_15;
                6'h1f   : A_0 = rd_round_15^rd_round_16^rd_round_17^rk_round_13;
                6'h20   : A_0 = rd_round_17^rd_round_18^rd_round_19^rk_round_11;
                6'h21   : A_0 = rd_round_19^rd_round_20^rd_round_21^rk_round_9 ;
                6'h22   : A_0 = rd_round_19^rd_round_20^rd_round_21^rk_round_9 ;
                6'h23   : A_0 = rd_round_21^rd_round_22^rd_round_23^rk_round_7;
                6'h24   : A_0 = rd_round_23^rd_round_24^rd_round_25^rk_round_5;
                6'h25   : A_0 = rd_round_25^rd_round_26^rd_round_27^rk_round_3;
                6'h26   : A_0 = rd_round_27^rd_round_28^rd_round_29^rk_round_1;
                6'h27   : A_0 = rd_round_27^rd_round_28^rd_round_29^rk_round_1;
                default : A_0 = 32'h0;
            endcase
        end
    end
    always @(*) begin
        if (!rstn) begin
            L_0 = 32'h0;
        end else if (cfg[0] == 1'b1) begin
            case (clk_cnt_all)
                6'h0  : L_0 = B_0_round_0 ^{B_0_round_0 [29:0],B_0_round_0 [31:30]}^{B_0_round_0 [21:0],B_0_round_0 [31:22]}^{B_0_round_0 [13:0],B_0_round_0 [31:14]}^{B_0_round_0 [7:0],B_0_round_0 [31:8]};
                6'h1  : L_0 = B_0_round_2 ^{B_0_round_2 [29:0],B_0_round_2 [31:30]}^{B_0_round_2 [21:0],B_0_round_2 [31:22]}^{B_0_round_2 [13:0],B_0_round_2 [31:14]}^{B_0_round_2 [7:0],B_0_round_2 [31:8]};
                6'h3  : L_0 = B_0_round_4 ^{B_0_round_4 [29:0],B_0_round_4 [31:30]}^{B_0_round_4 [21:0],B_0_round_4 [31:22]}^{B_0_round_4 [13:0],B_0_round_4 [31:14]}^{B_0_round_4 [7:0],B_0_round_4 [31:8]};
                6'h4  : L_0 = B_0_round_6 ^{B_0_round_6 [29:0],B_0_round_6 [31:30]}^{B_0_round_6 [21:0],B_0_round_6 [31:22]}^{B_0_round_6 [13:0],B_0_round_6 [31:14]}^{B_0_round_6 [7:0],B_0_round_6 [31:8]};
                6'h5  : L_0 = B_0_round_8 ^{B_0_round_8 [29:0],B_0_round_8 [31:30]}^{B_0_round_8 [21:0],B_0_round_8 [31:22]}^{B_0_round_8 [13:0],B_0_round_8 [31:14]}^{B_0_round_8 [7:0],B_0_round_8 [31:8]};
                6'h6  : L_0 = B_0_round_10^{B_0_round_10[29:0],B_0_round_10[31:30]}^{B_0_round_10[21:0],B_0_round_10[31:22]}^{B_0_round_10[13:0],B_0_round_10[31:14]}^{B_0_round_10[7:0],B_0_round_10[31:8]};
                6'h7  : L_0 = B_0_round_12^{B_0_round_12[29:0],B_0_round_12[31:30]}^{B_0_round_12[21:0],B_0_round_12[31:22]}^{B_0_round_12[13:0],B_0_round_12[31:14]}^{B_0_round_12[7:0],B_0_round_12[31:8]};
                6'h9  : L_0 = B_0_round_14^{B_0_round_14[29:0],B_0_round_14[31:30]}^{B_0_round_14[21:0],B_0_round_14[31:22]}^{B_0_round_14[13:0],B_0_round_14[31:14]}^{B_0_round_14[7:0],B_0_round_14[31:8]};
                6'ha  : L_0 = B_0_round_16^{B_0_round_16[29:0],B_0_round_16[31:30]}^{B_0_round_16[21:0],B_0_round_16[31:22]}^{B_0_round_16[13:0],B_0_round_16[31:14]}^{B_0_round_16[7:0],B_0_round_16[31:8]};
                6'hb  : L_0 = B_0_round_18^{B_0_round_18[29:0],B_0_round_18[31:30]}^{B_0_round_18[21:0],B_0_round_18[31:22]}^{B_0_round_18[13:0],B_0_round_18[31:14]}^{B_0_round_18[7:0],B_0_round_18[31:8]};
                6'hc  : L_0 = B_0_round_20^{B_0_round_20[29:0],B_0_round_20[31:30]}^{B_0_round_20[21:0],B_0_round_20[31:22]}^{B_0_round_20[13:0],B_0_round_20[31:14]}^{B_0_round_20[7:0],B_0_round_20[31:8]};
                6'he  : L_0 = B_0_round_22^{B_0_round_22[29:0],B_0_round_22[31:30]}^{B_0_round_22[21:0],B_0_round_22[31:22]}^{B_0_round_22[13:0],B_0_round_22[31:14]}^{B_0_round_22[7:0],B_0_round_22[31:8]};
                6'hf  : L_0 = B_0_round_24^{B_0_round_24[29:0],B_0_round_24[31:30]}^{B_0_round_24[21:0],B_0_round_24[31:22]}^{B_0_round_24[13:0],B_0_round_24[31:14]}^{B_0_round_24[7:0],B_0_round_24[31:8]};
                6'h10 : L_0 = B_0_round_26^{B_0_round_26[29:0],B_0_round_26[31:30]}^{B_0_round_26[21:0],B_0_round_26[31:22]}^{B_0_round_26[13:0],B_0_round_26[31:14]}^{B_0_round_26[7:0],B_0_round_26[31:8]};
                6'h11 : L_0 = B_0_round_28^{B_0_round_28[29:0],B_0_round_28[31:30]}^{B_0_round_28[21:0],B_0_round_28[31:22]}^{B_0_round_28[13:0],B_0_round_28[31:14]}^{B_0_round_28[7:0],B_0_round_28[31:8]};
                6'h13 : L_0 = B_0_round_30^{B_0_round_30[29:0],B_0_round_30[31:30]}^{B_0_round_30[21:0],B_0_round_30[31:22]}^{B_0_round_30[13:0],B_0_round_30[31:14]}^{B_0_round_30[7:0],B_0_round_30[31:8]};
            endcase                    
        end else begin
            case (clk_cnt_all)
                6'h14 : L_0 = B_0_round_32^{B_0_round_32[29:0],B_0_round_32[31:30]}^{B_0_round_32[21:0],B_0_round_32[31:22]}^{B_0_round_32[13:0],B_0_round_32[31:14]}^{B_0_round_32[7:0],B_0_round_32[31:8]};
                6'h15 : L_0 = B_0_round_34^{B_0_round_34[29:0],B_0_round_34[31:30]}^{B_0_round_34[21:0],B_0_round_34[31:22]}^{B_0_round_34[13:0],B_0_round_34[31:14]}^{B_0_round_34[7:0],B_0_round_34[31:8]};
                6'h17 : L_0 = B_0_round_36^{B_0_round_36[29:0],B_0_round_36[31:30]}^{B_0_round_36[21:0],B_0_round_36[31:22]}^{B_0_round_36[13:0],B_0_round_36[31:14]}^{B_0_round_36[7:0],B_0_round_36[31:8]};
                6'h18 : L_0 = B_0_round_38^{B_0_round_38[29:0],B_0_round_38[31:30]}^{B_0_round_38[21:0],B_0_round_38[31:22]}^{B_0_round_38[13:0],B_0_round_38[31:14]}^{B_0_round_38[7:0],B_0_round_38[31:8]};
                6'h19 : L_0 = B_0_round_40^{B_0_round_40[29:0],B_0_round_40[31:30]}^{B_0_round_40[21:0],B_0_round_40[31:22]}^{B_0_round_40[13:0],B_0_round_40[31:14]}^{B_0_round_40[7:0],B_0_round_40[31:8]};
                6'h1a : L_0 = B_0_round_42^{B_0_round_42[29:0],B_0_round_42[31:30]}^{B_0_round_42[21:0],B_0_round_42[31:22]}^{B_0_round_42[13:0],B_0_round_42[31:14]}^{B_0_round_42[7:0],B_0_round_42[31:8]};
                6'h1b : L_0 = B_0_round_44^{B_0_round_44[29:0],B_0_round_44[31:30]}^{B_0_round_44[21:0],B_0_round_44[31:22]}^{B_0_round_44[13:0],B_0_round_44[31:14]}^{B_0_round_44[7:0],B_0_round_44[31:8]};
                6'h1d : L_0 = B_0_round_46^{B_0_round_46[29:0],B_0_round_46[31:30]}^{B_0_round_46[21:0],B_0_round_46[31:22]}^{B_0_round_46[13:0],B_0_round_46[31:14]}^{B_0_round_46[7:0],B_0_round_46[31:8]};
                6'h1e : L_0 = B_0_round_48^{B_0_round_48[29:0],B_0_round_48[31:30]}^{B_0_round_48[21:0],B_0_round_48[31:22]}^{B_0_round_48[13:0],B_0_round_48[31:14]}^{B_0_round_48[7:0],B_0_round_48[31:8]};
                6'h1f : L_0 = B_0_round_50^{B_0_round_50[29:0],B_0_round_50[31:30]}^{B_0_round_50[21:0],B_0_round_50[31:22]}^{B_0_round_50[13:0],B_0_round_50[31:14]}^{B_0_round_50[7:0],B_0_round_50[31:8]};
                6'h20 : L_0 = B_0_round_52^{B_0_round_52[29:0],B_0_round_52[31:30]}^{B_0_round_52[21:0],B_0_round_52[31:22]}^{B_0_round_52[13:0],B_0_round_52[31:14]}^{B_0_round_52[7:0],B_0_round_52[31:8]};
                6'h22 : L_0 = B_0_round_54^{B_0_round_54[29:0],B_0_round_54[31:30]}^{B_0_round_54[21:0],B_0_round_54[31:22]}^{B_0_round_54[13:0],B_0_round_54[31:14]}^{B_0_round_54[7:0],B_0_round_54[31:8]};
                6'h23 : L_0 = B_0_round_56^{B_0_round_56[29:0],B_0_round_56[31:30]}^{B_0_round_56[21:0],B_0_round_56[31:22]}^{B_0_round_56[13:0],B_0_round_56[31:14]}^{B_0_round_56[7:0],B_0_round_56[31:8]};
                6'h24 : L_0 = B_0_round_58^{B_0_round_58[29:0],B_0_round_58[31:30]}^{B_0_round_58[21:0],B_0_round_58[31:22]}^{B_0_round_58[13:0],B_0_round_58[31:14]}^{B_0_round_58[7:0],B_0_round_58[31:8]};
                6'h25 : L_0 = B_0_round_60^{B_0_round_60[29:0],B_0_round_60[31:30]}^{B_0_round_60[21:0],B_0_round_60[31:22]}^{B_0_round_60[13:0],B_0_round_60[31:14]}^{B_0_round_60[7:0],B_0_round_60[31:8]};
                6'h27 : L_0 = B_0_round_62^{B_0_round_62[29:0],B_0_round_62[31:30]}^{B_0_round_62[21:0],B_0_round_62[31:22]}^{B_0_round_62[13:0],B_0_round_62[31:14]}^{B_0_round_62[7:0],B_0_round_62[31:8]};
            endcase                    
        end
    end

    always @(*) begin
        if (!rstn) begin
            rd_0 = 32'h0;
        end else if (cfg[0] == 1'b1) begin
            case (clk_cnt_all)
                6'h0    : rd_0 = d3_0 ^ L_0;
                6'h1    : rd_0 = d1_0 ^ L_0;
                6'h3    : rd_0 = rd_round_0 ^ L_0;
                6'h4    : rd_0 = rd_round_2  ^ L_0;
                6'h5    : rd_0 = rd_round_4  ^ L_0;
                6'h6    : rd_0 = rd_round_6  ^ L_0;
                6'h7    : rd_0 = rd_round_8  ^ L_0;
                6'h9    : rd_0 = rd_round_10 ^ L_0;
                6'ha    : rd_0 = rd_round_12 ^ L_0;
                6'hb    : rd_0 = rd_round_14 ^ L_0;
                6'hc    : rd_0 = rd_round_16 ^ L_0;
                6'he    : rd_0 = rd_round_18 ^ L_0;
                6'hf    : rd_0 = rd_round_20 ^ L_0;
                6'h10   : rd_0 = rd_round_22 ^ L_0;
                6'h11   : rd_0 = rd_round_24 ^ L_0;
                6'h13   : rd_0 = rd_round_26 ^ L_0;
                default : rd_0 = 32'h0;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h14   : rd_0 = d3_0 ^ L_0;
                6'h15   : rd_0 = d1_0 ^ L_0;
                6'h17   : rd_0 = rd_round_0 ^ L_0;
                6'h18   : rd_0 = rd_round_2  ^ L_0;
                6'h19   : rd_0 = rd_round_4  ^ L_0;
                6'h1a   : rd_0 = rd_round_6  ^ L_0;
                6'h1b   : rd_0 = rd_round_8  ^ L_0;
                6'h1d   : rd_0 = rd_round_10 ^ L_0;
                6'h1e   : rd_0 = rd_round_12 ^ L_0;
                6'h1f   : rd_0 = rd_round_14 ^ L_0;
                6'h20   : rd_0 = rd_round_16 ^ L_0;
                6'h22   : rd_0 = rd_round_18 ^ L_0;
                6'h23   : rd_0 = rd_round_20 ^ L_0;
                6'h24   : rd_0 = rd_round_22 ^ L_0;
                6'h25   : rd_0 = rd_round_24 ^ L_0;
                6'h27   : rd_0 = rd_round_26 ^ L_0;
                default : rd_0 = 32'h0;
            endcase
        end
    end
                
    always @(*) begin
        if (!rstn) begin
            A_1 = 32'h0;
        end else if (cfg[0] == 1'b1) begin
            case (clk_cnt_all)
                6'h0    : A_1 = d1_0^d0_0^rd_round_0^rk_round_1;
                6'h1    : A_1 = d1_0^d0_0^rd_round_0^rk_round_1;
                6'h2    : A_1 = rd_round_0 ^rd_round_1 ^rd_round_2 ^rk_round_3;
                6'h3    : A_1 = rd_round_2 ^rd_round_3 ^rd_round_4 ^rk_round_5;
                6'h4    : A_1 = rd_round_4 ^rd_round_5 ^rd_round_6 ^rk_round_7;
                6'h5    : A_1 = rd_round_6 ^rd_round_7 ^rd_round_8 ^rk_round_9;
                6'h6    : A_1 = rd_round_6 ^rd_round_7 ^rd_round_8 ^rk_round_9;
                6'h7    : A_1 = rd_round_8 ^rd_round_9 ^rd_round_10^rk_round_11;
                6'h8    : A_1 = rd_round_10^rd_round_11^rd_round_12^rk_round_13;
                6'h9    : A_1 = rd_round_12^rd_round_13^rd_round_14^rk_round_15;
                6'ha    : A_1 = rd_round_14^rd_round_15^rd_round_16^rk_round_17;
                6'hb    : A_1 = rd_round_14^rd_round_15^rd_round_16^rk_round_17;
                6'hc    : A_1 = rd_round_16^rd_round_17^rd_round_18^rk_round_19;
                6'hd    : A_1 = rd_round_18^rd_round_19^rd_round_20^rk_round_21;
                6'he    : A_1 = rd_round_20^rd_round_21^rd_round_22^rk_round_23;
                6'hf    : A_1 = rd_round_22^rd_round_23^rd_round_24^rk_round_25;
                6'h10   : A_1 = rd_round_24^rd_round_25^rd_round_26^rk_round_27;
                6'h11   : A_1 = rd_round_24^rd_round_25^rd_round_26^rk_round_27;
                6'h12   : A_1 = rd_round_26^rd_round_27^rd_round_28^rk_round_29;
                6'h13   : A_1 = rd_round_28^rd_round_29^rd_round_30^rk_round_31;
                default : A_1 = 32'h0;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h14   : A_1 = d1_0^d0_0^rd_round_0^rk_round_30;
                6'h15   : A_1 = d1_0^d0_0^rd_round_0^rk_round_30;
                6'h16   : A_1 = rd_round_0 ^rd_round_1 ^rd_round_2 ^rk_round_28;
                6'h17   : A_1 = rd_round_2 ^rd_round_3 ^rd_round_4 ^rk_round_26;
                6'h18   : A_1 = rd_round_4 ^rd_round_5 ^rd_round_6 ^rk_round_24;
                6'h19   : A_1 = rd_round_6 ^rd_round_7 ^rd_round_8 ^rk_round_22;
                6'h1a   : A_1 = rd_round_6 ^rd_round_7 ^rd_round_8 ^rk_round_22;
                6'h1b   : A_1 = rd_round_8 ^rd_round_9 ^rd_round_10^rk_round_20;
                6'h1c   : A_1 = rd_round_10^rd_round_11^rd_round_12^rk_round_18;
                6'h1d   : A_1 = rd_round_12^rd_round_13^rd_round_14^rk_round_16;
                6'h1e   : A_1 = rd_round_14^rd_round_15^rd_round_16^rk_round_14;
                6'h1f   : A_1 = rd_round_14^rd_round_15^rd_round_16^rk_round_14;
                6'h20   : A_1 = rd_round_16^rd_round_17^rd_round_18^rk_round_12;
                6'h21   : A_1 = rd_round_18^rd_round_19^rd_round_20^rk_round_10;
                6'h22   : A_1 = rd_round_20^rd_round_21^rd_round_22^rk_round_8 ;
                6'h23   : A_1 = rd_round_22^rd_round_23^rd_round_24^rk_round_6 ;
                6'h24   : A_1 = rd_round_24^rd_round_25^rd_round_26^rk_round_4 ;
                6'h25   : A_1 = rd_round_24^rd_round_25^rd_round_26^rk_round_4 ;
                6'h26   : A_1 = rd_round_26^rd_round_27^rd_round_28^rk_round_2 ;
                6'h27   : A_1 = rd_round_28^rd_round_29^rd_round_30^rk_round_0 ;
                default : A_1 = 32'h0;
            endcase
        end
    end
    always @(*) begin
        if (!rstn) begin
            L_1 = 32'h0;
        end else if (cfg[0] == 1'b1) begin
            case (clk_cnt_all)
                6'h1  : L_1 = B_1_round_1 ^{B_1_round_1 [29:0],B_1_round_1 [31:30]}^{B_1_round_1 [21:0],B_1_round_1 [31:22]}^{B_1_round_1 [13:0],B_1_round_1 [31:14]}^{B_1_round_1 [7:0],B_1_round_1 [31:8]};
                6'h2  : L_1 = B_1_round_3 ^{B_1_round_3 [29:0],B_1_round_3 [31:30]}^{B_1_round_3 [21:0],B_1_round_3 [31:22]}^{B_1_round_3 [13:0],B_1_round_3 [31:14]}^{B_1_round_3 [7:0],B_1_round_3 [31:8]};
                6'h3  : L_1 = B_1_round_5 ^{B_1_round_5 [29:0],B_1_round_5 [31:30]}^{B_1_round_5 [21:0],B_1_round_5 [31:22]}^{B_1_round_5 [13:0],B_1_round_5 [31:14]}^{B_1_round_5 [7:0],B_1_round_5 [31:8]};
                6'h4  : L_1 = B_1_round_7 ^{B_1_round_7 [29:0],B_1_round_7 [31:30]}^{B_1_round_7 [21:0],B_1_round_7 [31:22]}^{B_1_round_7 [13:0],B_1_round_7 [31:14]}^{B_1_round_7 [7:0],B_1_round_7 [31:8]};
                6'h6  : L_1 = B_1_round_9 ^{B_1_round_9 [29:0],B_1_round_9 [31:30]}^{B_1_round_9 [21:0],B_1_round_9 [31:22]}^{B_1_round_9 [13:0],B_1_round_9 [31:14]}^{B_1_round_9 [7:0],B_1_round_9 [31:8]};
                6'h7  : L_1 = B_1_round_11^{B_1_round_11[29:0],B_1_round_11[31:30]}^{B_1_round_11[21:0],B_1_round_11[31:22]}^{B_1_round_11[13:0],B_1_round_11[31:14]}^{B_1_round_11[7:0],B_1_round_11[31:8]};
                6'h8  : L_1 = B_1_round_13^{B_1_round_13[29:0],B_1_round_13[31:30]}^{B_1_round_13[21:0],B_1_round_13[31:22]}^{B_1_round_13[13:0],B_1_round_13[31:14]}^{B_1_round_13[7:0],B_1_round_13[31:8]};
                6'h9  : L_1 = B_1_round_15^{B_1_round_15[29:0],B_1_round_15[31:30]}^{B_1_round_15[21:0],B_1_round_15[31:22]}^{B_1_round_15[13:0],B_1_round_15[31:14]}^{B_1_round_15[7:0],B_1_round_15[31:8]};
                6'hb  : L_1 = B_1_round_17^{B_1_round_17[29:0],B_1_round_17[31:30]}^{B_1_round_17[21:0],B_1_round_17[31:22]}^{B_1_round_17[13:0],B_1_round_17[31:14]}^{B_1_round_17[7:0],B_1_round_17[31:8]};
                6'hc  : L_1 = B_1_round_19^{B_1_round_19[29:0],B_1_round_19[31:30]}^{B_1_round_19[21:0],B_1_round_19[31:22]}^{B_1_round_19[13:0],B_1_round_19[31:14]}^{B_1_round_19[7:0],B_1_round_19[31:8]};
                6'hd  : L_1 = B_1_round_21^{B_1_round_21[29:0],B_1_round_21[31:30]}^{B_1_round_21[21:0],B_1_round_21[31:22]}^{B_1_round_21[13:0],B_1_round_21[31:14]}^{B_1_round_21[7:0],B_1_round_21[31:8]};
                6'he  : L_1 = B_1_round_23^{B_1_round_23[29:0],B_1_round_23[31:30]}^{B_1_round_23[21:0],B_1_round_23[31:22]}^{B_1_round_23[13:0],B_1_round_23[31:14]}^{B_1_round_23[7:0],B_1_round_23[31:8]};
                6'hf  : L_1 = B_1_round_25^{B_1_round_25[29:0],B_1_round_25[31:30]}^{B_1_round_25[21:0],B_1_round_25[31:22]}^{B_1_round_25[13:0],B_1_round_25[31:14]}^{B_1_round_25[7:0],B_1_round_25[31:8]};
                6'h11 : L_1 = B_1_round_27^{B_1_round_27[29:0],B_1_round_27[31:30]}^{B_1_round_27[21:0],B_1_round_27[31:22]}^{B_1_round_27[13:0],B_1_round_27[31:14]}^{B_1_round_27[7:0],B_1_round_27[31:8]};
                6'h12 : L_1 = B_1_round_29^{B_1_round_29[29:0],B_1_round_29[31:30]}^{B_1_round_29[21:0],B_1_round_29[31:22]}^{B_1_round_29[13:0],B_1_round_29[31:14]}^{B_1_round_29[7:0],B_1_round_29[31:8]};
                6'h13 : L_1 = B_1_round_31^{B_1_round_31[29:0],B_1_round_31[31:30]}^{B_1_round_31[21:0],B_1_round_31[31:22]}^{B_1_round_31[13:0],B_1_round_31[31:14]}^{B_1_round_31[7:0],B_1_round_31[31:8]};
            endcase
        end else begin
            case (clk_cnt_all)
                6'h15 : L_1 = B_1_round_33^{B_1_round_33[29:0],B_1_round_33[31:30]}^{B_1_round_33[21:0],B_1_round_33[31:22]}^{B_1_round_33[13:0],B_1_round_33[31:14]}^{B_1_round_33[7:0],B_1_round_33[31:8]};
                6'h16 : L_1 = B_1_round_35^{B_1_round_35[29:0],B_1_round_35[31:30]}^{B_1_round_35[21:0],B_1_round_35[31:22]}^{B_1_round_35[13:0],B_1_round_35[31:14]}^{B_1_round_35[7:0],B_1_round_35[31:8]};
                6'h17 : L_1 = B_1_round_37^{B_1_round_37[29:0],B_1_round_37[31:30]}^{B_1_round_37[21:0],B_1_round_37[31:22]}^{B_1_round_37[13:0],B_1_round_37[31:14]}^{B_1_round_37[7:0],B_1_round_37[31:8]};
                6'h18 : L_1 = B_1_round_39^{B_1_round_39[29:0],B_1_round_39[31:30]}^{B_1_round_39[21:0],B_1_round_39[31:22]}^{B_1_round_39[13:0],B_1_round_39[31:14]}^{B_1_round_39[7:0],B_1_round_39[31:8]};
                6'h1a : L_1 = B_1_round_41^{B_1_round_41[29:0],B_1_round_41[31:30]}^{B_1_round_41[21:0],B_1_round_41[31:22]}^{B_1_round_41[13:0],B_1_round_41[31:14]}^{B_1_round_41[7:0],B_1_round_41[31:8]};
                6'h1b : L_1 = B_1_round_43^{B_1_round_43[29:0],B_1_round_43[31:30]}^{B_1_round_43[21:0],B_1_round_43[31:22]}^{B_1_round_43[13:0],B_1_round_43[31:14]}^{B_1_round_43[7:0],B_1_round_43[31:8]};
                6'h1c : L_1 = B_1_round_45^{B_1_round_45[29:0],B_1_round_45[31:30]}^{B_1_round_45[21:0],B_1_round_45[31:22]}^{B_1_round_45[13:0],B_1_round_45[31:14]}^{B_1_round_45[7:0],B_1_round_45[31:8]};
                6'h1d : L_1 = B_1_round_47^{B_1_round_47[29:0],B_1_round_47[31:30]}^{B_1_round_47[21:0],B_1_round_47[31:22]}^{B_1_round_47[13:0],B_1_round_47[31:14]}^{B_1_round_47[7:0],B_1_round_47[31:8]};
                6'h1f : L_1 = B_1_round_49^{B_1_round_49[29:0],B_1_round_49[31:30]}^{B_1_round_49[21:0],B_1_round_49[31:22]}^{B_1_round_49[13:0],B_1_round_49[31:14]}^{B_1_round_49[7:0],B_1_round_49[31:8]};
                6'h20 : L_1 = B_1_round_51^{B_1_round_51[29:0],B_1_round_51[31:30]}^{B_1_round_51[21:0],B_1_round_51[31:22]}^{B_1_round_51[13:0],B_1_round_51[31:14]}^{B_1_round_51[7:0],B_1_round_51[31:8]};
                6'h21 : L_1 = B_1_round_53^{B_1_round_53[29:0],B_1_round_53[31:30]}^{B_1_round_53[21:0],B_1_round_53[31:22]}^{B_1_round_53[13:0],B_1_round_53[31:14]}^{B_1_round_53[7:0],B_1_round_53[31:8]};
                6'h22 : L_1 = B_1_round_55^{B_1_round_55[29:0],B_1_round_55[31:30]}^{B_1_round_55[21:0],B_1_round_55[31:22]}^{B_1_round_55[13:0],B_1_round_55[31:14]}^{B_1_round_55[7:0],B_1_round_55[31:8]};
                6'h23 : L_1 = B_1_round_57^{B_1_round_57[29:0],B_1_round_57[31:30]}^{B_1_round_57[21:0],B_1_round_57[31:22]}^{B_1_round_57[13:0],B_1_round_57[31:14]}^{B_1_round_57[7:0],B_1_round_57[31:8]};
                6'h25 : L_1 = B_1_round_59^{B_1_round_59[29:0],B_1_round_59[31:30]}^{B_1_round_59[21:0],B_1_round_59[31:22]}^{B_1_round_59[13:0],B_1_round_59[31:14]}^{B_1_round_59[7:0],B_1_round_59[31:8]};
                6'h26 : L_1 = B_1_round_61^{B_1_round_61[29:0],B_1_round_61[31:30]}^{B_1_round_61[21:0],B_1_round_61[31:22]}^{B_1_round_61[13:0],B_1_round_61[31:14]}^{B_1_round_61[7:0],B_1_round_61[31:8]};
                6'h27 : L_1 = B_1_round_63^{B_1_round_63[29:0],B_1_round_63[31:30]}^{B_1_round_63[21:0],B_1_round_63[31:22]}^{B_1_round_63[13:0],B_1_round_63[31:14]}^{B_1_round_63[7:0],B_1_round_63[31:8]};
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            rd_1 = 32'h0;
        end else if (cfg[0] == 1'b1) begin
            case (clk_cnt_all)
                6'h1    : rd_1 = d2_0 ^ L_1;
                6'h2    : rd_1 = d0_0 ^ L_1;
                6'h3    : rd_1 = rd_round_1 ^L_1;
                6'h4    : rd_1 = rd_round_3 ^L_1;
                6'h6    : rd_1 = rd_round_5 ^L_1;
                6'h7    : rd_1 = rd_round_7 ^L_1;
                6'h8    : rd_1 = rd_round_9 ^L_1;
                6'h9    : rd_1 = rd_round_11^L_1;
                6'hb    : rd_1 = rd_round_13^L_1;
                6'hc    : rd_1 = rd_round_15^L_1;
                6'hd    : rd_1 = rd_round_17^L_1;
                6'he    : rd_1 = rd_round_19^L_1;
                6'hf    : rd_1 = rd_round_21^L_1;
                6'h11   : rd_1 = rd_round_23^L_1;
                6'h12   : rd_1 = rd_round_25^L_1;
                6'h13   : rd_1 = rd_round_27^L_1;
                default : rd_1 = 32'h0;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h15   : rd_1 = d2_0 ^ L_1;
                6'h16   : rd_1 = d0_0 ^ L_1;
                6'h17   : rd_1 = rd_round_1 ^L_1;
                6'h18   : rd_1 = rd_round_3 ^L_1;
                6'h1a   : rd_1 = rd_round_5 ^L_1;
                6'h1b   : rd_1 = rd_round_7 ^L_1;
                6'h1c   : rd_1 = rd_round_9 ^L_1;
                6'h1d   : rd_1 = rd_round_11^L_1;
                6'h1f   : rd_1 = rd_round_13^L_1;
                6'h20   : rd_1 = rd_round_15^L_1;
                6'h21   : rd_1 = rd_round_17^L_1;
                6'h22   : rd_1 = rd_round_19^L_1;
                6'h23   : rd_1 = rd_round_21^L_1;
                6'h25   : rd_1 = rd_round_23^L_1;
                6'h26   : rd_1 = rd_round_25^L_1;
                6'h27   : rd_1 = rd_round_27^L_1;
                default : rd_1 = 32'h0;
            endcase
        end
    end

    //////// aes block

    always @(*) begin
        if (!rstn) begin
            sbox_kout_aes_128_clk_0  = 8'h0;
            sbox_kout_aes_128_clk_1  = 8'h0;
            sbox_kout_aes_128_clk_2  = 8'h0;
            sbox_kout_aes_128_clk_3  = 8'h0;
            sbox_kout_aes_128_clk_4  = 8'h0;
            sbox_kout_aes_128_clk_5  = 8'h0;
            sbox_kout_aes_128_clk_6  = 8'h0;
            sbox_kout_aes_128_clk_7  = 8'h0;
            sbox_kout_aes_128_clk_8  = 8'h0;
            sbox_kout_aes_128_clk_9  = 8'h0;
            sbox_kout_aes_128_clk_a  = 8'h0;
            sbox_kout_aes_128_clk_b  = 8'h0;
            sbox_kout_aes_128_clk_c  = 8'h0;
            sbox_kout_aes_128_clk_d  = 8'h0;
            sbox_kout_aes_128_clk_e  = 8'h0;
            sbox_kout_aes_128_clk_f  = 8'h0;
            sbox_kout_aes_128_clk_10 = 8'h0;
            sbox_kout_aes_128_clk_11 = 8'h0;
            sbox_kout_aes_128_clk_12 = 8'h0;
            sbox_kout_aes_128_clk_13 = 8'h0;
            sbox_kout_aes_128_clk_14 = 8'h0;
            sbox_kout_aes_128_clk_15 = 8'h0;
            sbox_kout_aes_128_clk_16 = 8'h0;
            sbox_kout_aes_128_clk_17 = 8'h0;
            sbox_kout_aes_128_clk_18 = 8'h0;
            sbox_kout_aes_128_clk_19 = 8'h0;
            sbox_kout_aes_128_clk_1a = 8'h0;
            sbox_kout_aes_128_clk_1b = 8'h0;
            sbox_kout_aes_128_clk_1c = 8'h0;
            sbox_kout_aes_128_clk_1d = 8'h0;
            sbox_kout_aes_128_clk_1e = 8'h0;
            sbox_kout_aes_128_clk_1f = 8'h0;
            sbox_kout_aes_128_clk_20 = 8'h0;
            sbox_kout_aes_128_clk_21 = 8'h0;
            sbox_kout_aes_128_clk_22 = 8'h0;
            sbox_kout_aes_128_clk_23 = 8'h0;
            sbox_kout_aes_128_clk_24 = 8'h0;
            sbox_kout_aes_128_clk_25 = 8'h0;
            sbox_kout_aes_128_clk_26 = 8'h0;
            sbox_kout_aes_128_clk_27 = 8'h0;
            sbox_dout_aes_128_clk_0  = 8'h0;
            sbox_dout_aes_128_clk_1  = 8'h0;
            sbox_dout_aes_128_clk_2  = 8'h0;
            sbox_dout_aes_128_clk_3  = 8'h0;
            sbox_dout_aes_128_clk_4  = 8'h0;
            sbox_dout_aes_128_clk_5  = 8'h0;
            sbox_dout_aes_128_clk_6  = 8'h0;
            sbox_dout_aes_128_clk_7  = 8'h0;
            sbox_dout_aes_128_clk_8  = 8'h0;
            sbox_dout_aes_128_clk_9  = 8'h0;
            sbox_dout_aes_128_clk_a  = 8'h0;
            sbox_dout_aes_128_clk_b  = 8'h0;
            sbox_dout_aes_128_clk_c  = 8'h0;
            sbox_dout_aes_128_clk_d  = 8'h0;
            sbox_dout_aes_128_clk_e  = 8'h0;
            sbox_dout_aes_128_clk_f  = 8'h0;
            sbox_dout_aes_128_clk_10 = 8'h0;
            sbox_dout_aes_128_clk_11 = 8'h0;
            sbox_dout_aes_128_clk_12 = 8'h0;
            sbox_dout_aes_128_clk_13 = 8'h0;
            sbox_dout_aes_128_clk_14 = 8'h0;
            sbox_dout_aes_128_clk_15 = 8'h0;
            sbox_dout_aes_128_clk_16 = 8'h0;
            sbox_dout_aes_128_clk_17 = 8'h0;
            sbox_dout_aes_128_clk_18 = 8'h0;
            sbox_dout_aes_128_clk_19 = 8'h0;
            sbox_dout_aes_128_clk_1a = 8'h0;
            sbox_dout_aes_128_clk_1b = 8'h0;
            sbox_dout_aes_128_clk_1c = 8'h0;
            sbox_dout_aes_128_clk_1d = 8'h0;
            sbox_dout_aes_128_clk_1e = 8'h0;
            sbox_dout_aes_128_clk_1f = 8'h0;
            sbox_dout_aes_128_clk_20 = 8'h0;
            sbox_dout_aes_128_clk_21 = 8'h0;
            sbox_dout_aes_128_clk_22 = 8'h0;
            sbox_dout_aes_128_clk_23 = 8'h0;
            sbox_dout_aes_128_clk_24 = 8'h0;
            sbox_dout_aes_128_clk_25 = 8'h0;
            sbox_dout_aes_128_clk_26 = 8'h0;
            sbox_dout_aes_128_clk_27 = 8'h0;
                                     
            sbox_kout_aes_192_clk_0  = 8'h0;
            sbox_kout_aes_192_clk_1  = 8'h0;
            sbox_kout_aes_192_clk_2  = 8'h0;
            sbox_kout_aes_192_clk_3  = 8'h0;
            sbox_kout_aes_192_clk_4  = 8'h0;
            sbox_kout_aes_192_clk_5  = 8'h0;
            sbox_kout_aes_192_clk_6  = 8'h0;
            sbox_kout_aes_192_clk_7  = 8'h0;
            sbox_kout_aes_192_clk_8  = 8'h0;
            sbox_kout_aes_192_clk_9  = 8'h0;
            sbox_kout_aes_192_clk_a  = 8'h0;
            sbox_kout_aes_192_clk_b  = 8'h0;
            sbox_kout_aes_192_clk_c  = 8'h0;
            sbox_kout_aes_192_clk_d  = 8'h0;
            sbox_kout_aes_192_clk_e  = 8'h0;
            sbox_kout_aes_192_clk_f  = 8'h0;
            sbox_kout_aes_192_clk_10 = 8'h0;
            sbox_kout_aes_192_clk_11 = 8'h0;
            sbox_kout_aes_192_clk_12 = 8'h0;
            sbox_kout_aes_192_clk_13 = 8'h0;
            sbox_kout_aes_192_clk_14 = 8'h0;
            sbox_kout_aes_192_clk_15 = 8'h0;
            sbox_kout_aes_192_clk_16 = 8'h0;
            sbox_kout_aes_192_clk_17 = 8'h0;
            sbox_kout_aes_192_clk_18 = 8'h0;
            sbox_kout_aes_192_clk_19 = 8'h0;
            sbox_kout_aes_192_clk_1a = 8'h0;
            sbox_kout_aes_192_clk_1b = 8'h0;
            sbox_kout_aes_192_clk_1c = 8'h0;
            sbox_kout_aes_192_clk_1d = 8'h0;
            sbox_kout_aes_192_clk_1e = 8'h0;
            sbox_kout_aes_192_clk_1f = 8'h0;
            sbox_kout_aes_192_clk_20 = 8'h0;
            sbox_kout_aes_192_clk_21 = 8'h0;
            sbox_kout_aes_192_clk_22 = 8'h0;
            sbox_kout_aes_192_clk_23 = 8'h0;
            sbox_kout_aes_192_clk_24 = 8'h0;
            sbox_kout_aes_192_clk_25 = 8'h0;
            sbox_kout_aes_192_clk_26 = 8'h0;
            sbox_kout_aes_192_clk_27 = 8'h0;
            sbox_dout_aes_192_clk_0  = 8'h0;
            sbox_dout_aes_192_clk_1  = 8'h0;
            sbox_dout_aes_192_clk_2  = 8'h0;
            sbox_dout_aes_192_clk_3  = 8'h0;
            sbox_dout_aes_192_clk_4  = 8'h0;
            sbox_dout_aes_192_clk_5  = 8'h0;
            sbox_dout_aes_192_clk_6  = 8'h0;
            sbox_dout_aes_192_clk_7  = 8'h0;
            sbox_dout_aes_192_clk_8  = 8'h0;
            sbox_dout_aes_192_clk_9  = 8'h0;
            sbox_dout_aes_192_clk_a  = 8'h0;
            sbox_dout_aes_192_clk_b  = 8'h0;
            sbox_dout_aes_192_clk_c  = 8'h0;
            sbox_dout_aes_192_clk_d  = 8'h0;
            sbox_dout_aes_192_clk_e  = 8'h0;
            sbox_dout_aes_192_clk_f  = 8'h0;
            sbox_dout_aes_192_clk_10 = 8'h0;
            sbox_dout_aes_192_clk_11 = 8'h0;
            sbox_dout_aes_192_clk_12 = 8'h0;
            sbox_dout_aes_192_clk_13 = 8'h0;
            sbox_dout_aes_192_clk_14 = 8'h0;
            sbox_dout_aes_192_clk_15 = 8'h0;
            sbox_dout_aes_192_clk_16 = 8'h0;
            sbox_dout_aes_192_clk_17 = 8'h0;
            sbox_dout_aes_192_clk_18 = 8'h0;
            sbox_dout_aes_192_clk_19 = 8'h0;
            sbox_dout_aes_192_clk_1a = 8'h0;
            sbox_dout_aes_192_clk_1b = 8'h0;
            sbox_dout_aes_192_clk_1c = 8'h0;
            sbox_dout_aes_192_clk_1d = 8'h0;
            sbox_dout_aes_192_clk_1e = 8'h0;
            sbox_dout_aes_192_clk_1f = 8'h0;
            sbox_dout_aes_192_clk_20 = 8'h0;
            sbox_dout_aes_192_clk_21 = 8'h0;
            sbox_dout_aes_192_clk_22 = 8'h0;
            sbox_dout_aes_192_clk_23 = 8'h0;
            sbox_dout_aes_192_clk_24 = 8'h0;
            sbox_dout_aes_192_clk_25 = 8'h0;
            sbox_dout_aes_192_clk_26 = 8'h0;
            sbox_dout_aes_192_clk_27 = 8'h0;
                                    
            sbox_kout_aes_256_clk_0  = 8'h0;
            sbox_kout_aes_256_clk_1  = 8'h0;
            sbox_kout_aes_256_clk_2  = 8'h0;
            sbox_kout_aes_256_clk_3  = 8'h0;
            sbox_kout_aes_256_clk_4  = 8'h0;
            sbox_kout_aes_256_clk_5  = 8'h0;
            sbox_kout_aes_256_clk_6  = 8'h0;
            sbox_kout_aes_256_clk_7  = 8'h0;
            sbox_kout_aes_256_clk_8  = 8'h0;
            sbox_kout_aes_256_clk_9  = 8'h0;
            sbox_kout_aes_256_clk_a  = 8'h0;
            sbox_kout_aes_256_clk_b  = 8'h0;
            sbox_kout_aes_256_clk_c  = 8'h0;
            sbox_kout_aes_256_clk_d  = 8'h0;
            sbox_kout_aes_256_clk_e  = 8'h0;
            sbox_kout_aes_256_clk_f  = 8'h0;
            sbox_kout_aes_256_clk_10 = 8'h0;
            sbox_kout_aes_256_clk_11 = 8'h0;
            sbox_kout_aes_256_clk_12 = 8'h0;
            sbox_kout_aes_256_clk_13 = 8'h0;
            sbox_kout_aes_256_clk_14 = 8'h0;
            sbox_kout_aes_256_clk_15 = 8'h0;
            sbox_kout_aes_256_clk_16 = 8'h0;
            sbox_kout_aes_256_clk_17 = 8'h0;
            sbox_kout_aes_256_clk_18 = 8'h0;
            sbox_kout_aes_256_clk_19 = 8'h0;
            sbox_kout_aes_256_clk_1a = 8'h0;
            sbox_kout_aes_256_clk_1b = 8'h0;
            sbox_kout_aes_256_clk_1c = 8'h0;
            sbox_kout_aes_256_clk_1d = 8'h0;
            sbox_kout_aes_256_clk_1e = 8'h0;
            sbox_kout_aes_256_clk_1f = 8'h0;
            sbox_kout_aes_256_clk_20 = 8'h0;
            sbox_kout_aes_256_clk_21 = 8'h0;
            sbox_kout_aes_256_clk_22 = 8'h0;
            sbox_kout_aes_256_clk_23 = 8'h0;
            sbox_kout_aes_256_clk_24 = 8'h0;
            sbox_kout_aes_256_clk_25 = 8'h0;
            sbox_kout_aes_256_clk_26 = 8'h0;
            sbox_kout_aes_256_clk_27 = 8'h0;
            sbox_dout_aes_256_clk_0  = 8'h0;
            sbox_dout_aes_256_clk_1  = 8'h0;
            sbox_dout_aes_256_clk_2  = 8'h0;
            sbox_dout_aes_256_clk_3  = 8'h0;
            sbox_dout_aes_256_clk_4  = 8'h0;
            sbox_dout_aes_256_clk_5  = 8'h0;
            sbox_dout_aes_256_clk_6  = 8'h0;
            sbox_dout_aes_256_clk_7  = 8'h0;
            sbox_dout_aes_256_clk_8  = 8'h0;
            sbox_dout_aes_256_clk_9  = 8'h0;
            sbox_dout_aes_256_clk_a  = 8'h0;
            sbox_dout_aes_256_clk_b  = 8'h0;
            sbox_dout_aes_256_clk_c  = 8'h0;
            sbox_dout_aes_256_clk_d  = 8'h0;
            sbox_dout_aes_256_clk_e  = 8'h0;
            sbox_dout_aes_256_clk_f  = 8'h0;
            sbox_dout_aes_256_clk_10 = 8'h0;
            sbox_dout_aes_256_clk_11 = 8'h0;
            sbox_dout_aes_256_clk_12 = 8'h0;
            sbox_dout_aes_256_clk_13 = 8'h0;
            sbox_dout_aes_256_clk_14 = 8'h0;
            sbox_dout_aes_256_clk_15 = 8'h0;
            sbox_dout_aes_256_clk_16 = 8'h0;
            sbox_dout_aes_256_clk_17 = 8'h0;
            sbox_dout_aes_256_clk_18 = 8'h0;
            sbox_dout_aes_256_clk_19 = 8'h0;
            sbox_dout_aes_256_clk_1a = 8'h0;
            sbox_dout_aes_256_clk_1b = 8'h0;
            sbox_dout_aes_256_clk_1c = 8'h0;
            sbox_dout_aes_256_clk_1d = 8'h0;
            sbox_dout_aes_256_clk_1e = 8'h0;
            sbox_dout_aes_256_clk_1f = 8'h0;
            sbox_dout_aes_256_clk_20 = 8'h0;
            sbox_dout_aes_256_clk_21 = 8'h0;
            sbox_dout_aes_256_clk_22 = 8'h0;
            sbox_dout_aes_256_clk_23 = 8'h0;
            sbox_dout_aes_256_clk_24 = 8'h0;
            sbox_dout_aes_256_clk_25 = 8'h0;
            sbox_dout_aes_256_clk_26 = 8'h0;
            sbox_dout_aes_256_clk_27 = 8'h0;
            BK_0_round_0  = 32'h0;
            BK_0_round_2  = 32'h0;
            BK_0_round_4  = 32'h0;
            BK_0_round_6  = 32'h0;
            BK_0_round_8  = 32'h0;
            BK_0_round_10 = 32'h0;
            BK_0_round_12 = 32'h0;
            BK_0_round_14 = 32'h0;
            BK_0_round_16 = 32'h0;
            BK_0_round_18 = 32'h0;
            BK_0_round_20 = 32'h0;
            BK_0_round_22 = 32'h0;
            BK_0_round_24 = 32'h0;
            BK_0_round_26 = 32'h0;
            BK_0_round_28 = 32'h0;
            BK_0_round_30 = 32'h0;
            BK_0_round_32 = 32'h0;
            BK_0_round_34 = 32'h0;
            BK_0_round_36 = 32'h0;
            BK_0_round_38 = 32'h0;
            BK_0_round_40 = 32'h0;
            BK_0_round_42 = 32'h0;
            BK_0_round_44 = 32'h0;
            BK_0_round_46 = 32'h0;
            BK_0_round_48 = 32'h0;
            BK_0_round_50 = 32'h0;
            BK_0_round_52 = 32'h0;
            BK_0_round_54 = 32'h0;
            BK_0_round_56 = 32'h0;
            BK_0_round_58 = 32'h0;
            BK_0_round_60 = 32'h0;
            BK_0_round_62 = 32'h0;
            BK_1_round_1  = 32'h0;
            BK_1_round_3  = 32'h0;
            BK_1_round_5  = 32'h0;
            BK_1_round_7  = 32'h0;
            BK_1_round_9  = 32'h0;
            BK_1_round_11 = 32'h0;
            BK_1_round_13 = 32'h0;
            BK_1_round_15 = 32'h0;
            BK_1_round_17 = 32'h0;
            BK_1_round_19 = 32'h0;
            BK_1_round_21 = 32'h0;
            BK_1_round_23 = 32'h0;
            BK_1_round_25 = 32'h0;
            BK_1_round_27 = 32'h0;
            BK_1_round_29 = 32'h0;
            BK_1_round_31 = 32'h0;
            BK_1_round_33 = 32'h0;
            BK_1_round_35 = 32'h0;
            BK_1_round_37 = 32'h0;
            BK_1_round_39 = 32'h0;
            BK_1_round_41 = 32'h0;
            BK_1_round_43 = 32'h0;
            BK_1_round_45 = 32'h0;
            BK_1_round_47 = 32'h0;
            BK_1_round_49 = 32'h0;
            BK_1_round_51 = 32'h0;
            BK_1_round_53 = 32'h0;
            BK_1_round_55 = 32'h0;
            BK_1_round_57 = 32'h0;
            BK_1_round_59 = 32'h0;
            BK_1_round_61 = 32'h0;
            BK_1_round_63 = 32'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt_all)
                6'h0    : begin
                    sbox_kout_aes_128_clk_0[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_0[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_0[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_0[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_0[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_0[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_0[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_0[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_0[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_0[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_0[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_0[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_0[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_0[55:48]   = AES_128_out_13;
                end
                6'h1    : begin
                    sbox_dout_aes_128_clk_1[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_1[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_1[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_1[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_1[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_1[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_1[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_1[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_1[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_1[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_1[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_1[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_1[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_1[7:0]     = AES_128_out_13;
                end
                6'h2    : begin
                    sbox_kout_aes_128_clk_2[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_2[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_2[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_2[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_2[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_2[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_2[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_2[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_2[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_2[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_2[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_2[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_2[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_2[55:48]   = AES_128_out_13;
                end
                6'h3    : begin
                    sbox_dout_aes_128_clk_3[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_3[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_3[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_3[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_3[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_3[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_3[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_3[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_3[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_3[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_3[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_3[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_3[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_3[7:0]     = AES_128_out_13;
                end
                6'h4    :begin
                    sbox_kout_aes_128_clk_4[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_4[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_4[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_4[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_4[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_4[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_4[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_4[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_4[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_4[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_4[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_4[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_4[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_4[55:48]   = AES_128_out_13;
                end
                6'h5    :begin
                    sbox_dout_aes_128_clk_5[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_5[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_5[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_5[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_5[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_5[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_5[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_5[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_5[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_5[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_5[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_5[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_5[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_5[7:0]     = AES_128_out_13;
                end
                6'h6    : begin
                    sbox_kout_aes_128_clk_6[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_6[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_6[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_6[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_6[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_6[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_6[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_6[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_6[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_6[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_6[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_6[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_6[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_6[55:48]   = AES_128_out_13;
                end
                6'h7    : begin
                    sbox_dout_aes_128_clk_7[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_7[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_7[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_7[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_7[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_7[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_7[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_7[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_7[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_7[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_7[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_7[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_7[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_7[7:0]     = AES_128_out_13;
                end
                6'h8    : begin
                    sbox_kout_aes_128_clk_8[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_8[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_8[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_8[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_8[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_8[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_8[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_8[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_8[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_8[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_8[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_8[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_8[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_8[55:48]   = AES_128_out_13;
                end
                6'h9    : begin
                    sbox_dout_aes_128_clk_9[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_9[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_9[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_9[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_9[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_9[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_9[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_9[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_9[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_9[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_9[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_9[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_9[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_9[7:0]     = AES_128_out_13;
                end
                6'ha    : begin
                    sbox_kout_aes_128_clk_a[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_a[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_a[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_a[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_a[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_a[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_a[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_a[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_a[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_a[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_a[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_a[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_a[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_a[55:48]   = AES_128_out_13;
                end
                6'hb    : begin
                    sbox_dout_aes_128_clk_b[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_b[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_b[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_b[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_b[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_b[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_b[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_b[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_b[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_b[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_b[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_b[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_b[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_b[7:0]     = AES_128_out_13;
                end
                6'hc    : begin
                    sbox_kout_aes_128_clk_c[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_c[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_c[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_c[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_c[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_c[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_c[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_c[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_c[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_c[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_c[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_c[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_c[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_c[55:48]   = AES_128_out_13;
                end
                6'hd    : begin
                    sbox_dout_aes_128_clk_d[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_d[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_d[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_d[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_d[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_d[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_d[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_d[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_d[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_d[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_d[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_d[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_d[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_d[7:0]     = AES_128_out_13;
                end
                6'he    : begin
                    sbox_kout_aes_128_clk_e[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_e[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_e[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_e[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_e[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_e[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_e[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_e[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_e[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_e[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_e[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_e[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_e[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_e[55:48]   = AES_128_out_13;
                end
                6'hf    : begin
                    sbox_dout_aes_128_clk_f[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_f[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_f[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_f[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_f[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_f[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_f[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_f[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_f[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_f[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_f[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_f[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_f[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_f[7:0]     = AES_128_out_13;
                end
                6'h10   : begin
                    sbox_kout_aes_128_clk_10[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_10[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_10[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_10[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_10[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_10[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_10[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_10[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_10[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_10[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_10[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_10[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_10[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_10[55:48]   = AES_128_out_13;
                end
                6'h11   : begin
                    sbox_dout_aes_128_clk_11[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_11[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_11[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_11[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_11[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_11[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_11[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_11[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_11[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_11[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_11[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_11[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_11[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_11[7:0]     = AES_128_out_13;
                end
                6'h12   : begin
                    sbox_kout_aes_128_clk_12[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_12[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_12[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_12[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_12[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_12[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_12[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_12[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_12[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_12[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_12[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_12[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_12[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_12[55:48]   = AES_128_out_13;
                end
                6'h13   : begin
                    sbox_dout_aes_128_clk_13[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_13[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_13[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_13[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_13[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_13[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_13[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_13[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_13[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_13[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_13[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_13[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_13[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_13[7:0]     = AES_128_out_13;
                end
                6'h14   : begin
                    sbox_kout_aes_128_clk_14[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_14[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_14[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_14[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_14[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_14[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_14[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_14[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_14[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_14[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_14[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_14[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_14[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_14[55:48]   = AES_128_out_13;
                end
                6'h15   : begin
                    sbox_dout_aes_128_clk_15[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_15[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_15[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_15[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_15[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_15[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_15[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_15[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_15[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_15[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_15[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_15[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_15[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_15[7:0]     = AES_128_out_13;
                end
                6'h16   : begin
                    sbox_kout_aes_128_clk_16[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_16[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_16[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_16[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_16[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_16[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_16[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_16[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_16[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_16[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_16[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_16[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_16[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_16[55:48]   = AES_128_out_13;
                end
                6'h17   : begin
                    sbox_dout_aes_128_clk_17[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_17[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_17[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_17[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_17[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_17[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_17[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_17[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_17[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_17[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_17[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_17[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_17[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_17[7:0]     = AES_128_out_13;
                end
                6'h18   : begin
                    sbox_kout_aes_128_clk_18[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_18[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_18[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_18[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_18[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_18[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_18[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_18[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_18[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_18[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_18[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_18[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_18[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_18[55:48]   = AES_128_out_13;
                end
                6'h19   : begin
                    sbox_dout_aes_128_clk_19[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_19[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_19[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_19[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_19[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_19[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_19[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_19[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_19[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_19[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_19[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_19[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_19[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_19[7:0]     = AES_128_out_13;
                end
                6'h1a   : begin
                    sbox_kout_aes_128_clk_1a[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_1a[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_1a[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_1a[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_1a[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_1a[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_1a[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_1a[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_1a[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_1a[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_1a[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_1a[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_1a[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_1a[55:48]   = AES_128_out_13;
                end
                6'h1b   : begin
                    sbox_dout_aes_128_clk_1b[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_1b[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_1b[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_1b[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_1b[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_1b[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_1b[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_1b[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_1b[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_1b[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_1b[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_1b[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_1b[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_1b[7:0]     = AES_128_out_13;
                end
                6'h1c   : begin
                    sbox_kout_aes_128_clk_1c[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_1c[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_1c[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_1c[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_1c[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_1c[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_1c[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_1c[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_1c[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_1c[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_1c[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_1c[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_1c[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_1c[55:48]   = AES_128_out_13;
                end
                6'h1d   : begin
                    sbox_dout_aes_128_clk_1d[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_1d[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_1d[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_1d[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_1d[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_1d[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_1d[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_1d[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_1d[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_1d[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_1d[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_1d[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_1d[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_1d[7:0]     = AES_128_out_13;
                end
                6'h1e   : begin
                    sbox_kout_aes_128_clk_1e[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_1e[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_1e[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_1e[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_1e[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_1e[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_1e[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_1e[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_1e[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_1e[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_1e[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_1e[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_1e[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_1e[55:48]   = AES_128_out_13;
                end
                6'h1f   : begin
                    sbox_dout_aes_128_clk_1f[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_1f[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_1f[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_1f[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_1f[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_1f[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_1f[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_1f[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_1f[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_1f[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_1f[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_1f[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_1f[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_1f[7:0]     = AES_128_out_13;
                end
                6'h20   : begin
                    sbox_kout_aes_128_clk_20[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_20[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_20[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_20[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_20[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_20[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_20[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_20[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_20[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_20[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_20[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_20[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_20[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_20[55:48]   = AES_128_out_13;
                end
                6'h21   : begin
                    sbox_dout_aes_128_clk_21[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_21[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_21[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_21[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_21[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_21[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_21[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_21[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_21[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_21[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_21[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_21[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_21[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_21[7:0]     = AES_128_out_13;
                end
                6'h22   : begin
                    sbox_kout_aes_128_clk_22[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_22[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_22[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_22[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_22[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_22[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_22[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_22[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_22[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_22[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_22[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_22[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_22[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_22[55:48]   = AES_128_out_13;
                end
                6'h23   : begin
                    sbox_dout_aes_128_clk_23[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_23[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_23[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_23[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_23[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_23[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_23[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_23[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_23[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_23[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_23[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_23[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_23[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_23[7:0]     = AES_128_out_13;
                end
                6'h24   : begin
                    sbox_kout_aes_128_clk_24[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_24[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_24[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_24[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_24[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_24[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_24[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_24[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_24[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_24[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_24[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_24[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_24[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_24[55:48]   = AES_128_out_13;
                end
                6'h25   : begin
                    sbox_dout_aes_128_clk_25[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_25[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_25[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_25[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_25[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_25[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_25[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_25[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_25[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_25[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_25[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_25[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_25[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_25[7:0]     = AES_128_out_13;
                end
                6'h26   : begin
                    sbox_kout_aes_128_clk_26[31:24]   = AES_128_out_0;
                    sbox_kout_aes_128_clk_26[23:16]   = AES_128_out_1;
                    sbox_kout_aes_128_clk_26[15:8]    = AES_128_out_2;
                    sbox_kout_aes_128_clk_26[7:0]     = AES_128_out_3;
                    sbox_dout_aes_128_clk_26[127:120] = AES_128_out_4;
                    sbox_dout_aes_128_clk_26[119:112] = AES_128_out_5;
                    sbox_dout_aes_128_clk_26[111:104] = AES_128_out_6;
                    sbox_dout_aes_128_clk_26[103:96]  = AES_128_out_7;
                    sbox_dout_aes_128_clk_26[95:88]   = AES_128_out_8;
                    sbox_dout_aes_128_clk_26[87:80]   = AES_128_out_9;
                    sbox_dout_aes_128_clk_26[79:72]   = AES_128_out_10;
                    sbox_dout_aes_128_clk_26[71:64]   = AES_128_out_11;
                    sbox_dout_aes_128_clk_26[63:56]   = AES_128_out_12;
                    sbox_dout_aes_128_clk_26[55:48]   = AES_128_out_13;
                end
                6'h27   : begin
                    sbox_dout_aes_128_clk_27[79:72]   = AES_128_out_0;
                    sbox_dout_aes_128_clk_27[71:64]   = AES_128_out_1;
                    sbox_dout_aes_128_clk_27[63:56]   = AES_128_out_2;
                    sbox_dout_aes_128_clk_27[55:48]   = AES_128_out_3;
                    sbox_dout_aes_128_clk_27[47:40]   = AES_128_out_4;
                    sbox_dout_aes_128_clk_27[39:32]   = AES_128_out_5;
                    sbox_dout_aes_128_clk_27[31:24]   = AES_128_out_6;
                    sbox_dout_aes_128_clk_27[23:16]   = AES_128_out_7;
                    sbox_dout_aes_128_clk_27[15:8]    = AES_128_out_8;
                    sbox_dout_aes_128_clk_27[7:0]     = AES_128_out_9;
                    sbox_kout_aes_128_clk_27[31:24]   = AES_128_out_10;
                    sbox_kout_aes_128_clk_27[23:16]   = AES_128_out_11;
                    sbox_kout_aes_128_clk_27[15:8]    = AES_128_out_12;
                    sbox_kout_aes_128_clk_27[7:0]     = AES_128_out_13;
                end
            endcase                            
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt_all)                     
                6'h0    : begin 
                    sbox_kout_aes_192_clk_0[31:24]   = AES_192_out_0;
                    sbox_kout_aes_192_clk_0[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_0[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_0[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_0[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_0[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_0[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_0[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_0[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_0[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_0[79:72]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_0[71:64]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_0[63:56]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_0[55:48]   = AES_192_out_13;
                end
                6'h1    : begin
                    sbox_dout_aes_192_clk_1[63:56]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_1[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_1[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_1[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_1[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_1[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_1[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_1[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_1[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_1[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_1[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_1[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_1[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_1[119:112] = AES_192_out_13;
                end
                6'h2    : begin
                    sbox_dout_aes_192_clk_2[127:120] = AES_192_out_0;
                    sbox_dout_aes_192_clk_2[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_2[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_2[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_2[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_2[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_2[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_2[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_2[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_2[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_2[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_2[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_2[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_2[23:16]   = AES_192_out_13;
                end
                6'h3    : begin
                    sbox_dout_aes_192_clk_3[31:24]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_3[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_3[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_3[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_3[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_3[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_3[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_3[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_3[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_3[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_3[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_3[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_3[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_3[87:80]   = AES_192_out_13;
                end
                6'h4    : begin
                    sbox_dout_aes_192_clk_4[95:88]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_4[87:80]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_4[79:72]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_4[71:64]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_4[63:56]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_4[55:48]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_4[47:40]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_4[39:32]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_4[31:24]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_4[23:16]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_4[15:8]    = AES_192_out_10;
                    sbox_dout_aes_192_clk_4[7:0]     = AES_192_out_11;
                    sbox_kout_aes_192_clk_4[31:24]   = AES_192_out_12;
                    sbox_kout_aes_192_clk_4[23:16]   = AES_192_out_13;
                end
                6'h5    : begin
                    sbox_kout_aes_192_clk_5[31:24]   = AES_192_out_0;
                    sbox_kout_aes_192_clk_5[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_5[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_5[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_5[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_5[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_5[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_5[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_5[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_5[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_5[79:72]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_5[71:64]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_5[63:56]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_5[55:48]   = AES_192_out_13;
                end
                6'h6    : begin
                    sbox_dout_aes_192_clk_6[63:56]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_6[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_6[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_6[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_6[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_6[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_6[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_6[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_6[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_6[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_6[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_6[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_6[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_6[119:112] = AES_192_out_13;
                end
                6'h7    : begin
                    sbox_dout_aes_192_clk_7[127:120] = AES_192_out_0;
                    sbox_dout_aes_192_clk_7[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_7[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_7[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_7[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_7[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_7[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_7[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_7[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_7[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_7[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_7[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_7[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_7[23:16]   = AES_192_out_13;
                end
                6'h8    : begin
                    sbox_dout_aes_192_clk_8[31:24]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_8[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_8[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_8[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_8[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_8[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_8[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_8[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_8[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_8[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_8[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_8[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_8[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_8[87:80]   = AES_192_out_13;
                end
                6'h9    : begin
                     sbox_dout_aes_192_clk_9[95:88]   = AES_192_out_0;
                     sbox_dout_aes_192_clk_9[87:80]   = AES_192_out_1;
                     sbox_dout_aes_192_clk_9[79:72]   = AES_192_out_2;
                     sbox_dout_aes_192_clk_9[71:64]   = AES_192_out_3;
                     sbox_dout_aes_192_clk_9[63:56]   = AES_192_out_4;
                     sbox_dout_aes_192_clk_9[55:48]   = AES_192_out_5;
                     sbox_dout_aes_192_clk_9[47:40]   = AES_192_out_6;
                     sbox_dout_aes_192_clk_9[39:32]   = AES_192_out_7;
                     sbox_dout_aes_192_clk_9[31:24]   = AES_192_out_8;
                     sbox_dout_aes_192_clk_9[23:16]   = AES_192_out_9;
                     sbox_dout_aes_192_clk_9[15:8]    = AES_192_out_10;
                     sbox_dout_aes_192_clk_9[7:0]     = AES_192_out_11;
                     sbox_kout_aes_192_clk_9[31:24]   = AES_192_out_12;
                     sbox_kout_aes_192_clk_9[23:16]   = AES_192_out_13;
                end
                6'ha    : begin
                    sbox_kout_aes_192_clk_a[31:24]   = AES_192_out_0;
                    sbox_kout_aes_192_clk_a[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_a[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_a[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_a[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_a[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_a[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_a[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_a[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_a[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_a[79:72]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_a[71:64]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_a[63:56]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_a[55:48]   = AES_192_out_13;
                end
                6'hb    : begin
                    sbox_dout_aes_192_clk_b[63:56]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_b[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_b[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_b[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_b[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_b[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_b[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_b[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_b[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_b[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_b[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_b[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_b[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_b[119:112] = AES_192_out_13;
                end
                6'hc    : begin
                    sbox_dout_aes_192_clk_c[127:120] = AES_192_out_0;
                    sbox_dout_aes_192_clk_c[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_c[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_c[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_c[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_c[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_c[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_c[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_c[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_c[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_c[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_c[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_c[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_c[23:16]   = AES_192_out_13;
                end
                6'hd    : begin
                    sbox_dout_aes_192_clk_d[31:24]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_d[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_d[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_d[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_d[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_d[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_d[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_d[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_d[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_d[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_d[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_d[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_d[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_d[87:80]   = AES_192_out_13;
                end
                6'he    : begin
                    sbox_dout_aes_192_clk_e[95:88]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_e[87:80]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_e[79:72]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_e[71:64]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_e[63:56]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_e[55:48]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_e[47:40]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_e[39:32]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_e[31:24]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_e[23:16]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_e[15:8]    = AES_192_out_10;
                    sbox_dout_aes_192_clk_e[7:0]     = AES_192_out_11;
                    sbox_kout_aes_192_clk_e[31:24]   = AES_192_out_12;
                    sbox_kout_aes_192_clk_e[23:16]   = AES_192_out_13;
                end
                6'hf    : begin
                    sbox_kout_aes_192_clk_f[31:24]   = AES_192_out_0;
                    sbox_kout_aes_192_clk_f[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_f[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_f[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_f[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_f[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_f[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_f[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_f[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_f[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_f[79:72]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_f[71:64]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_f[63:56]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_f[55:48]   = AES_192_out_13;
                end
                6'h10   : begin
                    sbox_dout_aes_192_clk_10[63:56]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_10[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_10[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_10[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_10[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_10[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_10[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_10[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_10[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_10[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_10[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_10[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_10[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_10[119:112] = AES_192_out_13;
                end
                6'h11   : begin
                    sbox_dout_aes_192_clk_11[127:120] = AES_192_out_0;
                    sbox_dout_aes_192_clk_11[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_11[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_11[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_11[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_11[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_11[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_11[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_11[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_11[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_11[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_11[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_11[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_11[23:16]   = AES_192_out_13;
                end
                6'h12   : begin
                    sbox_dout_aes_192_clk_12[31:24]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_12[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_12[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_12[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_12[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_12[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_12[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_12[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_12[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_12[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_12[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_12[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_12[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_12[87:80]   = AES_192_out_13;
                end
                6'h13   : begin
                    sbox_dout_aes_192_clk_13[95:88]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_13[87:80]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_13[79:72]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_13[71:64]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_13[63:56]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_13[55:48]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_13[47:40]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_13[39:32]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_13[31:24]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_13[23:16]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_13[15:8]    = AES_192_out_10;
                    sbox_dout_aes_192_clk_13[7:0]     = AES_192_out_11;
                    sbox_kout_aes_192_clk_13[31:24]   = AES_192_out_12;
                    sbox_kout_aes_192_clk_13[23:16]   = AES_192_out_13;
                end
                6'h14   : begin
                    sbox_kout_aes_192_clk_14[31:24]    = AES_192_out_0;
                    sbox_kout_aes_192_clk_14[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_14[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_14[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_14[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_14[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_14[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_14[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_14[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_14[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_14[79:72]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_14[71:64]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_14[63:56]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_14[55:48]   = AES_192_out_13;
                end
                6'h15   : begin
                    sbox_dout_aes_192_clk_15[63:56]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_15[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_15[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_15[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_15[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_15[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_15[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_15[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_15[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_15[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_15[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_15[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_15[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_15[119:112] = AES_192_out_13;
                end
                6'h16   : begin
                    sbox_dout_aes_192_clk_16[127:120]  = AES_192_out_0;
                    sbox_dout_aes_192_clk_16[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_16[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_16[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_16[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_16[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_16[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_16[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_16[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_16[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_16[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_16[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_16[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_16[23:16]   = AES_192_out_13;
                end
                6'h17   : begin
                    sbox_dout_aes_192_clk_17[31:24]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_17[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_17[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_17[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_17[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_17[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_17[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_17[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_17[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_17[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_17[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_17[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_17[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_17[87:80]   = AES_192_out_13;
                end
                6'h18   : begin
                    sbox_dout_aes_192_clk_18[95:88]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_18[87:80]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_18[79:72]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_18[71:64]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_18[63:56]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_18[55:48]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_18[47:40]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_18[39:32]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_18[31:24]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_18[23:16]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_18[15:8]    = AES_192_out_10;
                    sbox_dout_aes_192_clk_18[7:0]     = AES_192_out_11;
                    sbox_kout_aes_192_clk_18[31:24]   = AES_192_out_12;
                    sbox_kout_aes_192_clk_18[23:16]   = AES_192_out_13;
                end
                6'h19   : begin
                    sbox_kout_aes_192_clk_19[31:24]    = AES_192_out_0;
                    sbox_kout_aes_192_clk_19[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_19[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_19[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_19[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_19[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_19[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_19[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_19[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_19[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_19[79:72]   = AES_192_out_10;
                end
                6'h1a   : begin
                    sbox_dout_aes_192_clk_1a[63:56]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_1a[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_1a[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_1a[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_1a[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_1a[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_1a[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_1a[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_1a[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_1a[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_1a[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_1a[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_1a[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_1a[119:112] = AES_192_out_13;
                end
                6'h1b   : begin
                    sbox_dout_aes_192_clk_1b[127:120]  = AES_192_out_0;
                    sbox_dout_aes_192_clk_1b[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_1b[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_1b[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_1b[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_1b[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_1b[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_1b[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_1b[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_1b[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_1b[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_1b[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_1b[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_1b[23:16]   = AES_192_out_13;
                end
                6'h1c   : begin
                    sbox_dout_aes_192_clk_1c[31:24]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_1c[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_1c[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_1c[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_1c[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_1c[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_1c[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_1c[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_1c[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_1c[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_1c[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_1c[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_1c[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_1c[87:80]   = AES_192_out_13;
                end
                6'h1d   : begin
                    sbox_dout_aes_192_clk_1d[95:88]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_1d[87:80]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_1d[79:72]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_1d[71:64]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_1d[63:56]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_1d[55:48]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_1d[47:40]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_1d[39:32]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_1d[31:24]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_1d[23:16]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_1d[15:8]    = AES_192_out_10;
                    sbox_dout_aes_192_clk_1d[7:0]     = AES_192_out_11;
                    sbox_kout_aes_192_clk_1d[31:24]   = AES_192_out_12;
                    sbox_kout_aes_192_clk_1d[23:16]   = AES_192_out_13;
                end
                6'h1e   : begin
                    sbox_kout_aes_192_clk_1e[31:24]    = AES_192_out_0;
                    sbox_kout_aes_192_clk_1e[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_1e[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_1e[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_1e[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_1e[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_1e[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_1e[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_1e[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_1e[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_1e[79:72]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_1e[71:64]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_1e[63:56]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_1e[55:48]   = AES_192_out_13;
                end
                6'h1f   : begin
                    sbox_dout_aes_192_clk_1f[63:56]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_1f[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_1f[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_1f[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_1f[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_1f[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_1f[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_1f[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_1f[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_1f[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_1f[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_1f[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_1f[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_1f[119:112] = AES_192_out_13;
                end
                6'h20   : begin
                    sbox_dout_aes_192_clk_20[127:120]  = AES_192_out_0;
                    sbox_dout_aes_192_clk_20[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_20[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_20[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_20[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_20[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_20[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_20[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_20[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_20[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_20[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_20[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_20[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_20[23:16]   = AES_192_out_13;
                end
                6'h21   : begin
                    sbox_dout_aes_192_clk_21[31:24]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_21[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_21[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_21[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_21[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_21[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_21[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_21[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_21[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_21[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_21[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_21[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_21[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_21[87:80]   = AES_192_out_13;
                end
                6'h22   : begin
                    sbox_dout_aes_192_clk_22[95:88]    = AES_192_out_0;
                    sbox_dout_aes_192_clk_22[87:80]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_22[79:72]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_22[71:64]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_22[63:56]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_22[55:48]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_22[47:40]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_22[39:32]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_22[31:24]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_22[23:16]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_22[15:8]    = AES_192_out_10;
                    sbox_dout_aes_192_clk_22[7:0]     = AES_192_out_11;
                    sbox_kout_aes_192_clk_22[31:24]   = AES_192_out_12;
                    sbox_kout_aes_192_clk_22[23:16]   = AES_192_out_13;
                end
                6'h23   : begin
                    sbox_kout_aes_192_clk_23[31:24]    = AES_192_out_0;
                    sbox_kout_aes_192_clk_23[23:16]   = AES_192_out_1;
                    sbox_kout_aes_192_clk_23[15:8]    = AES_192_out_2;
                    sbox_kout_aes_192_clk_23[7:0]     = AES_192_out_3;
                    sbox_dout_aes_192_clk_23[127:120] = AES_192_out_4;
                    sbox_dout_aes_192_clk_23[119:112] = AES_192_out_5;
                    sbox_dout_aes_192_clk_23[111:104] = AES_192_out_6;
                    sbox_dout_aes_192_clk_23[103:96]  = AES_192_out_7;
                    sbox_dout_aes_192_clk_23[95:88 ]  = AES_192_out_8;
                    sbox_dout_aes_192_clk_23[87:80]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_23[79:72]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_23[71:64]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_23[63:56]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_23[55:48]   = AES_192_out_13;
                end
                6'h24   : begin
                    sbox_dout_aes_192_clk_24[63:56]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_24[55:48]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_24[47:40]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_24[39:32]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_24[31:24]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_24[23:16]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_24[15:8]    = AES_192_out_6;
                    sbox_dout_aes_192_clk_24[7:0]     = AES_192_out_7;
                    sbox_kout_aes_192_clk_24[31:24]   = AES_192_out_8;
                    sbox_kout_aes_192_clk_24[23:16]   = AES_192_out_9;
                    sbox_kout_aes_192_clk_24[15:8]    = AES_192_out_10;
                    sbox_kout_aes_192_clk_24[7:0]     = AES_192_out_11;
                    sbox_dout_aes_192_clk_24[127:120] = AES_192_out_12;
                    sbox_dout_aes_192_clk_24[119:112] = AES_192_out_13;
                end
                6'h25   : begin
                    sbox_dout_aes_192_clk_25[127:120] = AES_192_out_0;
                    sbox_dout_aes_192_clk_25[119:112] = AES_192_out_1;
                    sbox_dout_aes_192_clk_25[111:104] = AES_192_out_2;
                    sbox_dout_aes_192_clk_25[103:96]  = AES_192_out_3;
                    sbox_dout_aes_192_clk_25[95:88]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_25[87:80]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_25[79:72]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_25[71:64]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_25[63:56]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_25[55:48]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_25[47:40]   = AES_192_out_10;
                    sbox_dout_aes_192_clk_25[39:32]   = AES_192_out_11;
                    sbox_dout_aes_192_clk_25[31:24]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_25[23:16]   = AES_192_out_13;
                end
                6'h26   : begin
                    sbox_dout_aes_192_clk_26[31:24]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_26[23:16]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_26[15:8]    = AES_192_out_2;
                    sbox_dout_aes_192_clk_26[7:0]     = AES_192_out_3;
                    sbox_kout_aes_192_clk_26[31:24]   = AES_192_out_4;
                    sbox_kout_aes_192_clk_26[23:16]   = AES_192_out_5;
                    sbox_kout_aes_192_clk_26[15:8]    = AES_192_out_6;
                    sbox_kout_aes_192_clk_26[7:0]     = AES_192_out_7;
                    sbox_dout_aes_192_clk_26[127:120] = AES_192_out_8;
                    sbox_dout_aes_192_clk_26[119:112] = AES_192_out_9;
                    sbox_dout_aes_192_clk_26[111:104] = AES_192_out_10;
                    sbox_dout_aes_192_clk_26[103:96]  = AES_192_out_11;
                    sbox_dout_aes_192_clk_26[95:88]   = AES_192_out_12;
                    sbox_dout_aes_192_clk_26[87:80]   = AES_192_out_13;
                end
                6'h27   : begin
                    sbox_dout_aes_192_clk_27[95:88]   = AES_192_out_0;
                    sbox_dout_aes_192_clk_27[87:80]   = AES_192_out_1;
                    sbox_dout_aes_192_clk_27[79:72]   = AES_192_out_2;
                    sbox_dout_aes_192_clk_27[71:64]   = AES_192_out_3;
                    sbox_dout_aes_192_clk_27[63:56]   = AES_192_out_4;
                    sbox_dout_aes_192_clk_27[55:48]   = AES_192_out_5;
                    sbox_dout_aes_192_clk_27[47:40]   = AES_192_out_6;
                    sbox_dout_aes_192_clk_27[39:32]   = AES_192_out_7;
                    sbox_dout_aes_192_clk_27[31:24]   = AES_192_out_8;
                    sbox_dout_aes_192_clk_27[23:16]   = AES_192_out_9;
                    sbox_dout_aes_192_clk_27[15:8]    = AES_192_out_10;
                    sbox_dout_aes_192_clk_27[7:0]     = AES_192_out_11;
                    sbox_kout_aes_192_clk_27[31:24]   = AES_192_out_12;
                    sbox_kout_aes_192_clk_27[23:16]   = AES_192_out_13;
                end
            endcase                            
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt_all)                     
                6'h0    : begin
                    sbox_kout_aes_256_clk_0[31:24]   = AES_256_out_0;
                    sbox_kout_aes_256_clk_0[23:16]   = AES_256_out_1;
                    sbox_kout_aes_256_clk_0[15:8 ]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_0[7:0]     = AES_256_out_3;
                    sbox_dout_aes_256_clk_0[127:120] = AES_256_out_4;
                    sbox_dout_aes_256_clk_0[119:112] = AES_256_out_5;
                    sbox_dout_aes_256_clk_0[111:104] = AES_256_out_6;
                    sbox_dout_aes_256_clk_0[103:96]  = AES_256_out_7;
                    sbox_dout_aes_256_clk_0[95:88]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_0[87:80]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_0[79:72]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_0[71:64]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_0[63:56]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_0[55:48]   = AES_256_out_13;
                end
                6'h1    : begin
                    sbox_dout_aes_256_clk_1[47:40]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_1[39:32]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_1[31:24]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_1[23:16]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_1[15:8]    = AES_256_out_4;
                    sbox_dout_aes_256_clk_1[7:0]     = AES_256_out_5;
                    sbox_kout_aes_256_clk_1[31:24]   = AES_256_out_6;
                    sbox_kout_aes_256_clk_1[23:16]   = AES_256_out_7;
                    sbox_kout_aes_256_clk_1[15:8]    = AES_256_out_8;
                    sbox_kout_aes_256_clk_1[7:0]     = AES_256_out_9;
                    sbox_dout_aes_256_clk_1[127:120] = AES_256_out_10;
                    sbox_dout_aes_256_clk_1[119:112] = AES_256_out_11;
                    sbox_dout_aes_256_clk_1[111:104] = AES_256_out_12;
                    sbox_dout_aes_256_clk_1[103:96]  = AES_256_out_13;
                end
                6'h2    : begin
                    sbox_dout_aes_256_clk_2[95:88]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_2[87:80]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_2[79:72]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_2[71:64]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_2[63:56]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_2[55:48]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_2[47:40]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_2[39:32]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_2[31:24]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_2[23:16]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_2[15:8]    = AES_256_out_10;
                    sbox_dout_aes_256_clk_2[7:0]     = AES_256_out_11;
                    sbox_kout_aes_256_clk_2[31:24]   = AES_256_out_12;
                    sbox_kout_aes_256_clk_2[23:16]   = AES_256_out_13;
                end
                6'h3    : begin
                    sbox_kout_aes_256_clk_3[15:8]    = AES_256_out_0;
                    sbox_kout_aes_256_clk_3[7:0]     = AES_256_out_1;
                    sbox_dout_aes_256_clk_3[127:120] = AES_256_out_2;
                    sbox_dout_aes_256_clk_3[119:112] = AES_256_out_3;
                    sbox_dout_aes_256_clk_3[111:104] = AES_256_out_4;
                    sbox_dout_aes_256_clk_3[103:96]  = AES_256_out_5;
                    sbox_dout_aes_256_clk_3[95:88]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_3[87:80]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_3[79:72]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_3[71:64]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_3[63:56]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_3[55:48]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_3[47:40]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_3[39:32]   = AES_256_out_13;
                end
                6'h4    : begin
                    sbox_dout_aes_256_clk_4[31:24]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_4[23:16]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_4[15:8]    = AES_256_out_2;
                    sbox_dout_aes_256_clk_4[7:0]     = AES_256_out_3;
                    sbox_kout_aes_256_clk_4[31:24]   = AES_256_out_4;
                    sbox_kout_aes_256_clk_4[23:16]   = AES_256_out_5;
                    sbox_kout_aes_256_clk_4[15:8]    = AES_256_out_6;
                    sbox_kout_aes_256_clk_4[7:0]     = AES_256_out_7;
                    sbox_dout_aes_256_clk_4[127:120] = AES_256_out_8;
                    sbox_dout_aes_256_clk_4[119:112] = AES_256_out_9;
                    sbox_dout_aes_256_clk_4[111:104] = AES_256_out_10;
                    sbox_dout_aes_256_clk_4[103:96]  = AES_256_out_11;
                    sbox_dout_aes_256_clk_4[95:88]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_4[87:80]   = AES_256_out_13;
                end
                6'h5    : begin
                    sbox_dout_aes_256_clk_5[79:72]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_5[71:64]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_5[63:56]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_5[55:48]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_5[47:40]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_5[39:32]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_5[31:24]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_5[23:16]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_5[15:8]    = AES_256_out_8;
                    sbox_dout_aes_256_clk_5[7:0]     = AES_256_out_9;
                    sbox_kout_aes_256_clk_5[31:24]   = AES_256_out_10;
                    sbox_kout_aes_256_clk_5[23:16]   = AES_256_out_11;
                    sbox_kout_aes_256_clk_5[15:8]    = AES_256_out_12;
                    sbox_kout_aes_256_clk_5[7:0]     = AES_256_out_13;
                end
                6'h6    : begin
                    sbox_dout_aes_256_clk_6[127:120] = AES_256_out_0;
                    sbox_dout_aes_256_clk_6[119:112] = AES_256_out_1;
                    sbox_dout_aes_256_clk_6[111:104] = AES_256_out_2;
                    sbox_dout_aes_256_clk_6[103:96]  = AES_256_out_3;
                    sbox_dout_aes_256_clk_6[95:88]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_6[87:80]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_6[79:72]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_6[71:64]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_6[63:56]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_6[55:48]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_6[47:40]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_6[39:32]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_6[31:24]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_6[23:16]   = AES_256_out_13;
                end
                6'h7    : begin
                    sbox_dout_aes_256_clk_7[15:8]    = AES_256_out_0;
                    sbox_dout_aes_256_clk_7[7:0]     = AES_256_out_1;
                    sbox_kout_aes_256_clk_7[31:24]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_7[23:16]   = AES_256_out_3;
                    sbox_kout_aes_256_clk_7[15:8]    = AES_256_out_4;
                    sbox_kout_aes_256_clk_7[7:0]     = AES_256_out_5;
                    sbox_dout_aes_256_clk_7[127:120] = AES_256_out_6;
                    sbox_dout_aes_256_clk_7[119:112] = AES_256_out_7;
                    sbox_dout_aes_256_clk_7[111:104] = AES_256_out_8;
                    sbox_dout_aes_256_clk_7[103:96]  = AES_256_out_9;
                    sbox_dout_aes_256_clk_7[95:88]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_7[87:80]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_7[79:72]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_7[71:64]   = AES_256_out_13;
                end
                6'h8    : begin
                    sbox_dout_aes_256_clk_8[63:56]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_8[55:48]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_8[47:40]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_8[39:32]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_8[31:24]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_8[23:16]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_8[15:8]    = AES_256_out_6;
                    sbox_dout_aes_256_clk_8[7:0]     = AES_256_out_7;
                    sbox_kout_aes_256_clk_8[31:24]   = AES_256_out_8;
                    sbox_kout_aes_256_clk_8[23:16]   = AES_256_out_9;
                    sbox_kout_aes_256_clk_8[15:8]    = AES_256_out_10;
                    sbox_kout_aes_256_clk_8[7:0]     = AES_256_out_11;
                    sbox_dout_aes_256_clk_8[127:120] = AES_256_out_12;
                    sbox_dout_aes_256_clk_8[119:112] = AES_256_out_13;
                end
                6'h9    : begin
                    sbox_dout_aes_256_clk_9[111:104] = AES_256_out_0;
                    sbox_dout_aes_256_clk_9[103:96]  = AES_256_out_1;
                    sbox_dout_aes_256_clk_9[95:88]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_9[87:80]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_9[79:72]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_9[71:64]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_9[63:56]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_9[55:48]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_9[47:40]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_9[39:32]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_9[31:24]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_9[23:16]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_9[15:8]    = AES_256_out_12;
                    sbox_dout_aes_256_clk_9[7:0]     = AES_256_out_13;
                end
                6'ha    : begin
                    sbox_kout_aes_256_clk_a[31:24]   = AES_256_out_0;
                    sbox_kout_aes_256_clk_a[23:16]   = AES_256_out_1;
                    sbox_kout_aes_256_clk_a[15:8 ]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_a[7:0]     = AES_256_out_3;
                    sbox_dout_aes_256_clk_a[127:120] = AES_256_out_4;
                    sbox_dout_aes_256_clk_a[119:112] = AES_256_out_5;
                    sbox_dout_aes_256_clk_a[111:104] = AES_256_out_6;
                    sbox_dout_aes_256_clk_a[103:96]  = AES_256_out_7;
                    sbox_dout_aes_256_clk_a[95:88]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_a[87:80]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_a[79:72]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_a[71:64]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_a[63:56]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_a[55:48]   = AES_256_out_13;
                end
                6'hb    : begin
                    sbox_dout_aes_256_clk_b[47:40]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_b[39:32]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_b[31:24]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_b[23:16]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_b[15:8]    = AES_256_out_4;
                    sbox_dout_aes_256_clk_b[7:0]     = AES_256_out_5;
                    sbox_kout_aes_256_clk_b[31:24]   = AES_256_out_6;
                    sbox_kout_aes_256_clk_b[23:16]   = AES_256_out_7;
                    sbox_kout_aes_256_clk_b[15:8]    = AES_256_out_8;
                    sbox_kout_aes_256_clk_b[7:0]     = AES_256_out_9;
                    sbox_dout_aes_256_clk_b[127:120] = AES_256_out_10;
                    sbox_dout_aes_256_clk_b[119:112] = AES_256_out_11;
                    sbox_dout_aes_256_clk_b[111:104] = AES_256_out_12;
                    sbox_dout_aes_256_clk_b[103:96]  = AES_256_out_13;
                end
                6'hc    : begin
                    sbox_dout_aes_256_clk_c[95:88]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_c[87:80]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_c[79:72]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_c[71:64]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_c[63:56]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_c[55:48]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_c[47:40]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_c[39:32]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_c[31:24]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_c[23:16]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_c[15:8]    = AES_256_out_10;
                    sbox_dout_aes_256_clk_c[7:0]     = AES_256_out_11;
                    sbox_kout_aes_256_clk_c[31:24]   = AES_256_out_12;
                    sbox_kout_aes_256_clk_c[23:16]   = AES_256_out_13;
                end
                6'hd    : begin 
                    sbox_kout_aes_256_clk_d[15:8]    = AES_256_out_0;
                    sbox_kout_aes_256_clk_d[7:0]     = AES_256_out_1;
                    sbox_dout_aes_256_clk_d[127:120] = AES_256_out_2;
                    sbox_dout_aes_256_clk_d[119:112] = AES_256_out_3;
                    sbox_dout_aes_256_clk_d[111:104] = AES_256_out_4;
                    sbox_dout_aes_256_clk_d[103:96]  = AES_256_out_5;
                    sbox_dout_aes_256_clk_d[95:88]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_d[87:80]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_d[79:72]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_d[71:64]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_d[63:56]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_d[55:48]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_d[47:40]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_d[39:32]   = AES_256_out_13;
                end
                6'he    : begin
                    sbox_dout_aes_256_clk_e[31:24]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_e[23:16]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_e[15:8]    = AES_256_out_2;
                    sbox_dout_aes_256_clk_e[7:0]     = AES_256_out_3;
                    sbox_kout_aes_256_clk_e[31:24]   = AES_256_out_4;
                    sbox_kout_aes_256_clk_e[23:16]   = AES_256_out_5;
                    sbox_kout_aes_256_clk_e[15:8]    = AES_256_out_6;
                    sbox_kout_aes_256_clk_e[7:0]     = AES_256_out_7;
                    sbox_dout_aes_256_clk_e[127:120] = AES_256_out_8;
                    sbox_dout_aes_256_clk_e[119:112] = AES_256_out_9;
                    sbox_dout_aes_256_clk_e[111:104] = AES_256_out_10;
                    sbox_dout_aes_256_clk_e[103:96]  = AES_256_out_11;
                    sbox_dout_aes_256_clk_e[95:88]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_e[87:80]   = AES_256_out_13;
                end
                6'hf    : begin
                    sbox_dout_aes_256_clk_f[79:72]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_f[71:64]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_f[63:56]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_f[55:48]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_f[47:40]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_f[39:32]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_f[31:24]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_f[23:16]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_f[15:8]    = AES_256_out_8;
                    sbox_dout_aes_256_clk_f[7:0]     = AES_256_out_9;
                    sbox_kout_aes_256_clk_f[31:24]   = AES_256_out_10;
                    sbox_kout_aes_256_clk_f[23:16]   = AES_256_out_11;
                    sbox_kout_aes_256_clk_f[15:8]    = AES_256_out_12;
                    sbox_kout_aes_256_clk_f[7:0]     = AES_256_out_13;
                end
                6'h10   : begin
                    sbox_dout_aes_256_clk_10[127:120] = AES_256_out_0;
                    sbox_dout_aes_256_clk_10[119:112] = AES_256_out_1;
                    sbox_dout_aes_256_clk_10[111:104] = AES_256_out_2;
                    sbox_dout_aes_256_clk_10[103:96]  = AES_256_out_3;
                    sbox_dout_aes_256_clk_10[95:88]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_10[87:80]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_10[79:72]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_10[71:64]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_10[63:56]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_10[55:48]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_10[47:40]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_10[39:32]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_10[31:24]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_10[23:16]   = AES_256_out_13;
                end
                6'h11   : begin
                    sbox_dout_aes_256_clk_11[15:8]    = AES_256_out_0;
                    sbox_dout_aes_256_clk_11[7:0]     = AES_256_out_1;
                    sbox_kout_aes_256_clk_11[31:24]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_11[23:16]   = AES_256_out_3;
                    sbox_kout_aes_256_clk_11[15:8]    = AES_256_out_4;
                    sbox_kout_aes_256_clk_11[7:0]     = AES_256_out_5;
                    sbox_dout_aes_256_clk_11[127:120] = AES_256_out_6;
                    sbox_dout_aes_256_clk_11[119:112] = AES_256_out_7;
                    sbox_dout_aes_256_clk_11[111:104] = AES_256_out_8;
                    sbox_dout_aes_256_clk_11[103:96]  = AES_256_out_9;
                    sbox_dout_aes_256_clk_11[95:88]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_11[87:80]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_11[79:72]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_11[71:64]   = AES_256_out_13;
                end
                6'h12   : begin
                    sbox_dout_aes_256_clk_12[63:56]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_12[55:48]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_12[47:40]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_12[39:32]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_12[31:24]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_12[23:16]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_12[15:8]    = AES_256_out_6;
                    sbox_dout_aes_256_clk_12[7:0]     = AES_256_out_7;
                    sbox_kout_aes_256_clk_12[31:24]   = AES_256_out_8;
                    sbox_kout_aes_256_clk_12[23:16]   = AES_256_out_9;
                    sbox_kout_aes_256_clk_12[15:8]    = AES_256_out_10;
                    sbox_kout_aes_256_clk_12[7:0]     = AES_256_out_11;
                    sbox_dout_aes_256_clk_12[127:120] = AES_256_out_12;
                    sbox_dout_aes_256_clk_12[119:112] = AES_256_out_13;
                end
                6'h13   : begin
                    sbox_dout_aes_256_clk_13[111:104] = AES_256_out_0;
                    sbox_dout_aes_256_clk_13[103:96]  = AES_256_out_1;
                    sbox_dout_aes_256_clk_13[95:88]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_13[87:80]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_13[79:72]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_13[71:64]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_13[63:56]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_13[55:48]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_13[47:40]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_13[39:32]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_13[31:24]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_13[23:16]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_13[15:8]    = AES_256_out_12;
                    sbox_dout_aes_256_clk_13[7:0]     = AES_256_out_13;
                end
                6'h14   : begin
                    sbox_kout_aes_256_clk_14[31:24]   = AES_256_out_0;
                    sbox_kout_aes_256_clk_14[23:16]   = AES_256_out_1;
                    sbox_kout_aes_256_clk_14[15:8 ]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_14[7:0]     = AES_256_out_3;
                    sbox_dout_aes_256_clk_14[127:120] = AES_256_out_4;
                    sbox_dout_aes_256_clk_14[119:112] = AES_256_out_5;
                    sbox_dout_aes_256_clk_14[111:104] = AES_256_out_6;
                    sbox_dout_aes_256_clk_14[103:96]  = AES_256_out_7;
                    sbox_dout_aes_256_clk_14[95:88]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_14[87:80]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_14[79:72]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_14[71:64]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_14[63:56]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_14[55:48]   = AES_256_out_13;
                end
                6'h15   : begin
                    sbox_dout_aes_256_clk_15[47:40]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_15[39:32]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_15[31:24]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_15[23:16]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_15[15:8]    = AES_256_out_4;
                    sbox_dout_aes_256_clk_15[7:0]     = AES_256_out_5;
                    sbox_kout_aes_256_clk_15[31:24]   = AES_256_out_6;
                    sbox_kout_aes_256_clk_15[23:16]   = AES_256_out_7;
                    sbox_kout_aes_256_clk_15[15:8]    = AES_256_out_8;
                    sbox_kout_aes_256_clk_15[7:0]     = AES_256_out_9;
                    sbox_dout_aes_256_clk_15[127:120] = AES_256_out_10;
                    sbox_dout_aes_256_clk_15[119:112] = AES_256_out_11;
                    sbox_dout_aes_256_clk_15[111:104] = AES_256_out_12;
                    sbox_dout_aes_256_clk_15[103:96]  = AES_256_out_13;
                end
                6'h16   : begin
                    sbox_dout_aes_256_clk_16[95:88]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_16[87:80]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_16[79:72]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_16[71:64]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_16[63:56]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_16[55:48]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_16[47:40]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_16[39:32]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_16[31:24]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_16[23:16]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_16[15:8]    = AES_256_out_10;
                    sbox_dout_aes_256_clk_16[7:0]     = AES_256_out_11;
                    sbox_kout_aes_256_clk_16[31:24]   = AES_256_out_12;
                    sbox_kout_aes_256_clk_16[23:16]   = AES_256_out_13;
                end
                6'h17   : begin
                    sbox_kout_aes_256_clk_17[15:8]    = AES_256_out_0;
                    sbox_kout_aes_256_clk_17[7:0]     = AES_256_out_1;
                    sbox_dout_aes_256_clk_17[127:120] = AES_256_out_2;
                    sbox_dout_aes_256_clk_17[119:112] = AES_256_out_3;
                    sbox_dout_aes_256_clk_17[111:104] = AES_256_out_4;
                    sbox_dout_aes_256_clk_17[103:96]  = AES_256_out_5;
                    sbox_dout_aes_256_clk_17[95:88]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_17[87:80]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_17[79:72]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_17[71:64]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_17[63:56]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_17[55:48]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_17[47:40]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_17[39:32]   = AES_256_out_13;
                end
                6'h18   : begin
                    sbox_dout_aes_256_clk_18[31:24]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_18[23:16]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_18[15:8]    = AES_256_out_2;
                    sbox_dout_aes_256_clk_18[7:0]     = AES_256_out_3;
                    sbox_kout_aes_256_clk_18[31:24]   = AES_256_out_4;
                    sbox_kout_aes_256_clk_18[23:16]   = AES_256_out_5;
                    sbox_kout_aes_256_clk_18[15:8]    = AES_256_out_6;
                    sbox_kout_aes_256_clk_18[7:0]     = AES_256_out_7;
                    sbox_dout_aes_256_clk_18[127:120] = AES_256_out_8;
                    sbox_dout_aes_256_clk_18[119:112] = AES_256_out_9;
                    sbox_dout_aes_256_clk_18[111:104] = AES_256_out_10;
                    sbox_dout_aes_256_clk_18[103:96]  = AES_256_out_11;
                    sbox_dout_aes_256_clk_18[95:88]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_18[87:80]   = AES_256_out_13;
                end
                6'h19   : begin
                    sbox_dout_aes_256_clk_19[79:72]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_19[71:64]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_19[63:56]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_19[55:48]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_19[47:40]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_19[39:32]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_19[31:24]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_19[23:16]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_19[15:8]    = AES_256_out_8;
                    sbox_dout_aes_256_clk_19[7:0]     = AES_256_out_9;
                    sbox_kout_aes_256_clk_19[31:24]   = AES_256_out_10;
                    sbox_kout_aes_256_clk_19[23:16]   = AES_256_out_11;
                    sbox_kout_aes_256_clk_19[15:8]    = AES_256_out_12;
                    sbox_kout_aes_256_clk_19[7:0]     = AES_256_out_13;
                end
                6'h1a   : begin
                    sbox_dout_aes_256_clk_1a[127:120] = AES_256_out_0;
                    sbox_dout_aes_256_clk_1a[119:112] = AES_256_out_1;
                    sbox_dout_aes_256_clk_1a[111:104] = AES_256_out_2;
                    sbox_dout_aes_256_clk_1a[103:96]  = AES_256_out_3;
                    sbox_dout_aes_256_clk_1a[95:88]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_1a[87:80]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_1a[79:72]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_1a[71:64]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_1a[63:56]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_1a[55:48]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_1a[47:40]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_1a[39:32]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_1a[31:24]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_1a[23:16]   = AES_256_out_13;
                end
                6'h1b   : begin
                    sbox_dout_aes_256_clk_1b[15:8]    = AES_256_out_0;
                    sbox_dout_aes_256_clk_1b[7:0]     = AES_256_out_1;
                    sbox_kout_aes_256_clk_1b[31:24]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_1b[23:16]   = AES_256_out_3;
                    sbox_kout_aes_256_clk_1b[15:8]    = AES_256_out_4;
                    sbox_kout_aes_256_clk_1b[7:0]     = AES_256_out_5;
                    sbox_dout_aes_256_clk_1b[127:120] = AES_256_out_6;
                    sbox_dout_aes_256_clk_1b[119:112] = AES_256_out_7;
                    sbox_dout_aes_256_clk_1b[111:104] = AES_256_out_8;
                    sbox_dout_aes_256_clk_1b[103:96]  = AES_256_out_9;
                    sbox_dout_aes_256_clk_1b[95:88]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_1b[87:80]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_1b[79:72]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_1b[71:64]   = AES_256_out_13;
                end
                6'h1c   : begin
                    sbox_dout_aes_256_clk_1c[63:56]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_1c[55:48]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_1c[47:40]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_1c[39:32]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_1c[31:24]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_1c[23:16]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_1c[15:8]    = AES_256_out_6;
                    sbox_dout_aes_256_clk_1c[7:0]     = AES_256_out_7;
                    sbox_kout_aes_256_clk_1c[31:24]   = AES_256_out_8;
                    sbox_kout_aes_256_clk_1c[23:16]   = AES_256_out_9;
                    sbox_kout_aes_256_clk_1c[15:8]    = AES_256_out_10;
                    sbox_kout_aes_256_clk_1c[7:0]     = AES_256_out_11;
                    sbox_dout_aes_256_clk_1c[127:120] = AES_256_out_12;
                    sbox_dout_aes_256_clk_1c[119:112] = AES_256_out_13;
                end
                6'h1d   : begin
                    sbox_dout_aes_256_clk_1d[111:104] = AES_256_out_0;
                    sbox_dout_aes_256_clk_1d[103:96]  = AES_256_out_1;
                    sbox_dout_aes_256_clk_1d[95:88]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_1d[87:80]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_1d[79:72]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_1d[71:64]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_1d[63:56]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_1d[55:48]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_1d[47:40]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_1d[39:32]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_1d[31:24]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_1d[23:16]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_1d[15:8]    = AES_256_out_12;
                    sbox_dout_aes_256_clk_1d[7:0]     = AES_256_out_13;
                end
                6'h1e   : begin
                    sbox_kout_aes_256_clk_1e[31:24]   = AES_256_out_0;
                    sbox_kout_aes_256_clk_1e[23:16]   = AES_256_out_1;
                    sbox_kout_aes_256_clk_1e[15:8 ]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_1e[7:0]     = AES_256_out_3;
                    sbox_dout_aes_256_clk_1e[127:120] = AES_256_out_4;
                    sbox_dout_aes_256_clk_1e[119:112] = AES_256_out_5;
                    sbox_dout_aes_256_clk_1e[111:104] = AES_256_out_6;
                    sbox_dout_aes_256_clk_1e[103:96]  = AES_256_out_7;
                    sbox_dout_aes_256_clk_1e[95:88]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_1e[87:80]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_1e[79:72]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_1e[71:64]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_1e[63:56]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_1e[55:48]   = AES_256_out_13;
                end
                6'h1f   : begin
                    sbox_dout_aes_256_clk_1f[47:40]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_1f[39:32]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_1f[31:24]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_1f[23:16]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_1f[15:8]    = AES_256_out_4;
                    sbox_dout_aes_256_clk_1f[7:0]     = AES_256_out_5;
                    sbox_kout_aes_256_clk_1f[31:24]   = AES_256_out_6;
                    sbox_kout_aes_256_clk_1f[23:16]   = AES_256_out_7;
                    sbox_kout_aes_256_clk_1f[15:8]    = AES_256_out_8;
                    sbox_kout_aes_256_clk_1f[7:0]     = AES_256_out_9;
                    sbox_dout_aes_256_clk_1f[127:120] = AES_256_out_10;
                    sbox_dout_aes_256_clk_1f[119:112] = AES_256_out_11;
                    sbox_dout_aes_256_clk_1f[111:104] = AES_256_out_12;
                    sbox_dout_aes_256_clk_1f[103:96]  = AES_256_out_13;
                end
                6'h20   : begin
                    sbox_dout_aes_256_clk_20[95:88]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_20[87:80]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_20[79:72]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_20[71:64]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_20[63:56]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_20[55:48]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_20[47:40]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_20[39:32]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_20[31:24]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_20[23:16]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_20[15:8]    = AES_256_out_10;
                    sbox_dout_aes_256_clk_20[7:0]     = AES_256_out_11;
                    sbox_kout_aes_256_clk_20[31:24]   = AES_256_out_12;
                    sbox_kout_aes_256_clk_20[23:16]   = AES_256_out_13;
                end
                6'h21   : begin
                    sbox_kout_aes_256_clk_21[15:8]    = AES_256_out_0;
                    sbox_kout_aes_256_clk_21[7:0]     = AES_256_out_1;
                    sbox_dout_aes_256_clk_21[127:120] = AES_256_out_2;
                    sbox_dout_aes_256_clk_21[119:112] = AES_256_out_3;
                    sbox_dout_aes_256_clk_21[111:104] = AES_256_out_4;
                    sbox_dout_aes_256_clk_21[103:96]  = AES_256_out_5;
                    sbox_dout_aes_256_clk_21[95:88]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_21[87:80]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_21[79:72]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_21[71:64]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_21[63:56]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_21[55:48]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_21[47:40]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_21[39:32]   = AES_256_out_13;
                end
                6'h22   : begin
                    sbox_dout_aes_256_clk_22[31:24]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_22[23:16]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_22[15:8]    = AES_256_out_2;
                    sbox_dout_aes_256_clk_22[7:0]     = AES_256_out_3;
                    sbox_kout_aes_256_clk_22[31:24]   = AES_256_out_4;
                    sbox_kout_aes_256_clk_22[23:16]   = AES_256_out_5;
                    sbox_kout_aes_256_clk_22[15:8]    = AES_256_out_6;
                    sbox_kout_aes_256_clk_22[7:0]     = AES_256_out_7;
                    sbox_dout_aes_256_clk_22[127:120] = AES_256_out_8;
                    sbox_dout_aes_256_clk_22[119:112] = AES_256_out_9;
                    sbox_dout_aes_256_clk_22[111:104] = AES_256_out_10;
                    sbox_dout_aes_256_clk_22[103:96]  = AES_256_out_11;
                    sbox_dout_aes_256_clk_22[95:88]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_22[87:80]   = AES_256_out_13;
                end
                6'h23   : begin
                    sbox_dout_aes_256_clk_23[79:72]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_23[71:64]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_23[63:56]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_23[55:48]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_23[47:40]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_23[39:32]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_23[31:24]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_23[23:16]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_23[15:8]    = AES_256_out_8;
                    sbox_dout_aes_256_clk_23[7:0]     = AES_256_out_9;
                    sbox_kout_aes_256_clk_23[31:24]   = AES_256_out_10;
                    sbox_kout_aes_256_clk_23[23:16]   = AES_256_out_11;
                    sbox_kout_aes_256_clk_23[15:8]    = AES_256_out_12;
                    sbox_kout_aes_256_clk_23[7:0]     = AES_256_out_13;
                end
                6'h24   : begin
                    sbox_dout_aes_256_clk_24[127:120] = AES_256_out_0;
                    sbox_dout_aes_256_clk_24[119:112] = AES_256_out_1;
                    sbox_dout_aes_256_clk_24[111:104] = AES_256_out_2;
                    sbox_dout_aes_256_clk_24[103:96]  = AES_256_out_3;
                    sbox_dout_aes_256_clk_24[95:88]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_24[87:80]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_24[79:72]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_24[71:64]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_24[63:56]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_24[55:48]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_24[47:40]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_24[39:32]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_24[31:24]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_24[23:16]   = AES_256_out_13;
                end
                6'h25   : begin
                    sbox_dout_aes_256_clk_25[15:8]    = AES_256_out_0;
                    sbox_dout_aes_256_clk_25[7:0]     = AES_256_out_1;
                    sbox_kout_aes_256_clk_25[31:24]   = AES_256_out_2;
                    sbox_kout_aes_256_clk_25[23:16]   = AES_256_out_3;
                    sbox_kout_aes_256_clk_25[15:8]    = AES_256_out_4;
                    sbox_kout_aes_256_clk_25[7:0]     = AES_256_out_5;
                    sbox_dout_aes_256_clk_25[127:120] = AES_256_out_6;
                    sbox_dout_aes_256_clk_25[119:112] = AES_256_out_7;
                    sbox_dout_aes_256_clk_25[111:104] = AES_256_out_8;
                    sbox_dout_aes_256_clk_25[103:96]  = AES_256_out_9;
                    sbox_dout_aes_256_clk_25[95:88]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_25[87:80]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_25[79:72]   = AES_256_out_12;
                    sbox_dout_aes_256_clk_25[71:64]   = AES_256_out_13;
                end
                6'h26   : begin
                    sbox_dout_aes_256_clk_26[63:56]   = AES_256_out_0;
                    sbox_dout_aes_256_clk_26[55:48]   = AES_256_out_1;
                    sbox_dout_aes_256_clk_26[47:40]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_26[39:32]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_26[31:24]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_26[23:16]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_26[15:8]    = AES_256_out_6;
                    sbox_dout_aes_256_clk_26[7:0]     = AES_256_out_7;
                    sbox_kout_aes_256_clk_26[31:24]   = AES_256_out_8;
                    sbox_kout_aes_256_clk_26[23:16]   = AES_256_out_9;
                    sbox_kout_aes_256_clk_26[15:8]    = AES_256_out_10;
                    sbox_kout_aes_256_clk_26[7:0]     = AES_256_out_11;
                    sbox_dout_aes_256_clk_26[127:120] = AES_256_out_12;
                    sbox_dout_aes_256_clk_26[119:112] = AES_256_out_13;
                end
                6'h27   : begin
                    sbox_dout_aes_256_clk_27[111:104] = AES_256_out_0;
                    sbox_dout_aes_256_clk_27[103:96]  = AES_256_out_1;
                    sbox_dout_aes_256_clk_27[95:88]   = AES_256_out_2;
                    sbox_dout_aes_256_clk_27[87:80]   = AES_256_out_3;
                    sbox_dout_aes_256_clk_27[79:72]   = AES_256_out_4;
                    sbox_dout_aes_256_clk_27[71:64]   = AES_256_out_5;
                    sbox_dout_aes_256_clk_27[63:56]   = AES_256_out_6;
                    sbox_dout_aes_256_clk_27[55:48]   = AES_256_out_7;
                    sbox_dout_aes_256_clk_27[47:40]   = AES_256_out_8;
                    sbox_dout_aes_256_clk_27[39:32]   = AES_256_out_9;
                    sbox_dout_aes_256_clk_27[31:24]   = AES_256_out_10;
                    sbox_dout_aes_256_clk_27[23:16]   = AES_256_out_11;
                    sbox_dout_aes_256_clk_27[15:8]    = AES_256_out_12;
                    sbox_dout_aes_256_clk_27[7:0]     = AES_256_out_13;
                end
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : begin
                    BK_0_round_0[31:24] = SM4_out_0;
                    BK_0_round_0[23:16] = SM4_out_1;
                    BK_0_round_0[15:8]  = SM4_out_2;
                    BK_0_round_0[7:0]   = SM4_out_3;
                    B_0_round_0[31:24]  = SM4_out_4;
                    B_0_round_0[23:16]  = SM4_out_5;
                    B_0_round_0[15:8]   = SM4_out_6; 
                    B_0_round_0[7:0]    = SM4_out_7;
                    BK_1_round_1[31:24] = SM4_out_8;
                    BK_1_round_1[23:16] = SM4_out_9;
                    BK_1_round_1[15:8]  = SM4_out_10;
                    BK_1_round_1[7:0]   = SM4_out_11;
                    B_1_round_1[31:24]  = SM4_out_12;
                end
                6'h1    : begin
                    B_1_round_1[23:16]  = SM4_out_0;
                    B_1_round_1[15:8]   = SM4_out_1;
                    B_1_round_1[7:0]    = SM4_out_2;
                    BK_0_round_2[31:24] = SM4_out_3;
                    BK_0_round_2[23:16] = SM4_out_4;
                    BK_0_round_2[15:8]  = SM4_out_5;
                    BK_0_round_2[7:0]   = SM4_out_6; 
                    B_0_round_2[31:24]  = SM4_out_7;
                    B_0_round_2[23:16]  = SM4_out_8;
                    B_0_round_2[15:8]   = SM4_out_9;
                    B_0_round_2[7:0]    = SM4_out_10;
                    BK_1_round_3[31:24] = SM4_out_11;
                    BK_1_round_3[23:16] = SM4_out_12;
                end
                6'h2    : begin
                    BK_1_round_3[15:8]  = SM4_out_0;
                    BK_1_round_3[7:0]   = SM4_out_1;
                    B_1_round_3[31:24]  = SM4_out_2;
                    B_1_round_3[23:16]  = SM4_out_3;
                    B_1_round_3[15:8]   = SM4_out_4;
                    B_1_round_3[7:0]    = SM4_out_5;
                    BK_0_round_4[31:24] = SM4_out_6;
                    BK_0_round_4[23:16] = SM4_out_7;
                    BK_0_round_4[15:8]  = SM4_out_8;
                    BK_0_round_4[7:0]   = SM4_out_9;
                    B_0_round_4[31:24]  = SM4_out_10;
                    B_0_round_4[23:16]  = SM4_out_11;
                    B_0_round_4[15:8]   = SM4_out_12;
                end
                6'h3    : begin
                    B_0_round_4[7:0]    = SM4_out_0;
                    BK_1_round_5[31:24] = SM4_out_1;
                    BK_1_round_5[23:16] = SM4_out_2;
                    BK_1_round_5[15:8]  = SM4_out_3;
                    BK_1_round_5[7:0]   = SM4_out_4;
                    B_1_round_5[31:24]  = SM4_out_5;
                    B_1_round_5[23:16]  = SM4_out_6;
                    B_1_round_5[15:8]   = SM4_out_7;
                    B_1_round_5[7:0]    = SM4_out_8;
                    BK_0_round_6[31:24] = SM4_out_9;
                    BK_0_round_6[23:16] = SM4_out_10;
                    BK_0_round_6[15:8]  = SM4_out_11;
                    BK_0_round_6[7:0]   = SM4_out_12;
                end
                6'h4    : begin
                    B_0_round_6[31:24]  = SM4_out_0;
                    B_0_round_6[23:16]  = SM4_out_1;
                    B_0_round_6[15:8]   = SM4_out_2;
                    B_0_round_6[7:0]    = SM4_out_3;
                    BK_1_round_7[31:24] = SM4_out_4;
                    BK_1_round_7[23:16] = SM4_out_5;
                    BK_1_round_7[15:8]  = SM4_out_6;
                    BK_1_round_7[7:0]   = SM4_out_7;
                    B_1_round_7[31:24]  = SM4_out_8;
                    B_1_round_7[23:16]  = SM4_out_9;
                    B_1_round_7[15:8]   = SM4_out_10;
                    B_1_round_7[7:0]    = SM4_out_11;
                    BK_0_round_8[31:24] = SM4_out_12;
                end
                6'h5    : begin
                    BK_0_round_8[23:16] = SM4_out_0;
                    BK_0_round_8[15:8]  = SM4_out_1;
                    BK_0_round_8[7:0]   = SM4_out_2;
                    B_0_round_8[31:24]  = SM4_out_3;
                    B_0_round_8[23:16]  = SM4_out_4;
                    B_0_round_8[15:8]   = SM4_out_5;
                    B_0_round_8[7:0]    = SM4_out_6;
                    BK_1_round_9[31:24] = SM4_out_7;
                    BK_1_round_9[23:16] = SM4_out_8;
                    BK_1_round_9[15:8]  = SM4_out_9;
                    BK_1_round_9[7:0]   = SM4_out_10;
                    B_1_round_9[31:24]  = SM4_out_11;
                    B_1_round_9[23:16]  = SM4_out_12;
                end
                6'h6    : begin
                    B_1_round_9[15:8]   = SM4_out_0;
                    B_1_round_9[7:0]    = SM4_out_1;
                    BK_0_round_10[31:24]= SM4_out_2;
                    BK_0_round_10[23:16]= SM4_out_3;
                    BK_0_round_10[15:8] = SM4_out_4;
                    BK_0_round_10[7:0]  = SM4_out_5;
                    B_0_round_10[31:24] = SM4_out_6;
                    B_0_round_10[23:16] = SM4_out_7;
                    B_0_round_10[15:8]  = SM4_out_8;
                    B_0_round_10[7:0]   = SM4_out_9;
                    BK_1_round_11[31:24]= SM4_out_10;
                    BK_1_round_11[23:16]= SM4_out_11;
                    BK_1_round_11[15:8] = SM4_out_12;
                end
                6'h7    : begin
                    BK_1_round_11[7:0]  = SM4_out_0;
                    B_1_round_11[31:24] = SM4_out_1;
                    B_1_round_11[23:16] = SM4_out_2;
                    B_1_round_11[15:8]  = SM4_out_3;
                    B_1_round_11[7:0]   = SM4_out_4;
                    BK_0_round_12[31:24]= SM4_out_5;
                    BK_0_round_12[23:16]= SM4_out_6;
                    BK_0_round_12[15:8] = SM4_out_7;
                    BK_0_round_12[7:0]  = SM4_out_8;
                    B_0_round_12[31:24] = SM4_out_9;
                    B_0_round_12[23:16] = SM4_out_10;
                    B_0_round_12[15:8]  = SM4_out_11;
                    B_0_round_12[7:0]   = SM4_out_12;
                end
                6'h8    : begin
                    BK_1_round_13[31:24]= SM4_out_0;
                    BK_1_round_13[23:16]= SM4_out_1;
                    BK_1_round_13[15:8] = SM4_out_2;
                    BK_1_round_13[7:0]  = SM4_out_3;
                    B_1_round_13[31:24] = SM4_out_4;
                    B_1_round_13[23:16] = SM4_out_5;
                    B_1_round_13[15:8]  = SM4_out_6;
                    B_1_round_13[7:0]   = SM4_out_7;
                    BK_0_round_14[31:24]= SM4_out_8;
                    BK_0_round_14[23:16]= SM4_out_9;
                    BK_0_round_14[15:8] = SM4_out_10;
                    BK_0_round_14[7:0]  = SM4_out_11;
                    B_0_round_14[31:24] = SM4_out_12;
                end
                6'h9    : begin
                    B_0_round_14[23:16] = SM4_out_0;
                    B_0_round_14[15:8]  = SM4_out_1;
                    B_0_round_14[7:0]   = SM4_out_2;
                    BK_1_round_15[31:24]= SM4_out_3;
                    BK_1_round_15[23:16]= SM4_out_4;
                    BK_1_round_15[15:8] = SM4_out_5;
                    BK_1_round_15[7:0]  = SM4_out_6;
                    B_1_round_15[31:24] = SM4_out_7;
                    B_1_round_15[23:16] = SM4_out_8;
                    B_1_round_15[15:8]  = SM4_out_9;
                    B_1_round_15[7:0]   = SM4_out_10;
                    BK_0_round_16[31:24]= SM4_out_11;
                    BK_0_round_16[23:16]= SM4_out_12;
                end
                6'ha    : begin
                    BK_0_round_16[15:8] = SM4_out_0;
                    BK_0_round_16[7:0]  = SM4_out_1;
                    B_0_round_16[31:24] = SM4_out_2;
                    B_0_round_16[23:16] = SM4_out_3;
                    B_0_round_16[15:8]  = SM4_out_4;
                    B_0_round_16[7:0]   = SM4_out_5;
                    BK_1_round_17[31:24]= SM4_out_6;
                    BK_1_round_17[23:16]= SM4_out_7;
                    BK_1_round_17[15:8] = SM4_out_8;
                    BK_1_round_17[7:0]  = SM4_out_9;
                    B_1_round_17[31:24] = SM4_out_10;
                    B_1_round_17[23:16] = SM4_out_11;
                    B_1_round_17[15:8]  = SM4_out_12;
                end
                6'hb    : begin
                    B_1_round_17[7:0]   = SM4_out_0;
                    BK_0_round_18[31:24]= SM4_out_1;
                    BK_0_round_18[23:16]= SM4_out_2;
                    BK_0_round_18[15:8] = SM4_out_3;
                    BK_0_round_18[7:0]  = SM4_out_4;
                    B_0_round_18[31:24] = SM4_out_5;
                    B_0_round_18[23:16] = SM4_out_6;
                    B_0_round_18[15:8]  = SM4_out_7;
                    B_0_round_18[7:0]   = SM4_out_8;
                    BK_1_round_19[31:24]= SM4_out_9;
                    BK_1_round_19[23:16]= SM4_out_10;
                    BK_1_round_19[15:8] = SM4_out_11;
                    BK_1_round_19[7:0]  = SM4_out_12;
                end
                6'hc    : begin
                    B_1_round_19[31:24] = SM4_out_0;
                    B_1_round_19[23:16] = SM4_out_1;
                    B_1_round_19[15:8]  = SM4_out_2;
                    B_1_round_19[7:0]   = SM4_out_3;
                    BK_0_round_20[31:24]= SM4_out_4;
                    BK_0_round_20[23:16]= SM4_out_5;
                    BK_0_round_20[15:8] = SM4_out_6;
                    BK_0_round_20[7:0]  = SM4_out_7;
                    B_0_round_20[31:24] = SM4_out_8;
                    B_0_round_20[23:16] = SM4_out_9;
                    B_0_round_20[15:8]  = SM4_out_10;
                    B_0_round_20[7:0]   = SM4_out_11;
                    BK_1_round_21[31:24]= SM4_out_12;
                end
                6'hd    : begin
                    BK_1_round_21[23:16]= SM4_out_0;
                    BK_1_round_21[15:8] = SM4_out_1;
                    BK_1_round_21[7:0]  = SM4_out_2;
                    B_1_round_21[31:24] = SM4_out_3;
                    B_1_round_21[23:16] = SM4_out_4;
                    B_1_round_21[15:8]  = SM4_out_5;
                    B_1_round_21[7:0]   = SM4_out_6;
                    BK_0_round_22[31:24]= SM4_out_7;
                    BK_0_round_22[23:16]= SM4_out_8;
                    BK_0_round_22[15:8] = SM4_out_9;
                    BK_0_round_22[7:0]  = SM4_out_10;
                    B_0_round_22[31:24] = SM4_out_11;
                    B_0_round_22[23:16] = SM4_out_12;
                end
                6'he    : begin
                    B_0_round_22[15:8]  = SM4_out_0;
                    B_0_round_22[7:0]   = SM4_out_1;
                    BK_1_round_23[31:24]= SM4_out_2;
                    BK_1_round_23[23:16]= SM4_out_3;
                    BK_1_round_23[15:8] = SM4_out_4;
                    BK_1_round_23[7:0]  = SM4_out_5;
                    B_1_round_23[31:24] = SM4_out_6;
                    B_1_round_23[23:16] = SM4_out_7;
                    B_1_round_23[15:8]  = SM4_out_8;
                    B_1_round_23[7:0]   = SM4_out_9;
                    BK_0_round_24[31:24]= SM4_out_10;
                    BK_0_round_24[23:16]= SM4_out_11;
                    BK_0_round_24[15:8] = SM4_out_12;
                end
                6'hf    : begin
                    BK_0_round_24[7:0]  = SM4_out_0;
                    B_0_round_24[31:24] = SM4_out_1;
                    B_0_round_24[23:16] = SM4_out_2;
                    B_0_round_24[15:8]  = SM4_out_3;
                    B_0_round_24[7:0]   = SM4_out_4;
                    BK_1_round_25[31:24]= SM4_out_5;
                    BK_1_round_25[23:16]= SM4_out_6;
                    BK_1_round_25[15:8] = SM4_out_7;
                    BK_1_round_25[7:0]  = SM4_out_8;
                    B_1_round_25[31:24] = SM4_out_9;
                    B_1_round_25[23:16] = SM4_out_10;
                    B_1_round_25[15:8]  = SM4_out_11;
                    B_1_round_25[7:0]   = SM4_out_12;
                end
                6'h10   : begin
                    BK_0_round_26[31:24]= SM4_out_0;
                    BK_0_round_26[23:16]= SM4_out_1;
                    BK_0_round_26[15:8] = SM4_out_2;
                    BK_0_round_26[7:0]  = SM4_out_3;
                    B_0_round_26[31:24] = SM4_out_4;
                    B_0_round_26[23:16] = SM4_out_5;
                    B_0_round_26[15:8]  = SM4_out_6;
                    B_0_round_26[7:0]   = SM4_out_7;
                    BK_1_round_27[31:24]= SM4_out_8;
                    BK_1_round_27[23:16]= SM4_out_9;
                    BK_1_round_27[15:8] = SM4_out_10;
                    BK_1_round_27[7:0]  = SM4_out_11;
                    B_1_round_27[31:24] = SM4_out_12;
                end
                6'h11   : begin
                    B_1_round_27[23:16] = SM4_out_0;
                    B_1_round_27[15:8]  = SM4_out_1;
                    B_1_round_27[7:0]   = SM4_out_2;
                    BK_0_round_28[31:24]= SM4_out_3;
                    BK_0_round_28[23:16]= SM4_out_4;
                    BK_0_round_28[15:8] = SM4_out_5;
                    BK_0_round_28[7:0]  = SM4_out_6;
                    B_0_round_28[31:24] = SM4_out_7;
                    B_0_round_28[23:16] = SM4_out_8;
                    B_0_round_28[15:8]  = SM4_out_9;
                    B_0_round_28[7:0]   = SM4_out_10;
                    BK_1_round_29[31:24]= SM4_out_11;
                    BK_1_round_29[23:16]= SM4_out_12;
                end
                6'h12   : begin
                    BK_1_round_29[15:8] = SM4_out_0;
                    BK_1_round_29[7:0]  = SM4_out_1;
                    B_1_round_29[31:24] = SM4_out_2;
                    B_1_round_29[23:16] = SM4_out_3;
                    B_1_round_29[15:8]  = SM4_out_4;
                    B_1_round_29[7:0]   = SM4_out_5;
                    BK_0_round_30[31:24]= SM4_out_6;
                    BK_0_round_30[23:16]= SM4_out_7;
                    BK_0_round_30[15:8] = SM4_out_8;
                    BK_0_round_30[7:0]  = SM4_out_9;
                    B_0_round_30[31:24] = SM4_out_10;
                    B_0_round_30[23:16] = SM4_out_11;
                    B_0_round_30[15:8]  = SM4_out_12;
                end
                6'h13   : begin
                    B_0_round_30[7:0]   = SM4_out_0;
                    BK_1_round_31[31:24]= SM4_out_1;
                    BK_1_round_31[23:16]= SM4_out_2;
                    BK_1_round_31[15:8] = SM4_out_3;
                    BK_1_round_31[7:0]  = SM4_out_4;
                    B_1_round_31[31:24] = SM4_out_5;
                    B_1_round_31[23:16] = SM4_out_6;
                    B_1_round_31[15:8]  = SM4_out_7;
                    B_1_round_31[7:0]   = SM4_out_8;
                end
                6'h14   : begin
                    BK_0_round_32[31:24]= SM4_out_0;
                    BK_0_round_32[23:16]= SM4_out_1;
                    BK_0_round_32[15:8] = SM4_out_2;
                    BK_0_round_32[7:0]  = SM4_out_3;
                    B_0_round_32[31:24] = SM4_out_4;
                    B_0_round_32[23:16] = SM4_out_5;
                    B_0_round_32[15:8]  = SM4_out_6; 
                    B_0_round_32[7:0]   = SM4_out_7;
                    BK_1_round_33[31:24]= SM4_out_8;
                    BK_1_round_33[23:16]= SM4_out_9;
                    BK_1_round_33[15:8] = SM4_out_10;
                    BK_1_round_33[7:0]  = SM4_out_11;
                    B_1_round_33[31:24] = SM4_out_12;
                end
                6'h15   : begin
                    B_1_round_33[23:16] = SM4_out_0;
                    B_1_round_33[15:8]  = SM4_out_1;
                    B_1_round_33[7:0]   = SM4_out_2;
                    BK_0_round_34[31:24]= SM4_out_3;
                    BK_0_round_34[23:16]= SM4_out_4;
                    BK_0_round_34[15:8] = SM4_out_5;
                    BK_0_round_34[7:0]  = SM4_out_6; 
                    B_0_round_34[31:24] = SM4_out_7;
                    B_0_round_34[23:16] = SM4_out_8;
                    B_0_round_34[15:8]  = SM4_out_9;
                    B_0_round_34[7:0]   = SM4_out_10;
                    BK_1_round_35[31:24]= SM4_out_11;
                    BK_1_round_35[23:16]= SM4_out_12;
                end
                6'h16   : begin
                    BK_1_round_35[15:8] = SM4_out_0;
                    BK_1_round_35[7:0]  = SM4_out_1;
                    B_1_round_35[31:24] = SM4_out_2;
                    B_1_round_35[23:16] = SM4_out_3;
                    B_1_round_35[15:8]  = SM4_out_4;
                    B_1_round_35[7:0]   = SM4_out_5;
                    BK_0_round_36[31:24]= SM4_out_6;
                    BK_0_round_36[23:16]= SM4_out_7;
                    BK_0_round_36[15:8] = SM4_out_8;
                    BK_0_round_36[7:0]  = SM4_out_9;
                    B_0_round_36[31:24] = SM4_out_10;
                    B_0_round_36[23:16] = SM4_out_11;
                    B_0_round_36[15:8]  = SM4_out_12;
                end
                6'h17   : begin
                    B_0_round_36[7:0]   = SM4_out_0;
                    BK_1_round_37[31:24]= SM4_out_1;
                    BK_1_round_37[23:16]= SM4_out_2;
                    BK_1_round_37[15:8] = SM4_out_3;
                    BK_1_round_37[7:0]  = SM4_out_4;
                    B_1_round_37[31:24] = SM4_out_5;
                    B_1_round_37[23:16] = SM4_out_6;
                    B_1_round_37[15:8]  = SM4_out_7;
                    B_1_round_37[7:0]   = SM4_out_8;
                    BK_0_round_38[31:24]= SM4_out_9;
                    BK_0_round_38[23:16]= SM4_out_10;
                    BK_0_round_38[15:8] = SM4_out_11;
                    BK_0_round_38[7:0]  = SM4_out_12;
                end
                6'h18   : begin
                    B_0_round_38[31:24] = SM4_out_0;
                    B_0_round_38[23:16] = SM4_out_1;
                    B_0_round_38[15:8]  = SM4_out_2;
                    B_0_round_38[7:0]   = SM4_out_3;
                    BK_1_round_39[31:24]= SM4_out_4;
                    BK_1_round_39[23:16]= SM4_out_5;
                    BK_1_round_39[15:8] = SM4_out_6;
                    BK_1_round_39[7:0]  = SM4_out_7;
                    B_1_round_39[31:24] = SM4_out_8;
                    B_1_round_39[23:16] = SM4_out_9;
                    B_1_round_39[15:8]  = SM4_out_10;
                    B_1_round_39[7:0]   = SM4_out_11;
                    BK_0_round_40[31:24]= SM4_out_12;
                end
                6'h19   : begin
                    BK_0_round_40[23:16]= SM4_out_0;
                    BK_0_round_40[15:8] = SM4_out_1;
                    BK_0_round_40[7:0]  = SM4_out_2;
                    B_0_round_40[31:24] = SM4_out_3;
                    B_0_round_40[23:16] = SM4_out_4;
                    B_0_round_40[15:8]  = SM4_out_5;
                    B_0_round_40[7:0]   = SM4_out_6;
                    BK_1_round_41[31:24]= SM4_out_7;
                    BK_1_round_41[23:16]= SM4_out_8;
                    BK_1_round_41[15:8] = SM4_out_9;
                    BK_1_round_41[7:0]  = SM4_out_10;
                    B_1_round_41[31:24] = SM4_out_11;
                    B_1_round_41[23:16] = SM4_out_12;
                end
                6'h1a   : begin
                    B_1_round_41[15:8]  = SM4_out_0;
                    B_1_round_41[7:0]   = SM4_out_1;
                    BK_0_round_42[31:24]= SM4_out_2;
                    BK_0_round_42[23:16]= SM4_out_3;
                    BK_0_round_42[15:8] = SM4_out_4;
                    BK_0_round_42[7:0]  = SM4_out_5;
                    B_0_round_42[31:24] = SM4_out_6;
                    B_0_round_42[23:16] = SM4_out_7;
                    B_0_round_42[15:8]  = SM4_out_8;
                    B_0_round_42[7:0]   = SM4_out_9;
                    BK_1_round_43[31:24]= SM4_out_10;
                    BK_1_round_43[23:16]= SM4_out_11;
                    BK_1_round_43[15:8] = SM4_out_12;
                end
                6'h1b   : begin
                    BK_1_round_43[7:0]  = SM4_out_0;
                    B_1_round_43[31:24] = SM4_out_1;
                    B_1_round_43[23:16] = SM4_out_2;
                    B_1_round_43[15:8]  = SM4_out_3;
                    B_1_round_43[7:0]   = SM4_out_4;
                    BK_0_round_44[31:24]= SM4_out_5;
                    BK_0_round_44[23:16]= SM4_out_6;
                    BK_0_round_44[15:8] = SM4_out_7;
                    BK_0_round_44[7:0]  = SM4_out_8;
                    B_0_round_44[31:24] = SM4_out_9;
                    B_0_round_44[23:16] = SM4_out_10;
                    B_0_round_44[15:8]  = SM4_out_11;
                    B_0_round_44[7:0]   = SM4_out_12;
                end
                6'h1c   : begin
                    BK_1_round_45[31:24]= SM4_out_0;
                    BK_1_round_45[23:16]= SM4_out_1;
                    BK_1_round_45[15:8] = SM4_out_2;
                    BK_1_round_45[7:0]  = SM4_out_3;
                    B_1_round_45[31:24] = SM4_out_4;
                    B_1_round_45[23:16] = SM4_out_5;
                    B_1_round_45[15:8]  = SM4_out_6;
                    B_1_round_45[7:0]   = SM4_out_7;
                    BK_0_round_46[31:24]= SM4_out_8;
                    BK_0_round_46[23:16]= SM4_out_9;
                    BK_0_round_46[15:8] = SM4_out_10;
                    BK_0_round_46[7:0]  = SM4_out_11;
                    B_0_round_46[31:24] = SM4_out_12;
                end
                6'h1d   : begin
                    B_0_round_46[23:16] = SM4_out_0;
                    B_0_round_46[15:8]  = SM4_out_1;
                    B_0_round_46[7:0]   = SM4_out_2;
                    BK_1_round_47[31:24]= SM4_out_3;
                    BK_1_round_47[23:16]= SM4_out_4;
                    BK_1_round_47[15:8] = SM4_out_5;
                    BK_1_round_47[7:0]  = SM4_out_6;
                    B_1_round_47[31:24] = SM4_out_7;
                    B_1_round_47[23:16] = SM4_out_8;
                    B_1_round_47[15:8]  = SM4_out_9;
                    B_1_round_47[7:0]   = SM4_out_10;
                    BK_0_round_48[31:24]= SM4_out_11;
                    BK_0_round_48[23:16]= SM4_out_12;
                end
                6'h1e   : begin
                    BK_0_round_48[15:8] = SM4_out_0;
                    BK_0_round_48[7:0]  = SM4_out_1;
                    B_0_round_48[31:24] = SM4_out_2;
                    B_0_round_48[23:16] = SM4_out_3;
                    B_0_round_48[15:8]  = SM4_out_4;
                    B_0_round_48[7:0]   = SM4_out_5;
                    BK_1_round_49[31:24]= SM4_out_6;
                    BK_1_round_49[23:16]= SM4_out_7;
                    BK_1_round_49[15:8] = SM4_out_8;
                    BK_1_round_49[7:0]  = SM4_out_9;
                    B_1_round_49[31:24] = SM4_out_10;
                    B_1_round_49[23:16] = SM4_out_11;
                    B_1_round_49[15:8]  = SM4_out_12;
                end
                6'h1f   : begin
                    B_1_round_49[7:0]   = SM4_out_0;
                    BK_0_round_50[31:24]= SM4_out_1;
                    BK_0_round_50[23:16]= SM4_out_2;
                    BK_0_round_50[15:8] = SM4_out_3;
                    BK_0_round_50[7:0]  = SM4_out_4;
                    B_0_round_50[31:24] = SM4_out_5;
                    B_0_round_50[23:16] = SM4_out_6;
                    B_0_round_50[15:8]  = SM4_out_7;
                    B_0_round_50[7:0]   = SM4_out_8;
                    BK_1_round_51[31:24]= SM4_out_9;
                    BK_1_round_51[23:16]= SM4_out_10;
                    BK_1_round_51[15:8] = SM4_out_11;
                    BK_1_round_51[7:0]  = SM4_out_12;
                end
                6'h20   : begin
                    B_1_round_51[31:24] = SM4_out_0;
                    B_1_round_51[23:16] = SM4_out_1;
                    B_1_round_51[15:8]  = SM4_out_2;
                    B_1_round_51[7:0]   = SM4_out_3;
                    BK_0_round_52[31:24]= SM4_out_4;
                    BK_0_round_52[23:16]= SM4_out_5;
                    BK_0_round_52[15:8] = SM4_out_6;
                    BK_0_round_52[7:0]  = SM4_out_7;
                    B_0_round_52[31:24] = SM4_out_8;
                    B_0_round_52[23:16] = SM4_out_9;
                    B_0_round_52[15:8]  = SM4_out_10;
                    B_0_round_52[7:0]   = SM4_out_11;
                    BK_1_round_53[31:24]= SM4_out_12;
                end
                6'h21   : begin
                    BK_1_round_53[23:16]= SM4_out_0;
                    BK_1_round_53[15:8] = SM4_out_1;
                    BK_1_round_53[7:0]  = SM4_out_2;
                    B_1_round_53[31:24] = SM4_out_3;
                    B_1_round_53[23:16] = SM4_out_4;
                    B_1_round_53[15:8]  = SM4_out_5;
                    B_1_round_53[7:0]   = SM4_out_6;
                    BK_0_round_54[31:24]= SM4_out_7;
                    BK_0_round_54[23:16]= SM4_out_8;
                    BK_0_round_54[15:8] = SM4_out_9;
                    BK_0_round_54[7:0]  = SM4_out_10;
                    B_0_round_54[31:24] = SM4_out_11;
                    B_0_round_54[23:16] = SM4_out_12;
                end
                6'h22   : begin
                    B_0_round_54[15:8]  = SM4_out_0;
                    B_0_round_54[7:0]   = SM4_out_1;
                    BK_1_round_55[31:24]= SM4_out_2;
                    BK_1_round_55[23:16]= SM4_out_3;
                    BK_1_round_55[15:8] = SM4_out_4;
                    BK_1_round_55[7:0]  = SM4_out_5;
                    B_1_round_55[31:24] = SM4_out_6;
                    B_1_round_55[23:16] = SM4_out_7;
                    B_1_round_55[15:8]  = SM4_out_8;
                    B_1_round_55[7:0]   = SM4_out_9;
                    BK_0_round_56[31:24]= SM4_out_10;
                    BK_0_round_56[23:16]= SM4_out_11;
                    BK_0_round_56[15:8] = SM4_out_12;
                end
                6'h23   : begin
                    BK_0_round_56[7:0]  = SM4_out_0;
                    B_0_round_56[31:24] = SM4_out_1;
                    B_0_round_56[23:16] = SM4_out_2;
                    B_0_round_56[15:8]  = SM4_out_3;
                    B_0_round_56[7:0]   = SM4_out_4;
                    BK_1_round_57[31:24]= SM4_out_5;
                    BK_1_round_57[23:16]= SM4_out_6;
                    BK_1_round_57[15:8] = SM4_out_7;
                    BK_1_round_57[7:0]  = SM4_out_8;
                    B_1_round_57[31:24] = SM4_out_9;
                    B_1_round_57[23:16] = SM4_out_10;
                    B_1_round_57[15:8]  = SM4_out_11;
                    B_1_round_57[7:0]   = SM4_out_12;
                end
                6'h24   : begin
                    BK_0_round_58[31:24]= SM4_out_0;
                    BK_0_round_58[23:16]= SM4_out_1;
                    BK_0_round_58[15:8] = SM4_out_2;
                    BK_0_round_58[7:0]  = SM4_out_3;
                    B_0_round_58[31:24] = SM4_out_4;
                    B_0_round_58[23:16] = SM4_out_5;
                    B_0_round_58[15:8]  = SM4_out_6;
                    B_0_round_58[7:0]   = SM4_out_7;
                    BK_1_round_59[31:24]= SM4_out_8;
                    BK_1_round_59[23:16]= SM4_out_9;
                    BK_1_round_59[15:8] = SM4_out_10;
                    BK_1_round_59[7:0]  = SM4_out_11;
                    B_1_round_59[31:24] = SM4_out_12;
                end
                6'h25   : begin
                    B_1_round_59[23:16] = SM4_out_0;
                    B_1_round_59[15:8]  = SM4_out_1;
                    B_1_round_59[7:0]   = SM4_out_2;
                    BK_0_round_60[31:24]= SM4_out_3;
                    BK_0_round_60[23:16]= SM4_out_4;
                    BK_0_round_60[15:8] = SM4_out_5;
                    BK_0_round_60[7:0]  = SM4_out_6;
                    B_0_round_60[31:24] = SM4_out_7;
                    B_0_round_60[23:16] = SM4_out_8;
                    B_0_round_60[15:8]  = SM4_out_9;
                    B_0_round_60[7:0]   = SM4_out_10;
                    BK_1_round_61[31:24]= SM4_out_11;
                    BK_1_round_61[23:16]= SM4_out_12;
                end
                6'h26   : begin
                    BK_1_round_61[15:8] = SM4_out_0;
                    BK_1_round_61[7:0]  = SM4_out_1;
                    B_1_round_61[31:24] = SM4_out_2;
                    B_1_round_61[23:16] = SM4_out_3;
                    B_1_round_61[15:8]  = SM4_out_4;
                    B_1_round_61[7:0]   = SM4_out_5;
                    BK_0_round_62[31:24]= SM4_out_6;
                    BK_0_round_62[23:16]= SM4_out_7;
                    BK_0_round_62[15:8] = SM4_out_8;
                    BK_0_round_62[7:0]  = SM4_out_9;
                    B_0_round_62[31:24] = SM4_out_10;
                    B_0_round_62[23:16] = SM4_out_11;
                    B_0_round_62[15:8]  = SM4_out_12;
                end
                6'h27   : begin
                    B_0_round_62[7:0]   = SM4_out_0;
                    BK_1_round_63[31:24]= SM4_out_1;
                    BK_1_round_63[23:16]= SM4_out_2;
                    BK_1_round_63[15:8] = SM4_out_3;
                    BK_1_round_63[7:0]  = SM4_out_4;
                    B_1_round_63[31:24] = SM4_out_5;
                    B_1_round_63[23:16] = SM4_out_6;
                    B_1_round_63[15:8]  = SM4_out_7;
                    B_1_round_63[7:0]   = SM4_out_8;
                end
            endcase
        end
    end

    // sbox_reconfig_0_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_0 = 8'h0;
            AES_192_in_0 = 8'h0;
            AES_256_in_0 = 8'h0;
            SM4_in_0     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_0 = sbox_kin_aes[31:24]  ;
                default : AES_128_in_0 = sbox_din_aes[79:72]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_0 = sbox_kin_aes[31:24]  ;
                6'h1    : AES_192_in_0 = sbox_din_aes[63:56]  ;
                6'h2    : AES_192_in_0 = sbox_din_aes[127:120];
                6'h3    : AES_192_in_0 = sbox_din_aes[31:24]  ;
                6'h4    : AES_192_in_0 = sbox_din_aes[95:88]  ;
                6'h5    : AES_192_in_0 = sbox_kin_aes[31:24]  ;
                6'h6    : AES_192_in_0 = sbox_din_aes[63:56]  ;
                6'h7    : AES_192_in_0 = sbox_din_aes[127:120];
                6'h8    : AES_192_in_0 = sbox_din_aes[31:24]  ;
                default : AES_192_in_0 = sbox_din_aes[95:88]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_0 = sbox_kin_aes[31:24]  ;
                6'h1    : AES_256_in_0 = sbox_din_aes[47:40]  ;
                6'h2    : AES_256_in_0 = sbox_din_aes[95:88]  ;
                6'h3    : AES_256_in_0 = sbox_kin_aes[15:8]   ;
                6'h4    : AES_256_in_0 = sbox_din_aes[31:24]  ;
                6'h5    : AES_256_in_0 = sbox_din_aes[79:72]  ;
                6'h6    : AES_256_in_0 = sbox_din_aes[127:120];
                6'h7    : AES_256_in_0 = sbox_din_aes[15:8]   ;
                6'h8    : AES_256_in_0 = sbox_din_aes[63:56]  ;
                default : AES_256_in_0 = sbox_din_aes[111:104];
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_0 = AK_0[31:24];
                6'h1    : SM4_in_0 = A_1[23:16] ;
                6'h2    : SM4_in_0 = AK_1[15:8] ;
                6'h3    : SM4_in_0 = A_0[7:0]   ;
                6'h4    : SM4_in_0 = A_0[31:24] ;
                6'h5    : SM4_in_0 = AK_0[23:16];
                6'h6    : SM4_in_0 = A_1[15:8]  ;
                6'h7    : SM4_in_0 = AK_1[7:0]  ;
                6'h8    : SM4_in_0 = AK_1[31:24];
                6'h9    : SM4_in_0 = A_0[23:16] ;
                6'ha    : SM4_in_0 = AK_0[15:8] ;
                6'hb    : SM4_in_0 = A_1[7:0]   ;
                6'hc    : SM4_in_0 = A_1[31:24] ;
                6'hd    : SM4_in_0 = AK_1[23:16];
                6'he    : SM4_in_0 = A_0[15:8]  ;
                6'hf    : SM4_in_0 = AK_0[7:0]  ;
                6'h10   : SM4_in_0 = AK_0[31:24];
                6'h11   : SM4_in_0 = A_1[23:16] ;
                6'h12   : SM4_in_0 = AK_1[15:8] ;
                6'h13   : SM4_in_0 = A_0[7:0]   ;
                6'h14   : SM4_in_0 = AK_0[31:24];
                6'h15   : SM4_in_0 = A_1[23:16] ;
                6'h16   : SM4_in_0 = AK_1[15:8] ;
                6'h17   : SM4_in_0 = A_0[7:0]   ;
                6'h18   : SM4_in_0 = A_0[31:24] ;
                6'h19   : SM4_in_0 = AK_0[23:16];
                6'h1a   : SM4_in_0 = A_1[15:8]  ;
                6'h1b   : SM4_in_0 = AK_1[7:0]  ;
                6'h1c   : SM4_in_0 = AK_1[31:24];
                6'h1d   : SM4_in_0 = A_0[23:16] ;
                6'h1e   : SM4_in_0 = AK_0[15:8] ;
                6'h1f   : SM4_in_0 = A_1[7:0]   ;
                6'h20   : SM4_in_0 = A_1[31:24] ;
                6'h21   : SM4_in_0 = AK_1[23:16];
                6'h22   : SM4_in_0 = A_0[15:8]  ;
                6'h23   : SM4_in_0 = AK_0[7:0]  ;
                6'h24   : SM4_in_0 = AK_0[31:24];
                6'h25   : SM4_in_0 = A_1[23:16] ;
                6'h26   : SM4_in_0 = AK_1[15:8] ;
                6'h27   : SM4_in_0 = A_0[7:0]   ;
                default : SM4_in_0 = 32'h0      ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_0 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00  : sbox_in_0 = AES_128_in_0;
                2'b01  : sbox_in_0 = AES_192_in_0;
                2'b10  : sbox_in_0 = AES_256_in_0;     
               default : sbox_in_0 = SM4_in_0    ;
            endcase
        end 
    end

    sbox_reconfig sbox_reconfig_0_inst
    (
        .din(sbox_in_0),
        .cfg({cfg[2:1],cfg_ende_sbox0}),
        .dout(sbox_out_0)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_0 = 8'h0;
            AES_192_out_0 = 8'h0;
            AES_256_out_0 = 8'h0;
            SM4_out_0     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_0 = sbox_out_0;
                2'b01   : AES_192_out_0 = sbox_out_0;
                2'b10   : AES_256_out_0 = sbox_out_0;   
                default : SM4_out_0     = sbox_out_0;
            endcase
        end
    end

    // sbox_reconfig_1_inst

    always @(*) begin
        if (!rstn) begin
            AES_128_in_1 = 8'h0;
            AES_192_in_1 = 8'h0;
            AES_256_in_1 = 8'h0;
            SM4_in_1     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_1 = sbox_kin_aes[23:16]  ;
                default : AES_128_in_1 = sbox_din_aes[71:64]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_1 = sbox_kin_aes[23:16]  ;
                6'h1    : AES_192_in_1 = sbox_din_aes[55:48]  ;
                6'h2    : AES_192_in_1 = sbox_din_aes[119:112];
                6'h3    : AES_192_in_1 = sbox_din_aes[23:16]  ;
                6'h4    : AES_192_in_1 = sbox_din_aes[87:80]  ;
                6'h5    : AES_192_in_1 = sbox_kin_aes[23:16]  ;
                6'h6    : AES_192_in_1 = sbox_din_aes[55:48]  ;
                6'h7    : AES_192_in_1 = sbox_din_aes[119:112];
                6'h8    : AES_192_in_1 = sbox_din_aes[23:16]  ;
                default : AES_192_in_1 = sbox_din_aes[87:80]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_1 = sbox_kin_aes[23:16]  ;
                6'h1    : AES_256_in_1 = sbox_din_aes[39:32]  ;
                6'h2    : AES_256_in_1 = sbox_din_aes[87:80]  ;
                6'h3    : AES_256_in_1 = sbox_kin_aes[7:0]    ;
                6'h4    : AES_256_in_1 = sbox_din_aes[23:16]  ;
                6'h5    : AES_256_in_1 = sbox_din_aes[71:64]  ;
                6'h6    : AES_256_in_1 = sbox_din_aes[119:112];
                6'h7    : AES_256_in_1 = sbox_din_aes[7:0]    ;
                6'h8    : AES_256_in_1 = sbox_din_aes[55:48]  ;
                default : AES_256_in_1 = sbox_din_aes[103:96] ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_1 = AK_0[23:16]     ;
                6'h1    : SM4_in_1 = A_1[15:8]       ;
                6'h2    : SM4_in_1 = AK_1[7:0]       ;
                6'h3    : SM4_in_1 = AK_1[31:24]     ;
                6'h4    : SM4_in_1 = A_0[23:16 ]     ;
                6'h5    : SM4_in_1 = AK_0[15:8]      ;
                6'h6    : SM4_in_1 = A_1[7:0]        ;
                6'h7    : SM4_in_1 = A_1[31:24]      ;
                6'h8    : SM4_in_1 = AK_1[23:16]     ;
                6'h9    : SM4_in_1 = A_0[15:8]       ;
                6'ha    : SM4_in_1 = AK_0[7:0]       ;
                6'hb    : SM4_in_1 = AK_0[31:24]     ;
                6'hc    : SM4_in_1 = A_1[23:16]      ;
                6'hd    : SM4_in_1 = AK_1[15:8]      ;
                6'he    : SM4_in_1 = A_0[7:0]        ;
                6'hf    : SM4_in_1 = A_0[31:24]      ;
                6'h10   : SM4_in_1 = AK_0[23:16]     ;
                6'h11   : SM4_in_1 = A_1[15:8]       ;
                6'h12   : SM4_in_1 = AK_1[7:0]       ;
                6'h13   : SM4_in_1 = AK_1[31:24]     ;
                6'h14   : SM4_in_1 = AK_0[23:16]     ;
                6'h15   : SM4_in_1 = A_1[15:8]       ;
                6'h16   : SM4_in_1 = AK_1[7:0]       ;
                6'h17   : SM4_in_1 = AK_1[31:24]     ;
                6'h18   : SM4_in_1 = A_0[23:16 ]     ;
                6'h19   : SM4_in_1 = AK_0[15:8]      ;
                6'h1a   : SM4_in_1 = A_1[7:0]        ;
                6'h1b   : SM4_in_1 = A_1[31:24]      ;
                6'h1c   : SM4_in_1 = AK_1[23:16]     ;
                6'h1d   : SM4_in_1 = A_0[15:8]       ;
                6'h1e   : SM4_in_1 = AK_0[7:0]       ;
                6'h1f   : SM4_in_1 = AK_0[31:24]     ;
                6'h20   : SM4_in_1 = A_1[23:16]      ;
                6'h21   : SM4_in_1 = AK_1[15:8]      ;
                6'h22   : SM4_in_1 = A_0[7:0]        ;
                6'h23   : SM4_in_1 = A_0[31:24]      ;
                6'h24   : SM4_in_1 = AK_0[23:16]     ;
                6'h25   : SM4_in_1 = A_1[15:8]       ;
                6'h26   : SM4_in_1 = AK_1[7:0]       ;
                6'h27   : SM4_in_1 = AK_1[31:24]     ;
                default : SM4_in_1 = 8'h0            ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_1 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_1 = AES_128_in_1;
                2'b01   : sbox_in_1 = AES_192_in_1;
                2'b10   : sbox_in_1 = AES_256_in_1;     
                default : sbox_in_1 = SM4_in_1    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_1_inst
    (
        .din(sbox_in_1),
        .cfg({cfg[2:1],cfg_ende_sbox1}),
        .dout(sbox_out_1)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_1 = 8'h0;
            AES_192_out_1 = 8'h0;
            AES_256_out_1 = 8'h0;
            SM4_out_1     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_1 = sbox_out_1;
                2'b01   : AES_192_out_1 = sbox_out_1;
                2'b10   : AES_256_out_1 = sbox_out_1;   
                default : SM4_out_1     = sbox_out_1;
            endcase
        end
    end

    // sbox_reconfig_2_inst

    always @(*) begin
        if (!rstn) begin
            AES_128_in_2 = 8'h0;
            AES_192_in_2 = 8'h0;
            AES_256_in_2 = 8'h0;
            SM4_in_2     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_2 = sbox_kin_aes[15:8]   ;
                default : AES_128_in_2 = sbox_din_aes[63:56]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_2 = sbox_kin_aes[15:8]   ;
                6'h1    : AES_192_in_2 = sbox_din_aes[47:40]  ;
                6'h2    : AES_192_in_2 = sbox_din_aes[111:104];
                6'h3    : AES_192_in_2 = sbox_din_aes[15:8]   ;
                6'h4    : AES_192_in_2 = sbox_din_aes[79:72]  ;
                6'h5    : AES_192_in_2 = sbox_kin_aes[15:8]   ;
                6'h6    : AES_192_in_2 = sbox_din_aes[47:40]  ;
                6'h7    : AES_192_in_2 = sbox_din_aes[111:104];
                6'h8    : AES_192_in_2 = sbox_din_aes[15:8]   ;
                default : AES_192_in_2 = sbox_din_aes[79:72]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_2 = sbox_kin_aes[15:8 ]  ;
                6'h1    : AES_256_in_2 = sbox_din_aes[31:24]  ;
                6'h2    : AES_256_in_2 = sbox_din_aes[79:72]  ;
                6'h3    : AES_256_in_2 = sbox_din_aes[127:120];
                6'h4    : AES_256_in_2 = sbox_din_aes[15:8]   ;
                6'h5    : AES_256_in_2 = sbox_din_aes[63:56]  ;
                6'h6    : AES_256_in_2 = sbox_din_aes[111:104];
                6'h7    : AES_256_in_2 = sbox_kin_aes[31:24]  ;
                6'h8    : AES_256_in_2 = sbox_din_aes[47:40]  ;
                default : AES_256_in_2 = sbox_din_aes[95:88]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_2 =  AK_0[15:8]        ;
                6'h1    : SM4_in_2 =  A_1[7:0]          ;
                6'h2    : SM4_in_2 =  A_1[31:24]        ;
                6'h3    : SM4_in_2 =  AK_1[23:16]       ;
                6'h4    : SM4_in_2 =  A_0[15:8]         ;
                6'h5    : SM4_in_2 =  AK_0[7:0]         ;
                6'h6    : SM4_in_2 =  AK_0[31:24]       ;
                6'h7    : SM4_in_2 =  A_1[23:16]        ;
                6'h8    : SM4_in_2 =  AK_1[15:8]        ;
                6'h9    : SM4_in_2 =  A_0[7:0]          ;
                6'ha    : SM4_in_2 =  A_0[31:24]        ;
                6'hb    : SM4_in_2 =  AK_0[23:16]       ;
                6'hc    : SM4_in_2 =  A_1[15:8]         ;
                6'hd    : SM4_in_2 =  AK_1[7:0]         ;
                6'he    : SM4_in_2 =  AK_1[31:24]       ;
                6'hf    : SM4_in_2 =  A_0[23:16]        ;
                6'h10   : SM4_in_2 =  AK_0[15:8]        ;
                6'h11   : SM4_in_2 =  A_1[7:0]          ;
                6'h12   : SM4_in_2 =  A_1[31:24]        ;
                6'h13   : SM4_in_2 =  AK_1[23:16]       ;
                6'h14   : SM4_in_2 =  AK_0[15:8]        ;
                6'h15   : SM4_in_2 =  A_1[7:0]          ;
                6'h16   : SM4_in_2 =  A_1[31:24]        ;
                6'h17   : SM4_in_2 =  AK_1[23:16]       ;
                6'h18   : SM4_in_2 =  A_0[15:8]         ;
                6'h19   : SM4_in_2 =  AK_0[7:0]         ;
                6'h1a   : SM4_in_2 =  AK_0[31:24]       ;
                6'h1b   : SM4_in_2 =  A_1[23:16]        ;
                6'h1c   : SM4_in_2 =  AK_1[15:8]        ;
                6'h1d   : SM4_in_2 =  A_0[7:0]          ;
                6'h1e   : SM4_in_2 =  A_0[31:24]        ;
                6'h1f   : SM4_in_2 =  AK_0[23:16]       ;
                6'h20   : SM4_in_2 =  A_1[15:8]         ;
                6'h21   : SM4_in_2 =  AK_1[7:0]         ;
                6'h22   : SM4_in_2 =  AK_1[31:24]       ;
                6'h23   : SM4_in_2 =  A_0[23:16]        ;
                6'h24   : SM4_in_2 =  AK_0[15:8]        ;
                6'h25   : SM4_in_2 =  A_1[7:0]          ;
                6'h26   : SM4_in_2 =  A_1[31:24]        ;
                6'h27   : SM4_in_2 =  AK_1[23:16]       ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_2 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_2 = AES_128_in_2;
                2'b01   : sbox_in_2 = AES_192_in_2;
                2'b10   : sbox_in_2 = AES_256_in_2;     
                default : sbox_in_2 = SM4_in_2    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_2_inst
    (
        .din(sbox_in_2),
        .cfg({cfg[2:1],cfg_ende_sbox2}),
        .dout(sbox_out_2)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_2 = 8'h0;
            AES_192_out_2 = 8'h0;
            AES_256_out_2 = 8'h0;
            SM4_out_2     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_2 = sbox_out_2;
                2'b01   : AES_192_out_2 = sbox_out_2;
                2'b10   : AES_256_out_2 = sbox_out_2;   
                default : SM4_out_2     = sbox_out_2;
            endcase
        end 
    end

    // sbox_reconfig_3_inst

    always @(*) begin
        if (!rstn) begin
            AES_128_in_3 = 8'h0;
            AES_192_in_3 = 8'h0;
            AES_256_in_3 = 8'h0;
            SM4_in_3     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_3 = sbox_kin_aes[7:0]    ;
                default : AES_128_in_3 = sbox_din_aes[55:48]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_3 = sbox_kin_aes[7:0]    ;
                6'h1    : AES_192_in_3 = sbox_din_aes[39:32]  ;
                6'h2    : AES_192_in_3 = sbox_din_aes[103:96] ;
                6'h3    : AES_192_in_3 = sbox_din_aes[7:0]    ;
                6'h4    : AES_192_in_3 = sbox_din_aes[71:64]  ;
                6'h5    : AES_192_in_3 = sbox_kin_aes[7:0]    ;
                6'h6    : AES_192_in_3 = sbox_din_aes[39:32]  ;
                6'h7    : AES_192_in_3 = sbox_din_aes[103:96] ;
                6'h8    : AES_192_in_3 = sbox_din_aes[7:0]    ;
                default : AES_192_in_3 = sbox_din_aes[71:64]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_3 = sbox_kin_aes[7:0]    ;
                6'h1    : AES_256_in_3 = sbox_din_aes[23:16]  ;
                6'h2    : AES_256_in_3 = sbox_din_aes[71:64]  ;
                6'h3    : AES_256_in_3 = sbox_din_aes[119:112];
                6'h4    : AES_256_in_3 = sbox_din_aes[7:0]    ;
                6'h5    : AES_256_in_3 = sbox_din_aes[55:48]  ;
                6'h6    : AES_256_in_3 = sbox_din_aes[103:96] ;
                6'h7    : AES_256_in_3 = sbox_kin_aes[23:16]  ;
                6'h8    : AES_256_in_3 = sbox_din_aes[39:32]  ;
                default : AES_256_in_3 = sbox_din_aes[87:80]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_3 =  AK_0[7:0]  ;
                6'h1    : SM4_in_3 =  AK_0[31:24];
                6'h2    : SM4_in_3 =  A_1[23:16] ;
                6'h3    : SM4_in_3 =  AK_1[15:8] ;
                6'h4    : SM4_in_3 =  A_0[7:0]   ;
                6'h5    : SM4_in_3 =  A_0[31:24] ;
                6'h6    : SM4_in_3 =  AK_0[23:16];
                6'h7    : SM4_in_3 =  A_1[15:8]  ;
                6'h8    : SM4_in_3 =  AK_1[7:0]  ;
                6'h9    : SM4_in_3 =  AK_1[31:24];
                6'ha    : SM4_in_3 =  A_0[23:16] ;
                6'hb    : SM4_in_3 =  AK_0[15:8] ;
                6'hc    : SM4_in_3 =  A_1[7:0]   ;
                6'hd    : SM4_in_3 =  A_1[31:24] ;
                6'he    : SM4_in_3 =  AK_1[23:16];
                6'hf    : SM4_in_3 =  A_0[15:8]  ;
                6'h10   : SM4_in_3 =  AK_0[7:0]  ;
                6'h11   : SM4_in_3 =  AK_0[31:24];
                6'h12   : SM4_in_3 =  A_1[23:16] ;
                6'h13   : SM4_in_3 =  AK_1[15:8] ;
                6'h14   : SM4_in_3 =  AK_0[7:0]  ;
                6'h15   : SM4_in_3 =  AK_0[31:24];
                6'h16   : SM4_in_3 =  A_1[23:16] ;
                6'h17   : SM4_in_3 =  AK_1[15:8] ;
                6'h18   : SM4_in_3 =  A_0[7:0]   ;
                6'h19   : SM4_in_3 =  A_0[31:24] ;
                6'h1a   : SM4_in_3 =  AK_0[23:16];
                6'h1b   : SM4_in_3 =  A_1[15:8]  ;
                6'h1c   : SM4_in_3 =  AK_1[7:0]  ;
                6'h1d   : SM4_in_3 =  AK_1[31:24];
                6'h1e   : SM4_in_3 =  A_0[23:16] ;
                6'h1f   : SM4_in_3 =  AK_0[15:8] ;
                6'h20   : SM4_in_3 =  A_1[7:0]   ;
                6'h21   : SM4_in_3 =  A_1[31:24] ;
                6'h22   : SM4_in_3 =  AK_1[23:16];
                6'h23   : SM4_in_3 =  A_0[15:8]  ;
                6'h24   : SM4_in_3 =  AK_0[7:0]  ;
                6'h25   : SM4_in_3 =  AK_0[31:24];
                6'h26   : SM4_in_3 =  A_1[23:16] ;
                6'h27   : SM4_in_3 =  AK_1[15:8] ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_3 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_3 = AES_128_in_3;
                2'b01   : sbox_in_3 = AES_192_in_3;
                2'b10   : sbox_in_3 = AES_256_in_3;     
                default : sbox_in_3 = SM4_in_3    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_3_inst
    (
        .din(sbox_in_3),
        .cfg({cfg[2:1],cfg_ende_sbox3}),
        .dout(sbox_out_3)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_3 = 8'h0;
            AES_192_out_3 = 8'h0;
            AES_256_out_3 = 8'h0;
            SM4_out_3     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_3 = sbox_out_3;
                2'b01   : AES_192_out_3 = sbox_out_3;
                2'b10   : AES_256_out_3 = sbox_out_3;   
                default : SM4_out_3     = sbox_out_3;
            endcase
        end
    end


    // sbox_reconfig_4_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_4 = 8'h0;    
            AES_192_in_4 = 8'h0;    
            AES_256_in_4 = 8'h0;    
            SM4_in_4     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_4 = sbox_din_aes[127:120];
                default : AES_128_in_4 = sbox_din_aes[47:40]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_4 = sbox_din_aes[127:120];
                6'h1    : AES_192_in_4 = sbox_din_aes[31:24]  ;
                6'h2    : AES_192_in_4 = sbox_din_aes[95:88]  ;
                6'h3    : AES_192_in_4 = sbox_kin_aes[31:24]  ;
                6'h4    : AES_192_in_4 = sbox_din_aes[63:56]  ;
                6'h5    : AES_192_in_4 = sbox_din_aes[127:120];
                6'h6    : AES_192_in_4 = sbox_din_aes[31:24]  ;
                6'h7    : AES_192_in_4 = sbox_din_aes[95:88]  ;
                6'h8    : AES_192_in_4 = sbox_kin_aes[31:24]  ;
                default : AES_192_in_4 = sbox_din_aes[63:56]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_4 = sbox_din_aes[127:120];
                6'h1    : AES_256_in_4 = sbox_din_aes[15:8]   ;
                6'h2    : AES_256_in_4 = sbox_din_aes[63:56]  ;
                6'h3    : AES_256_in_4 = sbox_din_aes[111:104];
                6'h4    : AES_256_in_4 = sbox_kin_aes[31:24]  ;
                6'h5    : AES_256_in_4 = sbox_din_aes[47:40]  ;
                6'h6    : AES_256_in_4 = sbox_din_aes[95:88]  ;
                6'h7    : AES_256_in_4 = sbox_kin_aes[15:8]   ;
                6'h8    : AES_256_in_4 = sbox_din_aes[31:24]  ;
                default : AES_256_in_4 = sbox_din_aes[79:72]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_4 =  A_0[31:24] ;
                6'h1    : SM4_in_4 =  AK_0[23:16];
                6'h2    : SM4_in_4 =  A_1[15:8]  ;
                6'h3    : SM4_in_4 =  AK_1[7:0]  ;
                6'h4    : SM4_in_4 =  AK_1[31:24];
                6'h5    : SM4_in_4 =  A_0[23:16] ;
                6'h6    : SM4_in_4 =  AK_0[15:8] ;
                6'h7    : SM4_in_4 =  A_1[7:0]   ;
                6'h8    : SM4_in_4 =  A_1[31:24] ;
                6'h9    : SM4_in_4 =  AK_1[23:16];
                6'ha    : SM4_in_4 =  A_0[15:8]  ;
                6'hb    : SM4_in_4 =  AK_0[7:0]  ;
                6'hc    : SM4_in_4 =  AK_0[31:24];
                6'hd    : SM4_in_4 =  A_1[23:16] ;
                6'he    : SM4_in_4 =  AK_1[15:8] ;
                6'hf    : SM4_in_4 =  A_0[7:0]   ;
                6'h10   : SM4_in_4 =  A_0[31:24] ;
                6'h11   : SM4_in_4 =  AK_0[23:16];
                6'h12   : SM4_in_4 =  A_1[15:8]  ;
                6'h13   : SM4_in_4 =  AK_1[7:0]  ;
                6'h14   : SM4_in_4 =  A_0[31:24] ;
                6'h15   : SM4_in_4 =  AK_0[23:16];
                6'h16   : SM4_in_4 =  A_1[15:8]  ;
                6'h17   : SM4_in_4 =  AK_1[7:0]  ;
                6'h18   : SM4_in_4 =  AK_1[31:24];
                6'h19   : SM4_in_4 =  A_0[23:16] ;
                6'h1a   : SM4_in_4 =  AK_0[15:8] ;
                6'h1b   : SM4_in_4 =  A_1[7:0]   ;
                6'h1c   : SM4_in_4 =  A_1[31:24] ;
                6'h1d   : SM4_in_4 =  AK_1[23:16];
                6'h1e   : SM4_in_4 =  A_0[15:8]  ;
                6'h1f   : SM4_in_4 =  AK_0[7:0]  ;
                6'h20   : SM4_in_4 =  AK_0[31:24];
                6'h21   : SM4_in_4 =  A_1[23:16] ;
                6'h22   : SM4_in_4 =  AK_1[15:8] ;
                6'h23   : SM4_in_4 =  A_0[7:0]   ;
                6'h24   : SM4_in_4 =  A_0[31:24] ;
                6'h25   : SM4_in_4 =  AK_0[23:16];
                6'h26   : SM4_in_4 =  A_1[15:8]  ;
                6'h27   : SM4_in_4 =  AK_1[7:0]  ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_4 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_4 = AES_128_in_4;
                2'b01   : sbox_in_4 = AES_192_in_4;
                2'b10   : sbox_in_4 = AES_256_in_4;     
                default : sbox_in_4 = SM4_in_4    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_4_inst
    (
        .din(sbox_in_4),
        .cfg({cfg[2:1],cfg_ende_sbox4}),
        .dout(sbox_out_4)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_4 = 8'h0;
            AES_192_out_4 = 8'h0;
            AES_256_out_4 = 8'h0;
            SM4_out_4     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_4 = sbox_out_4;
                2'b01   : AES_192_out_4 = sbox_out_4;
                2'b10   : AES_256_out_4 = sbox_out_4;   
                default : SM4_out_4     = sbox_out_4;
            endcase
        end
    end

    // sbox_reconfig_5_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_5 = 8'h0;
            AES_192_in_5 = 8'h0;
            AES_256_in_5 = 8'h0;
            SM4_in_5     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_5 = sbox_din_aes[119:112];
                default : AES_128_in_5 = sbox_din_aes[39:32]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_5 = sbox_din_aes[119:112];
                6'h1    : AES_192_in_5 = sbox_din_aes[23:16]  ;
                6'h2    : AES_192_in_5 = sbox_din_aes[87:80]  ;
                6'h3    : AES_192_in_5 = sbox_kin_aes[23:16]  ;
                6'h4    : AES_192_in_5 = sbox_din_aes[55:48]  ;
                6'h5    : AES_192_in_5 = sbox_din_aes[119:112];
                6'h6    : AES_192_in_5 = sbox_din_aes[23:16]  ;
                6'h7    : AES_192_in_5 = sbox_din_aes[87:80]  ;
                6'h8    : AES_192_in_5 = sbox_kin_aes[23:16]  ;
                default : AES_192_in_5 = sbox_din_aes[55:48]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_5 = sbox_din_aes[119:112];
                6'h1    : AES_256_in_5 = sbox_din_aes[7:0]    ;
                6'h2    : AES_256_in_5 = sbox_din_aes[55:48]  ;
                6'h3    : AES_256_in_5 = sbox_din_aes[103:96] ;
                6'h4    : AES_256_in_5 = sbox_kin_aes[23:16]  ;
                6'h5    : AES_256_in_5 = sbox_din_aes[39:32]  ;
                6'h6    : AES_256_in_5 = sbox_din_aes[87:80]  ;
                6'h7    : AES_256_in_5 = sbox_kin_aes[7:0]    ;
                6'h8    : AES_256_in_5 = sbox_din_aes[23:16]  ;
                default : AES_256_in_5 = sbox_din_aes[71:64]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_5 =  A_0[23:16] ;
                6'h1    : SM4_in_5 =  AK_0[15:8] ;
                6'h2    : SM4_in_5 =  A_1[7:0]   ;
                6'h3    : SM4_in_5 =  A_1[31:24] ;
                6'h4    : SM4_in_5 =  AK_1[23:16];
                6'h5    : SM4_in_5 =  A_0[15:8]  ;
                6'h6    : SM4_in_5 =  AK_0[7:0]  ;
                6'h7    : SM4_in_5 =  AK_0[31:24];
                6'h8    : SM4_in_5 =  A_1[23:16] ;
                6'h9    : SM4_in_5 =  AK_1[15:8] ;
                6'ha    : SM4_in_5 =  A_0[7:0]   ;
                6'hb    : SM4_in_5 =  A_0[31:24] ;
                6'hc    : SM4_in_5 =  AK_0[23:16];
                6'hd    : SM4_in_5 =  A_1[15:8]  ;
                6'he    : SM4_in_5 =  AK_1[7:0]  ;
                6'hf    : SM4_in_5 =  AK_1[31:24];
                6'h10   : SM4_in_5 =  A_0[23:16] ;
                6'h11   : SM4_in_5 =  AK_0[15:8] ;
                6'h12   : SM4_in_5 =  A_1[7:0]   ;
                6'h13   : SM4_in_5 =  A_1[31:24] ;
                6'h14   : SM4_in_5 =  A_0[23:16] ;
                6'h15   : SM4_in_5 =  AK_0[15:8] ;
                6'h16   : SM4_in_5 =  A_1[7:0]   ;
                6'h17   : SM4_in_5 =  A_1[31:24] ;
                6'h18   : SM4_in_5 =  AK_1[23:16];
                6'h19   : SM4_in_5 =  A_0[15:8]  ;
                6'h1a   : SM4_in_5 =  AK_0[7:0]  ;
                6'h1b   : SM4_in_5 =  AK_0[31:24];
                6'h1c   : SM4_in_5 =  A_1[23:16] ;
                6'h1d   : SM4_in_5 =  AK_1[15:8] ;
                6'h1e   : SM4_in_5 =  A_0[7:0]   ;
                6'h1f   : SM4_in_5 =  A_0[31:24] ;
                6'h20   : SM4_in_5 =  AK_0[23:16];
                6'h21   : SM4_in_5 =  A_1[15:8]  ;
                6'h22   : SM4_in_5 =  AK_1[7:0]  ;
                6'h23   : SM4_in_5 =  AK_1[31:24];
                6'h24   : SM4_in_5 =  A_0[23:16] ;
                6'h25   : SM4_in_5 =  AK_0[15:8] ;
                6'h26   : SM4_in_5 =  A_1[7:0]   ;
                6'h27   : SM4_in_5 =  A_1[31:24] ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_5 = 8'h0;
        end else begin
            case (cfg[2:1])
               2'b00   : sbox_in_5 = AES_128_in_5;
               2'b01   : sbox_in_5 = AES_192_in_5;
               2'b10   : sbox_in_5 = AES_256_in_5;     
               default : sbox_in_5 = SM4_in_5    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_5_inst
    (
        .din(sbox_in_5),
        .cfg({cfg[2:1],cfg_ende_sbox5}),
        .dout(sbox_out_5)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_5 = 8'h0;
            AES_192_out_5 = 8'h0;
            AES_256_out_5 = 8'h0;
            SM4_out_5     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_5 = sbox_out_5;
                2'b01   : AES_192_out_5 = sbox_out_5;
                2'b10   : AES_256_out_5 = sbox_out_5;   
                default : SM4_out_5     = sbox_out_5;
            endcase
        end
    end

    // sbox_reconfig_6_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_6 = 8'h0;
            AES_192_in_6 = 8'h0;
            AES_256_in_6 = 8'h0;
            SM4_in_6     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_6 = sbox_din_aes[111:104];
                default : AES_128_in_6 = sbox_din_aes[31:24]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_6 = sbox_din_aes[111:104];
                6'h1    : AES_192_in_6 = sbox_din_aes[15:8]   ;
                6'h2    : AES_192_in_6 = sbox_din_aes[79:72]  ;
                6'h3    : AES_192_in_6 = sbox_kin_aes[15:8]   ;
                6'h4    : AES_192_in_6 = sbox_din_aes[47:40]  ;
                6'h5    : AES_192_in_6 = sbox_din_aes[111:104];
                6'h6    : AES_192_in_6 = sbox_din_aes[15:8]   ;
                6'h7    : AES_192_in_6 = sbox_din_aes[79:72]  ;
                6'h8    : AES_192_in_6 = sbox_kin_aes[15:8]   ;
                default : AES_192_in_6 = sbox_din_aes[47:40]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_6 = sbox_din_aes[111:104];
                6'h1    : AES_256_in_6 = sbox_kin_aes[31:24]  ;
                6'h2    : AES_256_in_6 = sbox_din_aes[47:40]  ;
                6'h3    : AES_256_in_6 = sbox_din_aes[95:88]  ;
                6'h4    : AES_256_in_6 = sbox_kin_aes[15:8]   ;
                6'h5    : AES_256_in_6 = sbox_din_aes[31:24]  ;
                6'h6    : AES_256_in_6 = sbox_din_aes[79:72]  ;
                6'h7    : AES_256_in_6 = sbox_din_aes[127:120];
                6'h8    : AES_256_in_6 = sbox_din_aes[15:8]   ;
                default : AES_256_in_6 = sbox_din_aes[63:56]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_6 = A_0[15:8]  ; 
                6'h1    : SM4_in_6 = AK_0[7:0]  ; 
                6'h2    : SM4_in_6 = AK_0[31:24];
                6'h3    : SM4_in_6 = A_1[23:16] ;
                6'h4    : SM4_in_6 = AK_1[15:8] ;
                6'h5    : SM4_in_6 = A_0[7:0]   ;
                6'h6    : SM4_in_6 = A_0[31:24] ;
                6'h7    : SM4_in_6 = AK_0[23:16];
                6'h8    : SM4_in_6 = A_1[15:8]  ;
                6'h9    : SM4_in_6 = AK_1[7:0]  ;
                6'ha    : SM4_in_6 = AK_1[31:24];
                6'hb    : SM4_in_6 = A_0[23:16] ;
                6'hc    : SM4_in_6 = AK_0[15:8] ;
                6'hd    : SM4_in_6 = A_1[7:0]   ;
                6'he    : SM4_in_6 = A_1[31:24] ;
                6'hf    : SM4_in_6 = AK_1[23:16];
                6'h10   : SM4_in_6 = A_0[15:8]  ;
                6'h11   : SM4_in_6 = AK_0[7:0]  ;
                6'h12   : SM4_in_6 = AK_0[31:24];
                6'h13   : SM4_in_6 = A_1[23:16] ;
                6'h14   : SM4_in_6 = A_0[15:8]  ; 
                6'h15   : SM4_in_6 = AK_0[7:0]  ; 
                6'h16   : SM4_in_6 = AK_0[31:24];
                6'h17   : SM4_in_6 = A_1[23:16] ;
                6'h18   : SM4_in_6 = AK_1[15:8] ;
                6'h19   : SM4_in_6 = A_0[7:0]   ;
                6'h1a   : SM4_in_6 = A_0[31:24] ;
                6'h1b   : SM4_in_6 = AK_0[23:16];
                6'h1c   : SM4_in_6 = A_1[15:8]  ;
                6'h1d   : SM4_in_6 = AK_1[7:0]  ;
                6'h1e   : SM4_in_6 = AK_1[31:24];
                6'h1f   : SM4_in_6 = A_0[23:16] ;
                6'h20   : SM4_in_6 = AK_0[15:8] ;
                6'h21   : SM4_in_6 = A_1[7:0]   ;
                6'h22   : SM4_in_6 = A_1[31:24] ;
                6'h23   : SM4_in_6 = AK_1[23:16];
                6'h24   : SM4_in_6 = A_0[15:8]  ;
                6'h25   : SM4_in_6 = AK_0[7:0]  ;
                6'h26   : SM4_in_6 = AK_0[31:24];
                6'h27   : SM4_in_6 = A_1[23:16] ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_6 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_6 = AES_128_in_6;
                2'b01   : sbox_in_6 = AES_192_in_6;
                2'b10   : sbox_in_6 = AES_256_in_6;     
                default : sbox_in_6 = SM4_in_6    ;
            endcase
        end 
    end

    sbox_reconfig sbox_reconfig_6_inst
    (
        .din(sbox_in_6),
        .cfg({cfg[2:1],cfg_ende_sbox6}),
        .dout(sbox_out_6)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_6 = 8'h0;
            AES_192_out_6 = 8'h0;
            AES_256_out_6 = 8'h0;
            SM4_out_6     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_6 = sbox_out_6;
                2'b01   : AES_192_out_6 = sbox_out_6;
                2'b10   : AES_256_out_6 = sbox_out_6;   
                default : SM4_out_6     = sbox_out_6;
            endcase
        end  
    end

    // sbox_reconfig_7_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_7 = 8'h0;
            AES_192_in_7 = 8'h0;
            AES_256_in_7 = 8'h0;
            SM4_in_7     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_7 = sbox_din_aes[103:96] ;
                default : AES_128_in_7 = sbox_din_aes[23:16]  ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_7 = sbox_din_aes[103:96] ;
                6'h1    : AES_192_in_7 = sbox_din_aes[7:0]    ;
                6'h2    : AES_192_in_7 = sbox_din_aes[71:64]  ;
                6'h3    : AES_192_in_7 = sbox_kin_aes[7:0]    ;
                6'h4    : AES_192_in_7 = sbox_din_aes[39:32]  ;
                6'h5    : AES_192_in_7 = sbox_din_aes[103:96] ;
                6'h6    : AES_192_in_7 = sbox_din_aes[7:0]    ;
                6'h7    : AES_192_in_7 = sbox_din_aes[71:64]  ;
                6'h8    : AES_192_in_7 = sbox_kin_aes[7:0]    ;
                default : AES_192_in_7 = sbox_din_aes[39:32]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_7 = sbox_din_aes[103:96] ;
                6'h1    : AES_256_in_7 = sbox_kin_aes[23:16]  ;
                6'h2    : AES_256_in_7 = sbox_din_aes[39:32]  ;
                6'h3    : AES_256_in_7 = sbox_din_aes[87:80]  ;
                6'h4    : AES_256_in_7 = sbox_kin_aes[7:0]    ;
                6'h5    : AES_256_in_7 = sbox_din_aes[23:16]  ;
                6'h6    : AES_256_in_7 = sbox_din_aes[71:64]  ;
                6'h7    : AES_256_in_7 = sbox_din_aes[119:112];
                6'h8    : AES_256_in_7 = sbox_din_aes[7:0]    ;
                default : AES_256_in_7 = sbox_din_aes[55:48]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_7 = A_0[7:0]   ;
                6'h1    : SM4_in_7 = A_0[31:24] ;
                6'h2    : SM4_in_7 = AK_0[23:16];
                6'h3    : SM4_in_7 = A_1[15:8]  ;
                6'h4    : SM4_in_7 = AK_1[7:0]  ;
                6'h5    : SM4_in_7 = AK_1[31:24];
                6'h6    : SM4_in_7 = A_0[23:16] ;
                6'h7    : SM4_in_7 = AK_0[15:8] ;
                6'h8    : SM4_in_7 = A_1[7:0]   ;
                6'h9    : SM4_in_7 = A_1[31:24] ;
                6'ha    : SM4_in_7 = AK_1[23:16];
                6'hb    : SM4_in_7 = A_0[15:8]  ;
                6'hc    : SM4_in_7 = AK_0[7:0]  ;
                6'hd    : SM4_in_7 = AK_0[31:24];
                6'he    : SM4_in_7 = A_1[23:16] ;
                6'hf    : SM4_in_7 = AK_1[15:8] ;
                6'h10   : SM4_in_7 = A_0[7:0]   ;
                6'h11   : SM4_in_7 = A_0[31:24] ;
                6'h12   : SM4_in_7 = AK_0[23:16];
                6'h13   : SM4_in_7 = A_1[15:8]  ;
                6'h14   : SM4_in_7 = A_0[7:0]   ;
                6'h15   : SM4_in_7 = A_0[31:24] ;
                6'h16   : SM4_in_7 = AK_0[23:16];
                6'h17   : SM4_in_7 = A_1[15:8]  ;
                6'h18   : SM4_in_7 = AK_1[7:0]  ;
                6'h19   : SM4_in_7 = AK_1[31:24];
                6'h1a   : SM4_in_7 = A_0[23:16] ;
                6'h1b   : SM4_in_7 = AK_0[15:8] ;
                6'h1c   : SM4_in_7 = A_1[7:0]   ;
                6'h1d   : SM4_in_7 = A_1[31:24] ;
                6'h1e   : SM4_in_7 = AK_1[23:16];
                6'h1f   : SM4_in_7 = A_0[15:8]  ;
                6'h20   : SM4_in_7 = AK_0[7:0]  ;
                6'h21   : SM4_in_7 = AK_0[31:24];
                6'h22   : SM4_in_7 = A_1[23:16] ;
                6'h23   : SM4_in_7 = AK_1[15:8] ;
                6'h24   : SM4_in_7 = A_0[7:0]   ;
                6'h25   : SM4_in_7 = A_0[31:24] ;
                6'h26   : SM4_in_7 = AK_0[23:16];
                6'h27   : SM4_in_7 = A_1[15:8]  ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_7 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_7 = AES_128_in_7;
                2'b01   : sbox_in_7 = AES_192_in_7;
                2'b10   : sbox_in_7 = AES_256_in_7;     
                default : sbox_in_7 = SM4_in_7    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_7_inst
    (
        .din(sbox_in_7),
        .cfg({cfg[2:1],cfg_ende_sbox7}),
        .dout(sbox_out_7)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_7 = 8'h0;
            AES_192_out_7 = 8'h0;
            AES_256_out_7 = 8'h0;
            SM4_out_7     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_7 = sbox_out_7;
                2'b01   : AES_192_out_7 = sbox_out_7;
                2'b10   : AES_256_out_7 = sbox_out_7;   
                default : SM4_out_7     = sbox_out_7;
            endcase
        end
    end

    // sbox_reconfig_8_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_8 = 8'h0;
            AES_192_in_8 = 8'h0;
            AES_256_in_8 = 8'h0;
            SM4_in_8 = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_8 = sbox_din_aes[95:88]  ;
                default : AES_128_in_8 = sbox_din_aes[15:8]   ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
           case (clk_cnt)
               6'h0    : AES_192_in_8 = sbox_din_aes[95:88 ] ;
               6'h1    : AES_192_in_8 = sbox_kin_aes[31:24]  ;
               6'h2    : AES_192_in_8 = sbox_din_aes[63:56]  ;
               6'h3    : AES_192_in_8 = sbox_din_aes[127:120];
               6'h4    : AES_192_in_8 = sbox_din_aes[31:24]  ;
               6'h5    : AES_192_in_8 = sbox_din_aes[95:88 ] ;
               6'h6    : AES_192_in_8 = sbox_kin_aes[31:24]  ;
               6'h7    : AES_192_in_8 = sbox_din_aes[63:56]  ;
               6'h8    : AES_192_in_8 = sbox_din_aes[127:120];
               default : AES_192_in_8 = sbox_din_aes[31:24]  ;
           endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_8 = sbox_din_aes[95:88]  ;
                6'h1    : AES_256_in_8 = sbox_kin_aes[15:8]   ;
                6'h2    : AES_256_in_8 = sbox_din_aes[31:24]  ;
                6'h3    : AES_256_in_8 = sbox_din_aes[79:72]  ;
                6'h4    : AES_256_in_8 = sbox_din_aes[127:120];
                6'h5    : AES_256_in_8 = sbox_din_aes[15:8]   ;
                6'h6    : AES_256_in_8 = sbox_din_aes[63:56]  ;
                6'h7    : AES_256_in_8 = sbox_din_aes[111:104];
                6'h8    : AES_256_in_8 = sbox_kin_aes[31:24]  ;
                default : AES_256_in_8 = sbox_din_aes[47:40]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_8 = AK_1[31:24];
                6'h1    : SM4_in_8 = A_0[23:16] ;
                6'h2    : SM4_in_8 = AK_0[15:8] ;
                6'h3    : SM4_in_8 = A_1[7:0]   ;
                6'h4    : SM4_in_8 = A_1[31:24] ;
                6'h5    : SM4_in_8 = AK_1[23:16];
                6'h6    : SM4_in_8 = A_0[15:8]  ;
                6'h7    : SM4_in_8 = AK_0[7:0]  ;
                6'h8    : SM4_in_8 = AK_0[31:24];
                6'h9    : SM4_in_8 = A_1[23:16] ;
                6'ha    : SM4_in_8 = AK_1[15:8] ;
                6'hb    : SM4_in_8 = A_0[7:0]   ;
                6'hc    : SM4_in_8 = A_0[31:24] ;
                6'hd    : SM4_in_8 = AK_0[23:16];
                6'he    : SM4_in_8 = A_1[15:8]  ;
                6'hf    : SM4_in_8 = AK_1[7:0]  ;
                6'h10   : SM4_in_8 = AK_1[31:24];
                6'h11   : SM4_in_8 = A_0[23:16] ;
                6'h12   : SM4_in_8 = AK_0[15:8] ;
                6'h13   : SM4_in_8 = A_1[7:0]   ;
                6'h14   : SM4_in_8 = AK_1[31:24];
                6'h15   : SM4_in_8 = A_0[23:16] ;
                6'h16   : SM4_in_8 = AK_0[15:8] ;
                6'h17   : SM4_in_8 = A_1[7:0]   ;
                6'h18   : SM4_in_8 = A_1[31:24] ;
                6'h19   : SM4_in_8 = AK_1[23:16];
                6'h1a   : SM4_in_8 = A_0[15:8]  ;
                6'h1b   : SM4_in_8 = AK_0[7:0]  ;
                6'h1c   : SM4_in_8 = AK_0[31:24];
                6'h1d   : SM4_in_8 = A_1[23:16] ;
                6'h1e   : SM4_in_8 = AK_1[15:8] ;
                6'h1f   : SM4_in_8 = A_0[7:0]   ;
                6'h20   : SM4_in_8 = A_0[31:24] ;
                6'h21   : SM4_in_8 = AK_0[23:16];
                6'h22   : SM4_in_8 = A_1[15:8]  ;
                6'h23   : SM4_in_8 = AK_1[7:0]  ;
                6'h24   : SM4_in_8 = AK_1[31:24];
                6'h25   : SM4_in_8 = A_0[23:16] ;
                6'h26   : SM4_in_8 = AK_0[15:8] ;
                6'h27   : SM4_in_8 = A_1[7:0]   ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_8 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_8 = AES_128_in_8;
                2'b01   : sbox_in_8 = AES_192_in_8;
                2'b10   : sbox_in_8 = AES_256_in_8;     
                default : sbox_in_8 = SM4_in_8    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_8_inst
    (
        .din(sbox_in_8),
        .cfg({cfg[2:1],cfg_ende_sbox8}),
        .dout(sbox_out_8)
    );

    always @(*) begin
        if (!rstn) begin
           AES_128_out_8 = 8'h0;
           AES_192_out_8 = 8'h0;
           AES_256_out_8 = 8'h0;
           SM4_out_8     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_8 = sbox_out_8;
                2'b01   : AES_192_out_8 = sbox_out_8;
                2'b10   : AES_256_out_8 = sbox_out_8;   
                default : SM4_out_8     = sbox_out_8;
            endcase
        end
    end

    // sbox_reconfig_9_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_9 = 8'h0;
            AES_192_in_9 = 8'h0;
            AES_256_in_9 = 8'h0;
            SM4_in_9     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            case (clk_cnt)
                6'h0    : AES_128_in_9 = sbox_din_aes[87:80]  ;
                default : AES_128_in_9 = sbox_din_aes[7:0]    ;
            endcase
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_9 = sbox_din_aes[87:80]  ;
                6'h1    : AES_192_in_9 = sbox_kin_aes[23:16]  ;
                6'h2    : AES_192_in_9 = sbox_din_aes[55:48]  ;
                6'h3    : AES_192_in_9 = sbox_din_aes[119:112];
                6'h4    : AES_192_in_9 = sbox_din_aes[23:16]  ;
                6'h5    : AES_192_in_9 = sbox_din_aes[87:80]  ;
                6'h6    : AES_192_in_9 = sbox_kin_aes[23:16]  ;
                6'h7    : AES_192_in_9 = sbox_din_aes[55:48]  ;
                6'h8    : AES_192_in_9 = sbox_din_aes[119:112];
                default : AES_192_in_9 = sbox_din_aes[23:16]  ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_9 = sbox_din_aes[87:80]  ;
                6'h1    : AES_256_in_9 = sbox_kin_aes[7:0]    ;
                6'h2    : AES_256_in_9 = sbox_din_aes[23:16]  ;
                6'h3    : AES_256_in_9 = sbox_din_aes[71:64]  ;
                6'h4    : AES_256_in_9 = sbox_din_aes[119:112];
                6'h5    : AES_256_in_9 = sbox_din_aes[7:0]    ;
                6'h6    : AES_256_in_9 = sbox_din_aes[55:48]  ;
                6'h7    : AES_256_in_9 = sbox_din_aes[103:96] ;
                6'h8    : AES_256_in_9 = sbox_kin_aes[23:16]  ;
                default : AES_256_in_9 = sbox_din_aes[39:32]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_9 = AK_1[23:16];
                6'h1    : SM4_in_9 = A_0[15:8]  ;
                6'h2    : SM4_in_9 = AK_0[7:0]  ;
                6'h3    : SM4_in_9 = AK_0[31:24];
                6'h4    : SM4_in_9 = A_1[23:16] ;
                6'h5    : SM4_in_9 = AK_1[15:8] ;
                6'h6    : SM4_in_9 = A_0[7:0]   ;
                6'h7    : SM4_in_9 = A_0[31:24] ;
                6'h8    : SM4_in_9 = AK_0[23:16];
                6'h9    : SM4_in_9 = A_1[15:8]  ;
                6'ha    : SM4_in_9 = AK_1[7:0]  ;
                6'hb    : SM4_in_9 = AK_1[31:24];
                6'hc    : SM4_in_9 = A_0[23:16] ;
                6'hd    : SM4_in_9 = AK_0[15:8] ;
                6'he    : SM4_in_9 = A_1[7:0]   ;
                6'hf    : SM4_in_9 = A_1[31:24] ;
                6'h10   : SM4_in_9 = AK_1[23:16];
                6'h11   : SM4_in_9 = A_0[15:8]  ;
                6'h12   : SM4_in_9 = AK_0[7:0]  ;
                6'h14   : SM4_in_9 = AK_1[23:16];
                6'h15   : SM4_in_9 = A_0[15:8]  ;
                6'h16   : SM4_in_9 = AK_0[7:0]  ;
                6'h17   : SM4_in_9 = AK_0[31:24];
                6'h18   : SM4_in_9 = A_1[23:16] ;
                6'h19   : SM4_in_9 = AK_1[15:8] ;
                6'h1a   : SM4_in_9 = A_0[7:0]   ;
                6'h1b   : SM4_in_9 = A_0[31:24] ;
                6'h1c   : SM4_in_9 = AK_0[23:16];
                6'h1d   : SM4_in_9 = A_1[15:8]  ;
                6'h1e   : SM4_in_9 = AK_1[7:0]  ;
                6'h1f   : SM4_in_9 = AK_1[31:24];
                6'h20   : SM4_in_9 = A_0[23:16] ;
                6'h21   : SM4_in_9 = AK_0[15:8] ;
                6'h22   : SM4_in_9 = A_1[7:0]   ;
                6'h23   : SM4_in_9 = A_1[31:24] ;
                6'h24   : SM4_in_9 = AK_1[23:16];
                6'h25   : SM4_in_9 = A_0[15:8]  ;
                6'h26   : SM4_in_9 = AK_0[7:0]  ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_9 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_9 = AES_128_in_9;
                2'b01   : sbox_in_9 = AES_192_in_9;
                2'b10   : sbox_in_9 = AES_256_in_9;     
                default : sbox_in_9 = SM4_in_9    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_9_inst
    (
        .din(sbox_in_9),
        .cfg({cfg[2:1],cfg_ende_sbox9}),
        .dout(sbox_out_9)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_9 = 8'h0;
            AES_192_out_9 = 8'h0;
            AES_256_out_9 = 8'h0;
            SM4_out_9     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_9 = sbox_out_9;
                2'b01   : AES_192_out_9 = sbox_out_9;
                2'b10   : AES_256_out_9 = sbox_out_9;   
                default : SM4_out_9     = sbox_out_9;
            endcase
        end
    end


    // sbox_reconfig_10_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_10 = 8'h0;
            AES_192_in_10 = 8'h0;
            AES_256_in_10 = 8'h0;
            SM4_in_10     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            AES_128_in_10 = 8'h0;
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_10 = sbox_din_aes[79:72]  ;
                6'h1    : AES_192_in_10 = sbox_kin_aes[15:8]   ;
                6'h2    : AES_192_in_10 = sbox_din_aes[47:40]  ;
                6'h3    : AES_192_in_10 = sbox_din_aes[111:104];
                6'h4    : AES_192_in_10 = sbox_din_aes[15:8]   ;
                6'h5    : AES_192_in_10 = sbox_din_aes[79:72]  ;
                6'h6    : AES_192_in_10 = sbox_kin_aes[15:8]   ;
                6'h7    : AES_192_in_10 = sbox_din_aes[47:40]  ;
                6'h8    : AES_192_in_10 = sbox_din_aes[111:104];
                default : AES_192_in_10 = sbox_din_aes[15:8]   ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_10 = sbox_din_aes[79:72]  ;
                6'h1    : AES_256_in_10 = sbox_din_aes[127:120];
                6'h2    : AES_256_in_10 = sbox_din_aes[15:8]   ;
                6'h3    : AES_256_in_10 = sbox_din_aes[63:56]  ;
                6'h4    : AES_256_in_10 = sbox_din_aes[111:104];
                6'h5    : AES_256_in_10 = sbox_kin_aes[31:24]  ;
                6'h6    : AES_256_in_10 = sbox_din_aes[47:40]  ;
                6'h7    : AES_256_in_10 = sbox_din_aes[95:88]  ;
                6'h8    : AES_256_in_10 = sbox_kin_aes[15:8]   ;
                default : AES_256_in_10 = sbox_din_aes[31:24]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_10 = AK_1[15:8] ;
                6'h1    : SM4_in_10 = A_0[7:0]   ;
                6'h2    : SM4_in_10 = A_0[31:24] ;
                6'h3    : SM4_in_10 = AK_0[23:16];
                6'h4    : SM4_in_10 = A_1[15:8]  ;
                6'h5    : SM4_in_10 = AK_1[7:0]  ;
                6'h6    : SM4_in_10 = AK_1[31:24];
                6'h7    : SM4_in_10 = A_0[23:16] ;
                6'h8    : SM4_in_10 = AK_0[15:8] ;
                6'h9    : SM4_in_10 = A_1[7:0]   ;
                6'ha    : SM4_in_10 = A_1[31:24] ;
                6'hb    : SM4_in_10 = AK_1[23:16];
                6'hc    : SM4_in_10 = A_0[15:8]  ;
                6'hd    : SM4_in_10 = AK_0[7:0]  ;
                6'he    : SM4_in_10 = AK_0[31:24];
                6'hf    : SM4_in_10 = A_1[23:16] ;
                6'h10   : SM4_in_10 = AK_1[15:8] ;
                6'h11   : SM4_in_10 = A_0[7:0]   ;
                6'h12   : SM4_in_10 = A_0[31:24] ;
                6'h14   : SM4_in_10 = AK_1[15:8] ;
                6'h15   : SM4_in_10 = A_0[7:0]   ;
                6'h16   : SM4_in_10 = A_0[31:24] ;
                6'h17   : SM4_in_10 = AK_0[23:16];
                6'h18   : SM4_in_10 = A_1[15:8]  ;
                6'h19   : SM4_in_10 = AK_1[7:0]  ;
                6'h1a   : SM4_in_10 = AK_1[31:24];
                6'h1b   : SM4_in_10 = A_0[23:16] ;
                6'h1c   : SM4_in_10 = AK_0[15:8] ;
                6'h1d   : SM4_in_10 = A_1[7:0]   ;
                6'h1e   : SM4_in_10 = A_1[31:24] ;
                6'h1f   : SM4_in_10 = AK_1[23:16];
                6'h20   : SM4_in_10 = A_0[15:8]  ;
                6'h21   : SM4_in_10 = AK_0[7:0]  ;
                6'h22   : SM4_in_10 = AK_0[31:24];
                6'h23   : SM4_in_10 = A_1[23:16] ;
                6'h24   : SM4_in_10 = AK_1[15:8] ;
                6'h25   : SM4_in_10 = A_0[7:0]   ;
                6'h26   : SM4_in_10 = A_0[31:24] ;
            endcase    
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_10 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_10 = AES_128_in_10;
                2'b01   : sbox_in_10 = AES_192_in_10;
                2'b10   : sbox_in_10 = AES_256_in_10;   
                default : sbox_in_10 = SM4_in_10    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_10_inst
    (
        .din(sbox_in_10),
        .cfg({cfg[2:1],cfg_ende_sbox10}),
        .dout(sbox_out_10)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_10 = 8'h0;
            AES_192_out_10 = 8'h0;
            AES_256_out_10 = 8'h0;
            SM4_out_10     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_10 = sbox_out_10;
                2'b01   : AES_192_out_10 = sbox_out_10;
                2'b10   : AES_256_out_10 = sbox_out_10;         
                default : SM4_out_10     = sbox_out_10;
            endcase
        end
    end

    // sbox_reconfig_11_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_11 = 8'h0;
            AES_192_in_11 = 8'h0;
            AES_256_in_11 = 8'h0;
            SM4_in_11     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            AES_128_in_11 = 8'h0;
        end else if (cfg[2:1] == 2'b01) begin
            case (clk_cnt)
                6'h0    : AES_192_in_11 = sbox_din_aes[71:64]  ;
                6'h1    : AES_192_in_11 = sbox_kin_aes[7:0]    ;
                6'h2    : AES_192_in_11 = sbox_din_aes[39:32]  ;
                6'h3    : AES_192_in_11 = sbox_din_aes[103:96] ;
                6'h4    : AES_192_in_11 = sbox_din_aes[7:0]    ;
                6'h5    : AES_192_in_11 = sbox_din_aes[71:64]  ;
                6'h6    : AES_192_in_11 = sbox_kin_aes[7:0]    ;
                6'h7    : AES_192_in_11 = sbox_din_aes[39:32]  ;
                6'h8    : AES_192_in_11 = sbox_din_aes[103:96] ;
                default : AES_192_in_11 = sbox_din_aes[7:0]    ;
            endcase
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_11 = sbox_din_aes[71:64]  ;
                6'h1    : AES_256_in_11 = sbox_din_aes[119:112];
                6'h2    : AES_256_in_11 = sbox_din_aes[7:0]    ;
                6'h3    : AES_256_in_11 = sbox_din_aes[55:48]  ;
                6'h4    : AES_256_in_11 = sbox_din_aes[103:96] ;
                6'h5    : AES_256_in_11 = sbox_kin_aes[23:16]  ;
                6'h6    : AES_256_in_11 = sbox_din_aes[39:32]  ;
                6'h7    : AES_256_in_11 = sbox_din_aes[87:80]  ;
                6'h8    : AES_256_in_11 = sbox_kin_aes[7:0]    ;
                default : AES_256_in_11 = sbox_din_aes[23:16]  ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_11 = AK_1[7:0]  ;
                6'h1    : SM4_in_11 = AK_1[31:24];
                6'h2    : SM4_in_11 = A_0[23:16] ;
                6'h3    : SM4_in_11 = AK_0[15:8] ;
                6'h4    : SM4_in_11 = A_1[7:0]   ;
                6'h5    : SM4_in_11 = A_1[31:24] ;
                6'h6    : SM4_in_11 = AK_1[23:16];
                6'h7    : SM4_in_11 = A_0[15:8]  ;
                6'h8    : SM4_in_11 = AK_0[7:0]  ;
                6'h9    : SM4_in_11 = AK_0[31:24];
                6'ha    : SM4_in_11 = A_1[23:16] ;
                6'hb    : SM4_in_11 = AK_1[15:8] ;
                6'hc    : SM4_in_11 = A_0[7:0]   ;
                6'hd    : SM4_in_11 = A_0[31:24] ;
                6'he    : SM4_in_11 = AK_0[23:16];
                6'hf    : SM4_in_11 = A_1[15:8]  ;
                6'h10   : SM4_in_11 = AK_1[7:0]  ;
                6'h11   : SM4_in_11 = AK_1[31:24];
                6'h12   : SM4_in_11 = A_0[23:16] ;
                6'h14   : SM4_in_11 = AK_1[7:0]  ;
                6'h15   : SM4_in_11 = AK_1[31:24];
                6'h16   : SM4_in_11 = A_0[23:16] ;
                6'h17   : SM4_in_11 = AK_0[15:8] ;
                6'h18   : SM4_in_11 = A_1[7:0]   ;
                6'h19   : SM4_in_11 = A_1[31:24] ;
                6'h1a   : SM4_in_11 = AK_1[23:16];
                6'h1b   : SM4_in_11 = A_0[15:8]  ;
                6'h1c   : SM4_in_11 = AK_0[7:0]  ;
                6'h1d   : SM4_in_11 = AK_0[31:24];
                6'h1e   : SM4_in_11 = A_1[23:16] ;
                6'h1f   : SM4_in_11 = AK_1[15:8] ;
                6'h20   : SM4_in_11 = A_0[7:0]   ;
                6'h21   : SM4_in_11 = A_0[31:24] ;
                6'h22   : SM4_in_11 = AK_0[23:16];
                6'h23   : SM4_in_11 = A_1[15:8]  ;
                6'h24   : SM4_in_11 = AK_1[7:0]  ;
                6'h25   : SM4_in_11 = AK_1[31:24];
                6'h26   : SM4_in_11 = A_0[23:16] ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_11 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_11 = AES_128_in_11;
                2'b01   : sbox_in_11 = AES_192_in_11;
                2'b10   : sbox_in_11 = AES_256_in_11;   
                default : sbox_in_11 = SM4_in_11    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_11_inst
    (
        .din(sbox_in_11),
        .cfg({cfg[2:1],cfg_ende_sbox11}),
        .dout(sbox_out_11)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_11 = 8'h0;
            AES_192_out_11 = 8'h0;
            AES_256_out_11 = 8'h0;
            SM4_out_11     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_11 = sbox_out_11;
                2'b01   : AES_192_out_11 = sbox_out_11;
                2'b10   : AES_256_out_11 = sbox_out_11;         
                default : SM4_out_11     = sbox_out_11;
            endcase
        end
    end

    // sbox_reconfig_12_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_12 = 8'h0;
            AES_192_in_12 = 8'h0;
            AES_256_in_12 = 8'h0;
            SM4_in_12 = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            AES_128_in_12 = 8'h0;
        end else if (cfg[2:1] == 2'b01) begin
            AES_192_in_12 = 8'h0;
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_12 = sbox_din_aes[63:56]  ;
                6'h1    : AES_256_in_12 = sbox_din_aes[111:104];
                6'h2    : AES_256_in_12 = sbox_kin_aes[31:24]  ;
                6'h3    : AES_256_in_12 = sbox_din_aes[47:40]  ;
                6'h4    : AES_256_in_12 = sbox_din_aes[95:88]  ;
                6'h5    : AES_256_in_12 = sbox_kin_aes[15:8]   ;
                6'h6    : AES_256_in_12 = sbox_din_aes[31:24]  ;
                6'h7    : AES_256_in_12 = sbox_din_aes[79:72]  ;
                6'h8    : AES_256_in_12 = sbox_din_aes[127:120];
                default : AES_256_in_12 = sbox_din_aes[15:8]   ;
            endcase
        end else begin
            case (clk_cnt_all)
                6'h0    : SM4_in_12 = A_1[31:24] ;
                6'h1    : SM4_in_12 = AK_1[23:16];
                6'h2    : SM4_in_12 = A_0[15:8]  ;
                6'h3    : SM4_in_12 = AK_0[7:0]  ;
                6'h4    : SM4_in_12 = AK_0[31:24];
                6'h5    : SM4_in_12 = A_1[23:16] ;
                6'h6    : SM4_in_12 = AK_1[15:8] ;
                6'h7    : SM4_in_12 = A_0[7:0]   ;
                6'h8    : SM4_in_12 = A_0[31:24] ;
                6'h9    : SM4_in_12 = AK_0[23:16];
                6'ha    : SM4_in_12 = A_1[15:8]  ;
                6'hb    : SM4_in_12 = AK_1[7:0]  ;
                6'hc    : SM4_in_12 = AK_1[31:24];
                6'hd    : SM4_in_12 = A_0[23:16] ;
                6'he    : SM4_in_12 = AK_0[15:8] ;
                6'hf    : SM4_in_12 = A_1[7:0]   ;
                6'h10   : SM4_in_12 = A_1[31:24] ;
                6'h11   : SM4_in_12 = AK_1[23:16];
                6'h12   : SM4_in_12 = A_0[15:8]  ;
                6'h14   : SM4_in_12 = A_1[31:24] ;
                6'h15   : SM4_in_12 = AK_1[23:16];
                6'h16   : SM4_in_12 = A_0[15:8]  ;
                6'h17   : SM4_in_12 = AK_0[7:0]  ;
                6'h18   : SM4_in_12 = AK_0[31:24];
                6'h19   : SM4_in_12 = A_1[23:16] ;
                6'h1a   : SM4_in_12 = AK_1[15:8] ;
                6'h1b   : SM4_in_12 = A_0[7:0]   ;
                6'h1c   : SM4_in_12 = A_0[31:24] ;
                6'h1d   : SM4_in_12 = AK_0[23:16];
                6'h1e   : SM4_in_12 = A_1[15:8]  ;
                6'h1f   : SM4_in_12 = AK_1[7:0]  ;
                6'h20   : SM4_in_12 = AK_1[31:24];
                6'h21   : SM4_in_12 = A_0[23:16] ;
                6'h22   : SM4_in_12 = AK_0[15:8] ;
                6'h23   : SM4_in_12 = A_1[7:0]   ;
                6'h24   : SM4_in_12 = A_1[31:24] ;
                6'h25   : SM4_in_12 = AK_1[23:16];
                6'h26   : SM4_in_12 = A_0[15:8]  ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_12 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_12 = AES_128_in_12;
                2'b01   : sbox_in_12 = AES_192_in_12;
                2'b10   : sbox_in_12 = AES_256_in_12;   
                default : sbox_in_12 = SM4_in_12    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_12_inst
    (
        .din(sbox_in_12),
        .cfg({cfg[2:1],cfg_ende_sbox12}),
        .dout(sbox_out_12)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_12 = 8'h0;
            AES_192_out_12 = 8'h0;
            AES_256_out_12 = 8'h0;
            SM4_out_12 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_12 = sbox_out_12;
                2'b01   : AES_192_out_12 = sbox_out_12;
                2'b10   : AES_256_out_12 = sbox_out_12;         
                default : SM4_out_12     = sbox_out_12;
            endcase
        end
    end

    // sbox_reconfig_13_inst
    always @(*) begin
        if (!rstn) begin
            AES_128_in_13 = 8'h0;
            AES_192_in_13 = 8'h0;
            AES_256_in_13 = 8'h0;
            SM4_in_13     = 8'h0;
        end else if (cfg[2:1] == 2'b00) begin
            AES_128_in_13 = 8'h0;
        end else if (cfg[2:1] == 2'b01) begin
            AES_192_in_13 = 8'h0;
        end else if (cfg[2:1] == 2'b10) begin
            case (clk_cnt)
                6'h0    : AES_256_in_13 = sbox_din_aes[55:48]  ;
                6'h1    : AES_256_in_13 = sbox_din_aes[103:96] ;
                6'h2    : AES_256_in_13 = sbox_kin_aes[23:16]  ;
                6'h3    : AES_256_in_13 = sbox_din_aes[39:32]  ;
                6'h4    : AES_256_in_13 = sbox_din_aes[87:80]  ;
                6'h5    : AES_256_in_13 = sbox_kin_aes[7:0]    ;
                6'h6    : AES_256_in_13 = sbox_din_aes[23:16]  ;
                6'h7    : AES_256_in_13 = sbox_din_aes[71:64]  ;
                6'h8    : AES_256_in_13 = sbox_din_aes[119:112];
                default : AES_256_in_13 = sbox_din_aes[7:0]    ;
            endcase
        end
    end

    always @(*) begin
        if (!rstn) begin
            sbox_in_13 = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : sbox_in_13 = AES_128_in_13;
                2'b01   : sbox_in_13 = AES_192_in_13;
                2'b10   : sbox_in_13 = AES_256_in_13;   
                default : sbox_in_13 = SM4_in_13    ;
            endcase
        end
    end

    sbox_reconfig sbox_reconfig_13_inst
    (
        .din(sbox_in_13),
        .cfg({cfg[2:1],cfg_ende_sbox13}),
        .dout(sbox_out_13)
    );

    always @(*) begin
        if (!rstn) begin
            AES_128_out_13 = 8'h0;
            AES_192_out_13 = 8'h0;
            AES_256_out_13 = 8'h0;
            SM4_out_13     = 8'h0;
        end else begin
            case (cfg[2:1])
                2'b00   : AES_128_out_13 = sbox_out_13;
                2'b01   : AES_192_out_13 = sbox_out_13;
                2'b10   : AES_256_out_13 = sbox_out_13;         
                default : SM4_out_13     = sbox_out_13;
            endcase
        end
    end

endmodule
