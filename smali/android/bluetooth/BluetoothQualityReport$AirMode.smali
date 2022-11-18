.class final enum Landroid/bluetooth/BluetoothQualityReport$AirMode;
.super Ljava/lang/Enum;
.source "BluetoothQualityReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AirMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/bluetooth/BluetoothQualityReport$AirMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field private static blacklist sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

.field public static final enum blacklist uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 153
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string/jumbo v1, "uLaw"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->uLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v1, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v3, "aLaw"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/bluetooth/BluetoothQualityReport$AirMode;->aLaw:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v3, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v5, "CVSD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/bluetooth/BluetoothQualityReport$AirMode;->CVSD:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v5, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string/jumbo v7, "transparent_msbc"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/bluetooth/BluetoothQualityReport$AirMode;->transparent_msbc:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    new-instance v7, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    const-string v9, "INVALID"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/bluetooth/BluetoothQualityReport$AirMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 152
    const/4 v9, 0x5

    new-array v9, v9, [Landroid/bluetooth/BluetoothQualityReport$AirMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Landroid/bluetooth/BluetoothQualityReport$AirMode;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport$AirMode;->values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static blacklist fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .locals 2
    .param p0, "n"    # I

    .line 158
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->sAllValues:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p0, v1, :cond_0

    .line 159
    aget-object v0, v0, p0

    return-object v0

    .line 161
    :cond_0
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->INVALID:Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 152
    const-class v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method

.method public static blacklist values()[Landroid/bluetooth/BluetoothQualityReport$AirMode;
    .locals 1

    .line 152
    sget-object v0, Landroid/bluetooth/BluetoothQualityReport$AirMode;->$VALUES:[Landroid/bluetooth/BluetoothQualityReport$AirMode;

    invoke-virtual {v0}, [Landroid/bluetooth/BluetoothQualityReport$AirMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/bluetooth/BluetoothQualityReport$AirMode;

    return-object v0
.end method
