.include "macro.inc"

.section .data

dlabel D_80247310_8F3130
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x02EE0000, D_80247648_8F3468, 0x00000000

dlabel D_8024733C_8F315C
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247310_8F3130, 0x00000000, 0x02BC0000, D_80247648_8F3468, 0x00000000

dlabel D_80247368_8F3188
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_8024733C_8F315C, 0x00000000, 0x028A0000, D_80247648_8F3468, 0x00000000

dlabel D_80247394_8F31B4
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247368_8F3188, 0x00000000, 0x02580000, D_80247648_8F3468, 0x00000000

dlabel D_802473C0_8F31E0
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247394_8F31B4, 0x00000000, 0x02260000, D_80247648_8F3468, 0x00000000

dlabel D_802473EC_8F320C
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_802473C0_8F31E0, 0x00000000, 0x01F40000, D_80247648_8F3468, 0x00000000

dlabel D_80247418_8F3238
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_802473EC_8F320C, 0x00000000, 0x01C20000, D_80247648_8F3468, 0x00000000

dlabel D_80247444_8F3264
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247418_8F3238, 0x00000000, 0x01900000, D_80247648_8F3468, 0x00000000

dlabel D_80247470_8F3290
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247444_8F3264, 0x00000000, 0x015E0000, D_80247648_8F3468, 0x00000000

dlabel D_8024749C_8F32BC
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247470_8F3290, 0x00000000, 0x012C0000, D_80247648_8F3468, 0x00000000

dlabel D_802474C8_8F32E8
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_8024749C_8F32BC, 0x00000000, 0x00FA0000, D_80247648_8F3468, 0x00000000

dlabel D_802474F4_8F3314
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_802474C8_8F32E8, 0x00000000, 0x00C80000, D_80247648_8F3468, 0x00000000

dlabel D_80247520_8F3340
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_802474F4_8F3314, 0x00000000, 0x00960000, D_80247648_8F3468, 0x00000000

dlabel D_8024754C_8F336C
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247520_8F3340, 0x00000000, 0x00640000, D_80247648_8F3468, 0x00000000

dlabel D_80247578_8F3398
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_8024754C_8F336C, 0x00000000, 0x00320000, D_80247648_8F3468, 0x00000000

dlabel D_802475A4_8F33C4
.word D_80248C28_8F4A48, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_80247578_8F3398, 0x00000000, 0x00000000, D_80247648_8F3468, 0x00000000

dlabel D_802475D0_8F33F0
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, D_802475A4_8F33C4, 0xFFFF0000, 0x00000000, 0x00000000, D_802475D0_8F33F0, D_802475A4_8F33C4, D_80247578_8F3398, D_8024754C_8F336C, D_80247520_8F3340, D_802474F4_8F3314, D_802474C8_8F32E8, D_8024749C_8F32BC, D_80247470_8F3290, D_80247444_8F3264, D_80247418_8F3238, D_802473EC_8F320C, D_802473C0_8F31E0, D_80247394_8F31B4, D_80247368_8F3188, D_8024733C_8F315C, D_80247310_8F3130, 0x00000000, 0x00000000

dlabel D_80247648_8F3468
.word 0x00000000, 0x00000000, 0x04000000, 0xDB1396FF, 0x00000000, 0x00000000, 0x04120038, 0xB615A5FF, 0x00000000, 0x00000000, 0x04000038, 0xD05CC5FF, 0x00000000, 0x00000000, 0x03ED0000, 0xF94FB2FF, 0x00000000, 0x00000000, 0x04000071, 0xBB15A1FF, 0x00000000, 0x00000000, 0x03ED0071, 0xD75CC0FF, 0x00000000, 0x00000000, 0x041200AA, 0xB615A5FF, 0x00000000, 0x00000000, 0x040000AA, 0xD05CC5FF, 0x00000000, 0x00000000, 0x040000E3, 0xAE15ACFF, 0x00000000, 0x00000000, 0x03ED00E3, 0xC65BCFFF, 0x00000000, 0x00000000, 0x0412011C, 0xB615A5FF, 0x00000000, 0x00000000, 0x0400011C, 0xD05CC5FF, 0x00000000, 0x00000000, 0x04000155, 0xBF159FFF, 0x00000000, 0x00000000, 0x03ED0155, 0xDC5BBDFF, 0x00000000, 0x00000000, 0x0412018E, 0xB615A5FF, 0x00000000, 0x00000000, 0x0400018E, 0xD05CC5FF, 0x00000000, 0x00000000, 0x040001C7, 0xA515BAFF, 0x00000000, 0x00000000, 0x03ED01C7, 0xBB56DEFF, 0x00000000, 0x00000000, 0x0400041C, 0x8E20F5FF, 0x00000000, 0x00000000, 0x03ED0400, 0xAC55F8FF, 0x00000000, 0x00000000, 0x001201C7, 0x14564BFF, 0x00000000, 0x00000000, 0x001203FF, 0xF85554FF, 0x00000000, 0x00000000, 0x0000041C, 0xF52072FF, 0x00000000, 0x00000000, 0x000001C7, 0x321567FF, 0x00000000, 0x00000000, 0x00000038, 0x305C3BFF, 0x00000000, 0x00000000, 0x00120000, 0x4B4F16FF, 0x00000000, 0x00000000, 0x00120071, 0x365C35FF, 0x00000000, 0x00000000, 0x000000AA, 0x305C3BFF, 0x00000000, 0x00000000, 0x001200E3, 0x245B43FF, 0x00000000, 0x00000000, 0x0000011C, 0x305C3BFF, 0x00000000, 0x00000000, 0x00120155, 0x3A5B31FF, 0x00000000, 0x00000000, 0x0000018E, 0x305C3BFF, 0x00000000, 0x00000000, 0x00120000, 0x4B4F16FF, 0x00000000, 0x00000000, 0x00000038, 0x305C3BFF, 0x00000000, 0x00000000, 0xFFEE0038, 0x4A155BFF, 0x00000000, 0x00000000, 0x00000000, 0x601339FF, 0x00000000, 0x00000000, 0x00120071, 0x365C35FF, 0x00000000, 0x00000000, 0x00000071, 0x4F1557FF, 0x00000000, 0x00000000, 0x000000AA, 0x305C3BFF, 0x00000000, 0x00000000, 0xFFEE00AA, 0x4A155BFF, 0x00000000, 0x00000000, 0x001200E3, 0x245B43FF, 0x00000000, 0x00000000, 0x000000E3, 0x411561FF, 0x00000000, 0x00000000, 0x0000011C, 0x305C3BFF, 0x00000000, 0x00000000, 0xFFEE011C, 0x4A155BFF, 0x00000000, 0x00000000, 0x00120155, 0x3A5B31FF, 0x00000000, 0x00000000, 0x00000155, 0x521554FF, 0x00000000, 0x00000000, 0x0000018E, 0x305C3BFF, 0x00000000, 0x00000000, 0xFFEE018E, 0x4A155BFF, 0x00000000, 0x00000000, 0x001201C7, 0x14564BFF, 0x00000000, 0x00000000, 0x000001C7, 0x321567FF

dlabel D_80247968_8F3788
.word 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D, 0xFE6F008C, 0xFE14FE4D, 0x008CFE21, 0xFE5300C8, 0xFE29FE75, 0x00BEFE1B, 0xFE39008C, 0xFE3FFE3F, 0x00BEFE47, 0xFE1C008C, 0xFE49FE22, 0x00C8FE51, 0xFE0C008C, 0xFE64FE12, 0x00BEFE6C, 0xFDE6008C, 0xFE75FDED, 0x00C8FE7C, 0xFDCE008C, 0xFE96FDD4, 0x00BEFE9E, 0xFDB1008C, 0xFEA0FDB7, 0x00C8FEA8, 0xFDA1008C, 0xFEBBFDA8, 0x00BEFEC3, 0xFD2D008C, 0xFF1AFD3B, 0x00BEFF1B, 0xFEF000BE, 0x0055FE84, 0x00BE00AD, 0xFE83008C, 0x00BBFEF6, 0x008C005D, 0xFFAA00C8, 0xFFCDFFBE, 0x00BEFFAE, 0xFF8800BE, 0xFFDAFF79, 0x00C8FFF5, 0xFF5B00BE, 0xFFFFFF43, 0x00C8001F, 0xFF1D00BE, 0x0030FF0E, 0x00C8004B, 0xFFBE00BE, 0xFFAEFFAA, 0x00C8FFCD, 0xFFB0008C, 0xFFD4FFC4, 0x008CFFB6, 0xFF8800BE, 0xFFDAFF8E, 0x008CFFE2, 0xFF7900C8, 0xFFF5FF7F, 0x008CFFFC, 0xFF5B00BE, 0xFFFFFF61, 0x008C0005, 0xFF4300C8, 0x001FFF49, 0x008C0027, 0xFF1D00BE, 0x0030FF23, 0x008C0038, 0xFF0E00C8, 0x004BFF14, 0x008C0053, 0xFEF000BE, 0x0055FEF6, 0x008C005D

dlabel D_80248C28_8F4A48
.word 0xD7000002, 0xFFFFFFFF, 0xE7000000, 0x00000000, 0xFC121824, 0xFF33FFFF, 0xFD100000, D_80248D90_8F4BB0, 0xF5100000, 0x07094140, 0xE6000000, 0x00000000, 0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, 0xF5100800, 0x00094140, 0xF2000000, 0x0003C07C, 0xD9FFFFFF, 0x00020000, 0x01020040, D_80247968_8F3788, 0x06000204, 0x00000406, 0x0602080A, 0x00020A04, 0x06080C0E, 0x00080E0A, 0x060C1012, 0x000C120E, 0x06101416, 0x00101612, 0x0614181A, 0x00141A16, 0x06181C1E, 0x00181E1A, 0x061C2022, 0x001C221E, 0x06202426, 0x00202622, 0x06282A2C, 0x00282C2E, 0x06060430, 0x00063032, 0x06040A34, 0x00043430, 0x060A0E36, 0x000A3634, 0x060E1238, 0x000E3836, 0x0612163A, 0x00123A38, 0x06161A3C, 0x00163C3A, 0x061A1E3E, 0x001A3E3C, 0x061E2228, 0x001E283E, 0x0622262A, 0x00222A28, 0x0626242C, 0x00262C2A, 0x01012024, D_80247968_8F3788, 0x06000204, 0x00000406, 0x0602080A, 0x00020A04, 0x06080C0E, 0x00080E0A, 0x060C1012, 0x000C120E, 0x06101416, 0x00101612, 0x0614181A, 0x00141A16, 0x06181C1E, 0x00181E1A, 0x061C2022, 0x001C221E, 0xE7000000, 0x00000000, 0xFC323864, 0xFF73FFFF, 0xD7000000, 0x00010001, 0xDF000000, 0x00000000

dlabel D_80248D90_8F4BB0
.word 0x9D1D9D1D, 0x9D1D9D1D, 0x9D1D9D1D, 0x9D1D9D1D, 0x9D1D9D1D, 0x9D1D9D1D, 0x9D1D9D1D, 0x9D1D9D1D, 0x9D1DBDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0x9D1DBDE5, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0x9D1DBDE5, 0xD6ABDEF7, 0xD6ABDEF7, 0xD6ABDEF7, 0xD6ABDEF7, 0xD6ABDEF7, 0xD6ABDEF7, 0xD6ABDEF7, 0x9D1DBDE5, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0xDEF7D6AB, 0x9D1DBDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE5BDE5, 0x33E93C6B, 0x3C6B3C6B, 0x3C6B3C6B, 0x3C6B3C6B, 0x3C6B3C6B, 0x3C6B3C6B, 0x3C6B3C6B, 0x3C6B3C6B, 0x3C6B44F1, 0x44F144F1, 0x44F15D73, 0x5D7344F1, 0x44F15D73, 0x5D7344F1, 0x44F144F1, 0x44F144F1, 0x33E93C6B, 0x44F144F1, 0x44F144F1, 0x5D735D73, 0x5D735D73, 0x44F144F1, 0x44F144F1, 0x3C6B33E9, 0x9D1D33E9, 0x3C6B44F1, 0x44F144F1, 0x44F15D73, 0x5D7344F1, 0x44F144F1, 0x44F13C6B, 0x33E99D1D, 0xBDE59D1D, 0x33E93C6B, 0x44F144F1, 0x44F144F1, 0x44F144F1, 0x44F144F1, 0x3C6B33E9, 0x9D1D9D1D, 0xBDE5BDE5, 0x9D1D33E9, 0x3C6B44F1, 0x44F144F1, 0x44F144F1, 0x44F13C6B, 0x33E99D1D, 0x9D1D9B01, 0xBDE5BDE5, 0xBDE59D1D, 0x33E93C6B, 0x44F144F1, 0x44F144F1, 0x3C6B33E9, 0x9D1DBDE5, 0x9B01C405, 0xD6ABBDE5, 0xBDE5BDE5, 0x9D1D33E9, 0x3C6B44F1, 0x44F13C6B, 0x23659D1D, 0xBDE59D1D, 0x9B01C405, 0xD6ABD6AB, 0xBDE5BDE5, 0xBDE59D1D, 0x33E93C6B, 0x3C6B2365, 0x9D1DBDE5, 0x9D1D9B01, 0xC405D48B, 0xBDE5D6AB, 0xD6ABBDE5, 0xBDE5BDE5, 0x9D1D33E9, 0x23659D1D, 0x9D1D9D1D, 0x9D1D9B01, 0xC405D48B, 0xBDE5D6AB, 0xD6ABBDE5, 0xBDE5BDE5, 0x9D1D9B01, 0x9B019B01, 0x9B019B01, 0x9B01C405, 0xD48BD48B, 0xD6ABD6AB, 0xBDE5BDE5, 0xBDE59D1D, 0x33E99B01, 0xC405C405, 0xC405C405, 0xC405D48B, 0xD48BD48B, 0xD6ABBDE5, 0xBDE5BDE5, 0x9D1D33E9, 0x3C6B33E9, 0x9B01C405, 0xC405C405, 0xD48BD48B, 0x9B01D48B, 0xBDE5BDE5, 0xBDE59D1D, 0x33E93C6B, 0x44F13C6B, 0x33E99B01, 0x9B01C405, 0xC405D48B, 0x9B01D48B, 0xBDE5BDE5, 0x9D1D33E9, 0x3C6B44F1, 0x44F144F1, 0x3C6B33E9, 0x23659B01, 0xC405D48B, 0x9B01D48B, 0xBDE59D1D, 0x33E93C6B, 0x44F144F1, 0x44F144F1, 0x44F13C6B, 0x33E99B01, 0xC405D48B, 0xD48BD48B, 0x9D1D33E9, 0x3C6B44F1, 0x44F15D73, 0x44F144F1, 0x3C6B33E9, 0x23659B01, 0xC405D48B, 0xD48BD48B, 0x33E93C6B, 0x44F144F1, 0x5D735D73, 0x44F144F1, 0x3C6B33E9, 0x9B01C405, 0xC405C405, 0xC405C405, 0x33E93C6B, 0x44F144F1, 0x5D735D73, 0x44F144F1, 0x3C6B33E9, 0x9B01C405, 0xC405C405, 0x9B019B01, 0x9D1D33E9, 0x3C6B44F1, 0x44F15D73, 0x44F13C6B, 0x33E99B01, 0xC405C405, 0xC4059B01, 0x23659D1D, 0xBDE59D1D, 0x33E93C6B, 0x44F144F1, 0x44F13C6B, 0x33E99B01, 0xC4059B01, 0x9B012365, 0x9D1DBDE5, 0xBDE5BDE5, 0x9D1D33E9, 0x3C6B44F1, 0x44F13C6B, 0x33E99B01, 0x9B0133E9, 0x23659D1D, 0xBDE5BDE5, 0xBDE5BDE5, 0xBDE59D1D, 0x33E93C6B, 0x44F144F1, 0x3C6B33E9, 0x33E92365, 0x9D1DBDE5, 0xBDE5BDE5, 0xD6ABBDE5, 0xBDE5BDE5, 0x9D1D33E9, 0x3C6B44F1, 0x3C6B3C6B, 0x33E99D1D, 0xBDE5BDE5, 0xBDE5D6AB, 0xD6ABD6AB, 0xBDE5BDE5, 0xBDE59D1D, 0x33E93C6B, 0x3C6B33E9, 0x9D1DBDE5, 0xBDE5BDE5, 0xD6ABD6AB, 0xBDE5D6AB, 0xD6ABBDE5, 0xBDE5BDE5, 0x9D1D33E9, 0x33E99D1D, 0xBDE5BDE5, 0xBDE5D6AB, 0xD6AB05EF, 0x00130005, 0x00010000, 0x00000000, 0x00080001, 0x00000000, 0x00000011, 0x000100B6, 0x00B600B6, 0x00050002, 0x00000000, 0x00000008, 0x00020000, 0x00000000, 0x00110002, 0x00B600B6, 0x00B60005, 0x00030000, 0x00000000, 0x00080003, 0x00000000, 0x00000011, 0x000300B6, 0x00B600B6, 0x00050004, 0x00000000, 0x00000008, 0x00040000, 0x00000000, 0x00110004, 0x00B600B6, 0x00B60005, 0x00050000, 0x00000000, 0x00080005, 0x00000000, 0x00000011, 0x000500B6, 0x00B600B6, 0x00050006, 0x00000000, 0x00000008, 0x00060000, 0x00000000, 0x00110006, 0x00B600B6, 0x00B60005, 0x00070000, 0x00000000, 0x00080007, 0x00000000, 0x00000011, 0x000700B6, 0x00B600B6, 0x00050008, 0x00000000, 0x00000008, 0x00080000, 0x00000000, 0x00110008, 0x00B600B6, 0x00B60005, 0x00090000, 0x00000000, 0x00080009, 0x00000000, 0x00000011, 0x000900B6, 0x00B600B6, 0x0005000A, 0x00000000, 0x00000008, 0x000A0000, 0x00000000, 0x0011000A, 0x00B600B6, 0x00B60005, 0x000B0000, 0x00000000, 0x0008000B, 0x00000000, 0x00000011, 0x000B00B6, 0x00B600B6, 0x0005000C, 0x00000000, 0x00000008, 0x000C0000, 0x00000000, 0x0011000C, 0x00B600B6, 0x00B60005, 0x000D0000, 0x00000000, 0x0008000D, 0x00000000, 0x00000011, 0x000D00B6, 0x00B600B6, 0x0005000E, 0x00000000, 0x00000008, 0x000E0000, 0x00000000, 0x0011000E, 0x00B600B6, 0x00B60005, 0x000F0000, 0x00000000, 0x0008000F, 0x00000000, 0x00000011, 0x000F00B6, 0x00B600B6, 0x00050010, 0x00000000, 0x00000008, 0x00100000, 0x00000000, 0x00110010, 0x00B600B6, 0x00B60005, 0x00110000, 0x00000000, 0x00080011, 0x00000000, 0x00000011, 0x001100B6, 0x00B600B6, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00010001, 0x00030000

dlabel D_80249484_8F52A4
.word 0x00000043, 0x00000003, EnableModel, 0xFE363C84, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C85, 0x00000001, 0x00000043, 0x00000006, RotateModel, 0xFE363C86, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000006, RotateModel, 0xFE363C87, 0x00000000, 0x00000000, 0x00000000, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802494FC_8F531C
.word 0x00000024, 0x00000002, 0xFE363C89, 0xFE363C87, 0x00000024, 0x00000002, 0xFE363C88, 0xFE363C86, 0x00000024, 0x00000002, 0xFE363C87, 0xFE363C85, 0x00000024, 0x00000002, 0xFE363C86, 0xFE363C84, 0x00000008, 0x00000001, 0x00000046, 0x00000043, 0x00000003, EnableModel, 0xFE363C86, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000043, 0x00000003, EnableModel, 0xFE363C86, 0x00000001, 0x00000057, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x000000B4, 0x00000014, 0x00000002, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000006, RotateModel, 0xFE363C88, 0xFE363C80, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000043, 0x00000006, RotateModel, 0xFE363C89, 0xFE363C80, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000008, 0x00000001, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000043, 0x00000003, EnableModel, 0xFE363C87, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000004, kmr_20_UnkFunc35, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, D_802499FC_8F581C, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0xFE363C81, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C83, 0x00000043, 0x00000001, kmr_20_DoesPlayerNeedSleep, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0xFE363C80, 0x00000013, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0xFE363C88, 0x00000043, 0x00000002, ShowChoice, 0x001E0006, 0x00000008, 0x00000001, 0x00000003, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000006, ContinueSpeech, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0xFE363C89, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000006, ContinueSpeech, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0xFE363C8A, 0x00000043, 0x00000002, SetPlayerJumpscale, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000001, 0x00000043, 0x00000001, kmr_20_Call800E9894, 0x0000000B, 0x00000002, 0xFE363C84, 0x00000000, 0x00000044, 0x00000001, D_802494FC_8F531C, 0x00000013, 0x00000000, 0x00000043, 0x00000002, kmr_20_GetPartnerCall800EB168, 0xFE363C8A, 0x00000008, 0x00000001, 0x00000014, 0x00000046, 0x00000001, D_80249A5C_8F587C, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x000000FF, 0x0000003C, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000003, kmr_20_UnkFunc32, 0x00000003, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, FullyRestoreHPandFP, 0x00000043, 0x00000001, FullyRestoreSP, 0x0000000B, 0x00000002, 0xFE363C84, 0x00000000, 0x00000044, 0x00000001, D_80249484_8F52A4, 0x00000013, 0x00000000, 0x00000043, 0x00000002, kmr_20_Call800EB168, 0xFE363C8A, 0x00000008, 0x00000001, 0x0000002D, 0x00000043, 0x00000005, MakeLerp, 0x000000FF, 0x00000000, 0x0000001E, 0x00000000, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000003, kmr_20_UnkFunc32, 0x00000000, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x00000069, 0x00000046, 0x00000001, D_80249EFC_8F5D1C, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000004, SetNpcFlagBits, 0xFFFFFFFF, 0x00000100, 0x00000000, 0x00000043, 0x00000006, SpeakToPlayer, 0xFFFFFFFF, 0x00830004, 0x00830001, 0x00000000, 0xFE363C8B, 0x00000043, 0x00000001, kmr_20_Call800E98C4SyncStatusMenu, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802499FC_8F581C
.word 0x00000024, 0x00000002, 0xFE363C80, 0x000B0106, 0x00000024, 0x00000002, 0xFE363C88, 0x000B0107, 0x00000024, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C82, 0x00000000, 0x00000024, 0x00000002, 0xFE363C83, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80249A5C_8F587C
.word 0x00000044, 0x00000001, 0x80242D4C, 0x00000043, 0x00000002, SetPlayerSpeed, 0xF24A8680, 0x00000043, 0x00000004, PlayerMoveTo, 0xFFFFFFE4, 0xFFFFFF9C, 0x00000000, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000012C, 0x00000000, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000006, 0x00000043, 0x00000003, kmr_20_CamSetFOV, 0x00000000, 0x00000028, 0x00000043, 0x00000004, SetCamType, 0x00000000, 0x00000004, 0x00000000, 0x00000043, 0x00000004, SetCamPitch, 0x00000000, 0x00000023, 0xFFFFFFF6, 0x00000043, 0x00000003, SetCamDistance, 0x00000000, 0x00000087, 0x00000043, 0x00000004, SetCamPosA, 0x00000000, 0xFFFFFF56, 0x00000000, 0x00000043, 0x00000004, SetCamPosB, 0x00000000, 0xFFFFFF93, 0xFFFFFFB4, 0x00000043, 0x00000004, SetCamPosC, 0x00000000, 0x00000000, 0x00000078, 0x00000043, 0x00000003, SetCamSpeed, 0x00000000, 0xF24BE280, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x00000099, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000009A, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000009B, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000009C, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000009D, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000009E, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x0000009F, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000A0, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000A1, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000A2, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x000000A3, 0x00000000, 0x00000057, 0x00000000, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C84, 0xFE363C85, 0xFE363C86, 0x00000043, 0x00000005, MakeLerp, 0x0000001E, 0x00000055, 0x00000006, 0x00000000, 0x00000005, 0x00000001, 0x00000006, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000004, SetPlayerPos, 0xFE363C84, 0xFE363C80, 0xFE363C86, 0x00000006, 0x00000000, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000001, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000043, 0x00000002, func_802D286C, 0x00000800, 0x00000043, 0x00000007, func_802D2520, 0x00010002, 0x00000005, 0x00000007, 0x00000001, 0x00000001, 0x00000000, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x0000003C, 0x00000043, 0x00000002, SetPlayerAnimation, 0x0008001D, 0x00000057, 0x00000000, 0x00000043, 0x00000001, func_8024159C_8ED3BC, 0x00000008, 0x00000001, 0x0000004B, 0x00000056, 0x00000000, 0x00000008, 0x00000001, 0x00000041, 0x00000043, 0x00000003, kmr_20_CamSetFOV, 0x00000000, 0x00000019, 0x00000043, 0x00000004, GetPlayerPos, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000043, 0x00000005, UseSettingsFrom, 0x00000000, 0xFE363C80, 0xFE363C81, 0xFE363C82, 0x00000008, 0x00000001, 0x00000001, 0x00000043, 0x00000004, PanToTarget, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000003, EnableGroup, 0x00000099, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x0000009A, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x0000009B, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x0000009C, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x0000009D, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x0000009E, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x0000009F, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x000000A0, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x000000A1, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x000000A2, 0x00000001, 0x00000043, 0x00000003, EnableGroup, 0x000000A3, 0x00000001, 0x00000057, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80249EFC_8F5D1C
.word 0x00000043, 0x00000001, func_802415C4_8ED3E4, 0x00000043, 0x00000002, SetPlayerAnimation, 0x00010002, 0x00000043, 0x00000002, HidePlayerShadow, 0x00000000, 0x00000043, 0x00000007, func_802D2520, 0x00010002, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000043, 0x00000004, SetPlayerPos, 0xFFFFFFD3, 0x0000001E, 0xFFFFFFBA, 0x00000043, 0x00000003, InterpPlayerYaw, 0x0000005A, 0x00000000, 0x00000043, 0x00000005, SetNpcPos, 0xFFFFFFFC, 0xFFFFFFB5, 0x0000001E, 0xFFFFFFBA, 0x00000043, 0x00000004, InterpNpcYaw, 0xFFFFFFFC, 0x0000005A, 0x00000000, 0x00000008, 0x00000001, 0x00000005, 0x00000044, 0x00000001, 0x80242C40, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80249FE4_8F5E04
.word 0x00000043, 0x00000001, kmr_20_WaitForPlayerToLand, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000043, 0x00000004, kmr_20_UnkFunc35, 0x00000000, 0x00000000, 0x00000000, 0x00000046, 0x00000001, D_802499FC_8F581C, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000000, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000024, 0x00000002, 0xFE363C89, 0xFE363C81, 0x00000024, 0x00000002, 0xFE363C8A, 0xFE363C82, 0x00000024, 0x00000002, 0xFE363C8B, 0xFE363C83, 0x00000043, 0x00000001, kmr_20_DoesPlayerNeedSleep, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000000, 0x00000024, 0x00000002, 0xFE363C88, 0xFE363C80, 0x00000013, 0x00000000, 0x00000043, 0x00000004, ShowMessageAtScreenPos, 0xFE363C88, 0x000000A0, 0x00000028, 0x00000043, 0x00000002, ShowChoice, 0x001E0007, 0x00000008, 0x00000001, 0x0000000A, 0x0000000A, 0x00000002, 0xFE363C80, 0x00000001, 0x00000043, 0x00000001, CloseMessage, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, CloseMessage, 0x00000043, 0x00000002, SetPlayerJumpscale, 0x00000001, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000001, 0x00000043, 0x00000001, kmr_20_Call800E9894, 0x0000000B, 0x00000002, 0xFE363C84, 0x00000000, 0x00000044, 0x00000001, D_802494FC_8F531C, 0x00000013, 0x00000000, 0x00000043, 0x00000002, kmr_20_GetPartnerCall800EB168, 0xFE363C8A, 0x00000008, 0x00000001, 0x00000014, 0x00000045, 0x00000002, D_80249A5C_8F587C, 0xFE363C89, 0x00000043, 0x00000002, kmr_20_AwaitScriptComplete, 0xFE363C89, 0x00000056, 0x00000000, 0x00000043, 0x00000005, MakeLerp, 0x00000000, 0x000000FF, 0x0000003C, 0x00000000, 0x00000003, 0x00000001, 0x00000000, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000003, kmr_20_UnkFunc32, 0x00000003, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000000, 0x00000013, 0x00000000, 0x00000043, 0x00000001, FullyRestoreHPandFP, 0x00000043, 0x00000001, FullyRestoreSP, 0x0000000B, 0x00000002, 0xFE363C84, 0x00000000, 0x00000044, 0x00000001, D_80249484_8F52A4, 0x00000013, 0x00000000, 0x00000043, 0x00000002, kmr_20_Call800EB168, 0xFE363C8A, 0x00000008, 0x00000001, 0x0000001E, 0x00000043, 0x00000005, MakeLerp, 0x000000FF, 0x00000000, 0x0000001E, 0x00000000, 0x00000003, 0x00000001, 0x00000001, 0x00000043, 0x00000001, UpdateLerp, 0x00000043, 0x00000003, kmr_20_UnkFunc32, 0x00000000, 0xFE363C80, 0x00000008, 0x00000001, 0x00000001, 0x0000000A, 0x00000002, 0xFE363C81, 0x00000001, 0x00000004, 0x00000001, 0x00000001, 0x00000013, 0x00000000, 0x00000057, 0x00000000, 0x00000008, 0x00000001, 0x0000005A, 0x00000045, 0x00000002, D_80249EFC_8F5D1C, 0xFE363C89, 0x00000043, 0x00000002, kmr_20_AwaitScriptComplete, 0xFE363C89, 0x00000043, 0x00000002, DisablePlayerPhysics, 0x00000000, 0x00000043, 0x00000001, kmr_20_Call800E98C4SyncStatusMenu, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000047, 0x00000005, D_80249FE4_8F5E04, 0x00000100, 0x00000023, 0x00000001, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
