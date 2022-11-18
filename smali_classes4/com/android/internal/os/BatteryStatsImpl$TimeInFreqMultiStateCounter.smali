.class Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeInFreqMultiStateCounter"
.end annotation


# instance fields
.field private final blacklist mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field private final blacklist mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->setState(IJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "stateCount"    # I
    .param p3, "cpuFreqCount"    # I
    .param p4, "timestampMs"    # J

    .line 2274
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    .line 2275
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJLcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V
    .locals 1
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "counter"    # Lcom/android/internal/os/LongArrayMultiStateCounter;
    .param p3, "timestampMs"    # J

    .line 2278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2279
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 2280
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2281
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    invoke-virtual {p2, v0, p3, p4}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2282
    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2283
    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "stateCount"    # I
    .param p3, "cpuFreqCount"    # I
    .param p4, "timestampMs"    # J

    .line 2293
    sget-object v0, Lcom/android/internal/os/LongArrayMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2294
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 2295
    .local v0, "counter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 2296
    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    if-eq v1, p3, :cond_0

    goto :goto_0

    .line 2299
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-direct {v1, p1, v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/LongArrayMultiStateCounter;J)V

    return-object v1

    .line 2297
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist setState(IJ)V
    .locals 1
    .param p1, "uidRunningState"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 2325
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 2326
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;

    .line 2286
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2287
    return-void
.end method


# virtual methods
.method public blacklist detach()V
    .locals 1

    .line 2365
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 2366
    return-void
.end method

.method public blacklist getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;
    .locals 1

    .line 2313
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    return-object v0
.end method

.method public blacklist getCountsLocked([JI)Z
    .locals 7
    .param p1, "counts"    # [J
    .param p2, "procState"    # I

    .line 2332
    array-length v0, p1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v1}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getArrayLength()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2333
    return v2

    .line 2336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getCounts([JI)V

    .line 2339
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2340
    aget-wide v3, p1, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 2341
    return v1

    .line 2339
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2344
    .end local v0    # "i":I
    :cond_2
    return v2
.end method

.method public blacklist getStateCount()I
    .locals 1

    .line 2317
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->getStateCount()I

    move-result v0

    return v0
.end method

.method public blacklist logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2349
    return-void
.end method

.method public blacklist onTimeStarted(JJJ)V
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2304
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2305
    return-void
.end method

.method public blacklist onTimeStopped(JJJ)V
    .locals 4
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptimeUs"    # J
    .param p5, "baseRealtimeUs"    # J

    .line 2309
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2310
    return-void
.end method

.method public blacklist reset(ZJ)Z
    .locals 1
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 2356
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/LongArrayMultiStateCounter;->reset()V

    .line 2357
    if-eqz p1, :cond_0

    .line 2358
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->detach()V

    .line 2360
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setTrackingEnabled(ZJ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "timestampMs"    # J

    .line 2321
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setEnabled(ZJ)V

    .line 2322
    return-void
.end method
