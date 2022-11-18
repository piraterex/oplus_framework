.class public abstract Landroid/os/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# static fields
.field private static final greylist-max-o MSG:I = 0x1


# instance fields
.field private greylist-max-o mCancelled:Z

.field private final greylist-max-o mCountdownInterval:J

.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mMillisInFuture:J

.field private greylist-max-o mStopTimeInFuture:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCancelled(Landroid/os/CountDownTimer;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountdownInterval(Landroid/os/CountDownTimer;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopTimeInFuture(Landroid/os/CountDownTimer;)J
    .locals 2

    iget-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    return-wide v0
.end method

.method public constructor whitelist <init>(JJ)V
    .locals 1
    .param p1, "millisInFuture"    # J
    .param p3, "countDownInterval"    # J

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 129
    new-instance v0, Landroid/os/CountDownTimer$1;

    invoke-direct {v0, p0}, Landroid/os/CountDownTimer$1;-><init>(Landroid/os/CountDownTimer;)V

    iput-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    .line 86
    iput-wide p1, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    .line 87
    iput-wide p3, p0, Landroid/os/CountDownTimer;->mCountdownInterval:J

    .line 88
    return-void
.end method


# virtual methods
.method public final declared-synchronized whitelist cancel()V
    .locals 2

    monitor-enter p0

    .line 94
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 95
    iget-object v1, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 93
    .end local p0    # "this":Landroid/os/CountDownTimer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract whitelist onFinish()V
.end method

.method public abstract whitelist onTick(J)V
.end method

.method public final declared-synchronized whitelist start()Landroid/os/CountDownTimer;
    .locals 4

    monitor-enter p0

    .line 102
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/CountDownTimer;->mCancelled:Z

    .line 103
    iget-wide v0, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-object p0

    .line 107
    .end local p0    # "this":Landroid/os/CountDownTimer;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/os/CountDownTimer;->mMillisInFuture:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/CountDownTimer;->mStopTimeInFuture:J

    .line 108
    iget-object v0, p0, Landroid/os/CountDownTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-object p0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
