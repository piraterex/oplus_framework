.class public interface abstract Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeBaseObs"
.end annotation


# virtual methods
.method public abstract blacklist detach()V
.end method

.method public abstract greylist-max-o onTimeStarted(JJJ)V
.end method

.method public abstract greylist-max-o onTimeStopped(JJJ)V
.end method

.method public blacklist reset(Z)Z
    .locals 4
    .param p1, "detachIfReset"    # Z

    .line 1710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-interface {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->reset(ZJ)Z

    move-result v0

    return v0
.end method

.method public abstract blacklist reset(ZJ)Z
.end method
