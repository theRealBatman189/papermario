.include "macro.inc"

.section .data

dlabel trd_00_varTable
.word 0x00000000

dlabel D_80241344_99AFB4
.word 0x0000004D, 0x00000001, 0x00000000, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000002, 0x00000008, 0x00000001, 0x00000028, 0x00000043, 0x00000004, ShowGotItem, 0xFE363C80, 0x00000000, 0x00000000, 0x00000043, 0x00000002, SetTimeFreezeMode, 0x00000000, 0x00000002, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802413AC_99B01C
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xFE363C80, 0xFE363C8A, 0x0000000B, 0x00000002, 0xFE363C8A, 0x00000000, 0x00000046, 0x00000001, D_80241344_99AFB4, 0x00000013, 0x00000000, 0x00000014, 0x00000001, 0xFE363C8B, 0x00000016, 0x00000001, 0x00000000, 0x00000043, 0x00000003, AddItem, 0xFE363C8A, 0xFE363C80, 0x00000016, 0x00000001, 0x00000001, 0x00000043, 0x00000002, AddKeyItem, 0xFE363C8A, 0x00000016, 0x00000001, 0x00000002, 0x00000043, 0x00000003, AddBadge, 0xFE363C8A, 0xFE363C80, 0x00000023, 0x00000000, 0x00000008, 0x00000001, 0x0000000F, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_8024148C_99B0FC
.word 0x00000024, 0x00000002, 0xFE363C8A, 0x00000104, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000002, 0x00000024, 0x00000002, 0xF8405E01, 0x00000001, 0x00000046, 0x00000001, D_802413AC_99B01C, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_802414D8_99B148
.word 0x00000024, 0x00000002, 0xFE363C8A, 0x00000135, 0x00000024, 0x00000002, 0xFE363C8B, 0x00000002, 0x00000024, 0x00000002, 0xF8405E02, 0x00000001, 0x00000046, 0x00000001, D_802413AC_99B01C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000008, MakeEntity, 0x802EAE30, 0x0000032A, 0x00000000, 0xFFFFFFCE, 0x00000000, 0x00000000, 0x80000000, 0x00000043, 0x00000002, AssignChestFlag, 0xF8405E01, 0x00000043, 0x00000002, AssignScript, D_8024148C_99B0FC, 0x00000043, 0x00000008, MakeEntity, 0x802EAE30, 0xFFFFFD12, 0x000000C8, 0xFFFFFF83, 0x00000000, 0x00000000, 0x80000000, 0x00000043, 0x00000002, AssignChestFlag, 0xF8405E02, 0x00000043, 0x00000002, AssignScript, D_802414D8_99B148, 0x00000043, 0x00000007, MakeEntity, Entity_SavePoint, 0xFFFFFC68, 0x0000003C, 0x00000050, 0x00000000, 0x80000000, 0x00000043, 0x00000007, MakeEntity, Entity_SavePoint, 0x00000145, 0x0000003C, 0x000000DC, 0x00000000, 0x80000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000
