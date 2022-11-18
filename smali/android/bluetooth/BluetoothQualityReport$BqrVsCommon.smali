.class public Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;
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
    name = "BqrVsCommon"
.end annotation


# static fields
.field private static final blacklist BQR_VS_COMMON_LEN:I = 0x7

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrVsCommon"


# instance fields
.field private blacklist mAddr:Ljava/lang/String;

.field private blacklist mCalFailedItemCount:I

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 762
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mAddr:Ljava/lang/String;

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mCalFailedItemCount:I

    .line 765
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .locals 4
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "rawData"    # [B
    .param p3, "offset"    # I

    .line 746
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    if-eqz p2, :cond_0

    array-length v0, p2

    add-int/lit8 v1, p3, 0x7

    if-lt v0, v1, :cond_0

    .line 751
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 753
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 755
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    add-int/lit8 v2, p3, 0x4

    .line 756
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    add-int/lit8 v2, p3, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    add-int/lit8 v2, p3, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    add-int/lit8 v2, p3, 0x1

    .line 757
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    add-int/lit8 v2, p3, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 755
    const-string v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mAddr:Ljava/lang/String;

    .line 758
    add-int/lit8 v1, p3, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 759
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mCalFailedItemCount:I

    .line 760
    return-void

    .line 748
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrVsCommon: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsCommon-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 780
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCalFailedItemCount()I
    .locals 1

    .line 772
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mCalFailedItemCount:I

    return v0
.end method

.method blacklist getLength()I
    .locals 1

    .line 776
    const/4 v0, 0x7

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsCommon: {\n    mAddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCalFailedItemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mCalFailedItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 785
    iget-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->mCalFailedItemCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    return-void
.end method
