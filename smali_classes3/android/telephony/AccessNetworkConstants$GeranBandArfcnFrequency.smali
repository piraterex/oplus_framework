.class final enum Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
.super Ljava/lang/Enum;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/AccessNetworkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GeranBandArfcnFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

.field public static final enum blacklist GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;


# instance fields
.field blacklist arfcnOffset:I

.field blacklist arfcnRangeFirst:I

.field blacklist arfcnRangeLast:I

.field blacklist band:I

.field blacklist downlinkOffset:I

.field blacklist uplinkFrequencyFirst:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 28

    .line 218
    new-instance v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v1, "GERAN_ARFCN_FREQUENCY_BAND_450"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x6e028

    const/16 v5, 0x103

    const/16 v6, 0x103

    const/16 v7, 0x125

    const/16 v8, 0xa

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v9, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_450:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 219
    new-instance v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_480"

    const/4 v12, 0x1

    const/4 v13, 0x4

    const v14, 0x74f18

    const/16 v15, 0x132

    const/16 v16, 0x132

    const/16 v17, 0x154

    const/16 v18, 0xa

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_480:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 220
    new-instance v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v20, "GERAN_ARFCN_FREQUENCY_BAND_850"

    const/16 v21, 0x2

    const/16 v22, 0x8

    const v23, 0xc9388

    const/16 v24, 0x80

    const/16 v25, 0x80

    const/16 v26, 0xfb

    const/16 v27, 0x2d

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v1, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_850:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 221
    new-instance v2, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_DCS1800"

    const/4 v12, 0x3

    const/16 v13, 0xc

    const v14, 0x1a1878

    const/16 v15, 0x200

    const/16 v16, 0x200

    const/16 v17, 0x375

    const/16 v18, 0x5f

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v2, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_DCS1800:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 222
    new-instance v3, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v20, "GERAN_ARFCN_FREQUENCY_BAND_PCS1900"

    const/16 v21, 0x4

    const/16 v22, 0xd

    const v23, 0x1c3b58

    const/16 v24, 0x200

    const/16 v25, 0x200

    const/16 v26, 0x32a

    const/16 v27, 0x50

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v3, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_PCS1900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 223
    new-instance v4, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_E900_1"

    const/4 v12, 0x5

    const/16 v13, 0xa

    const v14, 0xd9490

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7c

    const/16 v18, 0x2d

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v4, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 224
    new-instance v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v20, "GERAN_ARFCN_FREQUENCY_BAND_E900_2"

    const/16 v21, 0x6

    const/16 v22, 0xa

    const v23, 0xd9490

    const/16 v24, 0x400

    const/16 v25, 0x3cf

    const/16 v26, 0x3ff

    const/16 v27, 0x2d

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v5, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_E900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 225
    new-instance v6, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_R900_1"

    const/4 v12, 0x7

    const/16 v13, 0xb

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v6, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 226
    new-instance v7, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v20, "GERAN_ARFCN_FREQUENCY_BAND_R900_2"

    const/16 v21, 0x8

    const/16 v22, 0xb

    const/16 v25, 0x3bb

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v27}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v7, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_R900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 227
    new-instance v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v11, "GERAN_ARFCN_FREQUENCY_BAND_P900"

    const/16 v12, 0x9

    const/16 v13, 0x9

    const/16 v16, 0x1

    move-object v10, v8

    invoke-direct/range {v10 .. v18}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v8, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_P900:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 228
    new-instance v10, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v20, "GERAN_ARFCN_FREQUENCY_BAND_ER900_1"

    const/16 v21, 0xa

    const/16 v22, 0xe

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x7c

    move-object/from16 v19, v10

    invoke-direct/range {v19 .. v27}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v10, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_1:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 229
    new-instance v20, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const-string v12, "GERAN_ARFCN_FREQUENCY_BAND_ER900_2"

    const/16 v13, 0xb

    const/16 v14, 0xe

    const v15, 0xd9490

    const/16 v16, 0x400

    const/16 v17, 0x3ac

    const/16 v18, 0x3ff

    const/16 v19, 0x400

    move-object/from16 v11, v20

    invoke-direct/range {v11 .. v19}, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;-><init>(Ljava/lang/String;IIIIIII)V

    sput-object v20, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->GERAN_ARFCN_FREQUENCY_BAND_ER900_2:Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    .line 209
    const/16 v11, 0xc

    new-array v11, v11, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    const/4 v9, 0x1

    aput-object v0, v11, v9

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v7, v11, v0

    const/16 v0, 0x9

    aput-object v8, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    const/16 v0, 0xb

    aput-object v20, v11, v0

    sput-object v11, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIIIIII)V
    .locals 0
    .param p3, "band"    # I
    .param p4, "uplinkFrequencyFirstKhz"    # I
    .param p5, "arfcnOffset"    # I
    .param p6, "arfcnRangeFirst"    # I
    .param p7, "arfcnRangeLast"    # I
    .param p8, "downlinkOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 233
    iput p3, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->band:I

    .line 234
    iput p4, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->uplinkFrequencyFirst:I

    .line 235
    iput p5, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnOffset:I

    .line 236
    iput p6, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeFirst:I

    .line 237
    iput p7, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->arfcnRangeLast:I

    .line 238
    iput p8, p0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->downlinkOffset:I

    .line 239
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 209
    const-class v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-object v0
.end method

.method public static blacklist values()[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;
    .locals 1

    .line 209
    sget-object v0, Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->$VALUES:[Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    invoke-virtual {v0}, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;

    return-object v0
.end method
