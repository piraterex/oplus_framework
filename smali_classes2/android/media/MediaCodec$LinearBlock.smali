.class public final Landroid/media/MediaCodec$LinearBlock;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinearBlock"
.end annotation


# static fields
.field private static final blacklist sPool:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/media/MediaCodec$LinearBlock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMappable:Z

.field private blacklist mMapped:Ljava/nio/ByteBuffer;

.field private blacklist mNativeContext:J

.field private blacklist mValid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 3132
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 2999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3135
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    .line 3136
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    .line 3137
    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    .line 3138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    .line 3139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    .line 2999
    return-void
.end method

.method public static whitelist isCodecCopyFreeCompatible([Ljava/lang/String;)Z
    .locals 1
    .param p0, "codecNames"    # [Ljava/lang/String;

    .line 3091
    invoke-static {p0}, Landroid/media/MediaCodec$LinearBlock;->native_checkCompatible([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native blacklist native_checkCompatible([Ljava/lang/String;)Z
.end method

.method private native blacklist native_map()Ljava/nio/ByteBuffer;
.end method

.method private native blacklist native_obtain(I[Ljava/lang/String;)V
.end method

.method private native blacklist native_recycle()V
.end method

.method public static whitelist obtain(I[Ljava/lang/String;)Landroid/media/MediaCodec$LinearBlock;
    .locals 3
    .param p0, "capacity"    # I
    .param p1, "codecNames"    # [Ljava/lang/String;

    .line 3115
    sget-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$LinearBlock;

    .line 3116
    .local v0, "buffer":Landroid/media/MediaCodec$LinearBlock;
    if-nez v0, :cond_0

    .line 3117
    new-instance v1, Landroid/media/MediaCodec$LinearBlock;

    invoke-direct {v1}, Landroid/media/MediaCodec$LinearBlock;-><init>()V

    move-object v0, v1

    .line 3119
    :cond_0
    iget-object v1, v0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3120
    :try_start_0
    invoke-direct {v0, p0, p1}, Landroid/media/MediaCodec$LinearBlock;->native_obtain(I[Ljava/lang/String;)V

    .line 3121
    monitor-exit v1

    .line 3122
    return-object v0

    .line 3121
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist setInternalStateLocked(JZ)V
    .locals 2
    .param p1, "context"    # J
    .param p3, "isMappable"    # Z

    .line 3127
    iput-wide p1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    .line 3128
    iput-boolean p3, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    .line 3129
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    .line 3130
    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 0

    .line 3075
    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_recycle()V

    .line 3076
    return-void
.end method

.method public whitelist isMappable()Z
    .locals 3

    .line 3006
    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3007
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_0

    .line 3010
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    monitor-exit v0

    return v1

    .line 3008
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3011
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist map()Ljava/nio/ByteBuffer;
    .locals 3

    .line 3025
    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3026
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_2

    .line 3029
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMappable:Z

    if-eqz v1, :cond_1

    .line 3032
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    .line 3033
    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_map()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    .line 3035
    :cond_0
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    monitor-exit v0

    return-object v1

    .line 3030
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is not mappable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3027
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3036
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist recycle()V
    .locals 3

    .line 3054
    iget-object v0, p0, Landroid/media/MediaCodec$LinearBlock;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3055
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    if-eqz v1, :cond_1

    .line 3058
    iget-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3059
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    .line 3060
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCodec$LinearBlock;->mMapped:Ljava/nio/ByteBuffer;

    .line 3062
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaCodec$LinearBlock;->native_recycle()V

    .line 3063
    iput-boolean v2, p0, Landroid/media/MediaCodec$LinearBlock;->mValid:Z

    .line 3064
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaCodec$LinearBlock;->mNativeContext:J

    .line 3065
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    sget-object v0, Landroid/media/MediaCodec$LinearBlock;->sPool:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 3067
    return-void

    .line 3056
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The linear block is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    throw v1

    .line 3065
    .restart local p0    # "this":Landroid/media/MediaCodec$LinearBlock;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
