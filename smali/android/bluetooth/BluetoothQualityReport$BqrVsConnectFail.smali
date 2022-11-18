.class public Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BqrVsConnectFail"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrVsConnectFail"


# instance fields
.field private blacklist mFailReason:I

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 1415
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->mFailReason:I

    .line 1417
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .locals 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "rawData"    # [B
    .param p3, "offset"    # I

    .line 1403
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1404
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 1408
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1410
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1412
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->mFailReason:I

    .line 1413
    return-void

    .line 1405
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrVsConnectFail: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1428
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFailReason()I
    .locals 1

    .line 1424
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->mFailReason:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsConnectFail: {\n    mFailReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->mFailReason:I

    .line 1440
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1433
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->mFailReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    return-void
.end method
