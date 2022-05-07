module cookie_draw (
	input logic [9:0] X_Pos,
	input logic [9:0] Y_Pos,
	input logic [239:0] Not_ate,

	output logic cookie_on);

always_comb begin

	// determine whether or not a cookie should be drawn at a certain X and Y loc of the virtual electron beam
	cookie_on = 1'b0;
	if ((Not_ate[0] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[1] == 1'b1) && (X_Pos >= 10'd481) && (X_Pos <= 10'd485) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[2] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[3] == 1'b1) && (X_Pos >= 10'd453) && (X_Pos <= 10'd457) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[4] == 1'b1) && (X_Pos >= 10'd439) && (X_Pos <= 10'd443) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[5] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[6] == 1'b1) && (X_Pos >= 10'd410) && (X_Pos <= 10'd414) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[7] == 1'b1) && (X_Pos >= 10'd396) && (X_Pos <= 10'd400) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[8] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[9] == 1'b1) && (X_Pos >= 10'd367) && (X_Pos <= 10'd371) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[10] == 1'b1) && (X_Pos >= 10'd353) && (X_Pos <= 10'd357) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[11] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[12] == 1'b1) && (X_Pos >= 10'd324) && (X_Pos <= 10'd328) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[13] == 1'b1) && (X_Pos >= 10'd310) && (X_Pos <= 10'd314) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[14] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[15] == 1'b1) && (X_Pos >= 10'd281) && (X_Pos <= 10'd285) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[16] == 1'b1) && (X_Pos >= 10'd267) && (X_Pos <= 10'd271) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[17] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[18] == 1'b1) && (X_Pos >= 10'd239) && (X_Pos <= 10'd243) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[19] == 1'b1) && (X_Pos >= 10'd224) && (X_Pos <= 10'd228) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[20] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[21] == 1'b1) && (X_Pos >= 10'd196) && (X_Pos <= 10'd200) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[22] == 1'b1) && (X_Pos >= 10'd181) && (X_Pos <= 10'd185) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[23] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[24] == 1'b1) && (X_Pos >= 10'd153) && (X_Pos <= 10'd157) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[25] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd426) && (Y_Pos <= 10'd430)) cookie_on = 1'b1;

	if ((Not_ate[26] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd413) && (Y_Pos <= 10'd417)) cookie_on = 1'b1;

	if ((Not_ate[27] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd413) && (Y_Pos <= 10'd417)) cookie_on = 1'b1;

	if ((Not_ate[28] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd413) && (Y_Pos <= 10'd417)) cookie_on = 1'b1;

	if ((Not_ate[29] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd413) && (Y_Pos <= 10'd417)) cookie_on = 1'b1;

	if ((Not_ate[30] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd400) && (Y_Pos <= 10'd404)) cookie_on = 1'b1;

	if ((Not_ate[31] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd400) && (Y_Pos <= 10'd404)) cookie_on = 1'b1;

	if ((Not_ate[32] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd400) && (Y_Pos <= 10'd404)) cookie_on = 1'b1;

	if ((Not_ate[33] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd400) && (Y_Pos <= 10'd404)) cookie_on = 1'b1;

	if ((Not_ate[34] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[35] == 1'b1) && (X_Pos >= 10'd481) && (X_Pos <= 10'd485) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[36] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[37] == 1'b1) && (X_Pos >= 10'd453) && (X_Pos <= 10'd457) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[38] == 1'b1) && (X_Pos >= 10'd439) && (X_Pos <= 10'd443) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[39] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[40] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[41] == 1'b1) && (X_Pos >= 10'd367) && (X_Pos <= 10'd371) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[42] == 1'b1) && (X_Pos >= 10'd353) && (X_Pos <= 10'd357) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[43] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[44] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[45] == 1'b1) && (X_Pos >= 10'd281) && (X_Pos <= 10'd285) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[46] == 1'b1) && (X_Pos >= 10'd267) && (X_Pos <= 10'd271) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[47] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[48] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[49] == 1'b1) && (X_Pos >= 10'd196) && (X_Pos <= 10'd200) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[50] == 1'b1) && (X_Pos >= 10'd181) && (X_Pos <= 10'd185) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[51] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[52] == 1'b1) && (X_Pos >= 10'd153) && (X_Pos <= 10'd157) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[53] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd387) && (Y_Pos <= 10'd391)) cookie_on = 1'b1;

	if ((Not_ate[54] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd374) && (Y_Pos <= 10'd378)) cookie_on = 1'b1;

	if ((Not_ate[55] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd374) && (Y_Pos <= 10'd378)) cookie_on = 1'b1;

	if ((Not_ate[56] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd374) && (Y_Pos <= 10'd378)) cookie_on = 1'b1;

	if ((Not_ate[57] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd374) && (Y_Pos <= 10'd378)) cookie_on = 1'b1;

	if ((Not_ate[58] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd374) && (Y_Pos <= 10'd378)) cookie_on = 1'b1;

	if ((Not_ate[59] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd374) && (Y_Pos <= 10'd378)) cookie_on = 1'b1;

	if ((Not_ate[60] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd362) && (Y_Pos <= 10'd366)) cookie_on = 1'b1;

	if ((Not_ate[61] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd362) && (Y_Pos <= 10'd366)) cookie_on = 1'b1;

	if ((Not_ate[62] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd362) && (Y_Pos <= 10'd366)) cookie_on = 1'b1;

	if ((Not_ate[63] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd362) && (Y_Pos <= 10'd366)) cookie_on = 1'b1;

	if ((Not_ate[64] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd362) && (Y_Pos <= 10'd366)) cookie_on = 1'b1;

	if ((Not_ate[65] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd362) && (Y_Pos <= 10'd366)) cookie_on = 1'b1;

	if ((Not_ate[66] == 1'b1) && (X_Pos >= 10'd481) && (X_Pos <= 10'd485) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[67] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[68] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[69] == 1'b1) && (X_Pos >= 10'd410) && (X_Pos <= 10'd414) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[70] == 1'b1) && (X_Pos >= 10'd396) && (X_Pos <= 10'd400) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[71] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[72] == 1'b1) && (X_Pos >= 10'd367) && (X_Pos <= 10'd371) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[73] == 1'b1) && (X_Pos >= 10'd353) && (X_Pos <= 10'd357) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[74] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[75] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[76] == 1'b1) && (X_Pos >= 10'd281) && (X_Pos <= 10'd285) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[77] == 1'b1) && (X_Pos >= 10'd267) && (X_Pos <= 10'd271) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[78] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[79] == 1'b1) && (X_Pos >= 10'd239) && (X_Pos <= 10'd243) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[80] == 1'b1) && (X_Pos >= 10'd224) && (X_Pos <= 10'd228) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[81] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[82] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[83] == 1'b1) && (X_Pos >= 10'd153) && (X_Pos <= 10'd157) && (Y_Pos >= 10'd349) && (Y_Pos <= 10'd353)) cookie_on = 1'b1;

	if ((Not_ate[84] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd336) && (Y_Pos <= 10'd340)) cookie_on = 1'b1;

	if ((Not_ate[85] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd336) && (Y_Pos <= 10'd340)) cookie_on = 1'b1;

	if ((Not_ate[86] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd336) && (Y_Pos <= 10'd340)) cookie_on = 1'b1;

	if ((Not_ate[87] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd336) && (Y_Pos <= 10'd340)) cookie_on = 1'b1;

	if ((Not_ate[88] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd336) && (Y_Pos <= 10'd340)) cookie_on = 1'b1;

	if ((Not_ate[89] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd336) && (Y_Pos <= 10'd340)) cookie_on = 1'b1;

	if ((Not_ate[90] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd323) && (Y_Pos <= 10'd327)) cookie_on = 1'b1;

	if ((Not_ate[91] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd323) && (Y_Pos <= 10'd327)) cookie_on = 1'b1;

	if ((Not_ate[92] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd323) && (Y_Pos <= 10'd327)) cookie_on = 1'b1;

	if ((Not_ate[93] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd323) && (Y_Pos <= 10'd327)) cookie_on = 1'b1;

	if ((Not_ate[94] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd323) && (Y_Pos <= 10'd327)) cookie_on = 1'b1;

	if ((Not_ate[95] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd323) && (Y_Pos <= 10'd327)) cookie_on = 1'b1;

	if ((Not_ate[96] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[97] == 1'b1) && (X_Pos >= 10'd481) && (X_Pos <= 10'd485) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[98] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[99] == 1'b1) && (X_Pos >= 10'd453) && (X_Pos <= 10'd457) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[100] == 1'b1) && (X_Pos >= 10'd439) && (X_Pos <= 10'd443) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[101] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[102] == 1'b1) && (X_Pos >= 10'd410) && (X_Pos <= 10'd414) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[103] == 1'b1) && (X_Pos >= 10'd396) && (X_Pos <= 10'd400) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[104] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[105] == 1'b1) && (X_Pos >= 10'd367) && (X_Pos <= 10'd371) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[106] == 1'b1) && (X_Pos >= 10'd353) && (X_Pos <= 10'd357) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[107] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[108] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[109] == 1'b1) && (X_Pos >= 10'd281) && (X_Pos <= 10'd285) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[110] == 1'b1) && (X_Pos >= 10'd267) && (X_Pos <= 10'd271) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[111] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[112] == 1'b1) && (X_Pos >= 10'd239) && (X_Pos <= 10'd243) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[113] == 1'b1) && (X_Pos >= 10'd224) && (X_Pos <= 10'd228) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[114] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[115] == 1'b1) && (X_Pos >= 10'd196) && (X_Pos <= 10'd200) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[116] == 1'b1) && (X_Pos >= 10'd181) && (X_Pos <= 10'd185) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[117] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[118] == 1'b1) && (X_Pos >= 10'd153) && (X_Pos <= 10'd157) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[119] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd310) && (Y_Pos <= 10'd314)) cookie_on = 1'b1;

	if ((Not_ate[120] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd297) && (Y_Pos <= 10'd301)) cookie_on = 1'b1;

	if ((Not_ate[121] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd297) && (Y_Pos <= 10'd301)) cookie_on = 1'b1;

	if ((Not_ate[122] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd284) && (Y_Pos <= 10'd288)) cookie_on = 1'b1;

	if ((Not_ate[123] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd284) && (Y_Pos <= 10'd288)) cookie_on = 1'b1;

	if ((Not_ate[124] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd271) && (Y_Pos <= 10'd275)) cookie_on = 1'b1;

	if ((Not_ate[125] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd271) && (Y_Pos <= 10'd275)) cookie_on = 1'b1;

	if ((Not_ate[126] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd258) && (Y_Pos <= 10'd262)) cookie_on = 1'b1;

	if ((Not_ate[127] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd258) && (Y_Pos <= 10'd262)) cookie_on = 1'b1;

	if ((Not_ate[128] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd245) && (Y_Pos <= 10'd249)) cookie_on = 1'b1;

	if ((Not_ate[129] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd245) && (Y_Pos <= 10'd249)) cookie_on = 1'b1;

	if ((Not_ate[130] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd232) && (Y_Pos <= 10'd236)) cookie_on = 1'b1;

	if ((Not_ate[131] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd232) && (Y_Pos <= 10'd236)) cookie_on = 1'b1;

	if ((Not_ate[132] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd220) && (Y_Pos <= 10'd224)) cookie_on = 1'b1;

	if ((Not_ate[133] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd220) && (Y_Pos <= 10'd224)) cookie_on = 1'b1;

	if ((Not_ate[134] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd207) && (Y_Pos <= 10'd211)) cookie_on = 1'b1;

	if ((Not_ate[135] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd207) && (Y_Pos <= 10'd211)) cookie_on = 1'b1;

	if ((Not_ate[136] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd194) && (Y_Pos <= 10'd198)) cookie_on = 1'b1;

	if ((Not_ate[137] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd194) && (Y_Pos <= 10'd198)) cookie_on = 1'b1;

	if ((Not_ate[138] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd181) && (Y_Pos <= 10'd185)) cookie_on = 1'b1;

	if ((Not_ate[139] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd181) && (Y_Pos <= 10'd185)) cookie_on = 1'b1;

	if ((Not_ate[140] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd168) && (Y_Pos <= 10'd172)) cookie_on = 1'b1;

	if ((Not_ate[141] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd168) && (Y_Pos <= 10'd172)) cookie_on = 1'b1;

	if ((Not_ate[142] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[143] == 1'b1) && (X_Pos >= 10'd481) && (X_Pos <= 10'd485) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[144] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[145] == 1'b1) && (X_Pos >= 10'd453) && (X_Pos <= 10'd457) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[146] == 1'b1) && (X_Pos >= 10'd439) && (X_Pos <= 10'd443) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[147] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[148] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[149] == 1'b1) && (X_Pos >= 10'd367) && (X_Pos <= 10'd371) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[150] == 1'b1) && (X_Pos >= 10'd353) && (X_Pos <= 10'd357) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[151] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[152] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[153] == 1'b1) && (X_Pos >= 10'd281) && (X_Pos <= 10'd285) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[154] == 1'b1) && (X_Pos >= 10'd267) && (X_Pos <= 10'd271) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[155] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[156] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[157] == 1'b1) && (X_Pos >= 10'd196) && (X_Pos <= 10'd200) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[158] == 1'b1) && (X_Pos >= 10'd181) && (X_Pos <= 10'd185) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[159] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[160] == 1'b1) && (X_Pos >= 10'd153) && (X_Pos <= 10'd157) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[161] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd155) && (Y_Pos <= 10'd159)) cookie_on = 1'b1;

	if ((Not_ate[162] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd142) && (Y_Pos <= 10'd146)) cookie_on = 1'b1;

	if ((Not_ate[163] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd142) && (Y_Pos <= 10'd146)) cookie_on = 1'b1;

	if ((Not_ate[164] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd142) && (Y_Pos <= 10'd146)) cookie_on = 1'b1;

	if ((Not_ate[165] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd142) && (Y_Pos <= 10'd146)) cookie_on = 1'b1;

	if ((Not_ate[166] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd142) && (Y_Pos <= 10'd146)) cookie_on = 1'b1;

	if ((Not_ate[167] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd142) && (Y_Pos <= 10'd146)) cookie_on = 1'b1;

	if ((Not_ate[168] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd129) && (Y_Pos <= 10'd133)) cookie_on = 1'b1;

	if ((Not_ate[169] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd129) && (Y_Pos <= 10'd133)) cookie_on = 1'b1;

	if ((Not_ate[170] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd129) && (Y_Pos <= 10'd133)) cookie_on = 1'b1;

	if ((Not_ate[171] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd129) && (Y_Pos <= 10'd133)) cookie_on = 1'b1;

	if ((Not_ate[172] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd129) && (Y_Pos <= 10'd133)) cookie_on = 1'b1;

	if ((Not_ate[173] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd129) && (Y_Pos <= 10'd133)) cookie_on = 1'b1;

	if ((Not_ate[174] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[175] == 1'b1) && (X_Pos >= 10'd481) && (X_Pos <= 10'd485) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[176] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[177] == 1'b1) && (X_Pos >= 10'd453) && (X_Pos <= 10'd457) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[178] == 1'b1) && (X_Pos >= 10'd439) && (X_Pos <= 10'd443) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[179] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[180] == 1'b1) && (X_Pos >= 10'd410) && (X_Pos <= 10'd414) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[181] == 1'b1) && (X_Pos >= 10'd396) && (X_Pos <= 10'd400) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[182] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[183] == 1'b1) && (X_Pos >= 10'd367) && (X_Pos <= 10'd371) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[184] == 1'b1) && (X_Pos >= 10'd353) && (X_Pos <= 10'd357) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[185] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[186] == 1'b1) && (X_Pos >= 10'd324) && (X_Pos <= 10'd328) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[187] == 1'b1) && (X_Pos >= 10'd310) && (X_Pos <= 10'd314) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[188] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[189] == 1'b1) && (X_Pos >= 10'd281) && (X_Pos <= 10'd285) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[190] == 1'b1) && (X_Pos >= 10'd267) && (X_Pos <= 10'd271) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[191] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[192] == 1'b1) && (X_Pos >= 10'd239) && (X_Pos <= 10'd243) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[193] == 1'b1) && (X_Pos >= 10'd224) && (X_Pos <= 10'd228) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[194] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[195] == 1'b1) && (X_Pos >= 10'd196) && (X_Pos <= 10'd200) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[196] == 1'b1) && (X_Pos >= 10'd181) && (X_Pos <= 10'd185) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[197] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[198] == 1'b1) && (X_Pos >= 10'd153) && (X_Pos <= 10'd157) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[199] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd116) && (Y_Pos <= 10'd120)) cookie_on = 1'b1;

	if ((Not_ate[200] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd103) && (Y_Pos <= 10'd107)) cookie_on = 1'b1;

	if ((Not_ate[201] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd103) && (Y_Pos <= 10'd107)) cookie_on = 1'b1;

	if ((Not_ate[202] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd103) && (Y_Pos <= 10'd107)) cookie_on = 1'b1;

	if ((Not_ate[203] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd103) && (Y_Pos <= 10'd107)) cookie_on = 1'b1;

	if ((Not_ate[204] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd103) && (Y_Pos <= 10'd107)) cookie_on = 1'b1;

	if ((Not_ate[205] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd103) && (Y_Pos <= 10'd107)) cookie_on = 1'b1;

	if ((Not_ate[206] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd91) && (Y_Pos <= 10'd95)) cookie_on = 1'b1;

	if ((Not_ate[207] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd91) && (Y_Pos <= 10'd95)) cookie_on = 1'b1;

	if ((Not_ate[208] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd91) && (Y_Pos <= 10'd95)) cookie_on = 1'b1;

	if ((Not_ate[209] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd91) && (Y_Pos <= 10'd95)) cookie_on = 1'b1;

	if ((Not_ate[210] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd78) && (Y_Pos <= 10'd82)) cookie_on = 1'b1;

	if ((Not_ate[211] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd78) && (Y_Pos <= 10'd82)) cookie_on = 1'b1;

	if ((Not_ate[212] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd78) && (Y_Pos <= 10'd82)) cookie_on = 1'b1;

	if ((Not_ate[213] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd78) && (Y_Pos <= 10'd82)) cookie_on = 1'b1;

	if ((Not_ate[214] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd78) && (Y_Pos <= 10'd82)) cookie_on = 1'b1;

	if ((Not_ate[215] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd78) && (Y_Pos <= 10'd82)) cookie_on = 1'b1;

	if ((Not_ate[216] == 1'b1) && (X_Pos >= 10'd496) && (X_Pos <= 10'd500) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[217] == 1'b1) && (X_Pos >= 10'd481) && (X_Pos <= 10'd485) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[218] == 1'b1) && (X_Pos >= 10'd467) && (X_Pos <= 10'd471) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[219] == 1'b1) && (X_Pos >= 10'd453) && (X_Pos <= 10'd457) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[220] == 1'b1) && (X_Pos >= 10'd439) && (X_Pos <= 10'd443) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[221] == 1'b1) && (X_Pos >= 10'd424) && (X_Pos <= 10'd428) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[222] == 1'b1) && (X_Pos >= 10'd410) && (X_Pos <= 10'd414) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[223] == 1'b1) && (X_Pos >= 10'd396) && (X_Pos <= 10'd400) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[224] == 1'b1) && (X_Pos >= 10'd381) && (X_Pos <= 10'd385) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[225] == 1'b1) && (X_Pos >= 10'd367) && (X_Pos <= 10'd371) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[226] == 1'b1) && (X_Pos >= 10'd353) && (X_Pos <= 10'd357) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[227] == 1'b1) && (X_Pos >= 10'd339) && (X_Pos <= 10'd343) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[228] == 1'b1) && (X_Pos >= 10'd296) && (X_Pos <= 10'd300) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[229] == 1'b1) && (X_Pos >= 10'd281) && (X_Pos <= 10'd285) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[230] == 1'b1) && (X_Pos >= 10'd267) && (X_Pos <= 10'd271) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[231] == 1'b1) && (X_Pos >= 10'd253) && (X_Pos <= 10'd257) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[232] == 1'b1) && (X_Pos >= 10'd239) && (X_Pos <= 10'd243) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[233] == 1'b1) && (X_Pos >= 10'd224) && (X_Pos <= 10'd228) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[234] == 1'b1) && (X_Pos >= 10'd210) && (X_Pos <= 10'd214) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[235] == 1'b1) && (X_Pos >= 10'd196) && (X_Pos <= 10'd200) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[236] == 1'b1) && (X_Pos >= 10'd181) && (X_Pos <= 10'd185) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[237] == 1'b1) && (X_Pos >= 10'd167) && (X_Pos <= 10'd171) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[238] == 1'b1) && (X_Pos >= 10'd153) && (X_Pos <= 10'd157) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

	if ((Not_ate[239] == 1'b1) && (X_Pos >= 10'd139) && (X_Pos <= 10'd143) && (Y_Pos >= 10'd65) && (Y_Pos <= 10'd69)) cookie_on = 1'b1;

end


endmodule

