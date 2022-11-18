.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitsPerSample:I

.field private blacklist mChannelCount:I

.field private blacklist mCodecPriority:I

.field private blacklist mCodecSpecific1:J

.field private blacklist mCodecSpecific2:J

.field private blacklist mCodecSpecific3:J

.field private blacklist mCodecSpecific4:J

.field private blacklist mCodecType:I

.field private blacklist mFrameDuration:I

.field private blacklist mMaxOctetsPerFrame:I

.field private blacklist mMinOctetsPerFrame:I

.field private blacklist mOctetsPerFrame:I

.field private blacklist mSampleRate:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 508
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 509
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 510
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 511
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 512
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 513
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 514
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 515
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    .line 516
    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    .line 517
    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    .line 518
    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    .line 520
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfig;)V
    .locals 2
    .param p1, "config"    # Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 508
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 509
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 510
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 511
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 512
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 513
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 514
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 515
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    .line 516
    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    .line 517
    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    .line 518
    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    .line 523
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 524
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecPriority()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 525
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 526
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 527
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 528
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 529
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 530
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 531
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 532
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    .line 533
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific2()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    .line 534
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific3()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    .line 535
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific4()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    .line 536
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .locals 23

    .line 690
    move-object/from16 v0, p0

    new-instance v20, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-object/from16 v1, v20

    iget v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    iget v3, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    iget v4, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    iget v5, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    iget v6, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    iget v7, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    iget v8, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    iget v9, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    iget v10, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    iget-wide v11, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    iget-wide v13, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    move-object/from16 v21, v1

    move/from16 v22, v2

    iget-wide v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    move-wide v15, v1

    iget-wide v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    move-wide/from16 v17, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIIIJJJJLandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V

    return-object v20
.end method

.method public whitelist setBitsPerSample(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "bitsPerSample"    # I

    .line 578
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    .line 579
    return-object p0
.end method

.method public whitelist setChannelCount(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "channelCount"    # I

    .line 589
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    .line 590
    return-object p0
.end method

.method public whitelist setCodecPriority(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "codecPriority"    # I

    .line 556
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    .line 557
    return-object p0
.end method

.method public blacklist setCodecSpecific1(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific1"    # J

    .line 645
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    .line 646
    return-object p0
.end method

.method public blacklist setCodecSpecific2(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific2"    # J

    .line 657
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    .line 658
    return-object p0
.end method

.method public blacklist setCodecSpecific3(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific3"    # J

    .line 669
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    .line 670
    return-object p0
.end method

.method public blacklist setCodecSpecific4(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific4"    # J

    .line 681
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    .line 682
    return-object p0
.end method

.method public whitelist setCodecType(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "codecType"    # I

    .line 545
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    .line 546
    return-object p0
.end method

.method public whitelist setFrameDuration(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "frameDuration"    # I

    .line 600
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    .line 601
    return-object p0
.end method

.method public whitelist setMaxOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "maxOctetsPerFrame"    # I

    .line 633
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    .line 634
    return-object p0
.end method

.method public whitelist setMinOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "minOctetsPerFrame"    # I

    .line 622
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    .line 623
    return-object p0
.end method

.method public whitelist setOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "octetsPerFrame"    # I

    .line 611
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    .line 612
    return-object p0
.end method

.method public whitelist setSampleRate(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .locals 0
    .param p1, "sampleRate"    # I

    .line 567
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    .line 568
    return-object p0
.end method
