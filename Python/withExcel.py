import sys
import numpy as np


import openpyxl
wb = openpyxl.load_workbook('NL502SC修改.xlsx')
sheet = wb['Tabelle1']

cst = 0.95
ALL = np.full((144, 139), 0, dtype=np.float64)
C_0 = np.full((144, 144), 0, dtype=np.float64)
P_0 = np.full((139, 139), 0, dtype=np.float64)
C_1 = np.full((144, 144), 0, dtype=np.float64)
P_1 = np.full((139, 139), 0, dtype=np.float64)
C_OUT = ['']*144
C_NUM = ['']*144



def Sim_C_01(m, n):
    sum = 0
    o_12 = 0
    if m == n:
        C_1[m][n] = 1
    else:
        # for p in range(139):
        #     if ALL[m][p] == 1:
        #         for q in range(139):
        #             if ALL[n][q] == 1:
        #                 o_12 = o_12+1
        #                 sum += P_0[p][q]
        index_m = np.argwhere(ALL[m, :] == 1)
        index_n = np.argwhere(ALL[n, :] == 1)
        for i in range(len(index_m)):
            for j in range(len(index_n)):
                sum += P_0[index_m[i],index_n[j]]
                o_12 = o_12+1
        if o_12 != 0:
            C_1[m][n] = cst * sum / o_12
def Sim_P_01(m, n):
    sum = 0
    o_12 = 0
    if m == n:
        P_1[m][n] = 1
    else:
        # for p in range(144):
        #     if ALL[p][m] == 1:
        #         for q in range(144):
        #             if ALL[q][n] == 1:
        #                 o_12 = o_12 + 1
        #                 sum += C_0[p][q]
        index_m = np.argwhere(ALL[:, m] == 1)
        index_n = np.argwhere(ALL[:, n] == 1)
        for i in range(len(index_m)):
            for j in range(len(index_n)):
                sum += C_0[index_m[i], index_n[j]]
                o_12 = o_12 + 1
        if o_12 != 0:
            P_1[m][n] = cst * sum / o_12
def Sim_C_10(m, n):
    sum = 0
    o_12 = 0
    if m == n:
        C_0[m][n] = 1
    else:
        # for p in range(139):
        #     if ALL[m][p] == 1:
        #         for q in range(139):
        #             if ALL[n][q] == 1:
        #                 o_12 = o_12 + 1
        #                 sum += P_1[p][q]
        index_m = np.argwhere(ALL[m, :] == 1)
        index_n = np.argwhere(ALL[n, :] == 1)
        for i in range(len(index_m)):
            for j in range(len(index_n)):
                sum += P_1[index_m[i], index_n[j]]
                o_12 = o_12 + 1
        if o_12 != 0:
            C_0[m][n] = cst * sum / o_12
def Sim_P_10(m, n):
    sum = 0
    o_12 = 0
    if m == n:
        P_0[m][n] = 1
    else:
        # for p in range(144):
        #     if ALL[p][m] == 1:
        #         for q in range(144):
        #             if ALL[q][n] == 1:
        #                 o_12 = o_12 + 1
        #                 sum += C_1[p][q]
        index_m = np.argwhere(ALL[:, m] == 1)
        index_n = np.argwhere(ALL[:, n] == 1)
        for i in range(len(index_m)):
            for j in range(len(index_n)):
                sum += C_1[index_m[i], index_n[j]]
                o_12 = o_12 + 1
        if o_12 != 0:
            P_0[m][n] = cst * sum / o_12
def ITER_01():
    for f in range(144):
        for g in range(144):
            Sim_C_01(f, g)
    for f in range(139):
        for g in range (139):
            Sim_P_01(f, g)
def ITER_10():
    for f in range(144):
        for g in range(144):
            Sim_C_10(f, g)
    for f in range(139):
        for g in range (139):
            Sim_P_10(f, g)
def haha():
    ALL[0][18] = 1; ALL[1][88] = 1;ALL[2][43] = 1;ALL[2][47] = 1;ALL[3][130] = 1;ALL[3][131] = 1;ALL[4][130] = 1
    ALL[4][131] = 1;ALL[5][114] = 1;ALL[6][58] = 1;ALL[6][59] = 1;ALL[7][42] = 1;ALL[7][52] = 1; ALL[8][42] = 1
    ALL[8][52] = 1;ALL[9][108] = 1;ALL[9][125] = 1;ALL[10][111] = 1;ALL[11][1] = 1;ALL[11][36] = 1;ALL[12][114] = 1
    ALL[12][25] = 1;ALL[13][36] = 1;ALL[13][73] = 1;ALL[14][115] = 1;ALL[15][43] = 1;ALL[15][46] = 1;ALL[16][27] = 1
    ALL[16][34] = 1;ALL[17][71] = 1;ALL[17][70] = 1;ALL[17][3] = 1;ALL[18][28] = 1;ALL[18][103] = 1;ALL[19][105] = 1
    ALL[20][127] = 1;ALL[20][128] = 1;ALL[21][72] = 1;ALL[21][56] = 1;ALL[21][79] = 1;ALL[22][27] = 1;ALL[22][29] = 1
    ALL[23][135] = 1;ALL[23][132] = 1;ALL[25][60] = 1;ALL[25][61] = 1;ALL[26][4] = 1;ALL[27][78] = 1;ALL[27][5] = 1
    ALL[28][105] = 1;ALL[29][15] = 1;ALL[29][100] = 1;ALL[30][136] = 1;ALL[30][137] = 1;ALL[31][80] = 1;ALL[31][82] = 1
    ALL[32][29] = 1;ALL[32][27] = 1;ALL[33][31] = 1;ALL[33][30] = 1;ALL[34][101] = 1;ALL[35][27] = 1;ALL[36][84] = 1
    ALL[36][82] = 1;ALL[37][21] = 1;ALL[37][2] = 1;ALL[38][119] = 1;ALL[38][121] = 1;ALL[39][12] = 1;ALL[39][130] = 1
    ALL[40][7] = 1;ALL[40][49] = 1;ALL[41][27] = 1;ALL[42][84] = 1;ALL[42][82] = 1;ALL[43][80] = 1;ALL[43][82] = 1
    ALL[44][29] = 1;ALL[44][27] = 1;ALL[45][31] = 1;ALL[45][30] = 1;ALL[46][101] = 1;ALL[48][60] = 1;ALL[48][61] = 1
    ALL[49][4] = 1;ALL[50][78] = 1;ALL[50][5] = 1;ALL[51][105] = 1;ALL[52][15] = 1;ALL[52][100] = 1;ALL[53][136] = 1
    ALL[53][137] = 1;ALL[54][127] = 1;ALL[54][128] = 1;ALL[55][72] = 1;ALL[55][56] = 1;ALL[55][79] = 1;ALL[56][29] = 1
    ALL[56][27] = 1;ALL[57][135] = 1;ALL[57][132] = 1;ALL[58][43] = 1;ALL[58][95] = 1; ALL[60][116] = 1;ALL[61][65] = 1
    ALL[61][66] = 1;ALL[62][17] = 1;ALL[62][81] = 1;ALL[63][71] = 1;ALL[63][4] = 1;ALL[65][89] = 1;ALL[65][88] = 1
    ALL[67][109] = 1;ALL[67][110] = 1;ALL[68][14] = 1;ALL[68][2] = 1;ALL[69][75] = 1;ALL[69][74] = 1;ALL[70][124] = 1
    ALL[70][123] = 1;ALL[71][84] = 1;ALL[71][82] = 1;ALL[72][43] = 1;ALL[72][45] = 1;ALL[72][49] = 1;ALL[73][31] = 1
    ALL[73][27] = 1;ALL[74][78] = 1;ALL[74][5] = 1;ALL[75][78] = 1;ALL[75][5] = 1;ALL[76][26] = 1;ALL[76][53] = 1
    ALL[77][93] = 1;ALL[77][19] = 1;ALL[78][113] = 1;ALL[78][105] = 1;ALL[79][120] = 1;ALL[79][121] = 1;ALL[80][11] = 1
    ALL[80][106] = 1;ALL[81][13] = 1;ALL[81][12] = 1;ALL[81][0] = 1;ALL[82][15] = 1;ALL[82][52] = 1;ALL[83][85] = 1
    ALL[84][44] = 1;ALL[84][48] = 1;ALL[85][24] = 1;ALL[85][10] = 1;ALL[86][82] = 1;ALL[87][2] = 1;ALL[87][67] = 1
    ALL[88][14] = 1;ALL[88][53] = 1;ALL[89][90] = 1;ALL[89][88] = 1;ALL[90][43] = 1;ALL[90][7] = 1;ALL[91][18] = 1
    ALL[92][84] = 1;ALL[92][82] = 1;ALL[93][23] = 1;ALL[93][6] = 1;ALL[94][62] = 1;ALL[94][56] = 1;ALL[95][82] = 1
    ALL[96][56] = 1;ALL[97][32] = 1;ALL[97][30] = 1;ALL[98][86] = 1;ALL[98][81] = 1;ALL[99][112] = 1;ALL[99][105] = 1
    ALL[100][78] = 1;ALL[100][5] = 1;ALL[101][84] = 1;ALL[101][82] = 1;ALL[102][84] = 1;ALL[103][84] = 1
    ALL[103][82] = 1;ALL[104][38] = 1;ALL[104][39] = 1;ALL[105][68] = 1;ALL[105][9] = 1;ALL[105][96] = 1
    ALL[106][43] = 1;ALL[106][49] = 1;ALL[107][105] = 1;ALL[107][107] = 1;ALL[108][2] = 1;ALL[109][117] = 1
    ALL[110][122] = 1;ALL[110][54] = 1;ALL[111][33] = 1;ALL[111][104] = 1;ALL[112][104] = 1;ALL[113][4] = 1
    ALL[113][1] = 1;ALL[113][70] = 1;ALL[113][3] = 1;ALL[114][52] = 1;ALL[115][99] = 1;ALL[115][10] = 1
    ALL[116][12] = 1;ALL[118][76] = 1;ALL[118][77] = 1;ALL[118][73] = 1;ALL[119][106] = 1;ALL[119][107] = 1
    ALL[120][88] = 1;ALL[121][84] = 1;ALL[121][85] = 1;ALL[121][82] = 1;ALL[122][2] = 1;ALL[123][99] = 1
    ALL[123][10] = 1;ALL[124][40] = 1;ALL[124][39] = 1;ALL[125][86] = 1;ALL[125][105] = 1;ALL[126][130] = 1
    ALL[127][129] = 1;ALL[128][134] = 1;ALL[128][133] = 1;ALL[129][20] = 1;ALL[129][2] = 1;ALL[131][56] = 1
    ALL[132][35] = 1;ALL[132][118] = 1;ALL[132][103] = 1;ALL[133][69] = 1;ALL[133][56] = 1;ALL[134][91] = 1
    ALL[134][87] = 1;ALL[135][57] = 1;ALL[135][63] = 1;ALL[136][64] = 1;ALL[136][126] = 1;ALL[137][99] = 1
    ALL[137][103] = 1;ALL[138][88] = 1;ALL[139][18] = 1;ALL[139][138] = 1;ALL[140][86] = 1;ALL[140][41] = 1
    ALL[141][92] = 1;ALL[141][8] = 1;ALL[142][51] = 1;ALL[142][126] = 1
def INIT():
    for c in range(144):
        C_0[c][c] = 1
        # C_0 = np.identity(c)
    for p in range(139):
        P_0[p][p] = 1
        # P_0 = np.identity(p)
    haha()
def Bub_Sort_0():
    for r in range(144):
        C_OUT[r] = C_0[143][r]
        C_NUM[r] = r + 1
    num = C_NUM[0]
    mid = 0
    for l in range(143):
        for z in range(143-l):
            if C_OUT[z] < C_OUT[z + 1]:
                mid = C_OUT[z]
                C_OUT[z] = C_OUT[z + 1]
                C_OUT[z + 1] = mid
                num = C_NUM[z]
                C_NUM[z] = C_NUM[z + 1]
                C_NUM[z + 1] = num
def Bub_Sort_1():
    for r in range(144):
        C_OUT[r] = C_1[143][r]
        C_NUM[r] = r + 1
    num = C_NUM[0]
    mid = 0
    for l in range(143):
        for z in range(143-l):
            if C_OUT[z] < C_OUT[z + 1]:
                mid = C_OUT[z]
                C_OUT[z] = C_OUT[z + 1]
                C_OUT[z + 1] = mid
                num = C_NUM[z]
                C_NUM[z] = C_NUM[z + 1]
                C_NUM[z + 1] = num
def FAULT_INPUT():
    flag = 1
    while flag == 1:
        print('请输入待诊断案例存在的故障现象编号：')
        print('（请输入故障现象编号A1-A12、B1-B8、C1-C16、D1-D7、E1-E7、F1-F5、G1-G12、H1-H3、I1-I8、J1-J14、K1-K4、L1、M1-M8、N1-N14、O1-O6、P1、Q1、R1-R2、S1、T1-T2、U1-U4、V1-V2、W1）')
        k = input()
        if k == 'A1':
            ALL[143][0] = 1
        elif k == 'A2':
            ALL[143][1] = 1
        elif k == 'A3':
            ALL[143][2] = 1
        elif k == 'A4':
            ALL[143][3] = 1
        elif k == 'A5':
            ALL[143][4] = 1
        elif k == 'A6':
            ALL[143][5] = 1
        elif k == 'A7':
            ALL[143][6] = 1
        elif k == 'A8':
            ALL[143][7] = 1
        elif k == 'A9':
            ALL[143][8] = 1
        elif k == 'A10':
            ALL[143][9] = 1
        elif k == 'A11':
            ALL[143][10] = 1
        elif k == 'A12':
            ALL[143][11] = 1
        if k == 'B1':
            ALL[143][12] = 1
        elif k == 'B2':
            ALL[143][13] = 1
        elif k == 'B3':
            ALL[143][14] = 1
        elif k == 'B4':
            ALL[143][15] = 1
        elif k == 'B5':
            ALL[143][16] = 1
        elif k == 'B6':
            ALL[143][17] = 1
        elif k == 'B7':
            ALL[143][18] = 1
        elif k == 'B8':
            ALL[143][19] = 1
        if k == 'C1':
            ALL[143][20] = 1
        elif k == 'C2':
            ALL[143][21] = 1
        elif k == 'C3':
            ALL[143][22] = 1
        elif k == 'C4':
            ALL[143][23] = 1
        elif k == 'C5':
            ALL[143][24] = 1
        elif k == 'C6':
            ALL[143][25] = 1
        elif k == 'C7':
            ALL[143][26] = 1
        elif k == 'C8':
            ALL[143][27] = 1
        elif k == 'C9':
            ALL[143][28] = 1
        elif k == 'C10':
            ALL[143][29] = 1
        elif k == 'C11':
            ALL[143][30] = 1
        elif k == 'C12':
            ALL[143][31] = 1
        elif k == 'C13':
            ALL[143][32] = 1
        elif k == 'C14':
            ALL[143][33] = 1
        elif k == 'C15':
            ALL[143][34] = 1
        elif k == 'C16':
            ALL[143][35] = 1
        if k == 'D1':
            ALL[143][36] = 1
        elif k == 'D2':
            ALL[143][37] = 1
        elif k == 'D3':
            ALL[143][38] = 1
        elif k == 'D4':
            ALL[143][39] = 1
        elif k == 'D5':
            ALL[143][40] = 1
        elif k == 'D6':
            ALL[143][41] = 1
        elif k == 'D7':
            ALL[143][42] = 1
        if k == 'E1':
            ALL[143][43] = 1
        elif k == 'E2':
            ALL[143][44] = 1
        elif k == 'E3':
            ALL[143][45] = 1
        elif k == 'E4':
            ALL[143][46] = 1
        elif k == 'E5':
            ALL[143][47] = 1
        elif k == 'E6':
            ALL[143][48] = 1
        elif k == 'E7':
            ALL[143][49] = 1
        if k == 'F1':
            ALL[143][50] = 1
        elif k == 'F2':
            ALL[143][51] = 1
        elif k == 'F3':
            ALL[143][52] = 1
        elif k == 'F4':
            ALL[143][53] = 1
        elif k == 'F5':
            ALL[143][54] = 1
        if k == 'G1':
            ALL[143][55] = 1
        elif k == 'G2':
            ALL[143][56] = 1
        elif k == 'G3':
            ALL[143][57] = 1
        elif k == 'G4':
            ALL[143][58] = 1
        elif k == 'G5':
            ALL[143][59] = 1
        elif k == 'G6':
            ALL[143][60] = 1
        elif k == 'G7':
            ALL[143][61] = 1
        elif k == 'G8':
            ALL[143][62] = 1
        elif k == 'G9':
            ALL[143][63] = 1
        elif k == 'G10':
            ALL[143][64] = 1
        elif k == 'G11':
            ALL[143][65] = 1
        elif k == 'G12':
            ALL[143][66] = 1
        if k == 'H1':
            ALL[143][67] = 1
        elif k == 'H2':
            ALL[143][68] = 1
        elif k == 'H3':
            ALL[143][69] = 1
        if k == 'I1':
            ALL[143][70] = 1
        elif k == 'I2':
            ALL[143][71] = 1
        elif k == 'I3':
            ALL[143][72] = 1
        elif k == 'I4':
            ALL[143][73] = 1
        elif k == 'I5':
            ALL[143][74] = 1
        elif k == 'I6':
            ALL[143][75] = 1
        elif k == 'I7':
            ALL[143][76] = 1
        elif k == 'I8':
            ALL[143][77] = 1
        if k == 'J1':
            ALL[143][78] = 1
        elif k == 'J2':
            ALL[143][79] = 1
        elif k == 'J3':
            ALL[143][80] = 1
        elif k == 'J4':
            ALL[143][81] = 1
        elif k == 'J5':
            ALL[143][82] = 1
        elif k == 'J6':
            ALL[143][83] = 1
        elif k == 'J7':
            ALL[143][84] = 1
        elif k == 'J8':
            ALL[143][85] = 1
        elif k == 'J9':
            ALL[143][86] = 1
        elif k == 'J10':
            ALL[143][87] = 1
        elif k == 'J11':
            ALL[143][88] = 1
        elif k == 'J12':
            ALL[143][89] = 1
        elif k == 'J13':
            ALL[143][90] = 1
        elif k == 'J14':
            ALL[143][91] = 1
        if k == 'K1':
            ALL[143][92] = 1
        elif k == 'K2':
            ALL[143][93] = 1
        elif k == 'K3':
            ALL[143][94] = 1
        elif k == 'K4':
            ALL[143][95] = 1
        if k == 'L1':
            ALL[143][96] = 1
        if k == 'M1':
            ALL[143][97] = 1
        elif k == 'M2':
            ALL[143][98] = 1
        elif k == 'M3':
            ALL[143][99] = 1
        elif k == 'M4':
            ALL[143][100] = 1
        elif k == 'M5':
            ALL[143][101] = 1
        elif k == 'M6':
            ALL[143][102] = 1
        elif k == 'M7':
            ALL[143][103] = 1
        elif k == 'M8':
            ALL[143][104] = 1
        if k == 'N1':
            ALL[143][105] = 1
        elif k == 'N2':
            ALL[143][106] = 1
        elif k == 'N3':
            ALL[143][107] = 1
        elif k == 'N4':
            ALL[143][108] = 1
        elif k == 'N5':
            ALL[143][109] = 1
        elif k == 'N6':
            ALL[143][110] = 1
        elif k == 'N7':
            ALL[143][111] = 1
        elif k == 'N8':
            ALL[143][112] = 1
        elif k == 'N9':
            ALL[143][113] = 1
        elif k == 'N10':
            ALL[143][114] = 1
        elif k == 'N11':
            ALL[143][115] = 1
        elif k == 'N12':
            ALL[143][116] = 1
        elif k == 'N13':
            ALL[143][117] = 1
        elif k == 'N14':
            ALL[143][118] = 1
        if k == 'O1':
            ALL[143][119] = 1
        elif k == 'O2':
            ALL[143][120] = 1
        elif k == 'O3':
            ALL[143][121] = 1
        elif k == 'O4':
            ALL[143][122] = 1
        elif k == 'O5':
            ALL[143][123] = 1
        elif k == 'O6':
            ALL[143][124] = 1
        if k == 'P1':
            ALL[143][125] = 1
        if k == 'Q1':
            ALL[143][126] = 1
        if k == 'R1':
            ALL[143][127] = 1
        elif k == 'R2':
            ALL[143][128] = 1
        if k == 'S1':
            ALL[143][129] = 1
        if k == 'T1':
            ALL[143][130] = 1
        elif k == 'T2':
            ALL[143][131] = 1
        if k == 'U1':
            ALL[143][132] = 1
        elif k == 'U2':
            ALL[143][133] = 1
        elif k == 'U3':
            ALL[143][134] = 1
        elif k == 'U4':
            ALL[143][135] = 1
        if k == 'V1':
            ALL[143][136] = 1
        elif k == 'V2':
            ALL[143][137] = 1
        if k == 'W1':
            ALL[143][138] = 1
        print('输入成功，是否继续输入？（1/0）')
        fl = input()
        if fl == '0':
            flag =0
def Sim(s):
    print('正在进行相似度计算...')
    for d in range(int(s)):
        if d % 2 == 0:
            ITER_01()
        else:
            ITER_10()
def Bub_Sort(s):
    a = int(s)
    if a % 2 == 0:
        Bub_Sort_0()
    else:
        Bub_Sort_1()
def SEARCH_n(n):
    if C_OUT[1] == 0:
        print('案例库中无相似案例。')
    else:
        for k in range(int(n)):
            print('与案例'+str(C_NUM[k + 1])+'相似度第'+str(k+1)+'高,为'+str(C_OUT[k + 1]))
        for k in range(int(n)):
            print(str(k+1)+'.故障案例'+str(C_NUM[k + 1])+'信息如下：')
            a = sheet['F' + str(C_NUM[k + 1] + 1)]
            print('(1)故障部位为：'+a.value)
            b = sheet['G' + str(C_NUM[k + 1] + 1)]
            print('(2)故障点为：'+b.value)
            c = sheet['H' + str(C_NUM[k + 1] + 1)]
            print('(3)报修内容为：'+c.value)
            d = sheet['I' + str(C_NUM[k + 1] + 1)]
            print('(4)故障现象为：'+d.value)
            e = sheet['J' + str(C_NUM[k + 1] + 1)]
            print('(5)故障原因为：'+e.value)
            f = sheet['K' + str(C_NUM[k + 1] + 1)]
            print('(6)排除故障措施描述：'+f.value)
            g = sheet['L' + str(C_NUM[k + 1] + 1)]
            print('(7)故障类型为：'+g.value)
            h = sheet['M' + str(C_NUM[k + 1] + 1)]
            print('(8)故障责任为：'+h.value)



def main():
    print('欢迎使用NL502SC数控机床故障诊断专家系统')
    print('是否进行故障诊断？（1/0）')
    x = input()
    if x == '1':
        print('正在进入故障诊断模式，初始化中...')
        # 初始化列表:
        INIT()
        # 待检测案例故障现象输入:
        FAULT_INPUT()
        # 相似度计算:
        print('请输入相似度计算迭代次数：')
        sim_num = input()
        Sim(sim_num)
        # 冒泡排序:
        Bub_Sort(sim_num)
        # 找出案例库中与待诊断案例相似度最高的n个案例:
        print('请输入想查询的案例个数：')
        sear_num = input()
        SEARCH_n(sear_num)
    else:
        print('输入0退出程序')
    z = input()
    if z == '0':
        sys.exit()


main()
