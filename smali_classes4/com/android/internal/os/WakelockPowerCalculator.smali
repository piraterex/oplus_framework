.class public Lcom/android/internal/os/WakelockPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WakelockPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final blacklist mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 38
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 39
    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 40
    const-string v1, "cpu.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 41
    return-void
.end method

.method private blacklist calculateApp(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V
    .locals 9
    .param p1, "result"    # Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "statsType"    # I

    .line 109
    const-wide/16 v0, 0x0

    .line 110
    .local v0, "wakeLockTimeUs":J
    nop

    .line 111
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 112
    .local v2, "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 113
    .local v3, "wakelockStatsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 114
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 118
    .local v5, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 119
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_0

    .line 120
    invoke-virtual {v6, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 113
    .end local v5    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v4    # "i":I
    :cond_1
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iput-wide v4, p1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 126
    iget-object v4, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    iget-wide v5, p1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 131
    return-void
.end method

.method private blacklist calculateRemaining(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V
    .locals 8
    .param p1, "result"    # Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I
    .param p8, "osPowerMah"    # D
    .param p10, "osDurationMs"    # J
    .param p12, "totalAppDurationMs"    # J

    .line 136
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v1

    sub-long v1, v1, p12

    .line 138
    .local v1, "wakeTimeMillis":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 139
    move-object v5, p0

    iget-object v3, v5, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    .line 144
    .local v3, "power":D
    add-long v6, p10, v1

    iput-wide v6, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 145
    add-double v6, p8, v3

    iput-wide v6, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 146
    .end local v3    # "power":D
    goto :goto_0

    .line 147
    :cond_0
    move-object v5, p0

    iput-wide v3, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 148
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 150
    :goto_0
    return-void
.end method

.method private blacklist calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J
    .locals 8
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "rawUptimeUs"    # J

    .line 158
    invoke-virtual {p1, p4, p5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v0

    .line 159
    .local v0, "batteryUptimeUs":J
    nop

    .line 160
    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    .line 161
    .local v2, "screenOnTimeUs":J
    sub-long v4, v0, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 26
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 51
    move-object/from16 v0, p1

    new-instance v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration-IA;)V

    .line 52
    .local v1, "result":Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;
    const/4 v2, 0x0

    .line 53
    .local v2, "osBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    const-wide/16 v3, 0x0

    .line 54
    .local v3, "osPowerMah":D
    const-wide/16 v5, 0x0

    .line 55
    .local v5, "osDurationMs":J
    const-wide/16 v7, 0x0

    .line 56
    .local v7, "totalAppDurationMs":J
    const-wide/16 v9, 0x0

    .line 57
    .local v9, "appPowerMah":D
    nop

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v15

    .line 59
    .local v15, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move v14, v11

    move-wide v11, v7

    .end local v3    # "osPowerMah":D
    .end local v5    # "osDurationMs":J
    .end local v7    # "totalAppDurationMs":J
    .local v11, "totalAppDurationMs":J
    .local v14, "i":I
    .local v17, "osPowerMah":D
    .local v19, "osDurationMs":J
    :goto_0
    const/16 v8, 0xc

    if-ltz v14, :cond_2

    .line 60
    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 61
    .local v6, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object v4, v1

    move-object v13, v6

    .end local v6    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .local v13, "app":Landroid/os/UidBatteryConsumer$Builder;
    move-wide/from16 v6, p3

    move v0, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateApp(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V

    .line 63
    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v13, v0, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 64
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 65
    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v11, v3

    .line 67
    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v9, v3

    .line 70
    :cond_0
    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    move-object v0, v13

    .line 72
    .end local v2    # "osBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    .local v0, "osBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    iget-wide v2, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 73
    .end local v19    # "osDurationMs":J
    .local v2, "osDurationMs":J
    iget-wide v4, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    move-wide/from16 v19, v2

    move-wide/from16 v17, v4

    move-object v2, v0

    .line 59
    .end local v0    # "osBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    .end local v13    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .local v2, "osBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    .restart local v19    # "osDurationMs":J
    :cond_1
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    .line 80
    .end local v14    # "i":I
    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object v4, v1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v22, v9

    .end local v9    # "appPowerMah":D
    .local v22, "appPowerMah":D
    move-wide/from16 v8, p5

    move v10, v13

    move-wide v13, v11

    .end local v11    # "totalAppDurationMs":J
    .local v13, "totalAppDurationMs":J
    move-wide/from16 v11, v17

    move-wide/from16 v24, v13

    .end local v13    # "totalAppDurationMs":J
    .local v24, "totalAppDurationMs":J
    move-wide/from16 v13, v19

    move-object/from16 v21, v15

    .end local v15    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .local v21, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    move-wide/from16 v15, v24

    invoke-direct/range {v3 .. v16}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateRemaining(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V

    .line 82
    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 83
    .local v3, "remainingPowerMah":D
    if-eqz v2, :cond_3

    .line 84
    iget-wide v5, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 86
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 89
    :cond_3
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v5

    .line 90
    .local v5, "wakeTimeMs":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 91
    const-wide/16 v5, 0x0

    .line 93
    :cond_4
    const/4 v7, 0x0

    move v8, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    .line 95
    invoke-virtual {v7, v8, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    move-wide/from16 v9, v22

    .end local v22    # "appPowerMah":D
    .restart local v9    # "appPowerMah":D
    add-double v11, v9, v3

    .line 97
    invoke-virtual {v7, v8, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 99
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    .line 101
    move-wide/from16 v11, v24

    .end local v24    # "totalAppDurationMs":J
    .restart local v11    # "totalAppDurationMs":J
    invoke-virtual {v7, v8, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 103
    invoke-virtual {v7, v8, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 105
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 45
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
