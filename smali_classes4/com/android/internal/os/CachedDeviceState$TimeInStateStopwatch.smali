.class public Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;
.super Ljava/lang/Object;
.source "CachedDeviceState.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/CachedDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeInStateStopwatch"
.end annotation


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mStartTimeMillis:J

.field private blacklist mTotalTimeMillis:J

.field final synthetic blacklist this$0:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mstart(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->start()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstop(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->stop()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/CachedDeviceState;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/os/CachedDeviceState;

    .line 105
    iput-object p1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist elapsedTime()J
    .locals 4

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private blacklist start()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    .line 132
    :cond_0
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist stop()V
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->elapsedTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    .line 139
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    .line 141
    :cond_0
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmStopwatchesLock(Lcom/android/internal/os/CachedDeviceState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v1}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmOnBatteryStopwatches(Lcom/android/internal/os/CachedDeviceState;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getMillis()J
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    invoke-direct {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->elapsedTime()J

    move-result-wide v3

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isRunning()Z
    .locals 4

    .line 150
    iget-wide v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist reset()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mTotalTimeMillis:J

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :cond_0
    iput-wide v1, p0, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->mStartTimeMillis:J

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
