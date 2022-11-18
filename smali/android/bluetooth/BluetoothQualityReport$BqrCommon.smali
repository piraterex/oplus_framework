.class public Landroid/bluetooth/BluetoothQualityReport$BqrCommon;
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
    name = "BqrCommon"
.end annotation


# static fields
.field static final blacklist BQR_COMMON_LEN:I = 0x30

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothQualityReport.BqrCommon"


# instance fields
.field private blacklist mAfhSelectUnidealChannelCount:I

.field private blacklist mConnectionHandle:I

.field private blacklist mConnectionRole:I

.field private blacklist mFlowOffCount:J

.field private blacklist mLastFlowOnTimestamp:J

.field private blacklist mLastTxAckTimestamp:J

.field private blacklist mLsto:I

.field private blacklist mNakCount:J

.field private blacklist mNoRxCount:J

.field private blacklist mOverflowCount:J

.field private blacklist mPacketType:I

.field private blacklist mPiconetClock:J

.field private blacklist mQualityReportId:I

.field private blacklist mRetransmissionCount:J

.field private blacklist mRssi:I

.field private blacklist mSnr:I

.field private blacklist mTxPowerLevel:I

.field private blacklist mUnderflowCount:J

.field private blacklist mUnusedAfhChannelCount:I

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothQualityReport;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 484
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    .line 487
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    .line 488
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    .line 504
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport$BqrCommon-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V
    .locals 5
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "rawData"    # [B
    .param p3, "offset"    # I

    .line 454
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    if-eqz p2, :cond_0

    array-length v0, p2

    add-int/lit8 v1, p3, 0x30

    if-lt v0, v1, :cond_0

    .line 459
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-static {p2, p3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 461
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    .line 464
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    .line 465
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    .line 466
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    .line 467
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    .line 468
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    .line 469
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    .line 470
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    .line 471
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    .line 472
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    .line 473
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    .line 474
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    .line 475
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    .line 476
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    .line 477
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    .line 478
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    .line 479
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    .line 480
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    .line 481
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v3

    iput-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    .line 482
    return-void

    .line 456
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BluetoothQualityReport.BqrCommon: BQR raw data length is abnormal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothQualityReport;[BILandroid/bluetooth/BluetoothQualityReport$BqrCommon-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;-><init>(Landroid/bluetooth/BluetoothQualityReport;[BI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 675
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAfhSelectUnidealChannelCount()I
    .locals 1

    .line 587
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    return v0
.end method

.method public blacklist getConnectionHandle()I
    .locals 1

    .line 532
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    return v0
.end method

.method public blacklist getConnectionRole()Ljava/lang/String;
    .locals 2

    .line 540
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    if-nez v0, :cond_0

    .line 541
    const-string v0, "Master"

    return-object v0

    .line 542
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 543
    const-string v0, "Slave"

    return-object v0

    .line 545
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlowOffCount()J
    .locals 2

    .line 646
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    return-wide v0
.end method

.method public blacklist getLastFlowOnTimestamp()J
    .locals 2

    .line 654
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    return-wide v0
.end method

.method public blacklist getLastTxAckTimestamp()J
    .locals 2

    .line 638
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    return-wide v0
.end method

.method public blacklist getLsto()I
    .locals 1

    .line 596
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    return v0
.end method

.method public blacklist getNakCount()J
    .locals 2

    .line 629
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    return-wide v0
.end method

.method public blacklist getNoRxCount()J
    .locals 2

    .line 621
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    return-wide v0
.end method

.method public blacklist getOverflowCount()J
    .locals 2

    .line 663
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    return-wide v0
.end method

.method public blacklist getPacketType()I
    .locals 1

    .line 515
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    return v0
.end method

.method public blacklist getPacketTypeStr()Ljava/lang/String;
    .locals 2

    .line 523
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothQualityReport$PacketType;->fromOrdinal(I)Landroid/bluetooth/BluetoothQualityReport$PacketType;

    move-result-object v0

    .line 524
    .local v0, "type":Landroid/bluetooth/BluetoothQualityReport$PacketType;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothQualityReport$PacketType;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getPiconetClock()J
    .locals 2

    .line 605
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    return-wide v0
.end method

.method blacklist getQualityReportId()I
    .locals 1

    .line 507
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    return v0
.end method

.method public blacklist getRetransmissionCount()J
    .locals 2

    .line 613
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    return-wide v0
.end method

.method public blacklist getRssi()I
    .locals 1

    .line 562
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    return v0
.end method

.method public blacklist getSnr()I
    .locals 1

    .line 570
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    return v0
.end method

.method public blacklist getTxPowerLevel()I
    .locals 1

    .line 554
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    return v0
.end method

.method public blacklist getUnderflowCount()J
    .locals 2

    .line 671
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    return-wide v0
.end method

.method public blacklist getUnusedAfhChannelCount()I
    .locals 1

    .line 578
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrCommon: {\n    mQualityReportId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->this$0:Landroid/bluetooth/BluetoothQualityReport;

    .line 705
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothQualityReport;->getQualityReportIdStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    .line 706
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "0x%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), mPacketType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 707
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getPacketTypeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    .line 708
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), mConnectionHandle: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    .line 709
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "0x%04X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mConnectionRole: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 710
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getConnectionRole()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mTxPowerLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSnr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnusedAfhChannelCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mAfhSelectUnidealChannelCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLsto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPiconetClock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    .line 718
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "0x%08X"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRetransmissionCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNoRxCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNakCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastTxAckTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    .line 722
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFlowOffCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n    mLastFlowOnTimestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-wide v6, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    .line 725
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOverflowCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnderflowCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 680
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mQualityReportId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPacketType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 683
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mConnectionRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnusedAfhChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mAfhSelectUnidealChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLsto:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mPiconetClock:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 691
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mRetransmissionCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 692
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNoRxCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 693
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mNakCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 694
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastTxAckTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 695
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mFlowOffCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 696
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mLastFlowOnTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 697
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mOverflowCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 698
    iget-wide v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->mUnderflowCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 699
    return-void
.end method
