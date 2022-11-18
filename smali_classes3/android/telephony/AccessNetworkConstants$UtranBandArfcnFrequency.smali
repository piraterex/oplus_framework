.class final enum Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
.super Ljava/lang/Enum;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "UtranBandArfcnFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_1:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_10:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_11:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_12:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_13:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_14:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_19:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_2:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_20:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_21:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_22:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_25:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_3:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_4:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_5:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_6:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_7:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_8:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_9:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_A:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_B:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_C:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_D:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_E:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

.field public static final enum blacklist UTRAN_ARFCN_FREQUENCY_BAND_F:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;


# instance fields
.field blacklist band:I

.field blacklist downlinkOffset:I

.field blacklist downlinkRangeFirst:I

.field blacklist downlinkRangeLast:I

.field blacklist uplinkOffset:I

.field blacklist uplinkRangeFirst:I

.field blacklist uplinkRangeLast:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 53

    .line 364
    new-instance v10, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v1, "UTRAN_ARFCN_FREQUENCY_BAND_1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x2942

    const/16 v6, 0x2a56

    const/4 v7, 0x0

    const/16 v8, 0x258c

    const/16 v9, 0x26a0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v10, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_1:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 365
    new-instance v0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v12, "UTRAN_ARFCN_FREQUENCY_BAND_2"

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x25be

    const/16 v17, 0x26d2

    const/16 v18, 0x0

    const/16 v19, 0x242e

    const/16 v20, 0x2542

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_2:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 366
    new-instance v1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v22, "UTRAN_ARFCN_FREQUENCY_BAND_3"

    const/16 v23, 0x2

    const/16 v24, 0x3

    const v25, 0x180858

    const/16 v26, 0x48a

    const/16 v27, 0x5e9

    const v28, 0x174508

    const/16 v29, 0x3a9

    const/16 v30, 0x508

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v30}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v1, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_3:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 367
    new-instance v2, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v12, "UTRAN_ARFCN_FREQUENCY_BAND_4"

    const/4 v13, 0x3

    const/4 v14, 0x4

    const v15, 0x1b8ac8

    const/16 v16, 0x601

    const/16 v17, 0x6ca

    const v18, 0x162010

    const/16 v19, 0x520

    const/16 v20, 0x5e9

    move-object v11, v2

    invoke-direct/range {v11 .. v20}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v2, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_4:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 368
    new-instance v3, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v22, "UTRAN_ARFCN_FREQUENCY_BAND_5"

    const/16 v23, 0x4

    const/16 v24, 0x5

    const/16 v25, 0x0

    const/16 v26, 0x1105

    const/16 v27, 0x116a

    const/16 v28, 0x0

    const/16 v29, 0x1024

    const/16 v30, 0x1089

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v30}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v3, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_5:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 369
    new-instance v4, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v12, "UTRAN_ARFCN_FREQUENCY_BAND_6"

    const/4 v13, 0x5

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v16, 0x1123

    const/16 v17, 0x113d

    const/16 v18, 0x0

    const/16 v19, 0x1042

    const/16 v20, 0x105c

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v4, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_6:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 370
    new-instance v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v22, "UTRAN_ARFCN_FREQUENCY_BAND_7"

    const/16 v23, 0x6

    const/16 v24, 0x7

    const v25, 0x213018

    const/16 v26, 0x8bd

    const/16 v27, 0xa03

    const v28, 0x200b20

    const/16 v29, 0x7dc

    const/16 v30, 0x922

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v30}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v5, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_7:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 371
    new-instance v6, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v12, "UTRAN_ARFCN_FREQUENCY_BAND_8"

    const/4 v13, 0x7

    const/16 v14, 0x8

    const v15, 0x53020

    const/16 v16, 0xb79

    const/16 v17, 0xc10

    const v18, 0x53020

    const/16 v19, 0xa98

    const/16 v20, 0xb2f

    move-object v11, v6

    invoke-direct/range {v11 .. v20}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v6, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_8:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 372
    new-instance v7, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v22, "UTRAN_ARFCN_FREQUENCY_BAND_9"

    const/16 v23, 0x8

    const/16 v24, 0x9

    const/16 v25, 0x0

    const/16 v26, 0x246f

    const/16 v27, 0x266d

    const/16 v28, 0x0

    const/16 v29, 0x223a

    const/16 v30, 0x22d0

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v30}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v7, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_9:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 373
    new-instance v8, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v12, "UTRAN_ARFCN_FREQUENCY_BAND_10"

    const/16 v13, 0x9

    const/16 v14, 0xa

    const v15, 0x16bc50

    const/16 v16, 0xc28

    const/16 v17, 0xd3c

    const v18, 0x115198

    const/16 v19, 0xb47

    const/16 v20, 0xc5b

    move-object v11, v8

    invoke-direct/range {v11 .. v20}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v8, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_10:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 374
    new-instance v9, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v22, "UTRAN_ARFCN_FREQUENCY_BAND_11"

    const/16 v23, 0xa

    const/16 v24, 0xb

    const v25, 0xb3b00

    const/16 v26, 0xe80

    const/16 v27, 0xecb

    const v28, 0xb2f48

    const/16 v29, 0xd9f

    const/16 v30, 0xdea

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v30}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v9, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_11:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 375
    new-instance v21, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v12, "UTRAN_ARFCN_FREQUENCY_BAND_12"

    const/16 v13, 0xb

    const/16 v14, 0xc

    const v15, -0x9088

    const/16 v16, 0xf02

    const/16 v17, 0xf3f

    const/16 v18, -0x55f0

    const/16 v19, 0xe21

    const/16 v20, 0xe5e

    move-object/from16 v11, v21

    invoke-direct/range {v11 .. v20}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v21, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_12:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 376
    new-instance v11, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v23, "UTRAN_ARFCN_FREQUENCY_BAND_13"

    const/16 v24, 0xc

    const/16 v25, 0xd

    const v26, -0xd6d8

    const/16 v27, 0xfb1

    const/16 v28, 0xfcb

    const/16 v29, 0x5208

    const/16 v30, 0xed0

    const/16 v31, 0xeea

    move-object/from16 v22, v11

    invoke-direct/range {v22 .. v31}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v11, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_13:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 377
    new-instance v12, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v33, "UTRAN_ARFCN_FREQUENCY_BAND_14"

    const/16 v34, 0xd

    const/16 v35, 0xe

    const v36, -0xf618

    const/16 v37, 0x1015

    const/16 v38, 0x102f

    const/16 v39, 0x2ee0

    const/16 v40, 0xf34

    const/16 v41, 0xf4e

    move-object/from16 v32, v12

    invoke-direct/range {v32 .. v41}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v12, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_14:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 378
    new-instance v13, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v23, "UTRAN_ARFCN_FREQUENCY_BAND_19"

    const/16 v24, 0xe

    const/16 v25, 0x13

    const v26, 0xb3718

    const/16 v27, 0x2c8

    const/16 v28, 0x2fb

    const v29, 0xbbfd0

    const/16 v30, 0x138

    const/16 v31, 0x16b

    move-object/from16 v22, v13

    invoke-direct/range {v22 .. v31}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v13, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_19:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 379
    new-instance v14, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v33, "UTRAN_ARFCN_FREQUENCY_BAND_20"

    const/16 v34, 0xf

    const/16 v35, 0x14

    const v36, -0x1a9c8

    const/16 v37, 0x11a0

    const/16 v38, 0x121e

    const/16 v39, -0x59d8

    const/16 v40, 0x10bf

    const/16 v41, 0x113d

    move-object/from16 v32, v14

    invoke-direct/range {v32 .. v41}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v14, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_20:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 380
    new-instance v15, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v23, "UTRAN_ARFCN_FREQUENCY_BAND_21"

    const/16 v24, 0x10

    const/16 v25, 0x15

    const v26, 0x143bb0

    const/16 v27, 0x35e

    const/16 v28, 0x390

    const v29, 0x14b8b0

    const/16 v30, 0x1ce

    const/16 v31, 0x200

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v31}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v15, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_21:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 381
    new-instance v16, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v33, "UTRAN_ARFCN_FREQUENCY_BAND_22"

    const/16 v34, 0x11

    const/16 v35, 0x16

    const v36, 0x275e20

    const/16 v37, 0x1236

    const/16 v38, 0x13ae

    const v39, 0x268748

    const/16 v40, 0x1155

    const/16 v41, 0x12cd

    move-object/from16 v32, v16

    invoke-direct/range {v32 .. v41}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v16, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_22:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 382
    new-instance v17, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v23, "UTRAN_ARFCN_FREQUENCY_BAND_25"

    const/16 v24, 0x12

    const/16 v25, 0x19

    const v26, 0xde2b0

    const/16 v27, 0x13f8

    const/16 v28, 0x1525

    const v29, 0xd59f8

    const/16 v30, 0x1317

    const/16 v31, 0x1444

    move-object/from16 v22, v17

    invoke-direct/range {v22 .. v31}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v17, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_25:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 383
    new-instance v18, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v33, "UTRAN_ARFCN_FREQUENCY_BAND_A"

    const/16 v34, 0x13

    const/16 v35, 0x65

    const/16 v36, 0x0

    const/16 v37, 0x2746

    const/16 v38, 0x2789

    const/16 v39, 0x0

    const/16 v40, 0x2520

    const/16 v41, 0x257c

    move-object/from16 v32, v18

    invoke-direct/range {v32 .. v41}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v18, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_A:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 384
    new-instance v19, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v23, "UTRAN_ARFCN_FREQUENCY_BAND_B"

    const/16 v24, 0x14

    const/16 v25, 0x66

    const/16 v26, 0x0

    const/16 v27, 0x25b6

    const/16 v28, 0x26da

    const/16 v29, 0x0

    const/16 v30, 0x2426

    const/16 v31, 0x254a

    move-object/from16 v22, v19

    invoke-direct/range {v22 .. v31}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v19, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_B:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 385
    new-instance v20, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v33, "UTRAN_ARFCN_FREQUENCY_BAND_C"

    const/16 v34, 0x15

    const/16 v35, 0x67

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x2552

    const/16 v41, 0x25ae

    move-object/from16 v32, v20

    invoke-direct/range {v32 .. v41}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v20, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_C:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 386
    new-instance v32, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v23, "UTRAN_ARFCN_FREQUENCY_BAND_D"

    const/16 v24, 0x16

    const/16 v25, 0x68

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x3236

    const/16 v31, 0x3328

    move-object/from16 v22, v32

    invoke-direct/range {v22 .. v31}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v32, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_D:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 387
    new-instance v22, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v34, "UTRAN_ARFCN_FREQUENCY_BAND_E"

    const/16 v35, 0x17

    const/16 v36, 0x69

    const/16 v40, 0x0

    const/16 v41, 0x2cf0

    const/16 v42, 0x2edc

    move-object/from16 v33, v22

    invoke-direct/range {v33 .. v42}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v22, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_E:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 388
    new-instance v23, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const-string v44, "UTRAN_ARFCN_FREQUENCY_BAND_F"

    const/16 v45, 0x18

    const/16 v46, 0x6a

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x24bc

    const/16 v52, 0x257c

    move-object/from16 v43, v23

    invoke-direct/range {v43 .. v52}, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v23, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->UTRAN_ARFCN_FREQUENCY_BAND_F:Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    .line 362
    move-object/from16 v24, v15

    const/16 v15, 0x19

    new-array v15, v15, [Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    const/16 v25, 0x0

    aput-object v10, v15, v25

    const/4 v10, 0x1

    aput-object v0, v15, v10

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v21, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v24, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v20, v15, v0

    const/16 v0, 0x16

    aput-object v32, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    sput-object v15, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIIIIII)V
    .locals 0
    .param p3, "band"    # I
    .param p4, "downlinkOffsetKhz"    # I
    .param p5, "downlinkRangeFirst"    # I
    .param p6, "downlinkRangeLast"    # I
    .param p7, "uplinkOffsetKhz"    # I
    .param p8, "uplinkRangeFirst"    # I
    .param p9, "uplinkRangeLast"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII)V"
        }
    .end annotation

    .line 392
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 393
    iput p3, p0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->band:I

    .line 394
    iput p4, p0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkOffset:I

    .line 395
    iput p5, p0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeFirst:I

    .line 396
    iput p6, p0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->downlinkRangeLast:I

    .line 397
    iput p7, p0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkOffset:I

    .line 398
    iput p8, p0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeFirst:I

    .line 399
    iput p9, p0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->uplinkRangeLast:I

    .line 400
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 362
    const-class v0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    return-object v0
.end method

.method public static blacklist values()[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;
    .locals 1

    .line 362
    sget-object v0, Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    invoke-virtual {v0}, [Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;

    return-object v0
.end method
