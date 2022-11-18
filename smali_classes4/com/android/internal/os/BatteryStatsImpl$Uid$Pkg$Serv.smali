.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
.super Landroid/os/BatteryStats$Uid$Pkg$Serv;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serv"
.end annotation


# instance fields
.field protected greylist-max-o mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field protected greylist-max-o mLaunched:Z

.field protected blacklist mLaunchedSinceMs:J

.field protected blacklist mLaunchedTimeMs:J

.field protected greylist-max-o mLaunches:I

.field protected greylist-max-o mPkg:Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

.field protected greylist-max-o mRunning:Z

.field protected blacklist mRunningSinceMs:J

.field protected blacklist mStartTimeMs:J

.field protected greylist-max-o mStarts:I


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 1
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 12031
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Pkg$Serv;-><init>()V

    .line 12032
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 12033
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12034
    return-void
.end method


# virtual methods
.method public greylist-max-o detach()V
    .locals 1

    .line 12057
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 12058
    return-void
.end method

.method public greylist getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .line 12156
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public greylist-max-o getLaunchTimeToNowLocked(J)J
    .locals 4
    .param p1, "batteryUptimeMs"    # J

    .line 12083
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    return-wide v0

    .line 12084
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getLaunches(I)I
    .locals 1
    .param p1, "which"    # I

    .line 12161
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    return v0
.end method

.method public greylist-max-o getStartTime(JI)J
    .locals 2
    .param p1, "now"    # J
    .param p3, "which"    # I

    .line 12166
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->getStartTimeToNowLocked(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getStartTimeToNowLocked(J)J
    .locals 4
    .param p1, "batteryUptimeMs"    # J

    .line 12088
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    return-wide v0

    .line 12089
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getStarts(I)I
    .locals 1
    .param p1, "which"    # I

    .line 12171
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    return v0
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 12038
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 12042
    return-void
.end method

.method public greylist-max-o readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12061
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    .line 12062
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 12063
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 12064
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 12065
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    .line 12066
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 12067
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 12068
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 12069
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 1
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 12046
    if-eqz p1, :cond_0

    .line 12047
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    .line 12049
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist startLaunchedLocked()V
    .locals 2

    .line 12094
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startLaunchedLocked(J)V

    .line 12095
    return-void
.end method

.method public blacklist startLaunchedLocked(J)V
    .locals 6
    .param p1, "uptimeMs"    # J

    .line 12098
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-nez v0, :cond_0

    .line 12099
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 12100
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    .line 12101
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 12103
    :cond_0
    return-void
.end method

.method public greylist startRunningLocked()V
    .locals 2

    .line 12125
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->startRunningLocked(J)V

    .line 12126
    return-void
.end method

.method public blacklist startRunningLocked(J)V
    .locals 6
    .param p1, "uptimeMs"    # J

    .line 12129
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-nez v0, :cond_0

    .line 12130
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 12131
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    .line 12132
    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 12134
    :cond_0
    return-void
.end method

.method public greylist stopLaunchedLocked()V
    .locals 2

    .line 12107
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopLaunchedLocked(J)V

    .line 12108
    return-void
.end method

.method public blacklist stopLaunchedLocked(J)V
    .locals 4
    .param p1, "uptimeMs"    # J

    .line 12111
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    if-eqz v0, :cond_1

    .line 12112
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    sub-long/2addr v0, v2

    .line 12114
    .local v0, "timeMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 12115
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    goto :goto_0

    .line 12117
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    .line 12119
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    .line 12121
    .end local v0    # "timeMs":J
    :cond_1
    return-void
.end method

.method public greylist stopRunningLocked()V
    .locals 2

    .line 12138
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->stopRunningLocked(J)V

    .line 12139
    return-void
.end method

.method public blacklist stopRunningLocked(J)V
    .locals 4
    .param p1, "uptimeMs"    # J

    .line 12142
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    if-eqz v0, :cond_1

    .line 12143
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptimeLocked(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    sub-long/2addr v0, v2

    .line 12145
    .local v0, "timeMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 12146
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    goto :goto_0

    .line 12148
    :cond_0
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    .line 12150
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    .line 12152
    .end local v0    # "timeMs":J
    :cond_1
    return-void
.end method

.method public greylist-max-o writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 12072
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStartTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12073
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunningSinceMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12074
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mRunning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12075
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12076
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12077
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunchedSinceMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12078
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunched:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12079
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->mLaunches:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12080
    return-void
.end method
