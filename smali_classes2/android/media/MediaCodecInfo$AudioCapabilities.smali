.class public final Landroid/media/MediaCodecInfo$AudioCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioCapabilities"
.end annotation


# static fields
.field private static final greylist-max-o MAX_INPUT_CHANNEL_COUNT:I = 0x1e

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioCapabilities"


# instance fields
.field private greylist-max-o mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputChannelRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private greylist-max-o mSampleRateRanges:[Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSampleRates:[I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o applyLevelLimits()V
    .locals 14

    .line 1410
    const/4 v0, 0x0

    .line 1411
    .local v0, "sampleRates":[I
    const/4 v1, 0x0

    .local v1, "sampleRateRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 1412
    .local v2, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v3, 0x1e

    .line 1413
    .local v3, "maxChannels":I
    iget-object v4, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 1415
    .local v4, "mime":Ljava/lang/String;
    const-string v5, "audio/mpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x1f40

    .line 1420
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1415
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1488
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1415
    if-eqz v5, :cond_0

    .line 1416
    const/16 v5, 0x9

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    move-object v0, v5

    .line 1420
    const v5, 0x4e200

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1421
    const/4 v3, 0x2

    goto/16 :goto_1

    .line 1422
    :cond_0
    const-string v5, "audio/3gpp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1423
    new-array v5, v9, [I

    aput v6, v5, v8

    move-object v0, v5

    .line 1424
    const/16 v5, 0x128e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x2fa8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1425
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1426
    :cond_1
    const-string v5, "audio/amr-wb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v11, 0x3e80

    if-eqz v5, :cond_2

    .line 1427
    new-array v5, v9, [I

    aput v11, v5, v8

    move-object v0, v5

    .line 1428
    const/16 v5, 0x19c8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x5d2a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1429
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1430
    :cond_2
    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const v12, 0x7c830

    if-eqz v5, :cond_3

    .line 1431
    const/16 v5, 0xd

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    move-object v0, v5

    .line 1437
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1438
    const/16 v3, 0x30

    goto/16 :goto_1

    .line 1439
    :cond_3
    const-string v5, "audio/vorbis"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/16 v13, 0x7d00

    if-eqz v5, :cond_4

    .line 1440
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7a120

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1441
    const v5, 0x2ee00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1442
    const/16 v3, 0xff

    goto/16 :goto_1

    .line 1443
    :cond_4
    const-string v5, "audio/opus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1444
    const/16 v5, 0x1770

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1445
    const/4 v5, 0x5

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    move-object v0, v5

    .line 1446
    const/16 v3, 0xff

    goto/16 :goto_1

    .line 1447
    :cond_5
    const-string v5, "audio/raw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1448
    const v5, 0x17700

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1449
    const v5, 0x989680

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1450
    sget v3, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    goto/16 :goto_1

    .line 1451
    :cond_6
    const-string v5, "audio/flac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1452
    const v5, 0x9fff6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    .line 1454
    const/16 v3, 0xff

    goto/16 :goto_1

    .line 1455
    :cond_7
    const-string v5, "audio/g711-alaw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1456
    const-string v5, "audio/g711-mlaw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto/16 :goto_0

    .line 1460
    :cond_8
    const-string v5, "audio/gsm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1461
    new-array v5, v9, [I

    aput v6, v5, v8

    move-object v0, v5

    .line 1462
    const/16 v5, 0x32c8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1463
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1464
    :cond_9
    const-string v5, "audio/ac3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1465
    const/4 v3, 0x6

    goto/16 :goto_1

    .line 1466
    :cond_a
    const-string v5, "audio/eac3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1467
    const/16 v3, 0x10

    goto/16 :goto_1

    .line 1468
    :cond_b
    const-string v5, "audio/eac3-joc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1469
    new-array v5, v9, [I

    const v6, 0xbb80

    aput v6, v5, v8

    move-object v0, v5

    .line 1470
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x5dc000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1471
    const/16 v3, 0x10

    goto :goto_1

    .line 1472
    :cond_c
    const-string v5, "audio/ac4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1473
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    move-object v0, v5

    .line 1474
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x290400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1475
    const/16 v3, 0x18

    goto :goto_1

    .line 1477
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported mime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AudioCapabilities"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v5, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v6, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    goto :goto_1

    .line 1457
    :cond_e
    :goto_0
    new-array v5, v9, [I

    aput v6, v5, v8

    move-object v0, v5

    .line 1458
    const v5, 0xfa00

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    .line 1482
    :goto_1
    if-eqz v0, :cond_f

    .line 1483
    invoke-direct {p0, v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([I)V

    goto :goto_2

    .line 1484
    :cond_f
    if-eqz v1, :cond_10

    .line 1485
    new-array v5, v9, [Landroid/util/Range;

    aput-object v1, v5, v8

    invoke-direct {p0, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    .line 1488
    :cond_10
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    .line 1490
    .local v5, "channelRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-array v6, v9, [Landroid/util/Range;

    aput-object v5, v6, v8

    invoke-direct {p0, v6, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits([Landroid/util/Range;Landroid/util/Range;)V

    .line 1491
    return-void

    :array_0
    .array-data 4
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0x7d00
        0xac44
        0xbb80
    .end array-data

    :array_1
    .array-data 4
        0x1cb6
        0x1f40
        0x2b11
        0x2ee0
        0x3e80
        0x5622
        0x5dc0
        0x7d00
        0xac44
        0xbb80
        0xfa00
        0x15888
        0x17700
    .end array-data

    :array_2
    .array-data 4
        0x1f40
        0x2ee0
        0x3e80
        0x5dc0
        0xbb80
    .end array-data

    :array_3
    .array-data 4
        0xac44
        0xbb80
        0x17700
        0x2ee00
    .end array-data
.end method

.method private blacklist applyLimits([Landroid/util/Range;Landroid/util/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1496
    .local p1, "inputChannels":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p2, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    array-length v0, p1

    new-array v0, v0, [Landroid/util/Range;

    .line 1497
    .local v0, "myInputChannels":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1498
    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1499
    .local v2, "lower":I
    aget-object v3, p1, v1

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1500
    .local v3, "upper":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1497
    .end local v2    # "lower":I
    .end local v3    # "upper":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    .line 1505
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    .line 1506
    invoke-static {v0, v1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    move-result-object v1

    .line 1507
    .local v1, "joinedChannelList":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    .line 1509
    if-eqz p2, :cond_1

    .line 1510
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, p2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1512
    :cond_1
    return-void
.end method

.method public static greylist-max-o create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$AudioCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1324
    new-instance v0, Landroid/media/MediaCodecInfo$AudioCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;-><init>()V

    .line 1325
    .local v0, "caps":Landroid/media/MediaCodecInfo$AudioCapabilities;
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1326
    return-object v0
.end method

.method private greylist-max-o createDiscreteSampleRates()V
    .locals 3

    .line 1388
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 1389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1390
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 1389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1330
    iput-object p2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1331
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->initWithPlatformLimits()V

    .line 1332
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLevelLimits()V

    .line 1333
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1334
    return-void
.end method

.method private greylist-max-o initWithPlatformLimits()V
    .locals 6

    .line 1337
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1338
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/util/Range;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    .line 1340
    nop

    .line 1341
    const-string v2, "ro.mediacodec.min_sample_rate"

    const/16 v3, 0x1cb6

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1342
    .local v2, "minSampleRate":I
    nop

    .line 1343
    const-string v3, "ro.mediacodec.max_sample_rate"

    const v4, 0x2ee00

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1344
    .local v3, "maxSampleRate":I
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    aput-object v4, v1, v0

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 1345
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 1346
    return-void
.end method

.method private greylist-max-o limitSampleRates([I)V
    .locals 6
    .param p1, "rates"    # [I

    .line 1376
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1378
    .local v0, "ranges":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 1379
    .local v3, "rate":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1380
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    .end local v3    # "rate":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1383
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    iput-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 1384
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    .line 1385
    return-void
.end method

.method private greylist-max-o limitSampleRates([Landroid/util/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1396
    .local p1, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/media/Utils;->sortDistinctRanges([Landroid/util/Range;)V

    .line 1397
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    invoke-static {v0, p1}, Landroid/media/Utils;->intersectSortedDistinctRanges([Landroid/util/Range;[Landroid/util/Range;)[Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    .line 1400
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1401
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1402
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    .line 1403
    return-void

    .line 1400
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1406
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->createDiscreteSampleRates()V

    .line 1407
    return-void
.end method

.method private greylist-max-o parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 13
    .param p1, "info"    # Landroid/media/MediaFormat;

    .line 1515
    const/16 v0, 0x1e

    .line 1516
    .local v0, "maxInputChannels":I
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v1, [Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    const/4 v5, 0x0

    .line 1550
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1516
    aput-object v4, v3, v5

    .line 1517
    .local v3, "channels":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/media/MediaCodecInfo;->-$$Nest$sfgetPOSITIVE_INTEGERS()Landroid/util/Range;

    move-result-object v4

    .line 1519
    .local v4, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const-string v7, "sample-rate-ranges"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ","

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    .line 1520
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1521
    .local v7, "rateStrings":[Ljava/lang/String;
    array-length v8, v7

    new-array v8, v8, [Landroid/util/Range;

    .line 1522
    .local v8, "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v12, v7

    if-ge v11, v12, :cond_0

    .line 1523
    aget-object v12, v7, v11

    invoke-static {v12, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v12

    aput-object v12, v8, v11

    .line 1522
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1525
    .end local v11    # "i":I
    :cond_0
    invoke-direct {p0, v8}, Landroid/media/MediaCodecInfo$AudioCapabilities;->limitSampleRates([Landroid/util/Range;)V

    .line 1529
    .end local v7    # "rateStrings":[Ljava/lang/String;
    .end local v8    # "rateRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    const-string v7, "channel-ranges"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1530
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1531
    .local v1, "channelStrings":[Ljava/lang/String;
    array-length v2, v1

    new-array v2, v2, [Landroid/util/Range;

    .line 1532
    .local v2, "channelRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 1533
    aget-object v6, v1, v5

    invoke-static {v6, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1532
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1535
    .end local v5    # "i":I
    :cond_2
    move-object v3, v2

    .line 1536
    .end local v1    # "channelStrings":[Ljava/lang/String;
    .end local v2    # "channelRanges":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_2

    :cond_3
    const-string v7, "channel-range"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1537
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    .line 1539
    .local v2, "oneRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    new-array v1, v1, [Landroid/util/Range;

    aput-object v2, v1, v5

    move-object v3, v1

    .line 1540
    .end local v2    # "oneRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    goto :goto_2

    :cond_4
    const-string v7, "max-channel-count"

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1541
    nop

    .line 1542
    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1541
    invoke-static {v7, v0}, Landroid/media/Utils;->parseIntSafely(Ljava/lang/Object;I)I

    move-result v0

    .line 1543
    if-nez v0, :cond_5

    .line 1544
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v6, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v3, v1

    goto :goto_2

    .line 1546
    :cond_5
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v3, v1

    goto :goto_2

    .line 1548
    :cond_6
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_7

    .line 1549
    const/4 v0, 0x0

    .line 1550
    new-array v1, v1, [Landroid/util/Range;

    invoke-static {v6, v6}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    aput-object v2, v1, v5

    move-object v3, v1

    .line 1553
    :cond_7
    :goto_2
    const-string v1, "bitrate-range"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1554
    nop

    .line 1555
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v1

    .line 1554
    invoke-virtual {v4, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 1558
    :cond_8
    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$AudioCapabilities;->applyLimits([Landroid/util/Range;Landroid/util/Range;)V

    .line 1559
    return-void
.end method

.method private greylist-max-o supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "sampleRate"    # Ljava/lang/Integer;
    .param p2, "inputChannels"    # Ljava/lang/Integer;

    .line 1350
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1351
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    invoke-static {v1, p2}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    move-result v1

    .line 1353
    .local v1, "ix":I
    if-gez v1, :cond_0

    .line 1354
    return v0

    .line 1357
    .end local v1    # "ix":I
    :cond_0
    if-eqz p1, :cond_1

    .line 1358
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    invoke-static {v1, p1}, Landroid/media/Utils;->binarySearchDistinctRanges([Landroid/util/Range;Ljava/lang/Comparable;)I

    move-result v1

    .line 1360
    .restart local v1    # "ix":I
    if-gez v1, :cond_1

    .line 1361
    return v0

    .line 1364
    .end local v1    # "ix":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1237
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public greylist-max-o getDefaultFormat(Landroid/media/MediaFormat;)V
    .locals 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1564
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1565
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "bitrate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1567
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1569
    const-string v0, "channel-count"

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1571
    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    if-eqz v0, :cond_2

    array-length v2, v0

    if-ne v2, v1, :cond_2

    .line 1572
    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v1, "sample-rate"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1574
    :cond_2
    return-void
.end method

.method public whitelist getInputChannelCountRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getMaxInputChannelCount()I
    .locals 3

    .line 1275
    const/4 v0, 0x0

    .line 1276
    .local v0, "overall_max":I
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1277
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1278
    .local v2, "lmax":I
    if-le v2, v0, :cond_0

    .line 1279
    move v0, v2

    .line 1276
    .end local v2    # "lmax":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1282
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public whitelist getMinInputChannelCount()I
    .locals 3

    .line 1294
    const/16 v0, 0x1e

    .line 1295
    .local v0, "overall_min":I
    iget-object v1, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1296
    iget-object v2, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mInputChannelRanges:[Landroid/util/Range;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1297
    .local v2, "lmin":I
    if-ge v2, v0, :cond_0

    .line 1298
    move v0, v2

    .line 1295
    .end local v2    # "lmin":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1301
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public whitelist getSupportedSampleRateRanges()[Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRateRanges:[Landroid/util/Range;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getSupportedSampleRates()[I
    .locals 2

    .line 1246
    iget-object v0, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mSampleRates:[I

    if-eqz v0, :cond_0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist isSampleRateSupported(I)Z
    .locals 2
    .param p1, "sampleRate"    # I

    .line 1371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 5
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 1578
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1579
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "sample-rate"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1580
    .local v1, "sampleRate":Ljava/lang/Integer;
    const-string v2, "channel-count"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1582
    .local v2, "channels":Ljava/lang/Integer;
    invoke-direct {p0, v1, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1583
    return v4

    .line 1586
    :cond_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$AudioCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-$$Nest$smsupportsBitrate(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1587
    return v4

    .line 1593
    :cond_1
    const/4 v3, 0x1

    return v3
.end method
