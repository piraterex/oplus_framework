.class public Lcom/android/internal/os/SystemServicePowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SystemServicePowerCalculator.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SystemServicePowerCalc"


# instance fields
.field private final blacklist mCpuPowerCalculator:Lcom/android/internal/os/CpuPowerCalculator;

.field private final blacklist mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 11
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 43
    new-instance v0, Lcom/android/internal/os/CpuPowerCalculator;

    invoke-direct {v0, p1}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v0, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, "numFreqs":I
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v1

    .line 46
    .local v1, "numCpuClusters":I
    const/4 v2, 0x0

    .local v2, "cluster":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 47
    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 46
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v2    # "cluster":I
    :cond_0
    new-array v2, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "cluster":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 53
    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    .line 54
    .local v4, "numSpeeds":I
    const/4 v5, 0x0

    .local v5, "speed":I
    :goto_2
    if-ge v5, v4, :cond_1

    .line 55
    iget-object v6, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "index":I
    .local v7, "index":I
    new-instance v8, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 56
    invoke-virtual {p1, v3, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v8, v6, v2

    .line 54
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_2

    .line 52
    .end local v4    # "numSpeeds":I
    .end local v5    # "speed":I
    .end local v7    # "index":I
    .restart local v2    # "index":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    .end local v3    # "cluster":I
    :cond_2
    return-void
.end method

.method private blacklist calculatePowerUsingMeasuredConsumption(Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;J)D
    .locals 7
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "systemUid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "consumptionUC"    # J

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/os/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    move-result-wide v0

    .line 128
    .local v0, "systemServiceModeledPowerMah":D
    iget-object v2, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D

    move-result-wide v2

    .line 131
    .local v2, "systemUidModeledPowerMah":D
    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 132
    invoke-static {p3, p4}, Lcom/android/internal/os/SystemServicePowerCalculator;->uCtoMah(J)D

    move-result-wide v4

    mul-double/2addr v4, v0

    div-double/2addr v4, v2

    return-wide v4

    .line 134
    :cond_0
    return-wide v4
.end method

.method private blacklist calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D
    .locals 10
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;

    .line 139
    invoke-virtual {p1}, Landroid/os/BatteryStats;->getSystemServiceTimeAtCpuSpeeds()[J

    move-result-object v0

    .line 140
    .local v0, "systemServiceTimeAtCpuSpeeds":[J
    if-nez v0, :cond_0

    .line 141
    const-wide/16 v1, 0x0

    return-wide v1

    .line 146
    :cond_0
    const-wide/16 v1, 0x0

    .line 147
    .local v1, "powerMah":D
    iget-object v3, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v3, v3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 148
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 149
    iget-object v5, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v5, v5, v4

    aget-wide v6, v0, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    add-double/2addr v1, v5

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    .end local v4    # "i":I
    :cond_1
    return-wide v1
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 20
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    .line 70
    .local v3, "systemUid":Landroid/os/BatteryStats$Uid;
    if-nez v3, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCpuMeasuredBatteryConsumptionUC()J

    move-result-wide v5

    .line 75
    .local v5, "consumptionUC":J
    move-object/from16 v7, p7

    invoke-static {v5, v6, v7}, Lcom/android/internal/os/SystemServicePowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v8

    .line 78
    .local v8, "powerModel":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 79
    invoke-direct {v0, v2, v3, v5, v6}, Lcom/android/internal/os/SystemServicePowerCalculator;->calculatePowerUsingMeasuredConsumption(Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;J)D

    move-result-wide v9

    .local v9, "systemServicePowerMah":D
    goto :goto_0

    .line 82
    .end local v9    # "systemServicePowerMah":D
    :cond_1
    invoke-direct {v0, v2}, Lcom/android/internal/os/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    move-result-wide v9

    .line 85
    .restart local v9    # "systemServicePowerMah":D
    :goto_0
    nop

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v11

    .line 87
    .local v11, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer$Builder;

    .line 90
    .local v4, "systemServerConsumer":Landroid/os/UidBatteryConsumer$Builder;
    if-eqz v4, :cond_2

    .line 91
    nop

    .line 92
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->getTotalPower()D

    move-result-wide v12

    .line 91
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    .line 96
    const/16 v12, 0x11

    neg-double v13, v9

    invoke-virtual {v4, v12, v13, v14, v8}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 101
    :cond_2
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    .local v12, "i":I
    :goto_1
    const/4 v14, 0x7

    if-ltz v12, :cond_4

    .line 102
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UidBatteryConsumer$Builder;

    .line 103
    .local v15, "app":Landroid/os/UidBatteryConsumer$Builder;
    if-eq v15, v4, :cond_3

    .line 104
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v16

    .line 105
    .local v16, "uid":Landroid/os/BatteryStats$Uid;
    nop

    .line 106
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getProportionalSystemServiceUsage()D

    move-result-wide v17

    move-object/from16 v19, v3

    .end local v3    # "systemUid":Landroid/os/BatteryStats$Uid;
    .local v19, "systemUid":Landroid/os/BatteryStats$Uid;
    mul-double v2, v9, v17

    .line 105
    invoke-virtual {v15, v14, v2, v3, v8}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    goto :goto_2

    .line 103
    .end local v16    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v19    # "systemUid":Landroid/os/BatteryStats$Uid;
    .restart local v3    # "systemUid":Landroid/os/BatteryStats$Uid;
    :cond_3
    move-object/from16 v19, v3

    .line 101
    .end local v3    # "systemUid":Landroid/os/BatteryStats$Uid;
    .end local v15    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .restart local v19    # "systemUid":Landroid/os/BatteryStats$Uid;
    :goto_2
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    goto :goto_1

    .line 111
    .end local v12    # "i":I
    .end local v19    # "systemUid":Landroid/os/BatteryStats$Uid;
    .restart local v3    # "systemUid":Landroid/os/BatteryStats$Uid;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v14, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 115
    invoke-virtual {v1, v13}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, v14, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 119
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 63
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
