.class Lcom/android/internal/os/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 405
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 408
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_0

    .line 412
    monitor-exit v0

    return-void

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setChargingLocked(Z)Z

    move-result v1

    .line 415
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v2

    .line 417
    .local v2, "uptimeMs":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 418
    .local v4, "elapsedRealtimeMs":J
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6, v4, v5, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryRecordLocked(JJ)V

    .line 420
    .end local v1    # "changed":Z
    .end local v2    # "uptimeMs":J
    .end local v4    # "elapsedRealtimeMs":J
    :cond_1
    monitor-exit v0

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
