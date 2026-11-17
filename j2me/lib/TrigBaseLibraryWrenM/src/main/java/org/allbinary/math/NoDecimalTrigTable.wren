/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.math

import "../../../allbinary_java" for JObject, JException, JR

class NoDecimalTrigTable is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NoDecimalTrigTable.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  mathUtil { _mathUtil }
  mathUtil=(value) { _mathUtil = value }
  noDecimalSin { _noDecimalSin }
  noDecimalSin=(value) { _noDecimalSin = value }
  noDecimalCos { _noDecimalCos }
  noDecimalCos=(value) { _noDecimalCos = value }
  noDecimalTan { _noDecimalTan }
  noDecimalTan=(value) { _noDecimalTan = value }
  SCALE { _SCALE }
  SCALE=(value) { _SCALE = value }

  initFields_NoDecimalTrigTable() {
    _mathUtil = null
    _noDecimalSin = null
    _noDecimalCos = null
    _noDecimalTan = null
    _SCALE = 0
        _mathUtil = MathUtil.getInstance()
        
        
        
        _SCALE = 10000
  }
    

    static getInstance() {
        return NoDecimalTrigTable.instance
    }
    

    construct new() {
    super()
    initFields_NoDecimalTrigTable()
        var TOTAL_ANGLE = JR.i32(AngleFactory.getInstance().TOTAL_ANGLE)
        var MAX_VALUE = (Integer.MAX_VALUE)
        _noDecimalSin = List.filled(TOTAL_ANGLE, 0)
        _noDecimalCos = List.filled(TOTAL_ANGLE, 0)
        _noDecimalTan = List.filled(JR.i32(TOTAL_ANGLE + 1), 0)
        _noDecimalSin[0] = 0
        _noDecimalSin[1] = 174
        _noDecimalSin[2] = 348
        _noDecimalSin[3] = 523
        _noDecimalSin[4] = 697
        _noDecimalSin[5] = 871
        _noDecimalSin[6] = 1045
        _noDecimalSin[7] = 1218
        _noDecimalSin[8] = 1391
        _noDecimalSin[9] = 1564
        _noDecimalSin[10] = 1736
        _noDecimalSin[11] = 1908
        _noDecimalSin[12] = 2079
        _noDecimalSin[13] = 2249
        _noDecimalSin[14] = 2419
        _noDecimalSin[15] = 2588
        _noDecimalSin[16] = 2756
        _noDecimalSin[17] = 2923
        _noDecimalSin[18] = 3090
        _noDecimalSin[19] = 3255
        _noDecimalSin[20] = 3420
        _noDecimalSin[21] = 3583
        _noDecimalSin[22] = 3746
        _noDecimalSin[23] = 3907
        _noDecimalSin[24] = 4067
        _noDecimalSin[25] = 4226
        _noDecimalSin[26] = 4383
        _noDecimalSin[27] = 4539
        _noDecimalSin[28] = 4694
        _noDecimalSin[29] = 4848
        _noDecimalSin[30] = 4999
        _noDecimalSin[31] = 5150
        _noDecimalSin[32] = 5299
        _noDecimalSin[33] = 5446
        _noDecimalSin[34] = 5591
        _noDecimalSin[35] = 5735
        _noDecimalSin[36] = 5877
        _noDecimalSin[37] = 6018
        _noDecimalSin[38] = 6156
        _noDecimalSin[39] = 6293
        _noDecimalSin[40] = 6427
        _noDecimalSin[41] = 6560
        _noDecimalSin[42] = 6691
        _noDecimalSin[43] = 6819
        _noDecimalSin[44] = 6946
        _noDecimalSin[45] = 7071
        _noDecimalSin[46] = 7193
        _noDecimalSin[47] = 7313
        _noDecimalSin[48] = 7431
        _noDecimalSin[49] = 7547
        _noDecimalSin[50] = 7660
        _noDecimalSin[51] = 7771
        _noDecimalSin[52] = 7880
        _noDecimalSin[53] = 7986
        _noDecimalSin[54] = 8090
        _noDecimalSin[55] = 8191
        _noDecimalSin[56] = 8290
        _noDecimalSin[57] = 8386
        _noDecimalSin[58] = 8480
        _noDecimalSin[59] = 8571
        _noDecimalSin[60] = 8660
        _noDecimalSin[61] = 8746
        _noDecimalSin[62] = 8829
        _noDecimalSin[63] = 8910
        _noDecimalSin[64] = 8987
        _noDecimalSin[65] = 9063
        _noDecimalSin[66] = 9135
        _noDecimalSin[67] = 9205
        _noDecimalSin[68] = 9271
        _noDecimalSin[69] = 9335
        _noDecimalSin[70] = 9396
        _noDecimalSin[71] = 9455
        _noDecimalSin[72] = 9510
        _noDecimalSin[73] = 9563
        _noDecimalSin[74] = 9612
        _noDecimalSin[75] = 9659
        _noDecimalSin[76] = 9702
        _noDecimalSin[77] = 9743
        _noDecimalSin[78] = 9781
        _noDecimalSin[79] = 9816
        _noDecimalSin[80] = 9848
        _noDecimalSin[81] = 9876
        _noDecimalSin[82] = 9902
        _noDecimalSin[83] = 9925
        _noDecimalSin[84] = 9945
        _noDecimalSin[85] = 9961
        _noDecimalSin[86] = 9975
        _noDecimalSin[87] = 9986
        _noDecimalSin[88] = 9993
        _noDecimalSin[89] = 9998
        _noDecimalSin[90] = 10000
        _noDecimalSin[91] = 9998
        _noDecimalSin[92] = 9993
        _noDecimalSin[93] = 9986
        _noDecimalSin[94] = 9975
        _noDecimalSin[95] = 9961
        _noDecimalSin[96] = 9945
        _noDecimalSin[97] = 9925
        _noDecimalSin[98] = 9902
        _noDecimalSin[99] = 9876
        _noDecimalSin[100] = 9848
        _noDecimalSin[101] = 9816
        _noDecimalSin[102] = 9781
        _noDecimalSin[103] = 9743
        _noDecimalSin[104] = 9702
        _noDecimalSin[105] = 9659
        _noDecimalSin[106] = 9612
        _noDecimalSin[107] = 9563
        _noDecimalSin[108] = 9510
        _noDecimalSin[109] = 9455
        _noDecimalSin[110] = 9396
        _noDecimalSin[111] = 9335
        _noDecimalSin[112] = 9271
        _noDecimalSin[113] = 9205
        _noDecimalSin[114] = 9135
        _noDecimalSin[115] = 9063
        _noDecimalSin[116] = 8987
        _noDecimalSin[117] = 8910
        _noDecimalSin[118] = 8829
        _noDecimalSin[119] = 8746
        _noDecimalSin[120] = 8660
        _noDecimalSin[121] = 8571
        _noDecimalSin[122] = 8480
        _noDecimalSin[123] = 8386
        _noDecimalSin[124] = 8290
        _noDecimalSin[125] = 8191
        _noDecimalSin[126] = 8090
        _noDecimalSin[127] = 7986
        _noDecimalSin[128] = 7880
        _noDecimalSin[129] = 7771
        _noDecimalSin[130] = 7660
        _noDecimalSin[131] = 7547
        _noDecimalSin[132] = 7431
        _noDecimalSin[133] = 7313
        _noDecimalSin[134] = 7193
        _noDecimalSin[135] = 7071
        _noDecimalSin[136] = 6946
        _noDecimalSin[137] = 6819
        _noDecimalSin[138] = 6691
        _noDecimalSin[139] = 6560
        _noDecimalSin[140] = 6427
        _noDecimalSin[141] = 6293
        _noDecimalSin[142] = 6156
        _noDecimalSin[143] = 6018
        _noDecimalSin[144] = 5877
        _noDecimalSin[145] = 5735
        _noDecimalSin[146] = 5591
        _noDecimalSin[147] = 5446
        _noDecimalSin[148] = 5299
        _noDecimalSin[149] = 5150
        _noDecimalSin[150] = 4999
        _noDecimalSin[151] = 4848
        _noDecimalSin[152] = 4694
        _noDecimalSin[153] = 4539
        _noDecimalSin[154] = 4383
        _noDecimalSin[155] = 4226
        _noDecimalSin[156] = 4067
        _noDecimalSin[157] = 3907
        _noDecimalSin[158] = 3746
        _noDecimalSin[159] = 3583
        _noDecimalSin[160] = 3420
        _noDecimalSin[161] = 3255
        _noDecimalSin[162] = 3090
        _noDecimalSin[163] = 2923
        _noDecimalSin[164] = 2756
        _noDecimalSin[165] = 2588
        _noDecimalSin[166] = 2419
        _noDecimalSin[167] = 2249
        _noDecimalSin[168] = 2079
        _noDecimalSin[169] = 1908
        _noDecimalSin[170] = 1736
        _noDecimalSin[171] = 1564
        _noDecimalSin[172] = 1391
        _noDecimalSin[173] = 1218
        _noDecimalSin[174] = 1045
        _noDecimalSin[175] = 871
        _noDecimalSin[176] = 697
        _noDecimalSin[177] = 523
        _noDecimalSin[178] = 348
        _noDecimalSin[179] = 174
        _noDecimalSin[180] = 0
        _noDecimalSin[181] = -174
        _noDecimalSin[182] = -348
        _noDecimalSin[183] = -523
        _noDecimalSin[184] = -697
        _noDecimalSin[185] = -871
        _noDecimalSin[186] = -1045
        _noDecimalSin[187] = -1218
        _noDecimalSin[188] = -1391
        _noDecimalSin[189] = -1564
        _noDecimalSin[190] = -1736
        _noDecimalSin[191] = -1908
        _noDecimalSin[192] = -2079
        _noDecimalSin[193] = -2249
        _noDecimalSin[194] = -2419
        _noDecimalSin[195] = -2588
        _noDecimalSin[196] = -2756
        _noDecimalSin[197] = -2923
        _noDecimalSin[198] = -3090
        _noDecimalSin[199] = -3255
        _noDecimalSin[200] = -3420
        _noDecimalSin[201] = -3583
        _noDecimalSin[202] = -3746
        _noDecimalSin[203] = -3907
        _noDecimalSin[204] = -4067
        _noDecimalSin[205] = -4226
        _noDecimalSin[206] = -4383
        _noDecimalSin[207] = -4539
        _noDecimalSin[208] = -4694
        _noDecimalSin[209] = -4848
        _noDecimalSin[210] = -5000
        _noDecimalSin[211] = -5150
        _noDecimalSin[212] = -5299
        _noDecimalSin[213] = -5446
        _noDecimalSin[214] = -5591
        _noDecimalSin[215] = -5735
        _noDecimalSin[216] = -5877
        _noDecimalSin[217] = -6018
        _noDecimalSin[218] = -6156
        _noDecimalSin[219] = -6293
        _noDecimalSin[220] = -6427
        _noDecimalSin[221] = -6560
        _noDecimalSin[222] = -6691
        _noDecimalSin[223] = -6819
        _noDecimalSin[224] = -6946
        _noDecimalSin[225] = -7071
        _noDecimalSin[226] = -7193
        _noDecimalSin[227] = -7313
        _noDecimalSin[228] = -7431
        _noDecimalSin[229] = -7547
        _noDecimalSin[230] = -7660
        _noDecimalSin[231] = -7771
        _noDecimalSin[232] = -7880
        _noDecimalSin[233] = -7986
        _noDecimalSin[234] = -8090
        _noDecimalSin[235] = -8191
        _noDecimalSin[236] = -8290
        _noDecimalSin[237] = -8386
        _noDecimalSin[238] = -8480
        _noDecimalSin[239] = -8571
        _noDecimalSin[240] = -8660
        _noDecimalSin[241] = -8746
        _noDecimalSin[242] = -8829
        _noDecimalSin[243] = -8910
        _noDecimalSin[244] = -8987
        _noDecimalSin[245] = -9063
        _noDecimalSin[246] = -9135
        _noDecimalSin[247] = -9205
        _noDecimalSin[248] = -9271
        _noDecimalSin[249] = -9335
        _noDecimalSin[250] = -9396
        _noDecimalSin[251] = -9455
        _noDecimalSin[252] = -9510
        _noDecimalSin[253] = -9563
        _noDecimalSin[254] = -9612
        _noDecimalSin[255] = -9659
        _noDecimalSin[256] = -9702
        _noDecimalSin[257] = -9743
        _noDecimalSin[258] = -9781
        _noDecimalSin[259] = -9816
        _noDecimalSin[260] = -9848
        _noDecimalSin[261] = -9876
        _noDecimalSin[262] = -9902
        _noDecimalSin[263] = -9925
        _noDecimalSin[264] = -9945
        _noDecimalSin[265] = -9961
        _noDecimalSin[266] = -9975
        _noDecimalSin[267] = -9986
        _noDecimalSin[268] = -9993
        _noDecimalSin[269] = -9998
        _noDecimalSin[270] = -10000
        _noDecimalSin[271] = -9998
        _noDecimalSin[272] = -9993
        _noDecimalSin[273] = -9986
        _noDecimalSin[274] = -9975
        _noDecimalSin[275] = -9961
        _noDecimalSin[276] = -9945
        _noDecimalSin[277] = -9925
        _noDecimalSin[278] = -9902
        _noDecimalSin[279] = -9876
        _noDecimalSin[280] = -9848
        _noDecimalSin[281] = -9816
        _noDecimalSin[282] = -9781
        _noDecimalSin[283] = -9743
        _noDecimalSin[284] = -9702
        _noDecimalSin[285] = -9659
        _noDecimalSin[286] = -9612
        _noDecimalSin[287] = -9563
        _noDecimalSin[288] = -9510
        _noDecimalSin[289] = -9455
        _noDecimalSin[290] = -9396
        _noDecimalSin[291] = -9335
        _noDecimalSin[292] = -9271
        _noDecimalSin[293] = -9205
        _noDecimalSin[294] = -9135
        _noDecimalSin[295] = -9063
        _noDecimalSin[296] = -8987
        _noDecimalSin[297] = -8910
        _noDecimalSin[298] = -8829
        _noDecimalSin[299] = -8746
        _noDecimalSin[300] = -8660
        _noDecimalSin[301] = -8571
        _noDecimalSin[302] = -8480
        _noDecimalSin[303] = -8386
        _noDecimalSin[304] = -8290
        _noDecimalSin[305] = -8191
        _noDecimalSin[306] = -8090
        _noDecimalSin[307] = -7986
        _noDecimalSin[308] = -7880
        _noDecimalSin[309] = -7771
        _noDecimalSin[310] = -7660
        _noDecimalSin[311] = -7547
        _noDecimalSin[312] = -7431
        _noDecimalSin[313] = -7313
        _noDecimalSin[314] = -7193
        _noDecimalSin[315] = -7071
        _noDecimalSin[316] = -6946
        _noDecimalSin[317] = -6819
        _noDecimalSin[318] = -6691
        _noDecimalSin[319] = -6560
        _noDecimalSin[320] = -6427
        _noDecimalSin[321] = -6293
        _noDecimalSin[322] = -6156
        _noDecimalSin[323] = -6018
        _noDecimalSin[324] = -5877
        _noDecimalSin[325] = -5735
        _noDecimalSin[326] = -5591
        _noDecimalSin[327] = -5446
        _noDecimalSin[328] = -5299
        _noDecimalSin[329] = -5150
        _noDecimalSin[330] = -5000
        _noDecimalSin[331] = -4848
        _noDecimalSin[332] = -4694
        _noDecimalSin[333] = -4539
        _noDecimalSin[334] = -4383
        _noDecimalSin[335] = -4226
        _noDecimalSin[336] = -4067
        _noDecimalSin[337] = -3907
        _noDecimalSin[338] = -3746
        _noDecimalSin[339] = -3583
        _noDecimalSin[340] = -3420
        _noDecimalSin[341] = -3255
        _noDecimalSin[342] = -3090
        _noDecimalSin[343] = -2923
        _noDecimalSin[344] = -2756
        _noDecimalSin[345] = -2588
        _noDecimalSin[346] = -2419
        _noDecimalSin[347] = -2249
        _noDecimalSin[348] = -2079
        _noDecimalSin[349] = -1908
        _noDecimalSin[350] = -1736
        _noDecimalSin[351] = -1564
        _noDecimalSin[352] = -1391
        _noDecimalSin[353] = -1218
        _noDecimalSin[354] = -1045
        _noDecimalSin[355] = -871
        _noDecimalSin[356] = -697
        _noDecimalSin[357] = -523
        _noDecimalSin[358] = -348
        _noDecimalSin[359] = -174
        _noDecimalCos[0] = 10000
        _noDecimalCos[1] = 9998
        _noDecimalCos[2] = 9993
        _noDecimalCos[3] = 9986
        _noDecimalCos[4] = 9975
        _noDecimalCos[5] = 9961
        _noDecimalCos[6] = 9945
        _noDecimalCos[7] = 9925
        _noDecimalCos[8] = 9902
        _noDecimalCos[9] = 9876
        _noDecimalCos[10] = 9848
        _noDecimalCos[11] = 9816
        _noDecimalCos[12] = 9781
        _noDecimalCos[13] = 9743
        _noDecimalCos[14] = 9702
        _noDecimalCos[15] = 9659
        _noDecimalCos[16] = 9612
        _noDecimalCos[17] = 9563
        _noDecimalCos[18] = 9510
        _noDecimalCos[19] = 9455
        _noDecimalCos[20] = 9396
        _noDecimalCos[21] = 9335
        _noDecimalCos[22] = 9271
        _noDecimalCos[23] = 9205
        _noDecimalCos[24] = 9135
        _noDecimalCos[25] = 9063
        _noDecimalCos[26] = 8987
        _noDecimalCos[27] = 8910
        _noDecimalCos[28] = 8829
        _noDecimalCos[29] = 8746
        _noDecimalCos[30] = 8660
        _noDecimalCos[31] = 8571
        _noDecimalCos[32] = 8480
        _noDecimalCos[33] = 8386
        _noDecimalCos[34] = 8290
        _noDecimalCos[35] = 8191
        _noDecimalCos[36] = 8090
        _noDecimalCos[37] = 7986
        _noDecimalCos[38] = 7880
        _noDecimalCos[39] = 7771
        _noDecimalCos[40] = 7660
        _noDecimalCos[41] = 7547
        _noDecimalCos[42] = 7431
        _noDecimalCos[43] = 7313
        _noDecimalCos[44] = 7193
        _noDecimalCos[45] = 7071
        _noDecimalCos[46] = 6946
        _noDecimalCos[47] = 6819
        _noDecimalCos[48] = 6691
        _noDecimalCos[49] = 6560
        _noDecimalCos[50] = 6427
        _noDecimalCos[51] = 6293
        _noDecimalCos[52] = 6156
        _noDecimalCos[53] = 6018
        _noDecimalCos[54] = 5877
        _noDecimalCos[55] = 5735
        _noDecimalCos[56] = 5591
        _noDecimalCos[57] = 5446
        _noDecimalCos[58] = 5299
        _noDecimalCos[59] = 5150
        _noDecimalCos[60] = 5000
        _noDecimalCos[61] = 4848
        _noDecimalCos[62] = 4694
        _noDecimalCos[63] = 4539
        _noDecimalCos[64] = 4383
        _noDecimalCos[65] = 4226
        _noDecimalCos[66] = 4067
        _noDecimalCos[67] = 3907
        _noDecimalCos[68] = 3746
        _noDecimalCos[69] = 3583
        _noDecimalCos[70] = 3420
        _noDecimalCos[71] = 3255
        _noDecimalCos[72] = 3090
        _noDecimalCos[73] = 2923
        _noDecimalCos[74] = 2756
        _noDecimalCos[75] = 2588
        _noDecimalCos[76] = 2419
        _noDecimalCos[77] = 2249
        _noDecimalCos[78] = 2079
        _noDecimalCos[79] = 1908
        _noDecimalCos[80] = 1736
        _noDecimalCos[81] = 1564
        _noDecimalCos[82] = 1391
        _noDecimalCos[83] = 1218
        _noDecimalCos[84] = 1045
        _noDecimalCos[85] = 871
        _noDecimalCos[86] = 697
        _noDecimalCos[87] = 523
        _noDecimalCos[88] = 348
        _noDecimalCos[89] = 174
        _noDecimalCos[90] = 0
        _noDecimalCos[91] = -174
        _noDecimalCos[92] = -348
        _noDecimalCos[93] = -523
        _noDecimalCos[94] = -697
        _noDecimalCos[95] = -871
        _noDecimalCos[96] = -1045
        _noDecimalCos[97] = -1218
        _noDecimalCos[98] = -1391
        _noDecimalCos[99] = -1564
        _noDecimalCos[100] = -1736
        _noDecimalCos[101] = -1908
        _noDecimalCos[102] = -2079
        _noDecimalCos[103] = -2249
        _noDecimalCos[104] = -2419
        _noDecimalCos[105] = -2588
        _noDecimalCos[106] = -2756
        _noDecimalCos[107] = -2923
        _noDecimalCos[108] = -3090
        _noDecimalCos[109] = -3255
        _noDecimalCos[110] = -3420
        _noDecimalCos[111] = -3583
        _noDecimalCos[112] = -3746
        _noDecimalCos[113] = -3907
        _noDecimalCos[114] = -4067
        _noDecimalCos[115] = -4226
        _noDecimalCos[116] = -4383
        _noDecimalCos[117] = -4539
        _noDecimalCos[118] = -4694
        _noDecimalCos[119] = -4848
        _noDecimalCos[120] = -4999
        _noDecimalCos[121] = -5150
        _noDecimalCos[122] = -5299
        _noDecimalCos[123] = -5446
        _noDecimalCos[124] = -5591
        _noDecimalCos[125] = -5735
        _noDecimalCos[126] = -5877
        _noDecimalCos[127] = -6018
        _noDecimalCos[128] = -6156
        _noDecimalCos[129] = -6293
        _noDecimalCos[130] = -6427
        _noDecimalCos[131] = -6560
        _noDecimalCos[132] = -6691
        _noDecimalCos[133] = -6819
        _noDecimalCos[134] = -6946
        _noDecimalCos[135] = -7071
        _noDecimalCos[136] = -7193
        _noDecimalCos[137] = -7313
        _noDecimalCos[138] = -7431
        _noDecimalCos[139] = -7547
        _noDecimalCos[140] = -7660
        _noDecimalCos[141] = -7771
        _noDecimalCos[142] = -7880
        _noDecimalCos[143] = -7986
        _noDecimalCos[144] = -8090
        _noDecimalCos[145] = -8191
        _noDecimalCos[146] = -8290
        _noDecimalCos[147] = -8386
        _noDecimalCos[148] = -8480
        _noDecimalCos[149] = -8571
        _noDecimalCos[150] = -8660
        _noDecimalCos[151] = -8746
        _noDecimalCos[152] = -8829
        _noDecimalCos[153] = -8910
        _noDecimalCos[154] = -8987
        _noDecimalCos[155] = -9063
        _noDecimalCos[156] = -9135
        _noDecimalCos[157] = -9205
        _noDecimalCos[158] = -9271
        _noDecimalCos[159] = -9335
        _noDecimalCos[160] = -9396
        _noDecimalCos[161] = -9455
        _noDecimalCos[162] = -9510
        _noDecimalCos[163] = -9563
        _noDecimalCos[164] = -9612
        _noDecimalCos[165] = -9659
        _noDecimalCos[166] = -9702
        _noDecimalCos[167] = -9743
        _noDecimalCos[168] = -9781
        _noDecimalCos[169] = -9816
        _noDecimalCos[170] = -9848
        _noDecimalCos[171] = -9876
        _noDecimalCos[172] = -9902
        _noDecimalCos[173] = -9925
        _noDecimalCos[174] = -9945
        _noDecimalCos[175] = -9961
        _noDecimalCos[176] = -9975
        _noDecimalCos[177] = -9986
        _noDecimalCos[178] = -9993
        _noDecimalCos[179] = -9998
        _noDecimalCos[180] = -10000
        _noDecimalCos[181] = -9998
        _noDecimalCos[182] = -9993
        _noDecimalCos[183] = -9986
        _noDecimalCos[184] = -9975
        _noDecimalCos[185] = -9961
        _noDecimalCos[186] = -9945
        _noDecimalCos[187] = -9925
        _noDecimalCos[188] = -9902
        _noDecimalCos[189] = -9876
        _noDecimalCos[190] = -9848
        _noDecimalCos[191] = -9816
        _noDecimalCos[192] = -9781
        _noDecimalCos[193] = -9743
        _noDecimalCos[194] = -9702
        _noDecimalCos[195] = -9659
        _noDecimalCos[196] = -9612
        _noDecimalCos[197] = -9563
        _noDecimalCos[198] = -9510
        _noDecimalCos[199] = -9455
        _noDecimalCos[200] = -9396
        _noDecimalCos[201] = -9335
        _noDecimalCos[202] = -9271
        _noDecimalCos[203] = -9205
        _noDecimalCos[204] = -9135
        _noDecimalCos[205] = -9063
        _noDecimalCos[206] = -8987
        _noDecimalCos[207] = -8910
        _noDecimalCos[208] = -8829
        _noDecimalCos[209] = -8746
        _noDecimalCos[210] = -8660
        _noDecimalCos[211] = -8571
        _noDecimalCos[212] = -8480
        _noDecimalCos[213] = -8386
        _noDecimalCos[214] = -8290
        _noDecimalCos[215] = -8191
        _noDecimalCos[216] = -8090
        _noDecimalCos[217] = -7986
        _noDecimalCos[218] = -7880
        _noDecimalCos[219] = -7771
        _noDecimalCos[220] = -7660
        _noDecimalCos[221] = -7547
        _noDecimalCos[222] = -7431
        _noDecimalCos[223] = -7313
        _noDecimalCos[224] = -7193
        _noDecimalCos[225] = -7071
        _noDecimalCos[226] = -6946
        _noDecimalCos[227] = -6819
        _noDecimalCos[228] = -6691
        _noDecimalCos[229] = -6560
        _noDecimalCos[230] = -6427
        _noDecimalCos[231] = -6293
        _noDecimalCos[232] = -6156
        _noDecimalCos[233] = -6018
        _noDecimalCos[234] = -5877
        _noDecimalCos[235] = -5735
        _noDecimalCos[236] = -5591
        _noDecimalCos[237] = -5446
        _noDecimalCos[238] = -5299
        _noDecimalCos[239] = -5150
        _noDecimalCos[240] = -5000
        _noDecimalCos[241] = -4848
        _noDecimalCos[242] = -4694
        _noDecimalCos[243] = -4539
        _noDecimalCos[244] = -4383
        _noDecimalCos[245] = -4226
        _noDecimalCos[246] = -4067
        _noDecimalCos[247] = -3907
        _noDecimalCos[248] = -3746
        _noDecimalCos[249] = -3583
        _noDecimalCos[250] = -3420
        _noDecimalCos[251] = -3255
        _noDecimalCos[252] = -3090
        _noDecimalCos[253] = -2923
        _noDecimalCos[254] = -2756
        _noDecimalCos[255] = -2588
        _noDecimalCos[256] = -2419
        _noDecimalCos[257] = -2249
        _noDecimalCos[258] = -2079
        _noDecimalCos[259] = -1908
        _noDecimalCos[260] = -1736
        _noDecimalCos[261] = -1564
        _noDecimalCos[262] = -1391
        _noDecimalCos[263] = -1218
        _noDecimalCos[264] = -1045
        _noDecimalCos[265] = -871
        _noDecimalCos[266] = -697
        _noDecimalCos[267] = -523
        _noDecimalCos[268] = -348
        _noDecimalCos[269] = -174
        _noDecimalCos[270] = 0
        _noDecimalCos[271] = 174
        _noDecimalCos[272] = 348
        _noDecimalCos[273] = 523
        _noDecimalCos[274] = 697
        _noDecimalCos[275] = 871
        _noDecimalCos[276] = 1045
        _noDecimalCos[277] = 1218
        _noDecimalCos[278] = 1391
        _noDecimalCos[279] = 1564
        _noDecimalCos[280] = 1736
        _noDecimalCos[281] = 1908
        _noDecimalCos[282] = 2079
        _noDecimalCos[283] = 2249
        _noDecimalCos[284] = 2419
        _noDecimalCos[285] = 2588
        _noDecimalCos[286] = 2756
        _noDecimalCos[287] = 2923
        _noDecimalCos[288] = 3090
        _noDecimalCos[289] = 3255
        _noDecimalCos[290] = 3420
        _noDecimalCos[291] = 3583
        _noDecimalCos[292] = 3746
        _noDecimalCos[293] = 3907
        _noDecimalCos[294] = 4067
        _noDecimalCos[295] = 4226
        _noDecimalCos[296] = 4383
        _noDecimalCos[297] = 4539
        _noDecimalCos[298] = 4694
        _noDecimalCos[299] = 4848
        _noDecimalCos[300] = 5000
        _noDecimalCos[301] = 5150
        _noDecimalCos[302] = 5299
        _noDecimalCos[303] = 5446
        _noDecimalCos[304] = 5591
        _noDecimalCos[305] = 5735
        _noDecimalCos[306] = 5877
        _noDecimalCos[307] = 6018
        _noDecimalCos[308] = 6156
        _noDecimalCos[309] = 6293
        _noDecimalCos[310] = 6427
        _noDecimalCos[311] = 6560
        _noDecimalCos[312] = 6691
        _noDecimalCos[313] = 6819
        _noDecimalCos[314] = 6946
        _noDecimalCos[315] = 7071
        _noDecimalCos[316] = 7193
        _noDecimalCos[317] = 7313
        _noDecimalCos[318] = 7431
        _noDecimalCos[319] = 7547
        _noDecimalCos[320] = 7660
        _noDecimalCos[321] = 7771
        _noDecimalCos[322] = 7880
        _noDecimalCos[323] = 7986
        _noDecimalCos[324] = 8090
        _noDecimalCos[325] = 8191
        _noDecimalCos[326] = 8290
        _noDecimalCos[327] = 8386
        _noDecimalCos[328] = 8480
        _noDecimalCos[329] = 8571
        _noDecimalCos[330] = 8660
        _noDecimalCos[331] = 8746
        _noDecimalCos[332] = 8829
        _noDecimalCos[333] = 8910
        _noDecimalCos[334] = 8987
        _noDecimalCos[335] = 9063
        _noDecimalCos[336] = 9135
        _noDecimalCos[337] = 9205
        _noDecimalCos[338] = 9271
        _noDecimalCos[339] = 9335
        _noDecimalCos[340] = 9396
        _noDecimalCos[341] = 9455
        _noDecimalCos[342] = 9510
        _noDecimalCos[343] = 9563
        _noDecimalCos[344] = 9612
        _noDecimalCos[345] = 9659
        _noDecimalCos[346] = 9702
        _noDecimalCos[347] = 9743
        _noDecimalCos[348] = 9781
        _noDecimalCos[349] = 9816
        _noDecimalCos[350] = 9848
        _noDecimalCos[351] = 9876
        _noDecimalCos[352] = 9902
        _noDecimalCos[353] = 9925
        _noDecimalCos[354] = 9945
        _noDecimalCos[355] = 9961
        _noDecimalCos[356] = 9975
        _noDecimalCos[357] = 9986
        _noDecimalCos[358] = 9993
        _noDecimalCos[359] = 9998
        _noDecimalTan[0] = 0
        _noDecimalTan[1] = 174
        _noDecimalTan[2] = 349
        _noDecimalTan[3] = 524
        _noDecimalTan[4] = 699
        _noDecimalTan[5] = 874
        _noDecimalTan[6] = 1051
        _noDecimalTan[7] = 1227
        _noDecimalTan[8] = 1405
        _noDecimalTan[9] = 1583
        _noDecimalTan[10] = 1763
        _noDecimalTan[11] = 1943
        _noDecimalTan[12] = 2125
        _noDecimalTan[13] = 2308
        _noDecimalTan[14] = 2493
        _noDecimalTan[15] = 2679
        _noDecimalTan[16] = 2867
        _noDecimalTan[17] = 3057
        _noDecimalTan[18] = 3249
        _noDecimalTan[19] = 3443
        _noDecimalTan[20] = 3639
        _noDecimalTan[21] = 3838
        _noDecimalTan[22] = 4040
        _noDecimalTan[23] = 4244
        _noDecimalTan[24] = 4452
        _noDecimalTan[25] = 4663
        _noDecimalTan[26] = 4877
        _noDecimalTan[27] = 5095
        _noDecimalTan[28] = 5317
        _noDecimalTan[29] = 5543
        _noDecimalTan[30] = 5773
        _noDecimalTan[31] = 6008
        _noDecimalTan[32] = 6248
        _noDecimalTan[33] = 6494
        _noDecimalTan[34] = 6745
        _noDecimalTan[35] = 7002
        _noDecimalTan[36] = 7265
        _noDecimalTan[37] = 7535
        _noDecimalTan[38] = 7812
        _noDecimalTan[39] = 8097
        _noDecimalTan[40] = 8390
        _noDecimalTan[41] = 8692
        _noDecimalTan[42] = 9004
        _noDecimalTan[43] = 9325
        _noDecimalTan[44] = 9656
        _noDecimalTan[45] = 9999
        _noDecimalTan[46] = 10355
        _noDecimalTan[47] = 10723
        _noDecimalTan[48] = 11106
        _noDecimalTan[49] = 11503
        _noDecimalTan[50] = 11917
        _noDecimalTan[51] = 12348
        _noDecimalTan[52] = 12799
        _noDecimalTan[53] = 13270
        _noDecimalTan[54] = 13763
        _noDecimalTan[55] = 14281
        _noDecimalTan[56] = 14825
        _noDecimalTan[57] = 15398
        _noDecimalTan[58] = 16003
        _noDecimalTan[59] = 16642
        _noDecimalTan[60] = 17320
        _noDecimalTan[61] = 18040
        _noDecimalTan[62] = 18807
        _noDecimalTan[63] = 19626
        _noDecimalTan[64] = 20503
        _noDecimalTan[65] = 21445
        _noDecimalTan[66] = 22460
        _noDecimalTan[67] = 23558
        _noDecimalTan[68] = 24750
        _noDecimalTan[69] = 26050
        _noDecimalTan[70] = 27474
        _noDecimalTan[71] = 29042
        _noDecimalTan[72] = 30776
        _noDecimalTan[73] = 32708
        _noDecimalTan[74] = 34874
        _noDecimalTan[75] = 37320
        _noDecimalTan[76] = 40107
        _noDecimalTan[77] = 43314
        _noDecimalTan[78] = 47046
        _noDecimalTan[79] = 51445
        _noDecimalTan[80] = 56712
        _noDecimalTan[81] = 63137
        _noDecimalTan[82] = 71153
        _noDecimalTan[83] = 81443
        _noDecimalTan[84] = 95143
        _noDecimalTan[85] = 114300
        _noDecimalTan[86] = 143006
        _noDecimalTan[87] = 190811
        _noDecimalTan[88] = 286362
        _noDecimalTan[89] = 572899
        _noDecimalTan[90] = MAX_VALUE
        _noDecimalTan[91] = -572899
        _noDecimalTan[92] = -286362
        _noDecimalTan[93] = -190811
        _noDecimalTan[94] = -143006
        _noDecimalTan[95] = -114300
        _noDecimalTan[96] = -95143
        _noDecimalTan[97] = -81443
        _noDecimalTan[98] = -71153
        _noDecimalTan[99] = -63137
        _noDecimalTan[100] = -56712
        _noDecimalTan[101] = -51445
        _noDecimalTan[102] = -47046
        _noDecimalTan[103] = -43314
        _noDecimalTan[104] = -40107
        _noDecimalTan[105] = -37320
        _noDecimalTan[106] = -34874
        _noDecimalTan[107] = -32708
        _noDecimalTan[108] = -30776
        _noDecimalTan[109] = -29042
        _noDecimalTan[110] = -27474
        _noDecimalTan[111] = -26050
        _noDecimalTan[112] = -24750
        _noDecimalTan[113] = -23558
        _noDecimalTan[114] = -22460
        _noDecimalTan[115] = -21445
        _noDecimalTan[116] = -20503
        _noDecimalTan[117] = -19626
        _noDecimalTan[118] = -18807
        _noDecimalTan[119] = -18040
        _noDecimalTan[120] = -17320
        _noDecimalTan[121] = -16642
        _noDecimalTan[122] = -16003
        _noDecimalTan[123] = -15398
        _noDecimalTan[124] = -14825
        _noDecimalTan[125] = -14281
        _noDecimalTan[126] = -13763
        _noDecimalTan[127] = -13270
        _noDecimalTan[128] = -12799
        _noDecimalTan[129] = -12348
        _noDecimalTan[130] = -11917
        _noDecimalTan[131] = -11503
        _noDecimalTan[132] = -11106
        _noDecimalTan[133] = -10723
        _noDecimalTan[134] = -10355
        _noDecimalTan[135] = -10000
        _noDecimalTan[136] = -9656
        _noDecimalTan[137] = -9325
        _noDecimalTan[138] = -9004
        _noDecimalTan[139] = -8692
        _noDecimalTan[140] = -8390
        _noDecimalTan[141] = -8097
        _noDecimalTan[142] = -7812
        _noDecimalTan[143] = -7535
        _noDecimalTan[144] = -7265
        _noDecimalTan[145] = -7002
        _noDecimalTan[146] = -6745
        _noDecimalTan[147] = -6494
        _noDecimalTan[148] = -6248
        _noDecimalTan[149] = -6008
        _noDecimalTan[150] = -5773
        _noDecimalTan[151] = -5543
        _noDecimalTan[152] = -5317
        _noDecimalTan[153] = -5095
        _noDecimalTan[154] = -4877
        _noDecimalTan[155] = -4663
        _noDecimalTan[156] = -4452
        _noDecimalTan[157] = -4244
        _noDecimalTan[158] = -4040
        _noDecimalTan[159] = -3838
        _noDecimalTan[160] = -3639
        _noDecimalTan[161] = -3443
        _noDecimalTan[162] = -3249
        _noDecimalTan[163] = -3057
        _noDecimalTan[164] = -2867
        _noDecimalTan[165] = -2679
        _noDecimalTan[166] = -2493
        _noDecimalTan[167] = -2308
        _noDecimalTan[168] = -2125
        _noDecimalTan[169] = -1943
        _noDecimalTan[170] = -1763
        _noDecimalTan[171] = -1583
        _noDecimalTan[172] = -1405
        _noDecimalTan[173] = -1227
        _noDecimalTan[174] = -1051
        _noDecimalTan[175] = -874
        _noDecimalTan[176] = -699
        _noDecimalTan[177] = -524
        _noDecimalTan[178] = -349
        _noDecimalTan[179] = -174
        _noDecimalTan[180] = 0
        _noDecimalTan[181] = 174
        _noDecimalTan[182] = 349
        _noDecimalTan[183] = 524
        _noDecimalTan[184] = 699
        _noDecimalTan[185] = 874
        _noDecimalTan[186] = 1051
        _noDecimalTan[187] = 1227
        _noDecimalTan[188] = 1405
        _noDecimalTan[189] = 1583
        _noDecimalTan[190] = 1763
        _noDecimalTan[191] = 1943
        _noDecimalTan[192] = 2125
        _noDecimalTan[193] = 2308
        _noDecimalTan[194] = 2493
        _noDecimalTan[195] = 2679
        _noDecimalTan[196] = 2867
        _noDecimalTan[197] = 3057
        _noDecimalTan[198] = 3249
        _noDecimalTan[199] = 3443
        _noDecimalTan[200] = 3639
        _noDecimalTan[201] = 3838
        _noDecimalTan[202] = 4040
        _noDecimalTan[203] = 4244
        _noDecimalTan[204] = 4452
        _noDecimalTan[205] = 4663
        _noDecimalTan[206] = 4877
        _noDecimalTan[207] = 5095
        _noDecimalTan[208] = 5317
        _noDecimalTan[209] = 5543
        _noDecimalTan[210] = 5773
        _noDecimalTan[211] = 6008
        _noDecimalTan[212] = 6248
        _noDecimalTan[213] = 6494
        _noDecimalTan[214] = 6745
        _noDecimalTan[215] = 7002
        _noDecimalTan[216] = 7265
        _noDecimalTan[217] = 7535
        _noDecimalTan[218] = 7812
        _noDecimalTan[219] = 8097
        _noDecimalTan[220] = 8390
        _noDecimalTan[221] = 8692
        _noDecimalTan[222] = 9004
        _noDecimalTan[223] = 9325
        _noDecimalTan[224] = 9656
        _noDecimalTan[225] = 9999
        _noDecimalTan[226] = 10355
        _noDecimalTan[227] = 10723
        _noDecimalTan[228] = 11106
        _noDecimalTan[229] = 11503
        _noDecimalTan[230] = 11917
        _noDecimalTan[231] = 12348
        _noDecimalTan[232] = 12799
        _noDecimalTan[233] = 13270
        _noDecimalTan[234] = 13763
        _noDecimalTan[235] = 14281
        _noDecimalTan[236] = 14825
        _noDecimalTan[237] = 15398
        _noDecimalTan[238] = 16003
        _noDecimalTan[239] = 16642
        _noDecimalTan[240] = 17320
        _noDecimalTan[241] = 18040
        _noDecimalTan[242] = 18807
        _noDecimalTan[243] = 19626
        _noDecimalTan[244] = 20503
        _noDecimalTan[245] = 21445
        _noDecimalTan[246] = 22460
        _noDecimalTan[247] = 23558
        _noDecimalTan[248] = 24750
        _noDecimalTan[249] = 26050
        _noDecimalTan[250] = 27474
        _noDecimalTan[251] = 29042
        _noDecimalTan[252] = 30776
        _noDecimalTan[253] = 32708
        _noDecimalTan[254] = 34874
        _noDecimalTan[255] = 37320
        _noDecimalTan[256] = 40107
        _noDecimalTan[257] = 43314
        _noDecimalTan[258] = 47046
        _noDecimalTan[259] = 51445
        _noDecimalTan[260] = 56712
        _noDecimalTan[261] = 63137
        _noDecimalTan[262] = 71153
        _noDecimalTan[263] = 81443
        _noDecimalTan[264] = 95143
        _noDecimalTan[265] = 114300
        _noDecimalTan[266] = 143006
        _noDecimalTan[267] = 190811
        _noDecimalTan[268] = 286362
        _noDecimalTan[269] = 572899
        _noDecimalTan[270] = MAX_VALUE
        _noDecimalTan[271] = -572899
        _noDecimalTan[272] = -286362
        _noDecimalTan[273] = -190811
        _noDecimalTan[274] = -143006
        _noDecimalTan[275] = -114300
        _noDecimalTan[276] = -95143
        _noDecimalTan[277] = -81443
        _noDecimalTan[278] = -71153
        _noDecimalTan[279] = -63137
        _noDecimalTan[280] = -56712
        _noDecimalTan[281] = -51445
        _noDecimalTan[282] = -47046
        _noDecimalTan[283] = -43314
        _noDecimalTan[284] = -40107
        _noDecimalTan[285] = -37320
        _noDecimalTan[286] = -34874
        _noDecimalTan[287] = -32708
        _noDecimalTan[288] = -30776
        _noDecimalTan[289] = -29042
        _noDecimalTan[290] = -27474
        _noDecimalTan[291] = -26050
        _noDecimalTan[292] = -24750
        _noDecimalTan[293] = -23558
        _noDecimalTan[294] = -22460
        _noDecimalTan[295] = -21445
        _noDecimalTan[296] = -20503
        _noDecimalTan[297] = -19626
        _noDecimalTan[298] = -18807
        _noDecimalTan[299] = -18040
        _noDecimalTan[300] = -17320
        _noDecimalTan[301] = -16642
        _noDecimalTan[302] = -16003
        _noDecimalTan[303] = -15398
        _noDecimalTan[304] = -14825
        _noDecimalTan[305] = -14281
        _noDecimalTan[306] = -13763
        _noDecimalTan[307] = -13270
        _noDecimalTan[308] = -12799
        _noDecimalTan[309] = -12348
        _noDecimalTan[310] = -11917
        _noDecimalTan[311] = -11503
        _noDecimalTan[312] = -11106
        _noDecimalTan[313] = -10723
        _noDecimalTan[314] = -10355
        _noDecimalTan[315] = -10000
        _noDecimalTan[316] = -9656
        _noDecimalTan[317] = -9325
        _noDecimalTan[318] = -9004
        _noDecimalTan[319] = -8692
        _noDecimalTan[320] = -8390
        _noDecimalTan[321] = -8097
        _noDecimalTan[322] = -7812
        _noDecimalTan[323] = -7535
        _noDecimalTan[324] = -7265
        _noDecimalTan[325] = -7002
        _noDecimalTan[326] = -6745
        _noDecimalTan[327] = -6494
        _noDecimalTan[328] = -6248
        _noDecimalTan[329] = -6008
        _noDecimalTan[330] = -5773
        _noDecimalTan[331] = -5543
        _noDecimalTan[332] = -5317
        _noDecimalTan[333] = -5095
        _noDecimalTan[334] = -4877
        _noDecimalTan[335] = -4663
        _noDecimalTan[336] = -4452
        _noDecimalTan[337] = -4244
        _noDecimalTan[338] = -4040
        _noDecimalTan[339] = -3838
        _noDecimalTan[340] = -3639
        _noDecimalTan[341] = -3443
        _noDecimalTan[342] = -3249
        _noDecimalTan[343] = -3057
        _noDecimalTan[344] = -2867
        _noDecimalTan[345] = -2679
        _noDecimalTan[346] = -2493
        _noDecimalTan[347] = -2308
        _noDecimalTan[348] = -2125
        _noDecimalTan[349] = -1943
        _noDecimalTan[350] = -1763
        _noDecimalTan[351] = -1583
        _noDecimalTan[352] = -1405
        _noDecimalTan[353] = -1227
        _noDecimalTan[354] = -1051
        _noDecimalTan[355] = -874
        _noDecimalTan[356] = -699
        _noDecimalTan[357] = -524
        _noDecimalTan[358] = -349
        _noDecimalTan[359] = -174
        _noDecimalTan[0] = -174
    }
    

    sin(angle) {
        return _noDecimalSin[angle]
    }
    

    cos(angle) {
        return _noDecimalCos[angle]
    }
    

    tan(angle) {
        return _noDecimalTan[angle]
    }
    

    antiTan(dx, dy) {
        var MAX_VALUE = (Integer.MAX_VALUE)
        var MIN_VALUE = (Integer.MIN_VALUE)
        var ratio = (JR.i32(MAX_VALUE - 1))
        if ((dy != 0)) {
            var dxl = (dx)
            ratio = JR.idiv(JR.i32(_SCALE * dxl), dy)
            if (((dx <= 0) && (dy < 0))) {
                ratio = _mathUtil.abslong(ratio)
            }
        }
        if ((((dx >= 0) && (dy < 0)))) {
            if (true) {
                var index = 180
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index > 90))) break
                if ((ratio <= _noDecimalTan[index])) {
                    if ((ratio > _noDecimalTan[JR.i32(index - 1)])) {
                        return (JR.i16(index))
                    } else if (((_noDecimalTan[JR.i32(index - 1)] == MAX_VALUE) && (ratio > MIN_VALUE))) {
                        return (JR.i16(index))
                    }
                }
                }
            }
        } else if ((((dx < 0) && (dy <= 0)))) {
            if (true) {
                var index = 270
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index > 180))) break
                if (((ratio < _noDecimalTan[index]) && (ratio >= _noDecimalTan[JR.i32(index - 1)]))) {
                    return (JR.i16(index))
                }
                }
            }
        } else if ((((dx < 0) && (dy > 0)))) {
            if (true) {
                var index = (JR.i32(_noDecimalTan.count - 1))
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index > 270))) break
                if ((ratio < _noDecimalTan[index])) {
                    if ((ratio >= _noDecimalTan[JR.i32(index - 1)])) {
                        return (JR.i16(index))
                    } else if (((_noDecimalTan[JR.i32(index - 1)] == MAX_VALUE) && (ratio >= MIN_VALUE))) {
                        return (JR.i16(index))
                    }
                }
                }
            }
        } else if ((((dx >= 0) && (dy >= 0)))) {
            if (true) {
                var index = 90
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index > 0))) break
                if (((ratio < _noDecimalTan[index]) && (ratio >= _noDecimalTan[JR.i32(index - 1)]))) {
                    return (JR.i16(index))
                }
                }
            }
        }
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Invalid Ratio: ")
        stringBuffer.appendlong(ratio)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL)
        stringBuffer.appendint(dx)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL)
        stringBuffer.appendint(dy)
        Fiber.abort(JR.exception("Exception", stringBuffer.toString()))
    }
    

    antiTanDebug(screenX, screenY, targetX, targetY) {
        var METHOD_NAME = "antiTanDebug"
        var TARGET_ANGLE = " Targeting angle: "
        var stringMaker = StringMaker.new()
        PreLogUtil.put(stringMaker.append("screenX: ").appendint(screenX).append(" screenY: ").appendint(screenY).append(" targetX: ").appendint(targetX).append(" targetY: ").appendint(targetY).toString(), this, METHOD_NAME)
        var targetX2 = -targetX
        var targetY2 = -targetY
        var screenX2 = -screenX
        var screenY2 = -screenY
        var dx = List.filled(4, 0)
        dx[0] = (JR.i32(screenX - targetX))
        dx[1] = (JR.i32(screenX - targetX2))
        dx[2] = (JR.i32(screenX2 - targetX))
        dx[3] = (JR.i32(screenX2 - targetX2))
        var dy = List.filled(4, 0)
        dy[0] = (JR.i32(screenY - targetY))
        dy[1] = (JR.i32(screenY - targetY2))
        dy[2] = (JR.i32(screenY2 - targetY))
        dy[3] = (JR.i32(screenY2 - targetY2))
        var angleOfTarget = 0
        var angleFactory = AngleFactory.getInstance()
        var angle = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < dx.count))) break
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < dy.count))) break
                angleOfTarget = this.antiTan(dx[index], dy[index2])
                angle = angleFactory.getAt(JR.i32(angleOfTarget))
                stringMaker.delete(0, stringMaker.length())
                PreLogUtil.put(stringMaker.append(CommonLabels.getInstance().INDEX_LABEL).appendint(index).append(" index2: ").appendint(index2).append(PositionStrings.getInstance().DX_LABEL).appendint(dx[index]).append(PositionStrings.getInstance().DY_LABEL).appendint(dy[index2]).append(TARGET_ANGLE).appendshort(angleOfTarget).append(CommonSeps.getInstance().EQUALS).appendshort(JR.i16(angle.getValue())).toString(), this, METHOD_NAME)
                }
            }
            }
        }
        angleOfTarget = this.antiTan(dx[0], dy[0])
        return angleOfTarget
    }
}

import "../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../org/allbinary/logic/math/MathUtil" for MathUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../java/lang/Integer" for Integer
import "./AngleFactory" for AngleFactory
import "./PositionStrings" for PositionStrings
import "./Angle" for Angle

