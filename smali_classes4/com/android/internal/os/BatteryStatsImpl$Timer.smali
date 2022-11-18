.class public abstract Lcom/android/internal/os/BatteryStatsImpl$Timer;
.super Landroid/os/BatteryStats$Timer;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field protected final blacklist mClock:Lcom/android/internal/os/Clock;

.field protected greylist-max-o mCount:I

.field protected final greylist-max-o mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field protected blacklist mTimeBeforeMarkUs:J

.field protected blacklist mTotalTimeUs:J

.field protected final greylist-max-o mType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2494
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 2495
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 2496
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 2497
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2498
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2499
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/Clock;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "type"    # I
    .param p3, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p4, "in"    # Landroid/os/Parcel;

    .line 2482
    invoke-direct {p0}, Landroid/os/BatteryStats$Timer;-><init>()V

    .line 2483
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    .line 2484
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mType:I

    .line 2485
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2487
    invoke-virtual {p4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2488
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2489
    invoke-virtual {p4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 2490
    invoke-virtual {p3, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2492
    return-void
.end method

.method public static greylist writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "timer"    # Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2568
    if-nez p1, :cond_0

    .line 2569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2570
    return-void

    .line 2572
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2573
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 2574
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o computeCurrentCountLocked()I
.end method

.method protected abstract blacklist computeRunTimeLocked(JJ)J
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 2539
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2540
    return-void
.end method

.method public greylist getCountLocked(I)I
    .locals 1
    .param p1, "which"    # I

    .line 2586
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getTimeSinceMarkLocked(J)J
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J

    .line 2591
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    .line 2593
    .local v0, "val":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    sub-long v2, v0, v2

    return-wide v2
.end method

.method public greylist getTotalTimeLocked(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 2579
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2600
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "timeBaseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2545
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2553
    invoke-virtual {p0, p5, p6, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2554
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2558
    return-void
.end method

.method public greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2612
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2615
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    .line 2616
    return-void
.end method

.method public greylist-max-o reset(Z)Z
    .locals 4
    .param p1, "detachIfReset"    # Z

    .line 2524
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->reset(ZJ)Z

    move-result v0

    return v0
.end method

.method public blacklist reset(ZJ)Z
    .locals 2
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2529
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    .line 2530
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mCount:I

    .line 2531
    if-eqz p1, :cond_0

    .line 2532
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->detach()V

    .line 2534
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2604
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    .line 2606
    .local v0, "runTimeUs":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2607
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2608
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 2507
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeCurrentCountLocked()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->computeRunTimeLocked(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2510
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Timer;->mTimeBeforeMarkUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2511
    return-void
.end method
