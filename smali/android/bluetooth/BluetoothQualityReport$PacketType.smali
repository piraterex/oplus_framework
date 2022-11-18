.class final enum Landroid/bluetooth/BluetoothQualityReport$PacketType;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PacketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$PacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist INVALID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_2DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_2DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_2DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_2EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_2EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_3DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_3DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_3DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_3EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_3EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_AUX1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_DM1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_DM3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_DM5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_DV:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_EV4:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_FHS:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_HV1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_HV2:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_HV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_ID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_NULL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field public static final enum blacklist TYPE_POLL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

.field private static blacklist sAllValues:[Landroid/bluetooth/BluetoothQualityReport$PacketType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 31

    .line 99
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->INVALID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v3, "TYPE_ID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_ID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v3, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v5, "TYPE_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_NULL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v5, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v7, "TYPE_POLL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_POLL:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v7, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v9, "TYPE_FHS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_FHS:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v9, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v11, "TYPE_HV1"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v11, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v13, "TYPE_HV2"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV2:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v13, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v15, "TYPE_HV3"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_HV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    .line 100
    new-instance v15, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v14, "TYPE_DV"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DV:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v14, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v12, "TYPE_EV3"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v12, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v10, "TYPE_EV4"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV4:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v10, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v8, "TYPE_EV5"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v8, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_2EV3"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v4, "TYPE_2EV5"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v2, "TYPE_3EV3"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3EV3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_3EV5"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3EV5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    .line 101
    new-instance v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v4, "TYPE_DM1"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v2, "TYPE_DH1"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_DM3"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v4, "TYPE_DH3"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v2, "TYPE_DM5"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DM5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_DH5"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v4, "TYPE_AUX1"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_AUX1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v4, "TYPE_2DH1"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    .line 102
    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_2DH3"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_2DH5"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_2DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_3DH1"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH1:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_3DH3"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH3:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const-string v6, "TYPE_3DH5"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Landroid/bluetooth/BluetoothQualityReport$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$PacketType;->TYPE_3DH5:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    .line 98
    const/16 v2, 0x1d

    new-array v2, v2, [Landroid/bluetooth/BluetoothQualityReport$PacketType;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v27, v2, v0

    const/16 v0, 0x19

    aput-object v28, v2, v0

    const/16 v0, 0x1a

    aput-object v29, v2, v0

    const/16 v0, 0x1b

    aput-object v30, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$PacketType;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$PacketType;->values()[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$PacketType;
    .locals 2
    .param p0, "n"    # I

    .line 107
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 108
    aget-object v0, v0, p0

    return-object v0

    .line 110
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->INVALID:Landroid/bluetooth/BluetoothQualityReport$PacketType;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$PacketType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 98
    const-class v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/bluetooth/BluetoothQualityReport$PacketType;
    .locals 1

    .line 98
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$PacketType;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$PacketType;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$PacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$PacketType;

    return-object v0
.end method
