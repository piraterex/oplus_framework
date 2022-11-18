.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$FrameDuration;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$ChannelCount;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$BitsPerSample;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$SampleRate;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$CodecPriority;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$SourceCodecType;
    }
.end annotation


# static fields
.field public static final whitelist BITS_PER_SAMPLE_16:I = 0x1

.field public static final whitelist BITS_PER_SAMPLE_24:I = 0x2

.field public static final whitelist BITS_PER_SAMPLE_32:I = 0x8

.field public static final whitelist BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final whitelist CHANNEL_COUNT_1:I = 0x1

.field public static final whitelist CHANNEL_COUNT_2:I = 0x2

.field public static final whitelist CHANNEL_COUNT_NONE:I = 0x0

.field public static final whitelist CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final whitelist CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FRAME_DURATION_10000:I = 0x2

.field public static final blacklist FRAME_DURATION_15000:I = 0x10000

.field public static final whitelist FRAME_DURATION_7500:I = 0x1

.field public static final whitelist FRAME_DURATION_NONE:I = 0x0

.field public static final whitelist SAMPLE_RATE_16000:I = 0x4

.field public static final whitelist SAMPLE_RATE_24000:I = 0x10

.field public static final whitelist SAMPLE_RATE_32000:I = 0x20

.field public static final whitelist SAMPLE_RATE_44100:I = 0x40

.field public static final whitelist SAMPLE_RATE_48000:I = 0x80

.field public static final whitelist SAMPLE_RATE_8000:I = 0x1

.field public static final blacklist SAMPLE_RATE_96000:I = 0x200

.field public static final whitelist SAMPLE_RATE_NONE:I = 0x0

.field public static final blacklist SOURCE_CODEC_TYPE_APTX_ADAPTIVE_LE:I = 0x1

.field public static final whitelist SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final whitelist SOURCE_CODEC_TYPE_LC3:I


# instance fields
.field private final blacklist mBitsPerSample:I

.field private final blacklist mChannelCount:I

.field private final blacklist mCodecPriority:I

.field private final blacklist mCodecSpecific1:J

.field private final blacklist mCodecSpecific2:J

.field private final blacklist mCodecSpecific3:J

.field private final blacklist mCodecSpecific4:J

.field private final blacklist mCodecType:I

.field private final blacklist mFrameDuration:I

.field private final blacklist mMaxOctetsPerFrame:I

.field private final blacklist mMinOctetsPerFrame:I

.field private final blacklist mOctetsPerFrame:I

.field private final blacklist mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 284
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIIIIIIJJJJ)V
    .locals 16
    .param p1, "codecType"    # I
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelCount"    # I
    .param p6, "frameDuration"    # I
    .param p7, "octetsPerFrame"    # I
    .param p8, "minOctetsPerFrame"    # I
    .param p9, "maxOctetsPerFrame"    # I
    .param p10, "codecSpecific1"    # J
    .param p12, "codecSpecific2"    # J
    .param p14, "codecSpecific3"    # J
    .param p16, "codecSpecific4"    # J

    .line 259
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 260
    move/from16 v1, p1

    iput v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    .line 261
    move/from16 v2, p2

    iput v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    .line 262
    move/from16 v3, p3

    iput v3, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    .line 263
    move/from16 v4, p4

    iput v4, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    .line 264
    move/from16 v5, p5

    iput v5, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    .line 265
    move/from16 v6, p6

    iput v6, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    .line 266
    move/from16 v7, p7

    iput v7, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    .line 267
    move/from16 v8, p8

    iput v8, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    .line 268
    move/from16 v9, p9

    iput v9, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    .line 269
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    .line 270
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    .line 271
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    .line 272
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    .line 273
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIIIIIJJJJLandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIIIJJJJ)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 469
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 470
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 471
    .local v0, "other":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_0

    .line 472
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecPriority()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_0

    .line 473
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_0

    .line 475
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    if-ne v2, v3, :cond_0

    .line 476
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    if-ne v2, v3, :cond_0

    .line 477
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    if-ne v2, v3, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    if-ne v2, v3, :cond_0

    .line 479
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 471
    :goto_0
    return v1

    .line 485
    .end local v0    # "other":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    :cond_1
    return v1
.end method

.method public whitelist getBitsPerSample()I
    .locals 1

    .line 389
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .locals 1

    .line 396
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    return v0
.end method

.method public whitelist getCodecName()Ljava/lang/String;
    .locals 2

    .line 356
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    sparse-switch v0, :sswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 362
    :sswitch_0
    const-string v0, "INVALID CODEC"

    return-object v0

    .line 360
    :sswitch_1
    const-string v0, "APTX_ADAPTIVE_LEA"

    return-object v0

    .line 358
    :sswitch_2
    const-string v0, "LC3"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0xf4240 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getCodecPriority()I
    .locals 1

    .line 375
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public blacklist getCodecSpecific1()J
    .locals 2

    .line 434
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public blacklist getCodecSpecific2()J
    .locals 2

    .line 444
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public blacklist getCodecSpecific3()J
    .locals 2

    .line 454
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public blacklist getCodecSpecific4()J
    .locals 2

    .line 464
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public whitelist getCodecType()I
    .locals 1

    .line 347
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    return v0
.end method

.method public whitelist getFrameDuration()I
    .locals 1

    .line 403
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    return v0
.end method

.method public whitelist getMaxOctetsPerFrame()I
    .locals 1

    .line 424
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    return v0
.end method

.method public whitelist getMinOctetsPerFrame()I
    .locals 1

    .line 417
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    return v0
.end method

.method public whitelist getOctetsPerFrame()I
    .locals 1

    .line 410
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .locals 1

    .line 382
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 494
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    .line 496
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    .line 497
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 494
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{codecName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecPriority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBitsPerSample:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mChannelCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFrameDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMinOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMaxOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 313
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 324
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 326
    return-void
.end method
