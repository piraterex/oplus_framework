.class public final Landroid/media/metrics/RecordingSession;
.super Ljava/lang/Object;
.source "RecordingSession.java"

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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/metrics/RecordingSession;->mClosed:Z

    .line 37
    iput-object p1, p0, Landroid/media/metrics/RecordingSession;->mId:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Landroid/media/metrics/RecordingSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    .line 39
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 40
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 41
    new-instance v0, Landroid/media/metrics/LogSessionId;

    invoke-direct {v0, p1}, Landroid/media/metrics/LogSessionId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/metrics/RecordingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/metrics/RecordingSession;->mClosed:Z

    .line 64
    iget-object v0, p0, Landroid/media/metrics/RecordingSession;->mManager:Landroid/media/metrics/MediaMetricsManager;

    iget-object v1, p0, Landroid/media/metrics/RecordingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/metrics/MediaMetricsManager;->releaseSessionId(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 50
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 51
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/media/metrics/RecordingSession;

    .line 53
    .local v0, "that":Landroid/media/metrics/RecordingSession;
    iget-object v1, p0, Landroid/media/metrics/RecordingSession;->mId:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/metrics/RecordingSession;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 51
    .end local v0    # "that":Landroid/media/metrics/RecordingSession;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 45
    iget-object v0, p0, Landroid/media/metrics/RecordingSession;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/metrics/RecordingSession;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
