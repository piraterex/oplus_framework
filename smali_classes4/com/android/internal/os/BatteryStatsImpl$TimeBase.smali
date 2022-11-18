.class public Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBase"
.end annotation


# instance fields
.field protected final blacklist mObservers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mPastRealtimeUs:J

.field protected blacklist mPastUptimeUs:J

.field protected blacklist mRealtimeStartUs:J

.field protected blacklist mRealtimeUs:J

.field protected greylist-max-o mRunning:Z

.field protected blacklist mUnpluggedRealtimeUs:J

.field protected blacklist mUnpluggedUptimeUs:J

.field protected blacklist mUptimeStartUs:J

.field protected blacklist mUptimeUs:J


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 1786
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>(Z)V

    .line 1787
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 1
    .param p1, "isLongList"    # Z

    .line 1781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1782
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    .line 1783
    return-void
.end method


# virtual methods
.method public greylist-max-o add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .line 1790
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1791
    return-void
.end method

.method public greylist-max-o computeRealtime(JI)J
    .locals 4
    .param p1, "curTimeUs"    # J
    .param p3, "which"    # I

    .line 1832
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o computeUptime(JI)J
    .locals 4
    .param p1, "curTimeUs"    # J
    .param p3, "which"    # I

    .line 1828
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1746
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mRunning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1747
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1748
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    const-string/jumbo v2, "mUptime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1751
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1753
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    const-string/jumbo v2, "mRealtime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1756
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1758
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    const-string/jumbo v2, "mPastUptime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "mUptimeStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1762
    const-string/jumbo v2, "mUnpluggedUptime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1763
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1765
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    const-string/jumbo v1, "mPastRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    div-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v1, "mRealtimeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    div-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1769
    const-string/jumbo v1, "mUnpluggedRealtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    div-long/2addr v1, v4

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1770
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    return-void
.end method

.method public greylist-max-o getRealtime(J)J
    .locals 4
    .param p1, "curTimeUs"    # J

    .line 1844
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1845
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 1846
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 1848
    :cond_0
    return-wide v0
.end method

.method public greylist-max-o getRealtimeStart()J
    .locals 2

    .line 1856
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    return-wide v0
.end method

.method public greylist-max-o getUptime(J)J
    .locals 4
    .param p1, "curTimeUs"    # J

    .line 1836
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1837
    .local v0, "time":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eqz v2, :cond_0

    .line 1838
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 1840
    :cond_0
    return-wide v0
.end method

.method public greylist-max-o getUptimeStart()J
    .locals 2

    .line 1852
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    return-wide v0
.end method

.method public greylist-max-o hasObserver(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)Z
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .line 1798
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o init(JJ)V
    .locals 2
    .param p1, "uptimeUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 1802
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 1803
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 1804
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1805
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1806
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1807
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1808
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1809
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1810
    return-void
.end method

.method public greylist-max-o isRunning()Z
    .locals 1

    .line 1860
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 1910
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 1911
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1912
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1913
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 1914
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1915
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1916
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1917
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1918
    return-void
.end method

.method public greylist-max-o readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1899
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    .line 1900
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    .line 1901
    return-void
.end method

.method public greylist-max-o remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    .line 1794
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1795
    return-void
.end method

.method public greylist-max-o reset(JJ)V
    .locals 2
    .param p1, "uptimeUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 1813
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-nez v0, :cond_0

    .line 1814
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1815
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    goto :goto_0

    .line 1817
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1818
    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1821
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1823
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1825
    :goto_0
    return-void
.end method

.method public greylist-max-o setRunning(ZJJ)Z
    .locals 18
    .param p1, "running"    # Z
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 1864
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v11, p4

    iget-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    if-eq v4, v1, :cond_3

    .line 1865
    iput-boolean v1, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRunning:Z

    .line 1866
    if-eqz v1, :cond_1

    .line 1867
    iput-wide v2, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    .line 1868
    iput-wide v11, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    .line 1869
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    .line 1870
    .local v7, "batteryUptimeUs":J
    invoke-virtual {v0, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    .line 1874
    .local v9, "batteryRealtimeUs":J
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1875
    .local v13, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1876
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide/from16 v5, p4

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStarted(JJJ)V

    goto :goto_0

    .line 1879
    .end local v7    # "batteryUptimeUs":J
    .end local v9    # "batteryRealtimeUs":J
    .end local v13    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :cond_0
    goto :goto_2

    .line 1880
    :cond_1
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastUptimeUs:J

    .line 1881
    iget-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    sub-long v6, v11, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mPastRealtimeUs:J

    .line 1882
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v13

    .line 1883
    .local v13, "batteryUptimeUs":J
    invoke-virtual {v0, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v15

    .line 1887
    .local v15, "batteryRealtimeUs":J
    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mObservers:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 1888
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1889
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;

    move-wide/from16 v5, p4

    move-wide v7, v13

    move-wide v9, v15

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->onTimeStopped(JJJ)V

    goto :goto_1

    .line 1893
    .end local v13    # "batteryUptimeUs":J
    .end local v15    # "batteryRealtimeUs":J
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;>;"
    :cond_2
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 1895
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public greylist-max-o writeSummaryToParcel(Landroid/os/Parcel;JJ)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 1904
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeUptime(JI)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1905
    invoke-virtual {p0, p4, p5, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->computeRealtime(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1906
    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;JJ)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 1921
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    .line 1922
    .local v0, "runningUptime":J
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    .line 1923
    .local v2, "runningRealtime":J
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1924
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1925
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUptimeStartUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1926
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1927
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1928
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mRealtimeStartUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1929
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedUptimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1930
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->mUnpluggedRealtimeUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1931
    return-void
.end method
