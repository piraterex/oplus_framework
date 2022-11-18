.class public Landroid/media/tv/tuner/dvr/DvrRecorder;
.super Ljava/lang/Object;
.source "DvrRecorder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TvTunerRecord"

.field private static blacklist sInstantId:I


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mIsStopped:Ljava/lang/Boolean;

.field private blacklist mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

.field private final blacklist mListenerLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J

.field private blacklist mOverflow:I

.field private blacklist mSegmentId:I

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    sput v0, Landroid/media/tv/tuner/dvr/DvrRecorder;->sInstantId:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Ljava/lang/Boolean;

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    .line 65
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mUserId:I

    .line 66
    sget v1, Landroid/media/tv/tuner/dvr/DvrRecorder;->sInstantId:I

    const v2, 0xffff

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x10

    iput v2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    .line 67
    add-int/2addr v1, v0

    sput v1, Landroid/media/tv/tuner/dvr/DvrRecorder;->sInstantId:I

    .line 68
    return-void
.end method

.method private native blacklist nativeAttachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I
.end method

.method private native blacklist nativeDetachFilter(Landroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native blacklist nativeFlushDvr()I
.end method

.method private native blacklist nativeSetFileDescriptor(I)V
.end method

.method private native blacklist nativeStartDvr()I
.end method

.method private native blacklist nativeStopDvr()I
.end method

.method private native blacklist nativeWrite(J)J
.end method

.method private native blacklist nativeWrite([BJJ)J
.end method

.method private blacklist onRecordStatusChanged(I)V
    .locals 3
    .param p1, "status"    # I

    .line 80
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 81
    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    .line 83
    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    if-eqz v2, :cond_1

    .line 85
    new-instance v2, Landroid/media/tv/tuner/dvr/DvrRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/dvr/DvrRecorder;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    :cond_1
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist attachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .locals 1
    .param p1, "filter"    # Landroid/media/tv/tuner/filter/Filter;

    .line 108
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeAttachFilter(Landroid/media/tv/tuner/filter/Filter;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api close()V
    .locals 2

    .line 205
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeClose()I

    move-result v0

    .line 206
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 207
    const-string v1, "failed to close DVR recorder"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method public whitelist configure(Landroid/media/tv/tuner/dvr/DvrSettings;)I
    .locals 1
    .param p1, "settings"    # Landroid/media/tv/tuner/dvr/DvrSettings;

    .line 130
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeConfigureDvr(Landroid/media/tv/tuner/dvr/DvrSettings;)I

    move-result v0

    return v0
.end method

.method public whitelist detachFilter(Landroid/media/tv/tuner/filter/Filter;)I
    .locals 1
    .param p1, "filter"    # Landroid/media/tv/tuner/filter/Filter;

    .line 119
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeDetachFilter(Landroid/media/tv/tuner/filter/Filter;)I

    move-result v0

    return v0
.end method

.method public whitelist flush()I
    .locals 3

    .line 191
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Ljava/lang/Boolean;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeFlushDvr()I

    move-result v1

    monitor-exit v0

    return v1

    .line 195
    :cond_0
    const-string v1, "TvTunerRecord"

    const-string v2, "Cannot flush non-stopped Record DVR."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onRecordStatusChanged$0$android-media-tv-tuner-dvr-DvrRecorder(I)V
    .locals 2
    .param p1, "status"    # I

    .line 86
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;->onRecordStatusChanged(I)V

    .line 90
    :cond_0
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 221
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeSetFileDescriptor(I)V

    .line 222
    return-void
.end method

.method public blacklist setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    .line 73
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 75
    iput-object p2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mListener:Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist start()I
    .locals 9

    .line 143
    iget v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    const/high16 v1, -0x10000

    and-int/2addr v1, v0

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    .line 145
    const-string v1, "TvTunerRecord"

    const-string v2, "Write Stats Log for Record."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v4, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mUserId:I

    iget v7, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    .line 147
    const/16 v3, 0x117

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 150
    iget-object v1, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Ljava/lang/Boolean;

    monitor-enter v1

    .line 151
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeStartDvr()I

    move-result v2

    .line 152
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 153
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Ljava/lang/Boolean;

    .line 155
    :cond_0
    monitor-exit v1

    return v2

    .line 156
    .end local v2    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist stop()I
    .locals 8

    .line 168
    const-string v0, "TvTunerRecord"

    const-string v1, "Write Stats Log for Playback."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v3, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mUserId:I

    iget v6, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mSegmentId:I

    iget v7, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mOverflow:I

    .line 170
    const/16 v2, 0x117

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 173
    iget-object v0, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Ljava/lang/Boolean;

    monitor-enter v0

    .line 174
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeStopDvr()I

    move-result v1

    .line 175
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 176
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/dvr/DvrRecorder;->mIsStopped:Ljava/lang/Boolean;

    .line 178
    :cond_0
    monitor-exit v0

    return v1

    .line 179
    .end local v1    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist write(J)J
    .locals 2
    .param p1, "size"    # J

    .line 232
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeWrite(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist write([BJJ)J
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # J
    .param p4, "size"    # J

    .line 245
    add-long v0, p4, p2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 249
    invoke-direct/range {p0 .. p5}, Landroid/media/tv/tuner/dvr/DvrRecorder;->nativeWrite([BJJ)J

    move-result-wide v0

    return-wide v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
