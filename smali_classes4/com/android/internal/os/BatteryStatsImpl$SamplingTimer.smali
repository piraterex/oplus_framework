.class public Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$Timer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamplingTimer"
.end annotation


# instance fields
.field greylist-max-o mCurrentReportedCount:I

.field blacklist mCurrentReportedTotalTimeUs:J

.field greylist-max-o mTimeBaseRunning:Z

.field greylist-max-o mTrackingReportedValues:Z

.field greylist-max-o mUnpluggedReportedCount:I

.field blacklist mUnpluggedReportedTotalTimeUs:J

.field greylist-max-o mUpdateVersion:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 1
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2682
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 2683
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2684
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 2685
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .line 2671
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 2672
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 2673
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 2674
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 2675
    invoke-virtual {p3}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 2676
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2677
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 2678
    return-void
.end method


# virtual methods
.method public greylist-max-o add(JI)V
    .locals 10
    .param p1, "deltaTimeUs"    # J
    .param p3, "deltaCount"    # I

    .line 2757
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->add(JIJ)V

    .line 2758
    return-void
.end method

.method public blacklist add(JIJ)V
    .locals 8
    .param p1, "deltaTimeUs"    # J
    .param p3, "deltaCount"    # I
    .param p4, "elapsedRealtimeUs"    # J

    .line 2764
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    add-long v3, v0, p1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    add-int v5, v0, p3

    move-object v2, p0

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->update(JIJ)V

    .line 2766
    return-void
.end method

.method protected greylist-max-o computeCurrentCountLocked()I
    .locals 3

    .line 2801
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCount:I

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v1, :cond_0

    .line 2802
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 2801
    return v0
.end method

.method protected blacklist computeRunTimeLocked(JJ)J
    .locals 6
    .param p1, "curBatteryRealtime"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 2795
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTotalTimeUs:J

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v2, :cond_0

    .line 2796
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-long/2addr v0, v2

    .line 2795
    return-wide v0
.end method

.method public greylist-max-o endSample()V
    .locals 4

    .line 2692
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->endSample(J)V

    .line 2693
    return-void
.end method

.method public blacklist endSample(J)V
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J

    .line 2699
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->computeRunTimeLocked(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTotalTimeUs:J

    .line 2700
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->computeCurrentCountLocked()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCount:I

    .line 2701
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 2702
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 2703
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2704
    return-void
.end method

.method public greylist-max-o getUpdateVersion()I
    .locals 1

    .line 2711
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    return v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2786
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUnpluggedReportedTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2791
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2770
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStarted(JJJ)V

    .line 2771
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-eqz v0, :cond_0

    .line 2772
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 2773
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 2775
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 2776
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 1
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2780
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->onTimeStopped(JJJ)V

    .line 2781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    .line 2782
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 3
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2817
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(ZJ)Z

    .line 2818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2819
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 2820
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 2821
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o setUpdateVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 2707
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUpdateVersion:I

    .line 2708
    return-void
.end method

.method public blacklist update(JIJ)V
    .locals 2
    .param p1, "totalTimeUs"    # J
    .param p3, "count"    # I
    .param p4, "elapsedRealtimeUs"    # J

    .line 2734
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTimeBaseRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    if-nez v0, :cond_0

    .line 2736
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    .line 2737
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    .line 2740
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    .line 2742
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    if-ge p3, v0, :cond_2

    .line 2743
    :cond_1
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->endSample(J)V

    .line 2746
    :cond_2
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    .line 2747
    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    .line 2748
    return-void
.end method

.method public blacklist updated(JI)V
    .locals 10
    .param p1, "totalTimeUs"    # J
    .param p3, "count"    # I

    .line 2727
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v8, v0, v2

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->update(JIJ)V

    .line 2728
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2807
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2808
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2809
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2810
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mCurrentReportedTotalTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2811
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mUnpluggedReportedTotalTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2812
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$SamplingTimer;->mTrackingReportedValues:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2813
    return-void
.end method
