.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounterArray"
.end annotation


# instance fields
.field public greylist-max-o mCounts:[J

.field final greylist-max-o mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadSummaryFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteSummaryToParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 0
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2056
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 2057
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2058
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2059
    return-void
.end method

.method private constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 2050
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    .line 2051
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2052
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2053
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2054
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2142
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2143
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0

    .line 2145
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2161
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 2164
    .local v0, "counterArray":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 2165
    return-object v0

    .line 2167
    .end local v0    # "counterArray":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2130
    return-void
.end method

.method private greylist-max-o writeSummaryToParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2125
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2126
    return-void
.end method

.method public static greylist-max-o writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counterArray"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 2151
    if-eqz p1, :cond_0

    .line 2152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_0

    .line 2155
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2157
    :goto_0
    return-void
.end method

.method private greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2062
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2063
    return-void
.end method

.method public static greylist-max-o writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "counterArray"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 2133
    if-eqz p1, :cond_0

    .line 2134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 2137
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2139
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o addCountLocked([J)V
    .locals 1
    .param p1, "counts"    # [J

    .line 2084
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->addCountLocked([JZ)V

    .line 2085
    return-void
.end method

.method public greylist-max-o addCountLocked([JZ)V
    .locals 6
    .param p1, "counts"    # [J
    .param p2, "isRunning"    # Z

    .line 2088
    if-nez p1, :cond_0

    .line 2089
    return-void

    .line 2091
    :cond_0
    if-eqz p2, :cond_2

    .line 2092
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_1

    .line 2093
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    .line 2095
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 2096
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 2095
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2099
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public greylist-max-o detach()V
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2122
    return-void
.end method

.method public greylist-max-o getCountsLocked(I)[J
    .locals 2
    .param p1, "which"    # I

    .line 2075
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getSize()I
    .locals 1

    .line 2102
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public greylist-max-o logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2081
    return-void
.end method

.method public greylist-max-o onTimeStarted(JJJ)V
    .locals 0
    .param p1, "elapsedRealTimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2067
    return-void
.end method

.method public greylist-max-o onTimeStopped(JJJ)V
    .locals 0
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2071
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 3
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2110
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-eqz v0, :cond_0

    .line 2111
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 2113
    :cond_0
    if-eqz p1, :cond_1

    .line 2114
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    .line 2116
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
