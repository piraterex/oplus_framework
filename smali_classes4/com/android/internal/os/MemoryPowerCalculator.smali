.class public Lcom/android/internal/os/MemoryPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MemoryPowerCalculator.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "MemoryPowerCalculator"


# instance fields
.field private final blacklist mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 7
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 13
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 14
    const-string/jumbo v0, "memory.bandwidths"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v1

    .line 15
    .local v1, "numBuckets":I
    new-array v2, v1, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 16
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    iget-object v3, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v4, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 18
    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v4, v3, v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 6
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .local v0, "usageDurationMs":J
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 43
    .local v2, "timers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 44
    aget-object v4, v4, v3

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v4, v5, p2, p3, p4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v3    # "i":I
    :cond_0
    return-wide v0
.end method

.method private blacklist calculatePower(Landroid/os/BatteryStats;JI)D
    .locals 9
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .local v0, "powerMah":D
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 53
    .local v2, "timers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 54
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    long-to-int v5, v5

    aget-object v4, v4, v5

    .line 55
    .local v4, "estimator":Lcom/android/internal/os/UsageBasedPowerEstimator;
    nop

    .line 56
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v4, v5, p2, p3, p4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v5

    .line 57
    .local v5, "usageDurationMs":J
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    add-double/2addr v0, v7

    .line 53
    .end local v4    # "estimator":Lcom/android/internal/os/UsageBasedPowerEstimator;
    .end local v5    # "usageDurationMs":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v3    # "i":I
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 6
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/os/MemoryPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v1

    .line 32
    .local v1, "durationMs":J
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/os/MemoryPowerCalculator;->calculatePower(Landroid/os/BatteryStats;JI)D

    move-result-wide v3

    .line 34
    .local v3, "powerMah":D
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    .line 36
    const/16 v5, 0xd

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 37
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 38
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 24
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
