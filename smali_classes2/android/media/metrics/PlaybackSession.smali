.class public final Landroid/media/metrics/PlaybackSession;
.super Ljava/lang/Object;
.source "PlaybackSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private blacklist mClosed:Z

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private final blacklist mManager:Landroid/media/metrics/MediaMetricsManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/metrics/MediaMetricsManager;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "manager"    # Landroid/media/metrics/MediaMetricsManager;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/metrics/PlaybackSession;->mClosed:Z

    .line 41
    iput-object p1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    .line 43
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 44
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 45
    new-instance v0, Landroid/media/metrics/LogSessionId;

    invoke-direct {v0, p1}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/metrics/PlaybackSession;->mClosed:Z

    .line 103
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaMetricsManager;->releaseSessionId(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/metrics/PlaybackSession;

    .line 92
    .local v0, "that":Landroid/media/metrics/PlaybackSession;
    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "that":Landroid/media/metrics/PlaybackSession;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/media/metrics/NetworkEvent;

    .line 66
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;)V

    .line 67
    return-void
.end method

.method public whitelist reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/media/metrics/PlaybackErrorEvent;

    .line 59
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 60
    return-void
.end method

.method public whitelist reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V
    .locals 2
    .param p1, "metrics"    # Landroid/media/metrics/PlaybackMetrics;

    .line 52
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;)V

    .line 53
    return-void
.end method

.method public whitelist reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/media/metrics/PlaybackStateEvent;

    .line 73
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 74
    return-void
.end method

.method public whitelist reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/media/metrics/TrackChangeEvent;

    .line 80
    iget-object v0, p0, Landroid/media/metrics/PlaybackSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/PlaybackSession;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/metrics/MediaMetricsManager;->reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;)V

    .line 81
    return-void
.end method
