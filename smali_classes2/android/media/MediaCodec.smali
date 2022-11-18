.class public final Landroid/media/MediaCodec;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$MetricsConstants;,
        Landroid/media/MediaCodec$MediaImage;,
        Landroid/media/MediaCodec$Callback;,
        Landroid/media/MediaCodec$ParameterDescriptor;,
        Landroid/media/MediaCodec$OnFrameRenderedListener;,
        Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;,
        Landroid/media/MediaCodec$VideoScalingMode;,
        Landroid/media/MediaCodec$OutputFrame;,
        Landroid/media/MediaCodec$BufferMap;,
        Landroid/media/MediaCodec$OutputBufferInfo;,
        Landroid/media/MediaCodec$QueueRequest;,
        Landroid/media/MediaCodec$LinearBlock;,
        Landroid/media/MediaCodec$CryptoInfo;,
        Landroid/media/MediaCodec$CryptoException;,
        Landroid/media/MediaCodec$CodecException;,
        Landroid/media/MediaCodec$PersistentSurface;,
        Landroid/media/MediaCodec$IncompatibleWithBlockModelException;,
        Landroid/media/MediaCodec$ConfigureFlag;,
        Landroid/media/MediaCodec$EventHandler;,
        Landroid/media/MediaCodec$BufferFlag;,
        Landroid/media/MediaCodec$BufferInfo;
    }
.end annotation


# static fields
.field public static final whitelist BUFFER_FLAG_CODEC_CONFIG:I = 0x2

.field public static final whitelist BUFFER_FLAG_END_OF_STREAM:I = 0x4

.field public static final whitelist BUFFER_FLAG_KEY_FRAME:I = 0x1

.field public static final greylist-max-o BUFFER_FLAG_MUXER_DATA:I = 0x10

.field public static final whitelist BUFFER_FLAG_PARTIAL_FRAME:I = 0x8

.field public static final whitelist BUFFER_FLAG_SYNC_FRAME:I = 0x1

.field private static final blacklist BUFFER_MODE_BLOCK:I = 0x1

.field private static final blacklist BUFFER_MODE_INVALID:I = -0x1

.field private static final blacklist BUFFER_MODE_LEGACY:I = 0x0

.field private static final greylist-max-o CB_ERROR:I = 0x3

.field private static final greylist-max-o CB_INPUT_AVAILABLE:I = 0x1

.field private static final greylist-max-o CB_OUTPUT_AVAILABLE:I = 0x2

.field private static final greylist-max-o CB_OUTPUT_FORMAT_CHANGE:I = 0x4

.field public static final whitelist CONFIGURE_FLAG_ENCODE:I = 0x1

.field public static final whitelist CONFIGURE_FLAG_USE_BLOCK_MODEL:I = 0x2

.field public static final whitelist CRYPTO_MODE_AES_CBC:I = 0x2

.field public static final whitelist CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final whitelist CRYPTO_MODE_UNENCRYPTED:I = 0x0

.field private static final greylist-max-o EVENT_CALLBACK:I = 0x1

.field private static final blacklist EVENT_FIRST_TUNNEL_FRAME_READY:I = 0x4

.field private static final greylist-max-o EVENT_FRAME_RENDERED:I = 0x3

.field private static final greylist-max-o EVENT_SET_CALLBACK:I = 0x2

.field public static final whitelist INFO_OUTPUT_BUFFERS_CHANGED:I = -0x3

.field public static final whitelist INFO_OUTPUT_FORMAT_CHANGED:I = -0x2

.field public static final whitelist INFO_TRY_AGAIN_LATER:I = -0x1

.field public static final whitelist PARAMETER_KEY_HDR10_PLUS_INFO:Ljava/lang/String; = "hdr10-plus-info"

.field public static final whitelist PARAMETER_KEY_LOW_LATENCY:Ljava/lang/String; = "low-latency"

.field public static final whitelist PARAMETER_KEY_OFFSET_TIME:Ljava/lang/String; = "time-offset-us"

.field public static final whitelist PARAMETER_KEY_REQUEST_SYNC_FRAME:Ljava/lang/String; = "request-sync"

.field public static final whitelist PARAMETER_KEY_SUSPEND:Ljava/lang/String; = "drop-input-frames"

.field public static final whitelist PARAMETER_KEY_SUSPEND_TIME:Ljava/lang/String; = "drop-start-time-us"

.field public static final whitelist PARAMETER_KEY_TUNNEL_PEEK:Ljava/lang/String; = "tunnel-peek"

.field public static final whitelist PARAMETER_KEY_VIDEO_BITRATE:Ljava/lang/String; = "video-bitrate"

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final whitelist VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final greylist-max-o mBufferLock:Ljava/lang/Object;

.field private blacklist mBufferMode:I

.field private greylist-max-o mCachedInputBuffers:[Ljava/nio/ByteBuffer;

.field private greylist-max-o mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

.field private greylist-max-o mCallback:Landroid/media/MediaCodec$Callback;

.field private greylist-max-o mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mCodecInfo:Landroid/media/MediaCodecInfo;

.field private final greylist-max-o mCodecInfoLock:Ljava/lang/Object;

.field private blacklist mCrypto:Landroid/media/MediaCrypto;

.field private final greylist-max-o mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final greylist-max-o mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final greylist-max-o mDequeuedOutputInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEventHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mHasSurface:Z

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private blacklist mNameAtCreation:Ljava/lang/String;

.field private greylist-max-p mNativeContext:J

.field private final blacklist mNativeContextLock:Ljava/util/concurrent/locks/Lock;

.field private blacklist mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

.field private blacklist mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

.field private greylist-max-o mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

.field private greylist-max-o mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

.field private final blacklist mOutputFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$OutputFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQueueRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$QueueRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBufferLock(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBufferMode(Landroid/media/MediaCodec;)I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCachedInputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCachedOutputBuffers(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnFirstTunnelFrameReadyListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnFrameRenderedListener(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputFrames(Landroid/media/MediaCodec;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueueRequests(Landroid/media/MediaCodec;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallback(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_queueHardwareBuffer(Landroid/media/MediaCodec;ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/media/MediaCodec;->native_queueHardwareBuffer(ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnative_queueLinearBlock(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$LinearBlock;IILandroid/media/MediaCodec$CryptoInfo;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroid/media/MediaCodec;->native_queueLinearBlock(ILandroid/media/MediaCodec$LinearBlock;IILandroid/media/MediaCodec$CryptoInfo;JILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateInputByteBuffer(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mvalidateOutputByteBuffer(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_closeMediaImage(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/MediaCodec;->native_closeMediaImage(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnative_releasePersistentInputSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-static {p0}, Landroid/media/MediaCodec;->native_releasePersistentInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 5038
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5039
    invoke-static {}, Landroid/media/MediaCodec;->native_init()V

    .line 5040
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsType"    # Z
    .param p3, "encoder"    # Z

    .line 1977
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZII)V

    .line 1978
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ZZII)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsType"    # Z
    .param p3, "encoder"    # Z
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 1981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1724
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    .line 1726
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mCodecInfoLock:Ljava/lang/Object;

    .line 1880
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2166
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaCodec;->mBufferMode:I

    .line 3481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 3827
    new-instance v0, Landroid/media/MediaCodec$BufferMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$BufferMap-IA;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 3828
    new-instance v0, Landroid/media/MediaCodec$BufferMap;

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$BufferMap-IA;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    .line 3829
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    .line 4257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    .line 5042
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/MediaCodec;->mNativeContext:J

    .line 5044
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    .line 1983
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v2, v0

    .local v2, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 1984
    new-instance v0, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_0

    .line 1985
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v2, v0

    if-eqz v0, :cond_1

    .line 1986
    new-instance v0, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_0

    .line 1988
    :cond_1
    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    .line 1990
    :goto_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    .line 1991
    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    .line 1992
    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    .line 1994
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    .line 1997
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    .line 1999
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaCodec;->native_setup(Ljava/lang/String;ZZII)V

    .line 2000
    return-void
.end method

.method private final greylist-max-o cacheBuffers(Z)V
    .locals 2
    .param p1, "input"    # Z

    .line 3916
    const/4 v0, 0x0

    .line 3918
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getBuffers(Z)[Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    .line 3919
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3922
    goto :goto_0

    .line 3920
    :catch_0
    move-exception v1

    .line 3923
    :goto_0
    if-eqz p1, :cond_0

    .line 3924
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 3926
    :cond_0
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 3928
    :goto_1
    return-void
.end method

.method private greylist-max-o configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
    .locals 12
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "descramblerBinder"    # Landroid/os/IHwBinder;
    .param p5, "flags"    # I

    .line 2172
    move-object v8, p0

    move-object v9, p3

    if-eqz v9, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 2173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use crypto and descrambler together!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2176
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2177
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 2179
    .local v1, "values":[Ljava/lang/Object;
    if-eqz p1, :cond_4

    .line 2180
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v2

    .line 2181
    .local v2, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 2182
    .end local v0    # "keys":[Ljava/lang/String;
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 2184
    const/4 v0, 0x0

    .line 2185
    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    .line 2186
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "audio-session-id"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2187
    const/4 v7, 0x0

    .line 2189
    .local v7, "sessionId":I
    :try_start_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    .end local v7    # "sessionId":I
    .local v0, "sessionId":I
    nop

    .line 2194
    const-string v7, "audio-hw-sync"

    aput-object v7, v3, v5

    .line 2195
    invoke-static {v0}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v5

    .line 2196
    .end local v0    # "sessionId":I
    goto :goto_2

    .line 2191
    .restart local v7    # "sessionId":I
    :catch_0
    move-exception v0

    .line 2192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "Wrong Session ID Parameter!"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2197
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "sessionId":I
    :cond_2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v5

    .line 2198
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    .line 2200
    :goto_2
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v5, v5, 0x1

    .line 2201
    goto :goto_1

    .line 2185
    :cond_3
    move-object v11, v1

    move-object v10, v3

    goto :goto_3

    .line 2179
    .end local v2    # "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v5    # "i":I
    .local v0, "keys":[Ljava/lang/String;
    :cond_4
    move-object v10, v0

    move-object v11, v1

    .line 2204
    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "values":[Ljava/lang/Object;
    .local v10, "keys":[Ljava/lang/String;
    .local v11, "values":[Ljava/lang/Object;
    :goto_3
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v0

    :goto_4
    iput-boolean v2, v8, Landroid/media/MediaCodec;->mHasSurface:Z

    .line 2205
    iput-object v9, v8, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2206
    iget-object v2, v8, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2207
    and-int/lit8 v3, p5, 0x2

    if-eqz v3, :cond_6

    .line 2208
    :try_start_1
    iput v1, v8, Landroid/media/MediaCodec;->mBufferMode:I

    goto :goto_5

    .line 2210
    :cond_6
    iput v0, v8, Landroid/media/MediaCodec;->mBufferMode:I

    .line 2212
    :goto_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2214
    move-object v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaCodec;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2215
    return-void

    .line 2212
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static whitelist createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1947
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createByCodecNameForClient(Ljava/lang/String;II)Landroid/media/MediaCodec;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "clientPid"    # I
    .param p2, "clientUid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1972
    new-instance v6, Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZII)V

    return-object v6
.end method

.method public static whitelist createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1914
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1932
    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static whitelist createPersistentInputSurface()Landroid/view/Surface;
    .locals 1

    .line 2250
    invoke-static {}, Landroid/media/MediaCodec;->native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;

    move-result-object v0

    return-object v0
.end method

.method private final greylist-max-o freeAllTrackedBuffers()V
    .locals 2

    .line 3903
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3904
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 3905
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 3906
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    .line 3907
    iput-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 3908
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 3909
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 3910
    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3911
    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3912
    monitor-exit v0

    .line 3913
    return-void

    .line 3912
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final greylist-max-o freeByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 3888
    if-eqz p1, :cond_0

    .line 3890
    invoke-static {p1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 3892
    :cond_0
    return-void
.end method

.method private final greylist-max-o freeByteBuffers([Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 3895
    if-eqz p1, :cond_0

    .line 3896
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3897
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v2}, Landroid/media/MediaCodec;->freeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 3896
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3900
    :cond_0
    return-void
.end method

.method private final native greylist-max-o getBuffer(ZI)Ljava/nio/ByteBuffer;
.end method

.method private final native greylist getBuffers(Z)[Ljava/nio/ByteBuffer;
.end method

.method private greylist-max-o getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "lastHandler"    # Landroid/media/MediaCodec$EventHandler;

    .line 4919
    if-nez p1, :cond_0

    .line 4920
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    return-object v0

    .line 4922
    :cond_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4923
    .local v0, "looper":Landroid/os/Looper;
    invoke-virtual {p2}, Landroid/media/MediaCodec$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 4924
    return-object p2

    .line 4926
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    return-object v1
.end method

.method private final native greylist-max-o getFormatNative(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native greylist-max-o getImage(ZI)Landroid/media/Image;
.end method

.method private final native greylist-max-o getOutputFormatNative(I)Ljava/util/Map;
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

.method private final native greylist-max-o getOwnCodecInfo()Landroid/media/MediaCodecInfo;
.end method

.method private final greylist-max-o invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    .line 3835
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 3836
    aget-object v0, p1, p2

    .line 3837
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 3838
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 3841
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private final greylist-max-o invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;

    .line 3878
    if-eqz p1, :cond_1

    .line 3879
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 3880
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v3, :cond_0

    .line 3881
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 3879
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3885
    :cond_1
    return-void
.end method

.method private final blacklist lockAndGetContext()J
    .locals 2

    .line 5047
    iget-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5048
    iget-wide v0, p0, Landroid/media/MediaCodec;->mNativeContext:J

    return-wide v0
.end method

.method public static whitelist mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;
    .locals 1
    .param p0, "hardwareBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 3151
    invoke-static {p0}, Landroid/media/MediaCodec;->native_mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist native_closeMediaImage(J)V
.end method

.method private final native greylist-max-o native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
.end method

.method private static final native greylist-max-o native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;
.end method

.method private final native greylist-max-o native_dequeueInputBuffer(J)I
.end method

.method private final native greylist-max-o native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
.end method

.method private native blacklist native_enableOnFirstTunnelFrameReadyListener(Z)V
.end method

.method private native greylist-max-o native_enableOnFrameRenderedListener(Z)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_flush()V
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private native blacklist native_getOutputFrame(Landroid/media/MediaCodec$OutputFrame;I)V
.end method

.method private native blacklist native_getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;
.end method

.method private native blacklist native_getSupportedVendorParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private static native blacklist native_mapHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/media/Image;
.end method

.method private native blacklist native_queueHardwareBuffer(ILandroid/hardware/HardwareBuffer;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/HardwareBuffer;",
            "JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_queueInputBuffer(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private native blacklist native_queueLinearBlock(ILandroid/media/MediaCodec$LinearBlock;IILandroid/media/MediaCodec$CryptoInfo;JILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/media/MediaCodec$LinearBlock;",
            "II",
            "Landroid/media/MediaCodec$CryptoInfo;",
            "JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method private final native greylist-max-o native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native greylist-max-o native_release()V
.end method

.method private static final native greylist-max-o native_releasePersistentInputSurface(Landroid/view/Surface;)V
.end method

.method private final native greylist-max-o native_reset()V
.end method

.method private native blacklist native_setAudioPresentation(II)V
.end method

.method private final native greylist-max-o native_setCallback(Landroid/media/MediaCodec$Callback;)V
.end method

.method private final native greylist-max-o native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private native greylist-max-o native_setSurface(Landroid/view/Surface;)V
.end method

.method private final native blacklist native_setup(Ljava/lang/String;ZZII)V
.end method

.method private final native greylist-max-o native_start()V
.end method

.method private final native greylist-max-o native_stop()V
.end method

.method private native blacklist native_subscribeToVendorParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native blacklist native_unsubscribeFromVendorParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private greylist-max-o postEventFromNative(IIILjava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 4974
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4975
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    .line 4976
    .local v1, "handler":Landroid/media/MediaCodec$EventHandler;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 4977
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    move-object v1, v2

    goto :goto_0

    .line 4978
    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 4979
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    move-object v1, v2

    goto :goto_0

    .line 4980
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 4981
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    move-object v1, v2

    .line 4983
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 4984
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4985
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4987
    .end local v1    # "handler":Landroid/media/MediaCodec$EventHandler;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    monitor-exit v0

    .line 4988
    return-void

    .line 4987
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final native greylist releaseOutputBuffer(IZZJ)V
.end method

.method private blacklist releaseOutputBufferInternal(IZZJ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "render"    # Z
    .param p3, "updatePts"    # Z
    .param p4, "renderTimestampNs"    # J

    .line 3669
    const/4 v0, 0x0

    .line 3670
    .local v0, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3671
    :try_start_0
    iget v2, p0, Landroid/media/MediaCodec;->mBufferMode:I

    packed-switch v2, :pswitch_data_0

    .line 3685
    new-instance v2, Ljava/lang/IllegalStateException;

    goto :goto_1

    .line 3680
    :pswitch_0
    iget-object v2, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$OutputFrame;

    .line 3681
    .local v2, "frame":Landroid/media/MediaCodec$OutputFrame;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec$OutputFrame;->setAccessible(Z)V

    .line 3682
    invoke-virtual {v2}, Landroid/media/MediaCodec$OutputFrame;->clear()V

    .line 3683
    goto :goto_0

    .line 3673
    .end local v2    # "frame":Landroid/media/MediaCodec$OutputFrame;
    :pswitch_1
    iget-object v2, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 3674
    iget-object v2, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v2, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 3675
    iget-boolean v2, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v2, :cond_0

    .line 3676
    iget-object v2, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    move-object v0, v2

    .line 3688
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3689
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    .line 3691
    return-void

    .line 3685
    :goto_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized buffer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaCodec;->mBufferMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    .end local p2    # "render":Z
    .end local p3    # "updatePts":Z
    .end local p4    # "renderTimestampNs":J
    throw v2

    .line 3688
    .restart local v0    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .restart local p2    # "render":Z
    .restart local p3    # "updatePts":Z
    .restart local p4    # "renderTimestampNs":J
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final greylist-max-o revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    .line 3856
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3857
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    :try_start_0
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .line 3858
    aget-object v1, p1, p2

    .line 3859
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 3860
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 3863
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    monitor-exit v0

    .line 3864
    return-void

    .line 3863
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final blacklist setAndUnlockContext(J)V
    .locals 1
    .param p1, "context"    # J

    .line 5052
    iput-wide p1, p0, Landroid/media/MediaCodec;->mNativeContext:J

    .line 5053
    iget-object v0, p0, Landroid/media/MediaCodec;->mNativeContextLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5054
    return-void
.end method

.method private final native greylist setParameters([Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method private final greylist-max-o validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I

    .line 3845
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 3846
    aget-object v0, p1, p2

    .line 3847
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 3848
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 3849
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 3852
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method

.method private final greylist-max-o validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$BufferInfo;

    .line 3868
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 3869
    aget-object v0, p1, p2

    .line 3870
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 3871
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 3872
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 3875
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist configure(Landroid/media/MediaFormat;Landroid/view/Surface;ILandroid/media/MediaDescrambler;)V
    .locals 7
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "flags"    # I
    .param p4, "descrambler"    # Landroid/media/MediaDescrambler;

    .line 2159
    nop

    .line 2160
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/media/MediaDescrambler;->getBinder()Landroid/os/IHwBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 2159
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2161
    return-void
.end method

.method public whitelist configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "crypto"    # Landroid/media/MediaCrypto;
    .param p4, "flags"    # I

    .line 2130
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    .line 2131
    return-void
.end method

.method public final native whitelist createInputSurface()Landroid/view/Surface;
.end method

.method public final whitelist dequeueInputBuffer(J)I
    .locals 3
    .param p1, "timeoutUs"    # J

    .line 2969
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2970
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2975
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2976
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->native_dequeueInputBuffer(J)I

    move-result v0

    .line 2977
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 2978
    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2979
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 2980
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2982
    :cond_0
    :goto_0
    return v0

    .line 2971
    .end local v0    # "res":I
    :cond_1
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "dequeueInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use MediaCodec.Callback objectes to get input buffer slots."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "timeoutUs":J
    throw v1

    .line 2975
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "timeoutUs":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public final whitelist dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .locals 5
    .param p1, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p2, "timeoutUs"    # J

    .line 3566
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3567
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3572
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3573
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 3574
    .local v1, "res":I
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3575
    const/4 v0, -0x3

    if-ne v1, v0, :cond_0

    .line 3576
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    goto :goto_0

    .line 3583
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3577
    :cond_0
    if-ltz v1, :cond_1

    .line 3578
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, p1}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    .line 3579
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_1

    .line 3580
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaCodec$BufferInfo;->dup()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    :cond_1
    :goto_0
    monitor-exit v2

    .line 3584
    return v1

    .line 3583
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3568
    .end local v1    # "res":I
    :cond_2
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "dequeueOutputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use MediaCodec.Callback objects to get output buffer slots."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local p2    # "timeoutUs":J
    throw v1

    .line 3572
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local p2    # "timeoutUs":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 2006
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_finalize()V

    .line 2007
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2008
    return-void
.end method

.method public final whitelist flush()V
    .locals 2

    .line 2382
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2383
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 2384
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    .line 2385
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 2386
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1}, Landroid/media/MediaCodec$BufferMap;->clear()V

    .line 2387
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_flush()V

    .line 2389
    return-void

    .line 2387
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final native whitelist getCanonicalName()Ljava/lang/String;
.end method

.method public whitelist getCodecInfo()Landroid/media/MediaCodecInfo;
    .locals 3

    .line 5003
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5004
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaCodec;->mCodecInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5005
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    if-nez v2, :cond_0

    .line 5008
    invoke-direct {p0}, Landroid/media/MediaCodec;->getOwnCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 5009
    if-nez v2, :cond_0

    .line 5010
    invoke-static {v0}, Landroid/media/MediaCodecList;->getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    .line 5013
    :cond_0
    iget-object v2, p0, Landroid/media/MediaCodec;->mCodecInfo:Landroid/media/MediaCodecInfo;

    monitor-exit v1

    return-object v2

    .line 5014
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I

    .line 4023
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4024
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4030
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4031
    invoke-direct {p0, v2, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4032
    .local v1, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4033
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 4034
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 4035
    monitor-exit v2

    .line 4036
    return-object v1

    .line 4035
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4025
    .end local v1    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4030
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist getInputBuffers()[Ljava/nio/ByteBuffer;
    .locals 3

    .line 3950
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3951
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3957
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 3961
    monitor-exit v0

    return-object v1

    .line 3958
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 3952
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getInputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 3962
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist getInputFormat()Landroid/media/MediaFormat;
    .locals 2

    .line 3735
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getInputImage(I)Landroid/media/Image;
    .locals 3
    .param p1, "index"    # I

    .line 4060
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4061
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4067
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4068
    invoke-direct {p0, v2, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v1

    .line 4069
    .local v1, "newImage":Landroid/media/Image;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4070
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 4071
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 4072
    monitor-exit v2

    .line 4073
    return-object v1

    .line 4072
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4062
    .end local v1    # "newImage":Landroid/media/Image;
    :cond_0
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getInputImage() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please obtain MediaCodec.LinearBlock or HardwareBuffer objects and attach to QueueRequest objects."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4067
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .locals 1

    .line 4394
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 4395
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public final whitelist getName()Ljava/lang/String;
    .locals 2

    .line 4368
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 4369
    .local v0, "canonicalName":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaCodec;->mNameAtCreation:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public whitelist getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I

    .line 4097
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4098
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4105
    .local v1, "newBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4106
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 4107
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V

    .line 4108
    monitor-exit v2

    .line 4109
    return-object v1

    .line 4108
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4099
    .end local v1    # "newBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getOutputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame() to get output frames."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4103
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist getOutputBuffers()[Ljava/nio/ByteBuffer;
    .locals 3

    .line 3989
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3990
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3995
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 3999
    monitor-exit v0

    return-object v1

    .line 3996
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 3991
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :cond_1
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getOutputBuffers() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame to get output frames."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    throw v1

    .line 4000
    .restart local p0    # "this":Landroid/media/MediaCodec;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist getOutputFormat()Landroid/media/MediaFormat;
    .locals 2

    .line 3720
    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final whitelist getOutputFormat(I)Landroid/media/MediaFormat;
    .locals 2
    .param p1, "index"    # I

    .line 3749
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getOutputFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public whitelist getOutputFrame(I)Landroid/media/MediaCodec$OutputFrame;
    .locals 5
    .param p1, "index"    # I

    .line 4270
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4271
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 4274
    if-ltz p1, :cond_3

    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 4278
    iget-object v1, p0, Landroid/media/MediaCodec;->mOutputFrames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$OutputFrame;

    .line 4279
    .local v1, "frame":Landroid/media/MediaCodec$OutputFrame;
    if-eqz v1, :cond_2

    .line 4282
    invoke-virtual {v1}, Landroid/media/MediaCodec$OutputFrame;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4286
    invoke-virtual {v1}, Landroid/media/MediaCodec$OutputFrame;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4287
    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->native_getOutputFrame(Landroid/media/MediaCodec$OutputFrame;I)V

    .line 4288
    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$OutputFrame;->setLoaded(Z)V

    .line 4290
    :cond_0
    monitor-exit v0

    return-object v1

    .line 4283
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The output frame is stale at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 4280
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unavailable index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 4275
    .end local v1    # "frame":Landroid/media/MediaCodec$OutputFrame;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected range of index: [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 4276
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]; actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4272
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The codec is not configured for block model"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4291
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getOutputImage(I)Landroid/media/Image;
    .locals 3
    .param p1, "index"    # I

    .line 4132
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4133
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4139
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v1

    .line 4140
    .local v1, "newImage":Landroid/media/Image;
    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4141
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 4142
    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V

    .line 4143
    monitor-exit v2

    .line 4144
    return-object v1

    .line 4143
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4134
    .end local v1    # "newImage":Landroid/media/Image;
    :cond_0
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "getOutputImage() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getOutputFrame() to get output frames."

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 4138
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 4850
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_getParameterDescriptor(Ljava/lang/String;)Landroid/media/MediaCodec$ParameterDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getQueueRequest(I)Landroid/media/MediaCodec$QueueRequest;
    .locals 5
    .param p1, "index"    # I

    .line 3494
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3495
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3498
    if-ltz p1, :cond_2

    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 3502
    iget-object v1, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec$QueueRequest;

    .line 3503
    .local v1, "request":Landroid/media/MediaCodec$QueueRequest;
    if-eqz v1, :cond_1

    .line 3506
    invoke-virtual {v1}, Landroid/media/MediaCodec$QueueRequest;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3510
    invoke-virtual {v1}, Landroid/media/MediaCodec$QueueRequest;->clear()Landroid/media/MediaCodec$QueueRequest;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 3507
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The request is stale at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 3504
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unavailable index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v2

    .line 3499
    .end local v1    # "request":Landroid/media/MediaCodec$QueueRequest;
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected range of index: [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaCodec;->mQueueRequests:Ljava/util/ArrayList;

    .line 3500
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]; actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 3496
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The codec is not configured for block model"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    throw v1

    .line 3511
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSupportedVendorParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4785
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getSupportedVendorParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist queueInputBuffer(IIIJI)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .line 2662
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2663
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2668
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 2669
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 2670
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2672
    :try_start_1
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2677
    nop

    .line 2678
    return-void

    .line 2674
    :catch_0
    move-exception v0

    .line 2675
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 2676
    throw v0

    .line 2664
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "queueInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    .end local p2    # "offset":I
    .end local p3    # "size":I
    .end local p4    # "presentationTimeUs":J
    .end local p6    # "flags":I
    throw v1

    .line 2670
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .restart local p2    # "offset":I
    .restart local p3    # "size":I
    .restart local p4    # "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "info"    # Landroid/media/MediaCodec$CryptoInfo;
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    .line 2932
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2933
    :try_start_0
    iget v1, p0, Landroid/media/MediaCodec;->mBufferMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2938
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 2939
    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    .line 2940
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2942
    :try_start_1
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2947
    nop

    .line 2948
    return-void

    .line 2944
    :catch_0
    move-exception v0

    .line 2945
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    .line 2946
    throw v0

    .line 2934
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :try_start_2
    new-instance v1, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;

    const-string v2, "queueSecureInputBuffer() is not compatible with CONFIGURE_FLAG_USE_BLOCK_MODEL. Please use getQueueRequest() to queue buffers"

    invoke-direct {v1, p0, v2}, Landroid/media/MediaCodec$IncompatibleWithBlockModelException;-><init>(Landroid/media/MediaCodec;Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec;
    .end local p1    # "index":I
    .end local p2    # "offset":I
    .end local p3    # "info":Landroid/media/MediaCodec$CryptoInfo;
    .end local p4    # "presentationTimeUs":J
    .end local p6    # "flags":I
    throw v1

    .line 2940
    .restart local p0    # "this":Landroid/media/MediaCodec;
    .restart local p1    # "index":I
    .restart local p2    # "offset":I
    .restart local p3    # "info":Landroid/media/MediaCodec$CryptoInfo;
    .restart local p4    # "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final whitelist release()V
    .locals 1

    .line 2036
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2037
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_release()V

    .line 2038
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2039
    return-void
.end method

.method public final whitelist releaseOutputBuffer(IJ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "renderTimestampNs"    # J

    .line 3663
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBufferInternal(IZZJ)V

    .line 3665
    return-void
.end method

.method public final whitelist releaseOutputBuffer(IZ)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "render"    # Z

    .line 3610
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBufferInternal(IZZJ)V

    .line 3611
    return-void
.end method

.method public final whitelist reset()V
    .locals 1

    .line 2021
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2022
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_reset()V

    .line 2023
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCrypto:Landroid/media/MediaCrypto;

    .line 2024
    return-void
.end method

.method public whitelist setAudioPresentation(Landroid/media/AudioPresentation;)V
    .locals 2
    .param p1, "presentation"    # Landroid/media/AudioPresentation;

    .line 4343
    if-eqz p1, :cond_0

    .line 4346
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec;->native_setAudioPresentation(II)V

    .line 4347
    return-void

    .line 4344
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "audio presentation is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCallback(Landroid/media/MediaCodec$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/media/MediaCodec$Callback;

    .line 4659
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 4660
    return-void
.end method

.method public whitelist setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/MediaCodec$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4618
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 4619
    iget-object v2, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4620
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v3}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v3

    .line 4624
    .local v3, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v4, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v3, v4, :cond_0

    .line 4625
    invoke-virtual {v4, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 4626
    iget-object v4, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v4, v0}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 4627
    iput-object v3, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    .line 4629
    .end local v3    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4630
    :cond_1
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v2, :cond_2

    .line 4631
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 4632
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 4635
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v0, :cond_3

    .line 4637
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4638
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4644
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 4646
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public whitelist setInputSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2277
    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    if-eqz v0, :cond_0

    .line 2280
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setInputSurface(Landroid/view/Surface;)V

    .line 2281
    return-void

    .line 2278
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a PersistentSurface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnFirstTunnelFrameReadyListener(Landroid/os/Handler;Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    .line 4692
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4693
    :try_start_0
    iput-object p2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyListener:Landroid/media/MediaCodec$OnFirstTunnelFrameReadyListener;

    .line 4694
    const/4 v1, 0x4

    if-eqz p2, :cond_1

    .line 4695
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p1, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v2

    .line 4698
    .local v2, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v3, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v2, v3, :cond_0

    .line 4699
    invoke-virtual {v3, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 4701
    :cond_0
    iput-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    .end local v2    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    goto :goto_0

    .line 4702
    :cond_1
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v2, :cond_2

    .line 4703
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    goto :goto_1

    .line 4702
    :cond_2
    :goto_0
    nop

    .line 4705
    :goto_1
    if-eqz p2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->native_enableOnFirstTunnelFrameReadyListener(Z)V

    .line 4706
    monitor-exit v0

    .line 4707
    return-void

    .line 4706
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaCodec$OnFrameRenderedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4756
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4757
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    .line 4758
    const/4 v1, 0x3

    if-eqz p1, :cond_1

    .line 4759
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v2

    .line 4760
    .local v2, "newHandler":Landroid/media/MediaCodec$EventHandler;
    iget-object v3, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v2, v3, :cond_0

    .line 4761
    invoke-virtual {v3, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 4763
    :cond_0
    iput-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    .end local v2    # "newHandler":Landroid/media/MediaCodec$EventHandler;
    goto :goto_0

    .line 4764
    :cond_1
    iget-object v2, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v2, :cond_2

    .line 4765
    invoke-virtual {v2, v1}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    goto :goto_1

    .line 4764
    :cond_2
    :goto_0
    nop

    .line 4767
    :goto_1
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->native_enableOnFrameRenderedListener(Z)V

    .line 4768
    monitor-exit v0

    .line 4769
    return-void

    .line 4768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOutputSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2230
    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_0

    .line 2233
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setSurface(Landroid/view/Surface;)V

    .line 2234
    return-void

    .line 2231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "codec was not configured for an output surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist setParameters(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "params"    # Landroid/os/Bundle;

    .line 4561
    if-nez p1, :cond_0

    .line 4562
    return-void

    .line 4565
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 4566
    .local v0, "keys":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4568
    .local v1, "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 4569
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4570
    .local v4, "key":Ljava/lang/String;
    const-string v5, "audio-session-id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4571
    const/4 v5, 0x0

    .line 4573
    .local v5, "sessionId":I
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 4576
    nop

    .line 4577
    const-string v6, "audio-hw-sync"

    aput-object v6, v0, v2

    .line 4578
    invoke-static {v5}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    .line 4579
    .end local v5    # "sessionId":I
    goto :goto_1

    .line 4574
    .restart local v5    # "sessionId":I
    :catch_0
    move-exception v3

    .line 4575
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wrong Session ID Parameter!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4580
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "sessionId":I
    :cond_1
    aput-object v4, v0, v2

    .line 4581
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 4584
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, [B

    if-eqz v6, :cond_2

    .line 4585
    move-object v6, v5

    check-cast v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v1, v2

    goto :goto_1

    .line 4587
    :cond_2
    aput-object v5, v1, v2

    .line 4590
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    nop

    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 4591
    goto :goto_0

    .line 4593
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodec;->setParameters([Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4594
    return-void
.end method

.method public final native whitelist setVideoScalingMode(I)V
.end method

.method public final native whitelist signalEndOfInputStream()V
.end method

.method public final whitelist start()V
    .locals 2

    .line 2322
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_start()V

    .line 2323
    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2324
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    .line 2325
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    .line 2326
    monitor-exit v0

    .line 2327
    return-void

    .line 2326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist stop()V
    .locals 3

    .line 2338
    invoke-direct {p0}, Landroid/media/MediaCodec;->native_stop()V

    .line 2339
    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    .line 2341
    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2342
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_0

    .line 2343
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2344
    iget-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2346
    :cond_0
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFirstTunnelFrameReadyHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_1

    .line 2347
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2349
    :cond_1
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_2

    .line 2350
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    .line 2352
    :cond_2
    monitor-exit v0

    .line 2353
    return-void

    .line 2352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist subscribeToVendorParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4881
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_subscribeToVendorParameters(Ljava/util/List;)V

    .line 4882
    return-void
.end method

.method public whitelist unsubscribeFromVendorParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4912
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_unsubscribeFromVendorParameters(Ljava/util/List;)V

    .line 4913
    return-void
.end method
