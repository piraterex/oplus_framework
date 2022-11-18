.class public Lcom/android/internal/os/AmbientDisplayPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "AmbientDisplayPowerCalculator.java"


# instance fields
.field private final blacklist mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 37
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    .line 39
    .local v0, "numDisplays":I
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 40
    const/4 v1, 0x0

    .local v1, "display":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 42
    const-string v4, "ambient.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "display":I
    :cond_0
    return-void
.end method

.method private blacklist calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 4
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 67
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist calculateEstimatedPower(Landroid/os/BatteryStats;J)D
    .locals 8
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J

    .line 82
    iget-object v0, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v0, v0

    .line 83
    .local v0, "numDisplays":I
    const-wide/16 v1, 0x0

    .line 84
    .local v1, "power":D
    const/4 v3, 0x0

    .local v3, "display":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 85
    invoke-virtual {p1, v3, p2, p3}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 87
    .local v4, "dozeTime":J
    iget-object v6, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 84
    .end local v4    # "dozeTime":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "display":I
    :cond_0
    return-wide v1
.end method

.method private blacklist calculateTotalPower(ILandroid/os/BatteryStats;JJ)D
    .locals 2
    .param p1, "powerModel"    # I
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "consumptionUC"    # J

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 77
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->calculateEstimatedPower(Landroid/os/BatteryStats;J)D

    move-result-wide v0

    return-wide v0

    .line 74
    :pswitch_0
    invoke-static {p5, p6}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 18
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenDozeMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    .line 54
    .local v7, "measuredEnergyUC":J
    move-object/from16 v9, p7

    invoke-static {v7, v8, v9}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    .line 55
    .local v10, "powerModel":I
    const/4 v11, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-wide/from16 v14, p3

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v5

    .line 57
    .local v5, "durationMs":J
    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v16, v5

    .end local v5    # "durationMs":J
    .local v16, "durationMs":J
    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->calculateTotalPower(ILandroid/os/BatteryStats;JJ)D

    move-result-wide v0

    .line 59
    .local v0, "powerMah":D
    move-object/from16 v2, p1

    invoke-virtual {v2, v11}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    .line 61
    const/16 v4, 0xf

    move-wide/from16 v5, v16

    .end local v16    # "durationMs":J
    .restart local v5    # "durationMs":J
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 62
    invoke-virtual {v3, v4, v0, v1, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 64
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 34
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
