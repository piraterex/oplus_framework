.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
.super Landroid/os/BatteryStats$Uid$Proc;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proc"
.end annotation


# instance fields
.field greylist-max-o mActive:Z

.field protected greylist-max-o mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field greylist-max-o mExcessivePower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mForegroundTimeMs:J

.field final greylist-max-o mName:Ljava/lang/String;

.field greylist-max-o mNumAnrs:I

.field greylist-max-o mNumCrashes:I

.field greylist-max-o mStarts:I

.field blacklist mSystemTimeMs:J

.field blacklist mUserTimeMs:J


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "name"    # Ljava/lang/String;

    .line 11687
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Proc;-><init>()V

    .line 11653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 11688
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 11689
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mName:Ljava/lang/String;

    .line 11690
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 11691
    return-void
.end method


# virtual methods
.method public greylist addCpuTimeLocked(II)V
    .locals 1
    .param p1, "utimeMs"    # I
    .param p2, "stimeMs"    # I

    .line 11797
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addCpuTimeLocked(IIZ)V

    .line 11798
    return-void
.end method

.method public greylist-max-o addCpuTimeLocked(IIZ)V
    .locals 4
    .param p1, "utimeMs"    # I
    .param p2, "stimeMs"    # I
    .param p3, "isRunning"    # Z

    .line 11801
    if-eqz p3, :cond_0

    .line 11802
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 11803
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 11805
    :cond_0
    return-void
.end method

.method public greylist-max-o addExcessiveCpu(JJ)V
    .locals 2
    .param p1, "overTimeMs"    # J
    .param p3, "usedTimeMs"    # J

    .line 11727
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 11728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 11730
    :cond_0
    new-instance v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 11731
    .local v0, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 11732
    iput-wide p1, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 11733
    iput-wide p3, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 11734
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11735
    return-void
.end method

.method public greylist addForegroundTimeLocked(J)V
    .locals 2
    .param p1, "ttimeMs"    # J

    .line 11809
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    .line 11810
    return-void
.end method

.method public greylist-max-o countExcessivePowers()I
    .locals 1

    .line 11716
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 11711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    .line 11712
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 11713
    return-void
.end method

.method public greylist-max-o getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .locals 1
    .param p1, "i"    # I

    .line 11720
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 11721
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    return-object v0

    .line 11723
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getForegroundTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 11845
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    return-wide v0
.end method

.method public greylist-max-o getNumAnrs(I)I
    .locals 1
    .param p1, "which"    # I

    .line 11861
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    return v0
.end method

.method public greylist-max-o getNumCrashes(I)I
    .locals 1
    .param p1, "which"    # I

    .line 11856
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    return v0
.end method

.method public greylist getStarts(I)I
    .locals 1
    .param p1, "which"    # I

    .line 11851
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    return v0
.end method

.method public greylist getSystemTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 11839
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    return-wide v0
.end method

.method public greylist getUserTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 11833
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    return-wide v0
.end method

.method public greylist-max-o incNumAnrsLocked()V
    .locals 1

    .line 11822
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 11823
    return-void
.end method

.method public greylist-max-o incNumCrashesLocked()V
    .locals 1

    .line 11818
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 11819
    return-void
.end method

.method public greylist incStartsLocked()V
    .locals 1

    .line 11814
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 11815
    return-void
.end method

.method public greylist-max-o isActive()Z
    .locals 1

    .line 11827
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mActive:Z

    return v0
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 11695
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 11699
    return-void
.end method

.method greylist-max-o readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 11754
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11755
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 11756
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 11757
    return-void

    .line 11760
    :cond_0
    const/16 v1, 0x2710

    if-gt v0, v1, :cond_2

    .line 11765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    .line 11766
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11767
    new-instance v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    invoke-direct {v2}, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;-><init>()V

    .line 11768
    .local v2, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    .line 11769
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    .line 11770
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    .line 11771
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11766
    .end local v2    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11773
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 11761
    :cond_2
    new-instance v1, Landroid/os/ParcelFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File corrupt: too many excessive power entries "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o readFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 11786
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    .line 11787
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    .line 11788
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    .line 11789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    .line 11790
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    .line 11791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    .line 11792
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readExcessivePowerFromParcelLocked(Landroid/os/Parcel;)V

    .line 11793
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 1
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 11703
    if-eqz p1, :cond_0

    .line 11704
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 11706
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method greylist-max-o writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;

    .line 11738
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 11739
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11740
    return-void

    .line 11743
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 11744
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11745
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11746
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mExcessivePower:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    .line 11747
    .local v2, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    iget v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11748
    iget-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 11749
    iget-wide v3, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 11745
    .end local v2    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11751
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method greylist-max-o writeToParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 11776
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mUserTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11777
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mSystemTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11778
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11779
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mStarts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11780
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11781
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11782
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeExcessivePowerToParcelLocked(Landroid/os/Parcel;)V

    .line 11783
    return-void
.end method
