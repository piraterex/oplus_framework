.class public final Landroid/media/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaExtractor$MetricsConstants;,
        Landroid/media/MediaExtractor$SampleFlag;,
        Landroid/media/MediaExtractor$SeekMode;,
        Landroid/media/MediaExtractor$CasInfo;
    }
.end annotation


# static fields
.field public static final whitelist SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final whitelist SAMPLE_FLAG_PARTIAL_FRAME:I = 0x4

.field public static final whitelist SAMPLE_FLAG_SYNC:I = 0x1

.field public static final whitelist SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final whitelist SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final whitelist SEEK_TO_PREVIOUS_SYNC:I


# instance fields
.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mMediaCas:Landroid/media/MediaCas;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 815
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 816
    invoke-static {}, Landroid/media/MediaExtractor;->native_init()V

    .line 817
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 80
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_setup()V

    .line 81
    return-void
.end method

.method private native greylist-max-o getFileFormatNative()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o getTrackFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method static synthetic blacklist lambda$getDrmInitData$0(Ljava/util/Map$Entry;)Landroid/media/DrmInitData$SchemeInitData;
    .locals 4
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 400
    new-instance v0, Landroid/media/DrmInitData$SchemeInitData;

    .line 401
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "cenc"

    invoke-direct {v0, v1, v3, v2}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 400
    return-object v0
.end method

.method static synthetic blacklist lambda$getDrmInitData$1(I)[Landroid/media/DrmInitData$SchemeInitData;
    .locals 1
    .param p0, "x$0"    # I

    .line 402
    new-array v0, p0, [Landroid/media/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method static synthetic blacklist lambda$getDrmInitData$2(Landroid/media/DrmInitData$SchemeInitData;)Ljava/util/UUID;
    .locals 1
    .param p0, "initData"    # Landroid/media/DrmInitData$SchemeInitData;

    .line 405
    iget-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic blacklist lambda$getDrmInitData$3(Landroid/media/DrmInitData$SchemeInitData;)Landroid/media/DrmInitData$SchemeInitData;
    .locals 0
    .param p0, "initData"    # Landroid/media/DrmInitData$SchemeInitData;

    .line 405
    return-object p0
.end method

.method private final native greylist-max-o nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native greylist-max-o nativeSetMediaCas(Landroid/os/IHwBinder;)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private native blacklist native_getAudioPresentations(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private greylist-max-o toByteArray([B)Ljava/util/ArrayList;
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v0, "byteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 331
    aget-byte v2, p1, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native whitelist advance()Z
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 369
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_finalize()V

    .line 370
    return-void
.end method

.method public whitelist getAudioPresentations(I)Ljava/util/List;
    .locals 1
    .param p1, "trackIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 464
    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->native_getAudioPresentations(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist getCachedDuration()J
.end method

.method public whitelist getCasInfo(I)Landroid/media/MediaExtractor$CasInfo;
    .locals 8
    .param p1, "index"    # I

    .line 344
    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v0

    .line 345
    .local v0, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ca-system-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 347
    .local v1, "systemId":I
    const/4 v2, 0x0

    .line 348
    .local v2, "session":Landroid/media/MediaCas$Session;
    const/4 v3, 0x0

    .line 349
    .local v3, "privateData":[B
    const-string v4, "ca-private-data"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 351
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 352
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v3, v5, [B

    .line 353
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 355
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v4, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    if-eqz v4, :cond_1

    const-string v4, "ca-session-id"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 357
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 358
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 359
    .local v5, "sessionId":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 360
    iget-object v6, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    invoke-direct {p0, v5}, Landroid/media/MediaExtractor;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaCas;->createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;

    move-result-object v2

    .line 362
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "sessionId":[B
    :cond_1
    new-instance v4, Landroid/media/MediaExtractor$CasInfo;

    invoke-direct {v4, v1, v2, v3}, Landroid/media/MediaExtractor$CasInfo;-><init>(ILandroid/media/MediaCas$Session;[B)V

    return-object v4

    .line 364
    .end local v1    # "systemId":I
    .end local v2    # "session":Landroid/media/MediaCas$Session;
    .end local v3    # "privateData":[B
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDrmInitData()Landroid/media/DrmInitData;
    .locals 9

    .line 392
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v0

    .line 393
    .local v0, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 394
    return-object v1

    .line 396
    :cond_0
    const-string v2, "pssh"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v1

    .line 398
    .local v1, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    nop

    .line 399
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 402
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/DrmInitData$SchemeInitData;

    .line 403
    .local v2, "schemeInitDatas":[Landroid/media/DrmInitData$SchemeInitData;
    nop

    .line 404
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/MediaExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Landroid/media/MediaExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 405
    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 404
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 406
    .local v3, "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    new-instance v4, Landroid/media/MediaExtractor$1;

    invoke-direct {v4, p0, v3, v2}, Landroid/media/MediaExtractor$1;-><init>(Landroid/media/MediaExtractor;Ljava/util/Map;[Landroid/media/DrmInitData$SchemeInitData;)V

    return-object v4

    .line 422
    .end local v1    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    .end local v2    # "schemeInitDatas":[Landroid/media/DrmInitData$SchemeInitData;
    .end local v3    # "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 423
    .local v2, "numTracks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 424
    invoke-direct {p0, v3}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v4

    .line 425
    .local v4, "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "crypto-key"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 426
    nop

    .line 423
    .end local v4    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    .restart local v4    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 429
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 430
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 431
    .local v5, "data":[B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 433
    new-instance v6, Landroid/media/DrmInitData$SchemeInitData;

    sget-object v7, Landroid/media/DrmInitData$SchemeInitData;->UUID_NIL:Ljava/util/UUID;

    const-string/jumbo v8, "webm"

    invoke-direct {v6, v7, v8, v5}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 436
    .local v6, "webmSchemeInitData":Landroid/media/DrmInitData$SchemeInitData;
    new-instance v7, Landroid/media/MediaExtractor$2;

    invoke-direct {v7, p0, v6}, Landroid/media/MediaExtractor$2;-><init>(Landroid/media/MediaExtractor;Landroid/media/DrmInitData$SchemeInitData;)V

    return-object v7

    .line 453
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "numTracks":I
    .end local v3    # "i":I
    .end local v4    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "data":[B
    .end local v6    # "webmSchemeInitData":Landroid/media/DrmInitData$SchemeInitData;
    :cond_3
    return-object v1
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 787
    iget-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 803
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 804
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public whitelist getPsshInfo()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v1

    .line 480
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    const-string v2, "pssh"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 482
    .local v3, "rawpssh":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 484
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 487
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 488
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 490
    .local v4, "msb":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 491
    .local v6, "lsb":J
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 492
    .local v2, "uuid":Ljava/util/UUID;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 493
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 494
    .local v8, "datalen":I
    new-array v9, v8, [B

    .line 495
    .local v9, "psshdata":[B
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 496
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v4    # "msb":J
    .end local v6    # "lsb":J
    .end local v8    # "datalen":I
    .end local v9    # "psshdata":[B
    goto :goto_0

    .line 499
    .end local v3    # "rawpssh":Ljava/nio/ByteBuffer;
    :cond_0
    return-object v0
.end method

.method public native whitelist getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
.end method

.method public native whitelist getSampleFlags()I
.end method

.method public native whitelist getSampleSize()J
.end method

.method public native whitelist getSampleTime()J
.end method

.method public native whitelist getSampleTrackIndex()I
.end method

.method public final native whitelist getTrackCount()I
.end method

.method public whitelist getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 2
    .param p1, "index"    # I

    .line 617
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public native whitelist hasCacheReachedEndOfStream()Z
.end method

.method public native whitelist readSampleData(Ljava/nio/ByteBuffer;I)I
.end method

.method public final native whitelist release()V
.end method

.method public native whitelist seekTo(JI)V
.end method

.method public native whitelist selectTrack(I)V
.end method

.method public final whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "scheme":Ljava/lang/String;
    if-eqz v0, :cond_7

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 115
    :cond_0
    const/4 v1, 0x0

    .line 117
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 118
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "r"

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 119
    if-nez v1, :cond_2

    .line 137
    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 120
    :cond_1
    return-void

    .line 125
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 126
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 128
    :cond_3
    nop

    .line 129
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 130
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 131
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    .line 128
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_0
    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 133
    :cond_4
    return-void

    .line 137
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 140
    :cond_5
    throw v2

    .line 135
    :catch_0
    move-exception v2

    .line 137
    if-eqz v1, :cond_6

    .line 138
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 134
    :catch_1
    move-exception v2

    .line 137
    if-eqz v1, :cond_6

    .line 138
    goto :goto_1

    .line 142
    :cond_6
    :goto_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    return-void

    .line 111
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_7
    :goto_3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final whitelist setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 228
    :goto_0
    return-void
.end method

.method public final native whitelist setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 238
    return-void
.end method

.method public final native whitelist setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    nop

    .line 204
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 203
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final whitelist setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 160
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 162
    .local v1, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 163
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 164
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 168
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    .line 169
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 170
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_0
    nop

    .line 175
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 174
    invoke-direct {p0, v2, p1, v0, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .locals 1
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 778
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 779
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaExtractor;->native_setLogSessionId(Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public final whitelist setMediaCas(Landroid/media/MediaCas;)V
    .locals 1
    .param p1, "mediaCas"    # Landroid/media/MediaCas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    iput-object p1, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    .line 266
    invoke-virtual {p1}, Landroid/media/MediaCas;->getBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaExtractor;->nativeSetMediaCas(Landroid/os/IHwBinder;)V

    .line 267
    return-void
.end method

.method public native whitelist unselectTrack(I)V
.end method
