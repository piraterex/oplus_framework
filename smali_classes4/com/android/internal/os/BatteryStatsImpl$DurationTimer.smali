.class public Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationTimer"
.end annotation


# instance fields
.field greylist-max-o mCurrentDurationMs:J

.field greylist-max-o mMaxDurationMs:J

.field greylist-max-o mStartTimeMs:J

.field greylist-max-o mTotalDurationMs:J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/Clock;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .line 3012
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 2982
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3013
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p6, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/Clock;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 3004
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2982
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3005
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 3006
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 3007
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3008
    return-void
.end method


# virtual methods
.method public greylist-max-o getCurrentDurationMsLocked(J)J
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 3158
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3159
    .local v0, "durationMs":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3160
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v3, 0x3e8

    mul-long v5, p1, v3

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v5

    div-long/2addr v5, v3

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 3163
    :cond_0
    return-wide v0
.end method

.method public greylist-max-o getMaxDurationMsLocked(J)J
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 3136
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3137
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    .line 3138
    .local v0, "durationMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3139
    return-wide v0

    .line 3142
    .end local v0    # "durationMs":J
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    return-wide v0
.end method

.method public greylist-max-o getTotalDurationMsLocked(J)J
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 3177
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 3080
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3081
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 3057
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStarted(JJJ)V

    .line 3058
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3059
    const-wide/16 v0, 0x3e8

    div-long v0, p5, v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3061
    :cond_0
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 6
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 3070
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    .line 3071
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 3073
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3075
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3076
    return-void
.end method

.method public greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3044
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 3045
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 3046
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 3047
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3048
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3049
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 5
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 3116
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v0

    .line 3117
    .local v0, "result":Z
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 3118
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 3119
    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3120
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v1, :cond_0

    .line 3121
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    goto :goto_0

    .line 3123
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3125
    :goto_0
    return v0
.end method

.method public greylist-max-o startRunningLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .line 3085
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 3086
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const-wide/16 v1, 0x3e8

    mul-long v3, p1, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v3

    div-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3090
    :cond_0
    return-void
.end method

.method public greylist-max-o stopRunningLocked(J)V
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 3100
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3101
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    .line 3102
    .local v0, "durationMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 3103
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3104
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 3106
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 3107
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 3111
    .end local v0    # "durationMs":J
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 3112
    return-void
.end method

.method public greylist-max-o writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 3032
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 3033
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3034
    div-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3035
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 3017
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 3018
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3019
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3020
    div-long v0, p2, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3021
    return-void
.end method
