.class public final Landroid/bluetooth/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecConfig$Builder;,
        Landroid/bluetooth/BluetoothCodecConfig$ChannelMode;,
        Landroid/bluetooth/BluetoothCodecConfig$BitsPerSample;,
        Landroid/bluetooth/BluetoothCodecConfig$SampleRate;,
        Landroid/bluetooth/BluetoothCodecConfig$CodecPriority;,
        Landroid/bluetooth/BluetoothCodecConfig$SourceCodecType;
    }
.end annotation


# static fields
.field public static final whitelist BITS_PER_SAMPLE_16:I = 0x1

.field public static final whitelist BITS_PER_SAMPLE_24:I = 0x2

.field public static final whitelist BITS_PER_SAMPLE_32:I = 0x4

.field public static final whitelist BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final whitelist CHANNEL_MODE_JOINT_STEREO:I = 0x4

.field public static final whitelist CHANNEL_MODE_MONO:I = 0x1

.field public static final whitelist CHANNEL_MODE_NONE:I = 0x0

.field public static final whitelist CHANNEL_MODE_STEREO:I = 0x2

.field public static final whitelist CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final whitelist CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SAMPLE_RATE_16000:I = 0x40

.field public static final whitelist SAMPLE_RATE_176400:I = 0x10

.field public static final whitelist SAMPLE_RATE_192000:I = 0x20

.field public static final whitelist SAMPLE_RATE_24000:I = 0x80

.field public static final whitelist SAMPLE_RATE_32000:I = 0x100

.field public static final whitelist SAMPLE_RATE_44100:I = 0x1

.field public static final whitelist SAMPLE_RATE_48000:I = 0x2

.field public static final whitelist SAMPLE_RATE_8000:I = 0x200

.field public static final whitelist SAMPLE_RATE_88200:I = 0x4

.field public static final whitelist SAMPLE_RATE_96000:I = 0x8

.field public static final whitelist SAMPLE_RATE_NONE:I = 0x0

.field public static final whitelist SOURCE_CODEC_TYPE_AAC:I = 0x1

.field public static final whitelist SOURCE_CODEC_TYPE_APTX:I = 0x2

.field public static final whitelist SOURCE_CODEC_TYPE_APTX_ADAPTIVE:I = 0x6

.field public static final whitelist SOURCE_CODEC_TYPE_APTX_HD:I = 0x3

.field public static final whitelist SOURCE_CODEC_TYPE_APTX_TWSP:I = 0x7

.field public static final whitelist SOURCE_CODEC_TYPE_CELT:I = 0xc

.field public static final whitelist SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final whitelist SOURCE_CODEC_TYPE_LC3:I = 0x5

.field public static final whitelist SOURCE_CODEC_TYPE_LDAC:I = 0x4

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV1:I = 0x8

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV2:I = 0x9

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV3:I = 0xa

.field public static final whitelist SOURCE_CODEC_TYPE_LHDCV5:I = 0xd

.field public static final whitelist SOURCE_CODEC_TYPE_MAX:I = 0x6

.field public static final whitelist SOURCE_CODEC_TYPE_SBC:I = 0x0

.field public static final whitelist SOURCE_QVA_CODEC_TYPE_MAX:I = 0xb


# instance fields
.field private final blacklist mBitsPerSample:I

.field private final blacklist mChannelMode:I

.field private blacklist mCodecPriority:I

.field private final blacklist mCodecSpecific1:J

.field private final blacklist mCodecSpecific2:J

.field private final blacklist mCodecSpecific3:J

.field private final blacklist mCodecSpecific4:J

.field private final blacklist mCodecType:I

.field private final blacklist mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 470
    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 14
    .param p1, "codecType"    # I

    .line 331
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    .line 335
    return-void
.end method

.method public constructor greylist <init>(IIIIIJJJJ)V
    .locals 0
    .param p1, "codecType"    # I
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelMode"    # I
    .param p6, "codecSpecific1"    # J
    .param p8, "codecSpecific2"    # J
    .param p10, "codecSpecific3"    # J
    .param p12, "codecSpecific4"    # J

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 308
    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 309
    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 310
    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 311
    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 312
    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 313
    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 314
    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 315
    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 316
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 347
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothCodecConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prevStr"    # Ljava/lang/String;
    .param p1, "capStr"    # Ljava/lang/String;

    .line 386
    if-nez p0, :cond_0

    .line 387
    return-object p1

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCodecName(I)Ljava/lang/String;
    .locals 2
    .param p0, "codecType"    # I

    .line 507
    sparse-switch p0, :sswitch_data_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :sswitch_0
    const-string v0, "INVALID CODEC"

    return-object v0

    .line 531
    :sswitch_1
    const-string v0, "LHDC"

    return-object v0

    .line 523
    :sswitch_2
    const-string v0, "aptX TWS+"

    return-object v0

    .line 521
    :sswitch_3
    const-string v0, "aptX Adaptive"

    return-object v0

    .line 519
    :sswitch_4
    const-string v0, "LC3"

    return-object v0

    .line 517
    :sswitch_5
    const-string v0, "LDAC"

    return-object v0

    .line 515
    :sswitch_6
    const-string v0, "aptX HD"

    return-object v0

    .line 513
    :sswitch_7
    const-string v0, "aptX"

    return-object v0

    .line 511
    :sswitch_8
    const-string v0, "AAC"

    return-object v0

    .line 509
    :sswitch_9
    const-string v0, "SBC"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_9
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xf4240 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist hasSingleBit(I)Z
    .locals 1
    .param p0, "valueSet"    # I

    .line 692
    if-eqz p0, :cond_1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 351
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 352
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    .line 353
    .local v0, "other":Landroid/bluetooth/BluetoothCodecConfig;
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 363
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_1
    return v1
.end method

.method public whitelist getBitsPerSample()I
    .locals 1

    .line 593
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public whitelist getChannelMode()I
    .locals 1

    .line 601
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    return v0
.end method

.method public whitelist getCodecPriority()I
    .locals 1

    .line 565
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public whitelist getCodecSpecific1()J
    .locals 2

    .line 621
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific2()J
    .locals 2

    .line 641
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific3()J
    .locals 2

    .line 661
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific4()J
    .locals 2

    .line 681
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public whitelist getCodecType()I
    .locals 1

    .line 545
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .locals 1

    .line 585
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    return v0
.end method

.method public blacklist hasSingleBitsPerSample()Z
    .locals 1

    .line 708
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSingleChannelMode()Z
    .locals 1

    .line 716
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSingleSampleRate()Z
    .locals 1

    .line 700
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 372
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 374
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 372
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isMandatoryCodec()Z
    .locals 1

    .line 556
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 7
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 731
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eq v3, v0, :cond_6

    const/16 v3, 0x9

    if-eq v3, v0, :cond_6

    const/16 v3, 0x8

    if-ne v3, v0, :cond_0

    goto/16 :goto_3

    .line 752
    :cond_0
    const-string/jumbo v0, "persist.bluetooth.a2dp.low_latency"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "enableLL":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sameAudioFeedingParameters enableLL = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BALL"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "false"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 755
    if-eqz p1, :cond_1

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 759
    :cond_2
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-nez v3, :cond_4

    .line 760
    if-eqz p1, :cond_3

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v3, v4, :cond_3

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v3, v4, :cond_3

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 765
    :cond_4
    if-eqz p1, :cond_5

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v3, v4, :cond_5

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v3, v4, :cond_5

    iget v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    .line 734
    .end local v0    # "enableLL":Ljava/lang/String;
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v0, v3, :cond_7

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v0, v3, :cond_7

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v0, v3, :cond_7

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    return v1
.end method

.method public blacklist sameCodecSpecificParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 5
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 816
    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-eq v1, v2, :cond_0

    .line 817
    return v0

    .line 819
    :cond_0
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 823
    :pswitch_1
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 824
    return v0

    .line 827
    :cond_1
    :pswitch_2
    iget-wide v1, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 828
    return v0

    .line 831
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist setCodecPriority(I)V
    .locals 0
    .param p1, "codecPriority"    # I

    .line 577
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 578
    return-void
.end method

.method public blacklist similarCodecFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 21
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_7

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    if-eq v2, v3, :cond_0

    goto :goto_4

    .line 785
    :cond_0
    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 786
    .local v2, "sampleRate":I
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    .line 788
    :cond_1
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 790
    :cond_2
    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 791
    .local v3, "bitsPerSample":I
    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v4, :cond_4

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v17, v3

    goto :goto_1

    .line 793
    :cond_4
    :goto_0
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    move/from16 v17, v3

    .line 795
    .end local v3    # "bitsPerSample":I
    .local v17, "bitsPerSample":I
    :goto_1
    iget v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 796
    .local v3, "channelMode":I
    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v4, :cond_6

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v18, v3

    goto :goto_3

    .line 798
    :cond_6
    :goto_2
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    move/from16 v18, v3

    .line 800
    .end local v3    # "channelMode":I
    .local v18, "channelMode":I
    :goto_3
    new-instance v15, Landroid/bluetooth/BluetoothCodecConfig;

    iget v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v19, 0x0

    move-object v3, v15

    move v6, v2

    move/from16 v7, v17

    move/from16 v8, v18

    move-object v1, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v3 .. v16}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v1

    return v1

    .line 783
    .end local v2    # "sampleRate":I
    .end local v17    # "bitsPerSample":I
    .end local v18    # "channelMode":I
    :cond_7
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "sampleRateStr":Ljava/lang/String;
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const-string v2, "NONE"

    if-nez v1, :cond_0

    .line 400
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_0
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const/4 v3, 0x1

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 403
    const-string v1, "44100"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_1
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 406
    const-string v1, "48000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_2
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 409
    const-string v1, "88200"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_3
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 412
    const-string v1, "96000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_4
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 415
    const-string v1, "176400"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_5
    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 418
    const-string v1, "192000"

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    :cond_6
    const/4 v1, 0x0

    .line 422
    .local v1, "bitsPerSampleStr":Ljava/lang/String;
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-nez v4, :cond_7

    .line 423
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    :cond_7
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_8

    .line 426
    const-string v4, "16"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    :cond_8
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_9

    .line 429
    const-string v4, "24"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    :cond_9
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_a

    .line 432
    const-string v4, "32"

    invoke-static {v1, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 435
    :cond_a
    const/4 v4, 0x0

    .line 436
    .local v4, "channelModeStr":Ljava/lang/String;
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-nez v5, :cond_b

    .line 437
    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    :cond_b
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 440
    const-string v2, "MONO"

    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    :cond_c
    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    .line 443
    const-string v2, "STEREO"

    invoke-static {v4, v2}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{codecName:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-static {v5}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mCodecType:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mCodecPriority:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",mSampleRate:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 449
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "0x%x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "),mBitsPerSample:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v8, v3, [Ljava/lang/Object;

    iget v9, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 451
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "),mChannelMode:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget v8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 453
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "),mCodecSpecific1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCodecSpecific2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCodecSpecific3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCodecSpecific4:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 491
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 496
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 497
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 498
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 499
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 500
    return-void
.end method
