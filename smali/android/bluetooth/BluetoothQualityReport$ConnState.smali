.class final enum Landroid/bluetooth/BluetoothQualityReport$ConnState;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ConnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$ConnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field public static final enum blacklist CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

.field private static blacklist sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;


# instance fields
.field private blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 22

    .line 115
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v1, "CONN_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v3, "CONN_ACTIVE"

    const/4 v4, 0x1

    const/16 v5, 0x81

    invoke-direct {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v3, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v5, "CONN_HOLD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_HOLD:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v5, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v7, "CONN_SNIFF_IDLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_IDLE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 116
    new-instance v7, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v9, "CONN_SNIFF_ACTIVE"

    const/4 v10, 0x4

    const/16 v11, 0x84

    invoke-direct {v7, v9, v10, v11}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v9, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v11, "CONN_SNIFF_MASTER_TRANSITION"

    const/4 v12, 0x5

    const/16 v13, 0x85

    invoke-direct {v9, v11, v12, v13}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v9, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SNIFF_MASTER_TRANSITION:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v11, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v13, "CONN_PARK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v11, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 117
    new-instance v13, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v15, "CONN_PARK_PEND"

    const/4 v14, 0x7

    const/16 v12, 0x47

    invoke-direct {v13, v15, v14, v12}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v13, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v12, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v15, "CONN_UNPARK_PEND"

    const/16 v14, 0x8

    invoke-direct {v12, v15, v14, v14}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_PEND:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v15, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v14, "CONN_UNPARK_ACTIVE"

    const/16 v10, 0x9

    const/16 v8, 0x89

    invoke-direct {v15, v14, v10, v8}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v15, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_UNPARK_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 118
    new-instance v8, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v14, "CONN_DISCONNECT_PENDING"

    const/16 v10, 0xa

    const/16 v6, 0x4a

    invoke-direct {v8, v14, v10, v6}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_DISCONNECT_PENDING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v6, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v14, "CONN_PAGING"

    const/16 v10, 0xb

    invoke-direct {v6, v14, v10, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v14, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v10, "CONN_PAGE_SCAN"

    const/16 v4, 0xc

    invoke-direct {v14, v10, v4, v4}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v14, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_PAGE_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 119
    new-instance v10, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v4, "CONN_LOCAL_LOOPBACK"

    const/16 v2, 0xd

    invoke-direct {v10, v4, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LOCAL_LOOPBACK:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v2, "CONN_LE_ACTIVE"

    move-object/from16 v17, v10

    const/16 v10, 0xe

    invoke-direct {v4, v2, v10, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_LE_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v10, "CONN_ANT_ACTIVE"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v10, v4, v4}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_ANT_ACTIVE:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 120
    new-instance v10, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v4, "CONN_TRIGGER_SCAN"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v10, v4, v2, v2}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_TRIGGER_SCAN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v4, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v2, "CONN_RECONNECTING"

    move-object/from16 v20, v10

    const/16 v10, 0x11

    invoke-direct {v4, v2, v10, v10}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_RECONNECTING:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    new-instance v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const-string v10, "CONN_SEMI_CONN"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v10, v4, v4}, Landroid/bluetooth/BluetoothQualityReport$ConnState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Landroid/bluetooth/BluetoothQualityReport$ConnState;->CONN_SEMI_CONN:Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 114
    const/16 v10, 0x13

    new-array v10, v10, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    const/16 v16, 0x0

    aput-object v0, v10, v16

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v12, v10, v0

    const/16 v0, 0x9

    aput-object v15, v10, v0

    const/16 v0, 0xa

    aput-object v8, v10, v0

    const/16 v0, 0xb

    aput-object v6, v10, v0

    const/16 v0, 0xc

    aput-object v14, v10, v0

    const/16 v0, 0xd

    aput-object v17, v10, v0

    const/16 v0, 0xe

    aput-object v18, v10, v0

    const/16 v0, 0xf

    aput-object v19, v10, v0

    const/16 v0, 0x10

    aput-object v20, v10, v0

    const/16 v0, 0x11

    aput-object v21, v10, v0

    aput-object v2, v10, v4

    sput-object v10, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    .line 123
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput p3, p0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    .line 127
    return-void
.end method

.method public static blacklist getName(I)Ljava/lang/String;
    .locals 5
    .param p0, "val"    # I

    .line 130
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->sAllStates:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 131
    .local v3, "state":Landroid/bluetooth/BluetoothQualityReport$ConnState;
    iget v4, v3, Landroid/bluetooth/BluetoothQualityReport$ConnState;->mValue:I

    if-ne v4, p0, :cond_0

    .line 132
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    .end local v3    # "state":Landroid/bluetooth/BluetoothQualityReport$ConnState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "INVALID"

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 114
    const-class v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/bluetooth/BluetoothQualityReport$ConnState;
    .locals 1

    .line 114
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$ConnState;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$ConnState;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$ConnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$ConnState;

    return-object v0
.end method
