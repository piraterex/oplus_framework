.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/CpuPowerCalculator$Result;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "CpuPowerCalculator"

.field private static final blacklist UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final blacklist mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final blacklist mNumCpuClusters:I

.field private final blacklist mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final blacklist mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final blacklist mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/internal/os/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 8
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 60
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    .line 63
    new-instance v1, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 64
    const-string v2, "cpu.active"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 66
    new-array v0, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 67
    const/4 v0, 0x0

    .local v0, "cluster":I
    :goto_0
    iget v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v0, v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCluster(I)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "cluster":I
    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, "freqCount":I
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_1
    iget v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v1, v2, :cond_1

    .line 74
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    .end local v1    # "cluster":I
    :cond_1
    new-array v1, v2, [[Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 78
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "cluster":I
    :goto_2
    iget v3, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v2, v3, :cond_3

    .line 81
    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    .line 82
    .local v3, "speedsForCluster":I
    iget-object v4, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-array v5, v3, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    aput-object v5, v4, v2

    .line 84
    const/4 v4, 0x0

    .local v4, "speed":I
    :goto_3
    if-ge v4, v3, :cond_2

    .line 85
    new-instance v5, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 86
    invoke-virtual {p1, v2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    .line 87
    .local v5, "estimator":Lcom/android/internal/os/UsageBasedPowerEstimator;
    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v6, v6, v2

    aput-object v5, v6, v4

    .line 88
    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .local v7, "index":I
    aput-object v5, v6, v1

    .line 84
    .end local v5    # "estimator":Lcom/android/internal/os/UsageBasedPowerEstimator;
    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_3

    .line 80
    .end local v3    # "speedsForCluster":I
    .end local v4    # "speed":I
    .end local v7    # "index":I
    .restart local v1    # "index":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 91
    .end local v2    # "cluster":I
    :cond_3
    return-void
.end method

.method private blacklist calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/internal/os/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V
    .locals 10
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p4, "result"    # Lcom/android/internal/os/CpuPowerCalculator$Result;
    .param p5, "keys"    # [Landroid/os/BatteryConsumer$Key;

    .line 140
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCpuMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    .line 141
    .local v7, "consumptionUC":J
    invoke-static {v7, v8, p3}, Lcom/android/internal/os/CpuPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v9

    .line 142
    .local v9, "powerModel":I
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, v9

    move-wide v3, v7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/internal/os/CpuPowerCalculator$Result;)V

    .line 145
    iget-wide v0, p4, Lcom/android/internal/os/CpuPowerCalculator$Result;->powerMah:D

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, v9}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v3, p4, Lcom/android/internal/os/CpuPowerCalculator$Result;->durationMs:J

    .line 146
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    iget-object v1, p4, Lcom/android/internal/os/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;

    .line 149
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 150
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-direct {p0, p1, p2, p5}, Lcom/android/internal/os/CpuPowerCalculator;->calculateMeasuredPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V

    .line 153
    goto :goto_0

    .line 155
    :pswitch_1
    invoke-direct {p0, p1, p2, p5, p4}, Lcom/android/internal/os/CpuPowerCalculator;->calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/internal/os/CpuPowerCalculator$Result;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist calculateMeasuredPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V
    .locals 8
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "keys"    # [Landroid/os/BatteryConsumer$Key;

    .line 163
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 168
    .local v2, "key":Landroid/os/BatteryConsumer$Key;
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v3, :cond_0

    .line 169
    goto :goto_1

    .line 172
    :cond_0
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid;->getCpuMeasuredBatteryConsumptionUC(I)J

    move-result-wide v3

    .line 173
    .local v3, "consumptionUC":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 174
    invoke-static {v3, v4}, Lcom/android/internal/os/CpuPowerCalculator;->uCtoMah(J)D

    move-result-wide v5

    const/4 v7, 0x2

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 163
    .end local v2    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v3    # "consumptionUC":J
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_2
    return-void
.end method

.method private blacklist calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/internal/os/CpuPowerCalculator$Result;)V
    .locals 16
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "keys"    # [Landroid/os/BatteryConsumer$Key;
    .param p4, "result"    # Lcom/android/internal/os/CpuPowerCalculator$Result;

    .line 182
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 188
    :goto_0
    const/4 v0, 0x0

    move v9, v0

    .local v9, "uidProcState":I
    :goto_1
    const/4 v0, 0x7

    if-ge v9, v0, :cond_4

    .line 190
    nop

    .line 191
    invoke-static {v9}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v10

    .line 192
    .local v10, "procState":I
    if-nez v10, :cond_1

    .line 193
    goto :goto_2

    .line 197
    :cond_1
    const/4 v11, 0x0

    .line 199
    .local v11, "cpuClusterTimes":[J
    iget-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    invoke-virtual {v6, v0, v9}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v12

    .line 200
    .local v12, "hasCpuFreqTimes":Z
    if-nez v11, :cond_2

    if-eqz v12, :cond_3

    .line 201
    :cond_2
    iget-object v13, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    aget-wide v14, v13, v10

    const-wide/16 v2, 0x0

    iget-object v5, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v0

    add-double/2addr v14, v0

    aput-wide v14, v13, v10

    .line 189
    .end local v10    # "procState":I
    .end local v11    # "cpuClusterTimes":[J
    .end local v12    # "hasCpuFreqTimes":Z
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 206
    .end local v9    # "uidProcState":I
    :cond_4
    array-length v0, v7

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    aget-object v2, v7, v1

    .line 207
    .local v2, "key":Landroid/os/BatteryConsumer$Key;
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v3, :cond_5

    .line 208
    move-object/from16 v5, p0

    move-object/from16 v12, p1

    goto :goto_4

    .line 211
    :cond_5
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-virtual {v6, v3}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime(I)J

    move-result-wide v3

    .line 213
    .local v3, "cpuActiveTime":J
    iget-object v5, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    iget v9, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    aget-wide v9, v5, v9

    .line 214
    .local v9, "powerMah":D
    move-object/from16 v5, p0

    iget-object v11, v5, Lcom/android/internal/os/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v11

    add-double/2addr v9, v11

    .line 215
    const/4 v11, 0x1

    move-object/from16 v12, p1

    invoke-virtual {v12, v2, v9, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v11

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    .line 216
    invoke-virtual {v11, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 206
    .end local v2    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v3    # "cpuActiveTime":J
    .end local v9    # "powerMah":D
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 218
    :cond_6
    move-object/from16 v5, p0

    move-object/from16 v12, p1

    return-void
.end method

.method private blacklist calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/internal/os/CpuPowerCalculator$Result;)V
    .locals 21
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "powerModel"    # I
    .param p3, "consumptionUC"    # J
    .param p5, "statsType"    # I
    .param p6, "result"    # Lcom/android/internal/os/CpuPowerCalculator$Result;

    .line 223
    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 226
    .local v3, "durationMs":J
    packed-switch p2, :pswitch_data_0

    .line 232
    move-object/from16 v5, p0

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D

    move-result-wide v6

    .local v6, "powerMah":D
    goto :goto_0

    .line 228
    .end local v6    # "powerMah":D
    :pswitch_0
    invoke-static/range {p3 .. p4}, Lcom/android/internal/os/CpuPowerCalculator;->uCtoMah(J)D

    move-result-wide v5

    .line 229
    .local v5, "powerMah":D
    move-wide v6, v5

    move-object/from16 v5, p0

    .line 242
    .end local v5    # "powerMah":D
    .restart local v6    # "powerMah":D
    :goto_0
    const-wide/16 v8, 0x0

    .line 243
    .local v8, "highestDrain":D
    const/4 v10, 0x0

    .line 244
    .local v10, "packageWithHighestDrain":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 245
    .local v11, "durationFgMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 246
    .local v13, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 247
    .local v14, "processStatsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_3

    .line 248
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc;

    .line 249
    .local v0, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    .line 250
    .local v5, "processName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v16

    add-long v11, v11, v16

    .line 252
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v18

    add-long v16, v16, v18

    .line 253
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v18

    move-object/from16 v20, v0

    .end local v0    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v20, "ps":Landroid/os/BatteryStats$Uid$Proc;
    add-long v0, v16, v18

    .line 257
    .local v0, "costValue":J
    if-eqz v10, :cond_1

    move-wide/from16 v16, v11

    .end local v11    # "durationFgMs":J
    .local v16, "durationFgMs":J
    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v18, v13

    goto :goto_2

    .line 260
    :cond_0
    move-object/from16 v18, v13

    .end local v13    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .local v18, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    long-to-double v12, v0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_2

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 261
    long-to-double v8, v0

    .line 262
    move-object v10, v5

    goto :goto_3

    .line 257
    .end local v16    # "durationFgMs":J
    .end local v18    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v11    # "durationFgMs":J
    .restart local v13    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_1
    move-wide/from16 v16, v11

    move-object/from16 v18, v13

    .line 258
    .end local v11    # "durationFgMs":J
    .end local v13    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v16    # "durationFgMs":J
    .restart local v18    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :goto_2
    long-to-double v8, v0

    .line 259
    move-object v10, v5

    .line 247
    .end local v0    # "costValue":J
    .end local v5    # "processName":Ljava/lang/String;
    .end local v20    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p0

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-wide/from16 v11, v16

    move-object/from16 v13, v18

    goto :goto_1

    .end local v16    # "durationFgMs":J
    .end local v18    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .restart local v11    # "durationFgMs":J
    .restart local v13    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    :cond_3
    move-object/from16 v18, v13

    .line 267
    .end local v13    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v15    # "i":I
    .restart local v18    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    cmp-long v0, v11, v3

    if-lez v0, :cond_4

    .line 273
    move-wide v3, v11

    .line 276
    :cond_4
    iput-wide v3, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->durationMs:J

    .line 277
    iput-wide v11, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->durationFgMs:J

    .line 278
    iput-wide v6, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->powerMah:D

    .line 279
    iput-object v10, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    .line 280
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D
    .locals 9
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "cpuActiveTime"    # J
    .param p4, "cpuClusterTimes"    # [J
    .param p5, "cpuFreqTimes"    # [J

    .line 293
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/CpuPowerCalculator;->calculateActiveCpuPowerMah(J)D

    move-result-wide v0

    .line 296
    .local v0, "powerMah":D
    const-string v2, " actual # "

    const-string v3, "UID "

    const-string v4, "CpuPowerCalculator"

    if-eqz p4, :cond_2

    .line 297
    array-length v5, p4

    iget v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ne v5, v6, :cond_1

    .line 298
    const/4 v5, 0x0

    .local v5, "cluster":I
    :goto_0
    iget v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v5, v6, :cond_0

    .line 299
    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v6, v6, v5

    aget-wide v7, p4, v5

    .line 300
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v6

    .line 301
    .local v6, "power":D
    add-double/2addr v0, v6

    .line 298
    .end local v6    # "power":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "cluster":I
    :cond_0
    goto :goto_1

    .line 309
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CPU cluster # mismatch: Power Profile # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_2
    :goto_1
    if-eqz p5, :cond_5

    .line 315
    array-length v5, p5

    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v6, v6

    if-ne v5, v6, :cond_4

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p5

    if-ge v2, v3, :cond_3

    .line 317
    iget-object v3, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v3, v3, v2

    aget-wide v4, p5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_3
    goto :goto_3

    .line 320
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " CPU freq # mismatch: Power Profile # "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_5
    :goto_3
    return-wide v0
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 15
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 101
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 103
    .local v1, "totalPowerMah":D
    sget-object v3, Lcom/android/internal/os/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 104
    .local v3, "keys":[Landroid/os/BatteryConsumer$Key;
    new-instance v4, Lcom/android/internal/os/CpuPowerCalculator$Result;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/os/CpuPowerCalculator$Result;-><init>(Lcom/android/internal/os/CpuPowerCalculator$Result-IA;)V

    .line 105
    .local v4, "result":Lcom/android/internal/os/CpuPowerCalculator$Result;
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, v4, Lcom/android/internal/os/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    .line 108
    :cond_0
    nop

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v5

    .line 110
    .local v5, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    move v13, v6

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_4

    .line 111
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/os/UidBatteryConsumer$Builder;

    .line 112
    .local v14, "app":Landroid/os/UidBatteryConsumer$Builder;
    sget-object v6, Lcom/android/internal/os/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v3, v6, :cond_2

    .line 113
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    invoke-virtual {v14, v12}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    goto :goto_1

    .line 116
    :cond_1
    const/4 v3, 0x0

    .line 119
    :cond_2
    :goto_1
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v8

    move-object v6, p0

    move-object v7, v14

    move-object/from16 v9, p7

    move-object v10, v4

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/os/CpuPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/internal/os/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V

    .line 120
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v6

    if-nez v6, :cond_3

    .line 121
    iget-wide v6, v4, Lcom/android/internal/os/CpuPowerCalculator$Result;->powerMah:D

    add-double/2addr v1, v6

    .line 110
    .end local v14    # "app":Landroid/os/UidBatteryConsumer$Builder;
    :cond_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 125
    .end local v13    # "i":I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuMeasuredBatteryConsumptionUC()J

    move-result-wide v6

    .line 126
    .local v6, "consumptionUC":J
    move-object/from16 v8, p7

    invoke-static {v6, v7, v8}, Lcom/android/internal/os/CpuPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v9

    .line 128
    .local v9, "powerModel":I
    invoke-virtual {v0, v12}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    .line 130
    invoke-virtual {v10, v12, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 131
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    .line 134
    const/4 v11, 0x2

    if-ne v9, v11, :cond_5

    .line 135
    invoke-static {v6, v7}, Lcom/android/internal/os/CpuPowerCalculator;->uCtoMah(J)D

    move-result-wide v13

    goto :goto_2

    :cond_5
    move-wide v13, v1

    .line 133
    :goto_2
    invoke-virtual {v10, v12, v13, v14, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 136
    return-void
.end method

.method public blacklist calculateActiveCpuPowerMah(J)D
    .locals 2
    .param p1, "durationsMs"    # J

    .line 335
    iget-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist calculatePerCpuClusterPowerMah(IJ)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "clusterDurationMs"    # J

    .line 346
    iget-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist calculatePerCpuFreqPowerMah(IIJ)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "speedStep"    # I
    .param p3, "clusterSpeedDurationsMs"    # J

    .line 359
    iget-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D
    .locals 6
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "statsType"    # I

    .line 286
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v4

    .line 287
    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v5

    .line 286
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 95
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
