.class public Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;
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
    name = "BqrVsLsto"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrVsLsto"


# instance fields
.field private blacklist mBasebandStats:J

.field private blacklist mConnState:I

.field private blacklist mCxmDenials:I

.field private blacklist mLastTxAckTimestamp:J

.field private blacklist mNativeClock:J

.field private blacklist mRfLoss:I

.field private blacklist mSlotsUsed:J

.field private blacklist mTxSkipped:I

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 836
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    .line 839
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    .line 843
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    .line 845
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .locals 5
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "rawData"    # [B
    .param p3, "offset"    # I

    .line 817
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 822
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 824
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 826
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    .line 827
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    .line 828
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    .line 829
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    .line 830
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    .line 831
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    .line 832
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    .line 833
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    .line 834
    return-void

    .line 819
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrVsLsto: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsLsto-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 922
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBasebandStats()J
    .locals 2

    .line 868
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    return-wide v0
.end method

.method public blacklist getConnState()I
    .locals 1

    .line 852
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    return v0
.end method

.method public blacklist getConnStateStr()Ljava/lang/String;
    .locals 1

    .line 860
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothQualityReport$ConnState;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCxmDenials()I
    .locals 1

    .line 884
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    return v0
.end method

.method public blacklist getLastTxAckTimestamp()J
    .locals 2

    .line 918
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    return-wide v0
.end method

.method public blacklist getNativeClock()J
    .locals 2

    .line 909
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    return-wide v0
.end method

.method public blacklist getRfLoss()I
    .locals 1

    .line 900
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    return v0
.end method

.method public blacklist getSlotsUsed()J
    .locals 2

    .line 876
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    return-wide v0
.end method

.method public blacklist getTxSkipped()I
    .locals 1

    .line 892
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsLsto: {\n    mConnState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 941
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getConnStateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    .line 942
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0x%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), mBasebandStats: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    .line 943
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "0x%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSlotsUsed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCxmDenials: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTxSkipped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRfLoss: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mNativeClock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    .line 948
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLastTxAckTimestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    .line 949
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 927
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mConnState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mBasebandStats:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 929
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mSlotsUsed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 930
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mTxSkipped:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mRfLoss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mNativeClock:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 934
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->mLastTxAckTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 935
    return-void
.end method
