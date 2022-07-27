#include <iostream>
#include <string>

using namespace std;

class ESB04 {
//private:
public:

	int sim_num = 0;
	int sear_num = 0;
	int flag = 1;
	double const cst = 0.95;
	int ALL[144][139] = {};
	double C_0[144][144] = {};
	double P_0[139][139] = {};
	double C_1[144][144] = {};
	double P_1[139][139] = {};
	double C_OUT[144] = {};
	int C_NUM[144] = {};

	//ESB04(){}
	//~ESB04(){}
	void INIT();
	void FAULT_INPUT();
	void Sim_C_01(int m, int n);
	void Sim_P_01(int m, int n);
	void Sim_C_10(int m, int n);
	void Sim_P_10(int m, int n);
	void ITER_01();
	void ITER_10();
	void Sim(int s);
	void Bub_Sort_0();
	void Bub_Sort_1();
	void Bub_Sort(int s);
	void SEARCH_n(int n);
};
void ESB04::Sim_C_01(int m, int n) {
	double sum = 0;
	int O_12 = 0;
	if (m == n) {
		C_1[m][n] = 1;
	}
	else {
		for (int p = 0; p < 139; p++) {
			if (ALL[m][p] == 1) {
				for (int q = 0; q < 139; q++) {
					if (ALL[n][q] == 1) {
						O_12++;
						sum += P_0[p][q];
					}
				}
			}
		}
		if (O_12 != 0) {
			C_1[m][n] = cst * sum / O_12;
		}
	}
}

void ESB04::Sim_P_01(int m, int n) {
	double sum = 0;
	int O_12 = 0;
	if (m == n) {
		P_1[m][n] = 1;
	}
	else {
		for (int p = 0; p < 144; p++) {
			if (ALL[p][m] == 1) {
				for (int q = 0; q < 144; q++) {
					if (ALL[q][n] == 1) {
						O_12++;
						sum += C_0[p][q];
					}
				}
			}
		}
		if (O_12 != 0) {
			P_1[m][n] = cst * sum / O_12;
		}
	}
}

void ESB04::Sim_C_10(int m, int n) {
	double sum = 0;
	int O_12 = 0;
	if (m == n) {
		C_0[m][n] = 1;
	}
	else {
		for (int p = 0; p < 139; p++) {
			if (ALL[m][p] == 1) {
				for (int q = 0; q < 139; q++) {
					if (ALL[n][q] == 1) {
						O_12++;
						sum += P_1[p][q];
					}
				}
			}
		}
		if (O_12 != 0) {
			C_0[m][n] = cst * sum / O_12;
		}
	}
}

void ESB04::Sim_P_10(int m, int n) {
	double sum = 0;
	int O_12 = 0;
	if (m == n) {
		P_0[m][n] = 1;
	}
	else {
		for (int p = 0; p < 144; p++) {
			if (ALL[p][m] == 1) {
				for (int q = 0; q < 144; q++) {
					if (ALL[q][n] == 1) {
						O_12++;
						sum += C_1[p][q];
					}
				}
			}
		}
		if (O_12 != 0) {
			P_0[m][n] = cst * sum / O_12;
		}
	}
}

void ESB04::INIT() {
	for (int c = 0; c < 144; c++) {
		C_0[c][c] = 1;
	}
	for (int p = 0; p < 139; p++) {
		P_0[p][p] = 1;
	}
	ALL[0][18] = 1;
	ALL[1][88] = 1;
	ALL[2][43] = 1; ALL[2][47] = 1;
	ALL[3][130] = 1; ALL[3][131] = 1;
	ALL[4][130] = 1; ALL[4][131] = 1;
	ALL[5][114] = 1;
	ALL[6][58] = 1; ALL[6][59] = 1;
	ALL[7][42] = 1; ALL[7][52] = 1;
	ALL[8][42] = 1; ALL[8][52] = 1;
	ALL[9][108] = 1; ALL[9][125] = 1;
	ALL[10][111] = 1;
	ALL[11][1] = 1; ALL[11][36] = 1;
	ALL[12][114] = 1; ALL[12][25] = 1;
	ALL[13][36] = 1; ALL[13][73] = 1;
	ALL[14][115] = 1;
	ALL[15][43] = 1; ALL[15][46] = 1;
	ALL[16][27] = 1; ALL[16][34] = 1;
	ALL[17][71] = 1; ALL[17][70] = 1; ALL[17][3] = 1;
	ALL[18][28] = 1; ALL[18][103] = 1;
	ALL[19][105] = 1;
	ALL[20][127] = 1; ALL[20][128] = 1;
	ALL[21][72] = 1; ALL[21][56] = 1; ALL[21][79] = 1;
	ALL[22][27] = 1; ALL[22][29] = 1;
	ALL[23][135] = 1; ALL[23][132] = 1;

	ALL[25][60] = 1; ALL[25][61] = 1;
	ALL[26][4] = 1;
	ALL[27][78] = 1; ALL[27][5] = 1;
	ALL[28][105] = 1;
	ALL[29][15] = 1; ALL[29][100] = 1;
	ALL[30][136] = 1; ALL[30][137] = 1;
	ALL[31][80] = 1; ALL[31][82] = 1;
	ALL[32][29] = 1; ALL[32][27] = 1;
	ALL[33][31] = 1; ALL[33][30] = 1;
	ALL[34][101] = 1;
	ALL[35][27] = 1;
	ALL[36][84] = 1; ALL[36][82] = 1;
	ALL[37][21] = 1; ALL[37][2] = 1;
	ALL[38][119] = 1; ALL[38][121] = 1;
	ALL[39][12] = 1; ALL[39][130] = 1;
	ALL[40][7] = 1; ALL[40][49] = 1;
	ALL[41][27] = 1;
	ALL[42][84] = 1; ALL[42][82] = 1;
	ALL[43][80] = 1; ALL[43][82] = 1;
	ALL[44][29] = 1; ALL[44][27] = 1;
	ALL[45][31] = 1; ALL[45][30] = 1;
	ALL[46][101] = 1;

	ALL[48][60] = 1; ALL[48][61] = 1;
	ALL[49][4] = 1;
	ALL[50][78] = 1; ALL[50][5] = 1;
	ALL[51][105] = 1;
	ALL[52][15] = 1; ALL[52][100] = 1;
	ALL[53][136] = 1; ALL[53][137] = 1;
	ALL[54][127] = 1; ALL[54][128] = 1;
	ALL[55][72] = 1; ALL[55][56] = 1; ALL[55][79] = 1;
	ALL[56][29] = 1; ALL[56][27] = 1;
	ALL[57][135] = 1; ALL[57][132] = 1;
	ALL[58][43] = 1; ALL[58][95] = 1;

	ALL[60][116] = 1;
	ALL[61][65] = 1; ALL[61][66] = 1;
	ALL[62][17] = 1; ALL[62][81] = 1;
	ALL[63][71] = 1; ALL[63][4] = 1;

	ALL[65][89] = 1; ALL[65][88] = 1;

	ALL[67][109] = 1; ALL[67][110] = 1;
	ALL[68][14] = 1; ALL[68][2] = 1;
	ALL[69][75] = 1; ALL[69][74] = 1;
	ALL[70][124] = 1; ALL[70][123] = 1;
	ALL[71][84] = 1; ALL[71][82] = 1;
	ALL[72][43] = 1; ALL[72][45] = 1; ALL[72][49] = 1;
	ALL[73][31] = 1; ALL[73][27] = 1;
	ALL[74][78] = 1; ALL[74][5] = 1;
	ALL[75][78] = 1; ALL[75][5] = 1;
	ALL[76][26] = 1; ALL[76][53] = 1;
	ALL[77][93] = 1; ALL[77][19] = 1;
	ALL[78][113] = 1; ALL[78][105] = 1;
	ALL[79][120] = 1; ALL[79][121] = 1;
	ALL[80][11] = 1; ALL[80][106] = 1;
	ALL[81][13] = 1; ALL[81][12] = 1; ALL[81][0] = 1;
	ALL[82][15] = 1; ALL[82][52] = 1;
	ALL[83][85] = 1;
	ALL[84][44] = 1; ALL[84][48] = 1;
	ALL[85][24] = 1; ALL[85][10] = 1;
	ALL[86][82] = 1;
	ALL[87][2] = 1; ALL[87][67] = 1;
	ALL[88][14] = 1; ALL[88][53] = 1;
	ALL[89][90] = 1; ALL[89][88] = 1;
	ALL[90][43] = 1; ALL[90][7] = 1;
	ALL[91][18] = 1;
	ALL[92][84] = 1; ALL[92][82] = 1;
	ALL[93][23] = 1; ALL[93][6] = 1;
	ALL[94][62] = 1; ALL[94][56] = 1;
	ALL[95][82] = 1;
	ALL[96][56] = 1;
	ALL[97][32] = 1; ALL[97][30] = 1;
	ALL[98][86] = 1; ALL[98][81] = 1;
	ALL[99][112] = 1; ALL[99][105] = 1;
	ALL[100][78] = 1; ALL[100][5] = 1;
	ALL[101][84] = 1; ALL[101][82] = 1;
	ALL[102][84] = 1;
	ALL[103][84] = 1; ALL[103][82] = 1;
	ALL[104][38] = 1; ALL[104][39] = 1;
	ALL[105][68] = 1; ALL[105][9] = 1; ALL[105][96] = 1;
	ALL[106][43] = 1; ALL[106][49] = 1;
	ALL[107][105] = 1; ALL[107][107] = 1;
	ALL[108][2] = 1;
	ALL[109][117] = 1;
	ALL[110][122] = 1; ALL[110][54] = 1;
	ALL[111][33] = 1; ALL[111][104] = 1;
	ALL[112][104] = 1;
	ALL[113][4] = 1; ALL[113][1] = 1; ALL[113][70] = 1; ALL[113][3] = 1;
	ALL[114][52] = 1;
	ALL[115][99] = 1; ALL[115][10] = 1;
	ALL[116][12] = 1;

	ALL[118][76] = 1; ALL[118][77] = 1; ALL[118][73] = 1;
	ALL[119][106] = 1; ALL[119][107] = 1;
	ALL[120][88] = 1;
	ALL[121][84] = 1; ALL[121][85] = 1; ALL[121][82] = 1;
	ALL[122][2] = 1;
	ALL[123][99] = 1; ALL[123][10] = 1;
	ALL[124][40] = 1; ALL[124][39] = 1;
	ALL[125][86] = 1; ALL[125][105] = 1;
	ALL[126][130] = 1;
	ALL[127][129] = 1;
	ALL[128][134] = 1; ALL[128][133] = 1;
	ALL[129][20] = 1; ALL[129][2] = 1;

	ALL[131][56] = 1;
	ALL[132][35] = 1; ALL[132][118] = 1; ALL[132][103] = 1;
	ALL[133][69] = 1; ALL[133][56] = 1;
	ALL[134][91] = 1; ALL[134][87] = 1;
	ALL[135][57] = 1; ALL[135][63] = 1;
	ALL[136][64] = 1; ALL[136][126] = 1;
	ALL[137][99] = 1; ALL[137][103] = 1;
	ALL[138][88] = 1;
	ALL[139][18] = 1; ALL[139][138] = 1;
	ALL[140][86] = 1; ALL[140][41] = 1;
	ALL[141][92] = 1; ALL[141][8] = 1;
	ALL[142][51] = 1; ALL[142][126] = 1;
}

void ESB04::Bub_Sort_0() {

	for (int r = 0; r < 144; r++) {
		C_OUT[r] = C_0[143][r];
		C_NUM[r] = r + 1;
	}

	int num = C_NUM[0];
	double mid = 0;
	for (int l = 0; l < 143; l++) {
		for (int z = 0; z < 143 - l; z++) {
			if (C_OUT[z] < C_OUT[z + 1]) {
				mid = C_OUT[z];
				C_OUT[z] = C_OUT[z + 1];
				C_OUT[z + 1] = mid;
				num = C_NUM[z];
				C_NUM[z] = C_NUM[z + 1];
				C_NUM[z + 1] = num;

			}
		}
	}
}

void ESB04::Bub_Sort_1() {

	for (int r = 0; r < 144; r++) {
		C_OUT[r] = C_1[143][r];
		C_NUM[r] = r + 1;
	}

	int num = C_NUM[0];
	double mid = 0;
	for (int l = 0; l < 143; l++) {
		for (int z = 0; z < 143 - l; z++) {
			if (C_OUT[z] < C_OUT[z + 1]) {
				mid = C_OUT[z];
				C_OUT[z] = C_OUT[z + 1];
				C_OUT[z + 1] = mid;
				num = C_NUM[z];
				C_NUM[z] = C_NUM[z + 1];
				C_NUM[z + 1] = num;

			}
		}
	}
}

void ESB04::ITER_01() {
	for (int f = 0; f < 144; f++) {
		for (int g = 0; g < 144; g++) {
			Sim_C_01(f, g);
		}
	}
	for (int f = 0; f < 139; f++) {
		for (int g = 0; g < 139; g++) {
			Sim_P_01(f, g);
		}
	}
}

void ESB04::ITER_10() {
	for (int f = 0; f < 144; f++) {
		for (int g = 0; g < 144; g++) {
			Sim_C_10(f, g);
		}
	}
	for (int f = 0; f < 139; f++) {
		for (int g = 0; g < 139; g++) {
			Sim_P_10(f, g);
		}
	}
}

void ESB04::SEARCH_n(int n) {

	if (C_OUT[1] == 0) {
		cout << "案例库中无相似案例" << endl;
	}
	else {
		for (int k = 0; k < n; k++) {
			cout << "与案例 " << C_NUM[k + 1] << " 相似度第 " << k + 1 << " 最高，为 " << C_OUT[k + 1] << endl;
		}
	}
}

void ESB04::FAULT_INPUT() {
	string k;
	int fl;

	while (flag) {

		cout << "请输入待诊断案例存在的故障现象编号：" << endl;
		cout << "（请输入故障现象编号A1-A12、B1-B8、C1-C16、D1-D7、E1-E7、F1-F5、G1-G12、H1-H3、I1-I8、J1-J14、K1-K4、L1、M1-M8、N1-N14、O1-O6、P1、Q1、R1-R2、S1、T1-T2、U1-U4、V1-V2、W1）" << endl;
		cin >> k;
		if (k == "A1") {
			ALL[143][0] = 1;
		}
		else if (k == "A2") {
			ALL[143][1] = 1;
		}
		else if (k == "A3") {
			ALL[143][2] = 1;
		}
		else if (k == "A4") {
			ALL[143][3] = 1;
		}
		else if (k == "A5") {
			ALL[143][4] = 1;
		}

		else if (k == "A6") {
			ALL[143][5] = 1;
		}
		else if (k == "A7") {
			ALL[143][6] = 1;
		}
		else if (k == "A8") {
			ALL[143][7] = 1;
		}
		else if (k == "A9") {
			ALL[143][8] = 1;
		}
		else if (k == "A10") {
			ALL[143][9] = 1;
		}
		else if (k == "A11") {
			ALL[143][10] = 1;
		}
		else if (k == "A12") {
			ALL[143][11] = 1;
		}

		if (k == "B1") {
			ALL[143][12] = 1;
		}
		else if (k == "B2") {
			ALL[143][13] = 1;
		}
		else if (k == "B3") {
			ALL[143][14] = 1;
		}
		else if (k == "B4") {
			ALL[143][15] = 1;
		}
		else if (k == "B5") {
			ALL[143][16] = 1;
		}
		else if (k == "B6") {
			ALL[143][17] = 1;
		}
		else if (k == "B7") {
			ALL[143][18] = 1;
		}
		else if (k == "B8") {
			ALL[143][19] = 1;
		}

		if (k == "C1") {
			ALL[143][20] = 1;
		}
		else if (k == "C2") {
			ALL[143][21] = 1;
		}
		else if (k == "C3") {
			ALL[143][22] = 1;
		}
		else if (k == "C4") {
			ALL[143][23] = 1;
		}
		else if (k == "C5") {
			ALL[143][24] = 1;
		}
		else if (k == "C6") {
			ALL[143][25] = 1;
		}
		else if (k == "C7") {
			ALL[143][26] = 1;
		}
		else if (k == "C8") {
			ALL[143][27] = 1;
		}
		else if (k == "C9") {
			ALL[143][28] = 1;
		}
		else if (k == "C10") {
			ALL[143][29] = 1;
		}
		else if (k == "C11") {
			ALL[143][30] = 1;
		}
		else if (k == "C12") {
			ALL[143][31] = 1;
		}
		else if (k == "C13") {
			ALL[143][32] = 1;
		}
		else if (k == "C14") {
			ALL[143][33] = 1;
		}
		else if (k == "C15") {
			ALL[143][34] = 1;
		}
		else if (k == "C16") {
			ALL[143][35] = 1;
		}

		if (k == "D1") {
			ALL[143][36] = 1;
		}
		else if (k == "D2") {
			ALL[143][37] = 1;
		}
		else if (k == "D3") {
			ALL[143][38] = 1;
		}
		else if (k == "D4") {
			ALL[143][39] = 1;
		}
		else if (k == "D5") {
			ALL[143][40] = 1;
		}
		else if (k == "D6") {
			ALL[143][41] = 1;
		}
		else if (k == "D7") {
			ALL[143][42] = 1;
		}

		if (k == "E1") {
			ALL[143][43] = 1;
		}
		else if (k == "E2") {
			ALL[143][44] = 1;
		}
		else if (k == "E3") {
			ALL[143][45] = 1;
		}
		else if (k == "E4") {
			ALL[143][46] = 1;
		}
		else if (k == "E5") {
			ALL[143][47] = 1;
		}
		else if (k == "E6") {
			ALL[143][48] = 1;
		}
		else if (k == "E7") {
			ALL[143][49] = 1;
		}

		if (k == "F1") {
			ALL[143][50] = 1;
		}
		else if (k == "F2") {
			ALL[143][51] = 1;
		}
		else if (k == "F3") {
			ALL[143][52] = 1;
		}
		else if (k == "F4") {
			ALL[143][53] = 1;
		}
		else if (k == "F5") {
			ALL[143][54] = 1;
		}

		if (k == "G1") {
			ALL[143][55] = 1;
		}
		else if (k == "G2") {
			ALL[143][56] = 1;
		}
		else if (k == "G3") {
			ALL[143][57] = 1;
		}
		else if (k == "G4") {
			ALL[143][58] = 1;
		}
		else if (k == "G5") {
			ALL[143][59] = 1;
		}
		else if (k == "G6") {
			ALL[143][60] = 1;
		}
		else if (k == "G7") {
			ALL[143][61] = 1;
		}
		else if (k == "G8") {
			ALL[143][62] = 1;
		}
		else if (k == "G9") {
			ALL[143][63] = 1;
		}
		else if (k == "G10") {
			ALL[143][64] = 1;
		}
		else if (k == "G11") {
			ALL[143][65] = 1;
		}
		else if (k == "G12") {
			ALL[143][66] = 1;
		}

		if (k == "H1") {
			ALL[143][67] = 1;
		}
		else if (k == "H2") {
			ALL[143][68] = 1;
		}
		else if (k == "H3") {
			ALL[143][69] = 1;
		}

		if (k == "I1") {
			ALL[143][70] = 1;
		}
		else if (k == "I2") {
			ALL[143][71] = 1;
		}
		else if (k == "I3") {
			ALL[143][72] = 1;
		}
		else if (k == "I4") {
			ALL[143][73] = 1;
		}
		else if (k == "I5") {
			ALL[143][74] = 1;
		}
		else if (k == "I6") {
			ALL[143][75] = 1;
		}
		else if (k == "I7") {
			ALL[143][76] = 1;
		}
		else if (k == "I8") {
			ALL[143][77] = 1;
		}

		if (k == "J1") {
			ALL[143][78] = 1;
		}
		else if (k == "J2") {
			ALL[143][79] = 1;
		}
		else if (k == "J3") {
			ALL[143][80] = 1;
		}
		else if (k == "J4") {
			ALL[143][81] = 1;
		}
		else if (k == "J5") {
			ALL[143][82] = 1;
		}
		else if (k == "J6") {
			ALL[143][83] = 1;
		}
		else if (k == "J7") {
			ALL[143][84] = 1;
		}
		else if (k == "J8") {
			ALL[143][85] = 1;
		}
		else if (k == "J9") {
			ALL[143][86] = 1;
		}
		else if (k == "J10") {
			ALL[143][87] = 1;
		}
		else if (k == "J11") {
			ALL[143][88] = 1;
		}
		else if (k == "J12") {
			ALL[143][89] = 1;
		}
		else if (k == "J13") {
			ALL[143][90] = 1;
		}
		else if (k == "J14") {
			ALL[143][91] = 1;
		}

		if (k == "K1") {
			ALL[143][92] = 1;
		}
		else if (k == "K2") {
			ALL[143][93] = 1;
		}
		else if (k == "K3") {
			ALL[143][94] = 1;
		}
		else if (k == "K4") {
			ALL[143][95] = 1;
		}

		if (k == "L1") {
			ALL[143][96] = 1;
		}

		if (k == "M1") {
			ALL[143][97] = 1;
		}
		else if (k == "M2") {
			ALL[143][98] = 1;
		}
		else if (k == "M3") {
			ALL[143][99] = 1;
		}
		else if (k == "M4") {
			ALL[143][100] = 1;
		}
		else if (k == "M5") {
			ALL[143][101] = 1;
		}
		else if (k == "M6") {
			ALL[143][102] = 1;
		}
		else if (k == "M7") {
			ALL[143][103] = 1;
		}
		else if (k == "M8") {
			ALL[143][104] = 1;
		}

		if (k == "N1") {
			ALL[143][105] = 1;
		}
		else if (k == "N2") {
			ALL[143][106] = 1;
		}
		else if (k == "N3") {
			ALL[143][107] = 1;
		}
		else if (k == "N4") {
			ALL[143][108] = 1;
		}
		else if (k == "N5") {
			ALL[143][109] = 1;
		}
		else if (k == "N6") {
			ALL[143][110] = 1;
		}
		else if (k == "N7") {
			ALL[143][111] = 1;
		}
		else if (k == "N8") {
			ALL[143][112] = 1;
		}
		else if (k == "N9") {
			ALL[143][113] = 1;
		}
		else if (k == "N10") {
			ALL[143][114] = 1;
		}
		else if (k == "N11") {
			ALL[143][115] = 1;
		}
		else if (k == "N12") {
			ALL[143][116] = 1;
		}
		else if (k == "N13") {
			ALL[143][117] = 1;
		}
		else if (k == "N14") {
			ALL[143][118] = 1;
		}

		if (k == "O1") {
			ALL[143][119] = 1;
		}
		else if (k == "O2") {
			ALL[143][120] = 1;
		}
		else if (k == "O3") {
			ALL[143][121] = 1;
		}
		else if (k == "O4") {
			ALL[143][122] = 1;
		}
		else if (k == "O5") {
			ALL[143][123] = 1;
		}
		else if (k == "O6") {
			ALL[143][124] = 1;
		}

		if (k == "P1") {
			ALL[143][125] = 1;
		}

		if (k == "Q1") {
			ALL[143][126] = 1;
		}

		if (k == "R1") {
			ALL[143][127] = 1;
		}
		else if (k == "R2") {
			ALL[143][128] = 1;
		}

		if (k == "S1") {
			ALL[143][129] = 1;
		}

		if (k == "T1") {
			ALL[143][130] = 1;
		}
		else if (k == "T2") {
			ALL[143][131] = 1;
		}

		if (k == "U1") {
			ALL[143][132] = 1;
		}
		else if (k == "U2") {
			ALL[143][133] = 1;
		}
		else if (k == "U3") {
			ALL[143][134] = 1;
		}
		else if (k == "U4") {
			ALL[143][135] = 1;
		}

		if (k == "V1") {
			ALL[143][136] = 1;
		}
		else if (k == "V2") {
			ALL[143][137] = 1;
		}

		if (k == "W1") {
			ALL[143][138] = 1;
		}

		cout << "输入成功，是否继续输入？（1/0）" << endl;
		cin >> fl;
		if (fl == 0) {
			flag = 0;
		}
	}
}

void ESB04::Sim(int s) {
	cout << "正在进行相似度计算..." << endl;
	for (int d = 0; d < s; d++) {
		if ((d % 2) == 0) { ITER_01(); }
		else { ITER_10(); }
	}
}

void ESB04::Bub_Sort(int s) {
	if ((s % 2) == 0) { Bub_Sort_0(); }
	else { Bub_Sort_1(); }
}

int main() {
	int n;
	cout << "欢迎使用NL502SC数控机床故障诊断专家系统" << endl;
	cout << "是否进行故障诊断？（1/0）" << endl;
	cin >> n;
	if (n == 1) {
		ESB04 esb04_1;
		//初始化
		cout << "正在进入故障诊断模式，初始化中..." << endl;
		esb04_1.INIT();
		//待检测案例故障现象输入
		esb04_1.FAULT_INPUT();
		//相似度计算
		cout << "请输入相似度计算迭代次数：" << endl;
		cin >> esb04_1.sim_num;
		esb04_1.Sim(esb04_1.sim_num);
		//冒泡排序
		esb04_1.Bub_Sort(esb04_1.sim_num);
		//找出案例库中与待诊断案例相似度最高的n个案例
		cout << "请输入想查询的案例个数：" << endl;
		cin >> esb04_1.sear_num;
		esb04_1.SEARCH_n(esb04_1.sear_num);
	}
	cout << "输入‘0’退出程序！" << endl;
	cin >> n;
	return 0;
}
