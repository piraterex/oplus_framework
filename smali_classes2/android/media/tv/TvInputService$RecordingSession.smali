.class public abstract Landroid/media/tv/TvInputService$RecordingSession;
.super Ljava/lang/Object;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RecordingSession"
.end annotation


# instance fields
.field final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/TvInputService$RecordingSession;)Landroid/media/tv/ITvInputSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitialize(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->initialize(Landroid/media/tv/ITvInputSessionCallback;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1895
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    .line 1899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    .line 1907
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    .line 1908
    return-void
.end method

.method private greylist-max-o executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 2230
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2231
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    if-nez v1, :cond_0

    .line 2233
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2235
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2236
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2239
    :cond_1
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2242
    :goto_0
    monitor-exit v0

    .line 2243
    return-void

    .line 2242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o initialize(Landroid/media/tv/ITvInputSessionCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;

    .line 2220
    iget-object v0, p0, Landroid/media/tv/TvInputService$RecordingSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2221
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mSessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    .line 2222
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 2223
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2224
    .end local v2    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 2225
    :cond_0
    iget-object v1, p0, Landroid/media/tv/TvInputService$RecordingSession;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2226
    monitor-exit v0

    .line 2227
    return-void

    .line 2226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method greylist-max-o appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2216
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2217
    return-void
.end method

.method public whitelist notifyError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 1984
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 1986
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyError - invalid error code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is changed to RECORDING_ERROR_UNKNOWN."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvInputService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/4 p1, 0x0

    .line 1990
    :cond_1
    move v0, p1

    .line 1991
    .local v0, "validError":I
    new-instance v1, Landroid/media/tv/TvInputService$RecordingSession$3;

    invoke-direct {v1, p0, v0}, Landroid/media/tv/TvInputService$RecordingSession$3;-><init>(Landroid/media/tv/TvInputService$RecordingSession;I)V

    invoke-direct {p0, v1}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2005
    return-void
.end method

.method public whitelist notifyRecordingStopped(Landroid/net/Uri;)V
    .locals 1
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .line 1950
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$2;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$2;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1964
    return-void
.end method

.method public whitelist notifySessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2016
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession$4;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 2031
    return-void
.end method

.method public whitelist notifyTuned(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1922
    new-instance v0, Landroid/media/tv/TvInputService$RecordingSession$1;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/TvInputService$RecordingSession$1;-><init>(Landroid/media/tv/TvInputService$RecordingSession;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/TvInputService$RecordingSession;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    .line 1936
    return-void
.end method

.method public whitelist onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 2162
    return-void
.end method

.method public whitelist onPauseRecording(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2132
    return-void
.end method

.method public abstract whitelist onRelease()V
.end method

.method public whitelist onResumeRecording(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2143
    return-void
.end method

.method public abstract whitelist onStartRecording(Landroid/net/Uri;)V
.end method

.method public whitelist onStartRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2106
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onStartRecording(Landroid/net/Uri;)V

    .line 2107
    return-void
.end method

.method public abstract whitelist onStopRecording()V
.end method

.method public abstract whitelist onTune(Landroid/net/Uri;)V
.end method

.method public whitelist onTune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2063
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;)V

    .line 2064
    return-void
.end method

.method blacklist pauseRecording(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2201
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onPauseRecording(Landroid/os/Bundle;)V

    .line 2202
    return-void
.end method

.method greylist-max-o release()V
    .locals 0

    .line 2177
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onRelease()V

    .line 2178
    return-void
.end method

.method blacklist resumeRecording(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 2209
    invoke-virtual {p0, p1}, Landroid/media/tv/TvInputService$RecordingSession;->onResumeRecording(Landroid/os/Bundle;)V

    .line 2210
    return-void
.end method

.method blacklist startRecording(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "programUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2185
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onStartRecording(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2186
    return-void
.end method

.method greylist-max-o stopRecording()V
    .locals 0

    .line 2193
    invoke-virtual {p0}, Landroid/media/tv/TvInputService$RecordingSession;->onStopRecording()V

    .line 2194
    return-void
.end method

.method greylist-max-o tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 2169
    invoke-virtual {p0, p1, p2}, Landroid/media/tv/TvInputService$RecordingSession;->onTune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 2170
    return-void
.end method
