.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel filemenu_main_update
/* 16738C 80246B2C 3C058015 */  lui       $a1, %hi(gWindowStyles)
/* 167390 80246B30 24A5F150 */  addiu     $a1, $a1, %lo(gWindowStyles)
/* 167394 80246B34 3C068025 */  lui       $a2, %hi(D_8024BDA8)
/* 167398 80246B38 24C6BDA8 */  addiu     $a2, $a2, %lo(D_8024BDA8)
/* 16739C 80246B3C 24C20070 */  addiu     $v0, $a2, 0x70
/* 1673A0 80246B40 ACA600E0 */  sw        $a2, 0xe0($a1)
/* 1673A4 80246B44 ACA600E4 */  sw        $a2, 0xe4($a1)
/* 1673A8 80246B48 ACA600E8 */  sw        $a2, 0xe8($a1)
/* 1673AC 80246B4C ACA600EC */  sw        $a2, 0xec($a1)
/* 1673B0 80246B50 ACA200F0 */  sw        $v0, 0xf0($a1)
/* 1673B4 80246B54 ACA200F4 */  sw        $v0, 0xf4($a1)
/* 1673B8 80246B58 ACA200F8 */  sw        $v0, 0xf8($a1)
/* 1673BC 80246B5C ACA200FC */  sw        $v0, 0xfc($a1)
/* 1673C0 80246B60 90830003 */  lbu       $v1, 3($a0)
/* 1673C4 80246B64 24020001 */  addiu     $v0, $zero, 1
/* 1673C8 80246B68 10620011 */  beq       $v1, $v0, .L80246BB0
/* 1673CC 80246B6C 28620002 */   slti     $v0, $v1, 2
/* 1673D0 80246B70 10400005 */  beqz      $v0, .L80246B88
/* 1673D4 80246B74 24020002 */   addiu    $v0, $zero, 2
/* 1673D8 80246B78 10600009 */  beqz      $v1, .L80246BA0
/* 1673DC 80246B7C 24C20038 */   addiu    $v0, $a2, 0x38
/* 1673E0 80246B80 08091AF9 */  j         .L80246BE4
/* 1673E4 80246B84 00000000 */   nop
.L80246B88:
/* 1673E8 80246B88 1062000E */  beq       $v1, $v0, .L80246BC4
/* 1673EC 80246B8C 24020003 */   addiu    $v0, $zero, 3
/* 1673F0 80246B90 10620011 */  beq       $v1, $v0, .L80246BD8
/* 1673F4 80246B94 24C20038 */   addiu    $v0, $a2, 0x38
/* 1673F8 80246B98 08091AF9 */  j         .L80246BE4
/* 1673FC 80246B9C 00000000 */   nop
.L80246BA0:
/* 167400 80246BA0 ACA200E0 */  sw        $v0, 0xe0($a1)
/* 167404 80246BA4 24C200A8 */  addiu     $v0, $a2, 0xa8
/* 167408 80246BA8 08091AF9 */  j         .L80246BE4
/* 16740C 80246BAC ACA200F0 */   sw       $v0, 0xf0($a1)
.L80246BB0:
/* 167410 80246BB0 24C20038 */  addiu     $v0, $a2, 0x38
/* 167414 80246BB4 ACA200E4 */  sw        $v0, 0xe4($a1)
/* 167418 80246BB8 24C200A8 */  addiu     $v0, $a2, 0xa8
/* 16741C 80246BBC 08091AF9 */  j         .L80246BE4
/* 167420 80246BC0 ACA200F4 */   sw       $v0, 0xf4($a1)
.L80246BC4:
/* 167424 80246BC4 24C20038 */  addiu     $v0, $a2, 0x38
/* 167428 80246BC8 ACA200E8 */  sw        $v0, 0xe8($a1)
/* 16742C 80246BCC 24C200A8 */  addiu     $v0, $a2, 0xa8
/* 167430 80246BD0 08091AF9 */  j         .L80246BE4
/* 167434 80246BD4 ACA200F8 */   sw       $v0, 0xf8($a1)
.L80246BD8:
/* 167438 80246BD8 ACA200EC */  sw        $v0, 0xec($a1)
/* 16743C 80246BDC 24C200A8 */  addiu     $v0, $a2, 0xa8
/* 167440 80246BE0 ACA200FC */  sw        $v0, 0xfc($a1)
.L80246BE4:
/* 167444 80246BE4 3C028025 */  lui       $v0, %hi(filemenu_menus)
/* 167448 80246BE8 8C429B84 */  lw        $v0, %lo(filemenu_menus)($v0)
/* 16744C 80246BEC 80430004 */  lb        $v1, 4($v0)
/* 167450 80246BF0 24020004 */  addiu     $v0, $zero, 4
/* 167454 80246BF4 14620009 */  bne       $v1, $v0, .L80246C1C
/* 167458 80246BF8 24020001 */   addiu    $v0, $zero, 1
/* 16745C 80246BFC 3C038025 */  lui       $v1, %hi(filemenu_loadedFileIdx)
/* 167460 80246C00 8C63C094 */  lw        $v1, %lo(filemenu_loadedFileIdx)($v1)
/* 167464 80246C04 10620015 */  beq       $v1, $v0, .L80246C5C
/* 167468 80246C08 28620002 */   slti     $v0, $v1, 2
/* 16746C 80246C0C 50400005 */  beql      $v0, $zero, .L80246C24
/* 167470 80246C10 24020002 */   addiu    $v0, $zero, 2
/* 167474 80246C14 10600009 */  beqz      $v1, .L80246C3C
/* 167478 80246C18 00000000 */   nop
.L80246C1C:
/* 16747C 80246C1C 03E00008 */  jr        $ra
/* 167480 80246C20 00000000 */   nop
.L80246C24:
/* 167484 80246C24 10620015 */  beq       $v1, $v0, .L80246C7C
/* 167488 80246C28 24020003 */   addiu    $v0, $zero, 3
/* 16748C 80246C2C 1062001B */  beq       $v1, $v0, .L80246C9C
/* 167490 80246C30 00000000 */   nop
/* 167494 80246C34 03E00008 */  jr        $ra
/* 167498 80246C38 00000000 */   nop
.L80246C3C:
/* 16749C 80246C3C 3C038015 */  lui       $v1, %hi(gWindowStyles)
/* 1674A0 80246C40 2463F150 */  addiu     $v1, $v1, %lo(gWindowStyles)
/* 1674A4 80246C44 3C028025 */  lui       $v0, %hi(D_8024BDE0)
/* 1674A8 80246C48 2442BDE0 */  addiu     $v0, $v0, %lo(D_8024BDE0)
/* 1674AC 80246C4C AC6200E0 */  sw        $v0, 0xe0($v1)
/* 1674B0 80246C50 24420070 */  addiu     $v0, $v0, 0x70
/* 1674B4 80246C54 03E00008 */  jr        $ra
/* 1674B8 80246C58 AC6200F0 */   sw       $v0, 0xf0($v1)
.L80246C5C:
/* 1674BC 80246C5C 3C038015 */  lui       $v1, %hi(gWindowStyles)
/* 1674C0 80246C60 2463F150 */  addiu     $v1, $v1, %lo(gWindowStyles)
/* 1674C4 80246C64 3C028025 */  lui       $v0, %hi(D_8024BDE0)
/* 1674C8 80246C68 2442BDE0 */  addiu     $v0, $v0, %lo(D_8024BDE0)
/* 1674CC 80246C6C AC6200E4 */  sw        $v0, 0xe4($v1)
/* 1674D0 80246C70 24420070 */  addiu     $v0, $v0, 0x70
/* 1674D4 80246C74 03E00008 */  jr        $ra
/* 1674D8 80246C78 AC6200F4 */   sw       $v0, 0xf4($v1)
.L80246C7C:
/* 1674DC 80246C7C 3C038015 */  lui       $v1, %hi(gWindowStyles)
/* 1674E0 80246C80 2463F150 */  addiu     $v1, $v1, %lo(gWindowStyles)
/* 1674E4 80246C84 3C028025 */  lui       $v0, %hi(D_8024BDE0)
/* 1674E8 80246C88 2442BDE0 */  addiu     $v0, $v0, %lo(D_8024BDE0)
/* 1674EC 80246C8C AC6200E8 */  sw        $v0, 0xe8($v1)
/* 1674F0 80246C90 24420070 */  addiu     $v0, $v0, 0x70
/* 1674F4 80246C94 03E00008 */  jr        $ra
/* 1674F8 80246C98 AC6200F8 */   sw       $v0, 0xf8($v1)
.L80246C9C:
/* 1674FC 80246C9C 3C038015 */  lui       $v1, %hi(gWindowStyles)
/* 167500 80246CA0 2463F150 */  addiu     $v1, $v1, %lo(gWindowStyles)
/* 167504 80246CA4 3C028025 */  lui       $v0, %hi(D_8024BDE0)
/* 167508 80246CA8 2442BDE0 */  addiu     $v0, $v0, %lo(D_8024BDE0)
/* 16750C 80246CAC AC6200EC */  sw        $v0, 0xec($v1)
/* 167510 80246CB0 24420070 */  addiu     $v0, $v0, 0x70
/* 167514 80246CB4 03E00008 */  jr        $ra
/* 167518 80246CB8 AC6200FC */   sw       $v0, 0xfc($v1)
