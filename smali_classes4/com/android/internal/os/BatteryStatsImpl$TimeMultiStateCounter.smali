.class Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
.super Landroid/os/BatteryStats$LongCounter;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeMultiStateCounter"
.end annotation


# instance fields
.field private final blacklist mCounter:Lcom/android/internal/os/LongMultiStateCounter;

.field private final blacklist mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mincrement(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->increment(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdate(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)J
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->update(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "stateCount"    # I
    .param p3, "timestampMs"    # J

    .line 2177
    new-instance v0, Lcom/android/internal/os/LongMultiStateCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    .line 2178
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "counter"    # Lcom/android/internal/os/LongMultiStateCounter;
    .param p3, "timestampMs"    # J

    .line 2181
    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounter;-><init>()V

    .line 2182
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2183
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    .line 2184
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    .line 2185
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2186
    return-void
.end method

.method private blacklist increment(JJ)V
    .locals 1
    .param p1, "increment"    # J
    .param p3, "timestampMs"    # J

    .line 2226
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->incrementValue(JJ)V

    .line 2227
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "stateCount"    # I
    .param p3, "timestampMs"    # J

    .line 2191
    sget-object v0, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LongMultiStateCounter;

    .line 2192
    .local v0, "counter":Lcom/android/internal/os/LongMultiStateCounter;
    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 2193
    const/4 v1, 0x0

    return-object v1

    .line 2195
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {v1, p1, v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongMultiStateCounter;J)V

    return-object v1
.end method

.method private blacklist setState(IJ)V
    .locals 1
    .param p1, "processState"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 2218
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    .line 2219
    return-void
.end method

.method private blacklist update(JJ)J
    .locals 2
    .param p1, "value"    # J
    .param p3, "timestampMs"    # J

    .line 2222
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2199
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2200
    return-void
.end method


# virtual methods
.method public blacklist detach()V
    .locals 1

    .line 2264
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2265
    return-void
.end method

.method public blacklist getCountForProcessState(I)J
    .locals 2
    .param p1, "procState"    # I

    .line 2233
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCountLocked(I)J
    .locals 2
    .param p1, "statsType"    # I

    .line 2242
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getTotalCountLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getStateCount()I
    .locals 1

    .line 2213
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v0

    return v0
.end method

.method public blacklist getTotalCountLocked()J
    .locals 2

    .line 2237
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->getTotalCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2248
    return-void
.end method

.method public blacklist onTimeStarted(JJJ)V
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2204
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    .line 2205
    return-void
.end method

.method public blacklist onTimeStopped(JJJ)V
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2209
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->setEnabled(ZJ)V

    .line 2210
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 1
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2255
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->mCounter:Lcom/android/internal/os/LongMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    .line 2256
    if-eqz p1, :cond_0

    .line 2257
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->detach()V

    .line 2259
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
