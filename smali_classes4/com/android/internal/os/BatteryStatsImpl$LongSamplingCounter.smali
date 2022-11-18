.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounter"
.end annotation


# instance fields
.field private greylist-max-o mCount:J

.field final greylist-max-o mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2380
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 2381
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2382
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2383
    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2374
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 2375
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2376
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 2377
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2378
    return-void
.end method


# virtual methods
.method public greylist-max-o addCountLocked(J)V
    .locals 1
    .param p1, "count"    # J

    .line 2415
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(JZ)V

    .line 2416
    return-void
.end method

.method public greylist-max-o addCountLocked(JZ)V
    .locals 2
    .param p1, "count"    # J
    .param p3, "isRunning"    # Z

    .line 2419
    if-eqz p3, :cond_0

    .line 2420
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 2422
    :cond_0
    return-void
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 2438
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2439
    return-void
.end method

.method public blacklist getCountForProcessState(I)J
    .locals 2
    .param p1, "procState"    # I

    .line 2403
    if-nez p1, :cond_0

    .line 2404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 2406
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getCountLocked(I)J
    .locals 2
    .param p1, "which"    # I

    .line 2398
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    return-wide v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2412
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2391
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2395
    return-void
.end method

.method public greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2446
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 2447
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 2
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2429
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    .line 2430
    if-eqz p1, :cond_0

    .line 2431
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 2433
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o writeSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2442
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2443
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2386
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2387
    return-void
.end method
