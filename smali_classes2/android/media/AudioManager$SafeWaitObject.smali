.class final Landroid/media/AudioManager$SafeWaitObject;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeWaitObject"
.end annotation


# instance fields
.field private greylist-max-o mQuit:Z


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 1

    .line 4779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4780
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager$SafeWaitObject-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/AudioManager$SafeWaitObject;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o safeNotify()V
    .locals 1

    .line 4783
    monitor-enter p0

    .line 4784
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    .line 4785
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 4786
    monitor-exit p0

    .line 4787
    return-void

    .line 4786
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o safeWait(J)V
    .locals 6
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 4790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 4791
    .local v0, "timeOutTime":J
    monitor-enter p0

    .line 4792
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioManager$SafeWaitObject;->mQuit:Z

    if-nez v2, :cond_1

    .line 4793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 4794
    .local v2, "timeToWait":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_1

    .line 4795
    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 4796
    .end local v2    # "timeToWait":J
    goto :goto_0

    .line 4797
    :cond_1
    :goto_1
    monitor-exit p0

    .line 4798
    return-void

    .line 4797
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
