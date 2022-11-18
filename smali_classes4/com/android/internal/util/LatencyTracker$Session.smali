.class Lcom/android/internal/util/LatencyTracker$Session;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mAction:I

.field private blacklist mEndRtc:J

.field private final blacklist mName:Ljava/lang/String;

.field private blacklist mStartRtc:J

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    .line 452
    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    .line 455
    iput p1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    .line 456
    iput-object p2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    .line 457
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lcom/android/internal/util/LatencyTracker;->-$$Nest$sfgetSTATSD_ACTION()[I

    move-result-object v0

    aget v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/util/LatencyTracker;->-$$Nest$sfgetSTATSD_ACTION()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mName:Ljava/lang/String;

    .line 460
    return-void
.end method


# virtual methods
.method blacklist begin(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "timeoutAction"    # Ljava/lang/Runnable;

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 475
    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 476
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 477
    const-wide/16 v3, 0xf

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    return-void
.end method

.method blacklist cancel()V
    .locals 4

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 489
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 491
    return-void
.end method

.method blacklist duration()I
    .locals 4

    .line 494
    iget-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    iget-wide v2, p0, Lcom/android/internal/util/LatencyTracker$Session;->mStartRtc:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method blacklist end()V
    .locals 4

    .line 481
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mEndRtc:J

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker$Session;->traceName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1000

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 483
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 485
    return-void
.end method

.method blacklist name()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist traceName()Ljava/lang/String;
    .locals 2

    .line 467
    iget v0, p0, Lcom/android/internal/util/LatencyTracker$Session;->mAction:I

    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker$Session;->mTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/LatencyTracker;->-$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
