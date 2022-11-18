.class public Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;
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
    name = "BqrVsA2dpChoppy"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrVsA2dpChoppy"


# instance fields
.field private blacklist mAclTxQueueLength:I

.field private blacklist mArrivalTime:J

.field private blacklist mGlitchCount:I

.field private blacklist mLinkQuality:I

.field private blacklist mRxCxmDenials:I

.field private blacklist mScheduleTime:J

.field private blacklist mTxCxmDenials:I

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 989
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    .line 993
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    .line 995
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    .line 997
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .locals 5
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "rawData"    # [B
    .param p3, "offset"    # I

    .line 971
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, p3, :cond_0

    .line 976
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 977
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 978
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 980
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    .line 981
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    .line 982
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    .line 983
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    .line 984
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    .line 985
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    .line 986
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    .line 987
    return-void

    .line 973
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrVsA2dpChoppy: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1067
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAclTxQueueLength()I
    .locals 1

    .line 1046
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    return v0
.end method

.method public blacklist getArrivalTime()J
    .locals 2

    .line 1005
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    return-wide v0
.end method

.method public blacklist getGlitchCount()I
    .locals 1

    .line 1022
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    return v0
.end method

.method public blacklist getLinkQuality()I
    .locals 1

    .line 1054
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    return v0
.end method

.method public blacklist getLinkQualityStr()Ljava/lang/String;
    .locals 2

    .line 1062
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$LinkQuality;

    move-result-object v0

    .line 1063
    .local v0, "q":Landroid/bluetooth/BluetoothQualityReport$LinkQuality;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$LinkQuality;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getRxCxmDenials()I
    .locals 1

    .line 1038
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    return v0
.end method

.method public blacklist getScheduleTime()J
    .locals 2

    .line 1014
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    return-wide v0
.end method

.method public blacklist getTxCxmDenials()I
    .locals 1

    .line 1030
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrVsA2dpChoppy: {\n    mArrivalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    .line 1085
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0x%08X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mScheduleTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    .line 1086
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mGlitchCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTxCxmDenials: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRxCxmDenials: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAclTxQueueLength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLinkQuality: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1091
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->getLinkQualityStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    .line 1092
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1072
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mArrivalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1073
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mScheduleTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1074
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mGlitchCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mTxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mRxCxmDenials:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1077
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mAclTxQueueLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1078
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->mLinkQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    return-void
.end method
