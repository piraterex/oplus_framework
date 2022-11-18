.class public Lcom/android/internal/os/MobileRadioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MobileRadioPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist NUM_SIGNAL_STRENGTH_LEVELS:I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MobRadioPowerCalculator"

.field private static final blacklist UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final blacklist mActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final blacklist mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final blacklist mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 11
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 50
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 37
    sget v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    new-array v0, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 52
    nop

    .line 53
    const-string/jumbo v0, "radio.active"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v3

    .line 54
    .local v3, "powerRadioActiveMa":D
    cmpl-double v0, v3, v1

    if-nez v0, :cond_1

    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .local v5, "sum":D
    const-string/jumbo v0, "modem.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v7, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v0, v7, :cond_0

    .line 58
    const-string/jumbo v7, "modem.controller.tx"

    invoke-virtual {p1, v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    int-to-double v7, v7

    div-double v3, v5, v7

    .line 63
    .end local v5    # "sum":D
    :cond_1
    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-direct {v0, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 66
    const-string/jumbo v0, "radio.on"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v5

    cmpl-double v1, v5, v1

    if-eqz v1, :cond_3

    .line 67
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v2, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v1, v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v5, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v5, v2, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    goto :goto_3

    .line 72
    :cond_3
    const-string/jumbo v0, "modem.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 75
    .local v0, "idle":D
    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-wide/high16 v7, 0x4039000000000000L    # 25.0

    mul-double/2addr v7, v0

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v6, v2, v5

    .line 76
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    sget v5, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v2, v5, :cond_4

    .line 77
    iget-object v5, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v6, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    div-double v9, v0, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v6, v5, v2

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 81
    .end local v0    # "idle":D
    .end local v2    # "i":I
    :cond_4
    :goto_3
    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-wide/16 v1, 0x0

    .line 82
    const-string/jumbo v5, "radio.scanning"

    invoke-virtual {p1, v5, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 83
    return-void
.end method

.method private blacklist calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;[Landroid/os/BatteryConsumer$Key;)V
    .locals 27
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "total"    # Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;
    .param p4, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p5, "keys"    # [Landroid/os/BatteryConsumer$Key;

    .line 138
    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    const/4 v11, 0x0

    move-object/from16 v12, p0

    invoke-direct {v12, v8, v11}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateDuration(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v13

    .line 139
    .local v13, "radioActiveDurationMs":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getMobileRadioMeasuredBatteryConsumptionUC()J

    move-result-wide v6

    .line 140
    .local v6, "consumptionUC":J
    move-object/from16 v15, p4

    invoke-static {v6, v7, v15}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v4

    .line 141
    .local v4, "powerModel":I
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v4

    move v11, v4

    .end local v4    # "powerModel":I
    .local v11, "powerModel":I
    move-wide v4, v13

    move-wide/from16 v17, v6

    .end local v6    # "consumptionUC":J
    .local v17, "consumptionUC":J
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculatePower(Landroid/os/BatteryStats$Uid;IJJ)D

    move-result-wide v6

    .line 143
    .local v6, "powerMah":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    add-long/2addr v1, v13

    iput-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    .line 145
    iget-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v1, v6

    iput-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    .line 148
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    .line 150
    invoke-virtual {v2, v1, v6, v7, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 153
    invoke-virtual/range {p4 .. p4}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v10, :cond_3

    .line 154
    array-length v4, v10

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v3, v10, v5

    .line 155
    .local v3, "key":Landroid/os/BatteryConsumer$Key;
    iget v2, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 156
    .local v2, "processState":I
    if-nez v2, :cond_1

    .line 158
    move/from16 v23, v4

    move/from16 v24, v5

    move-wide/from16 v25, v6

    goto :goto_1

    .line 161
    :cond_1
    nop

    .line 162
    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    .line 163
    .local v19, "durationInStateMs":J
    nop

    .line 164
    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioMeasuredBatteryConsumptionUC(I)J

    move-result-wide v21

    .line 165
    .local v21, "consumptionInStateUc":J
    move-object/from16 v1, p0

    move/from16 v16, v2

    .end local v2    # "processState":I
    .local v16, "processState":I
    move-object/from16 v2, p2

    move-object v8, v3

    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    .local v8, "key":Landroid/os/BatteryConsumer$Key;
    move v3, v11

    move/from16 v23, v4

    move/from16 v24, v5

    move-wide/from16 v4, v19

    move-wide/from16 v25, v6

    .end local v6    # "powerMah":D
    .local v25, "powerMah":D
    move-wide/from16 v6, v21

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculatePower(Landroid/os/BatteryStats$Uid;IJJ)D

    move-result-wide v1

    .line 167
    .local v1, "powerInStateMah":D
    invoke-virtual {v0, v8, v1, v2, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 154
    .end local v1    # "powerInStateMah":D
    .end local v8    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v16    # "processState":I
    .end local v19    # "durationInStateMs":J
    .end local v21    # "consumptionInStateUc":J
    :goto_1
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v8, p2

    move/from16 v4, v23

    move-wide/from16 v6, v25

    goto :goto_0

    .end local v25    # "powerMah":D
    .restart local v6    # "powerMah":D
    :cond_2
    move-wide/from16 v25, v6

    .end local v6    # "powerMah":D
    .restart local v25    # "powerMah":D
    goto :goto_2

    .line 153
    .end local v25    # "powerMah":D
    .restart local v6    # "powerMah":D
    :cond_3
    move-wide/from16 v25, v6

    .line 170
    .end local v6    # "powerMah":D
    .restart local v25    # "powerMah":D
    :goto_2
    return-void
.end method

.method private blacklist calculateDuration(Landroid/os/BatteryStats$Uid;I)J
    .locals 4
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "statsType"    # I

    .line 173
    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist calculatePower(Landroid/os/BatteryStats$Uid;IJJ)D
    .locals 2
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "powerModel"    # I
    .param p3, "radioActiveDurationMs"    # J
    .param p5, "measuredChargeUC"    # J

    .line 178
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 179
    invoke-static {p5, p6}, Lcom/android/internal/os/MobileRadioPowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    return-wide v0

    .line 182
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 183
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcPowerFromRadioActiveDurationMah(J)D

    move-result-wide v0

    return-wide v0

    .line 185
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private blacklist calculateRemaining(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JJ)V
    .locals 19
    .param p1, "total"    # Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;
    .param p2, "powerModel"    # I
    .param p3, "batteryStats"    # Landroid/os/BatteryStats;
    .param p4, "rawRealtimeUs"    # J
    .param p6, "totalConsumptionUC"    # J

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const-wide/16 v6, 0x0

    .line 192
    .local v6, "signalTimeMs":J
    const-wide/16 v8, 0x0

    .line 194
    .local v8, "powerMah":D
    const/4 v10, 0x2

    if-ne v2, v10, :cond_0

    .line 195
    invoke-static/range {p6 .. p7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->uCtoMah(J)D

    move-result-wide v10

    iget-wide v12, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    sub-double v8, v10, v12

    .line 196
    const-wide/16 v10, 0x0

    cmpg-double v10, v8, v10

    if-gez v10, :cond_0

    const-wide/16 v8, 0x0

    .line 199
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    sget v11, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const/4 v12, 0x1

    const-wide/16 v13, 0x3e8

    const/4 v15, 0x0

    if-ge v10, v11, :cond_3

    .line 200
    invoke-virtual {v3, v10, v4, v5, v15}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v15

    div-long v13, v15, v13

    .line 202
    .local v13, "strengthTimeMs":J
    if-ne v2, v12, :cond_1

    .line 203
    invoke-virtual {v0, v13, v14, v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcIdlePowerAtSignalStrengthMah(JI)D

    move-result-wide v11

    .line 208
    .local v11, "p":D
    add-double/2addr v8, v11

    .line 210
    .end local v11    # "p":D
    :cond_1
    add-long/2addr v6, v13

    .line 211
    if-nez v10, :cond_2

    .line 212
    iput-wide v13, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->noCoverageDurationMs:J

    .line 199
    .end local v13    # "strengthTimeMs":J
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 216
    .end local v10    # "i":I
    :cond_3
    invoke-virtual {v3, v4, v5, v15}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v10

    div-long/2addr v10, v13

    .line 218
    .local v10, "scanningTimeMs":J
    invoke-virtual {v3, v4, v5, v15}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v15

    div-long v13, v15, v13

    .line 220
    .local v13, "radioActiveTimeMs":J
    iget-wide v3, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    sub-long v3, v13, v3

    .line 222
    .local v3, "remainingActiveTimeMs":J
    if-ne v2, v12, :cond_4

    .line 223
    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcScanTimePowerMah(J)D

    move-result-wide v15

    .line 228
    .local v15, "p":D
    add-double/2addr v8, v15

    .line 230
    const-wide/16 v17, 0x0

    cmp-long v5, v3, v17

    if-lez v5, :cond_4

    .line 231
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcPowerFromRadioActiveDurationMah(J)D

    move-result-wide v17

    add-double v8, v8, v17

    .line 234
    .end local v15    # "p":D
    :cond_4
    iput-wide v13, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->durationMs:J

    .line 235
    iput-wide v8, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    .line 236
    iput-wide v6, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->signalDurationMs:J

    .line 237
    return-void
.end method


# virtual methods
.method public blacklist calcIdlePowerAtSignalStrengthMah(JI)D
    .locals 2
    .param p1, "strengthTimeMs"    # J
    .param p3, "strengthLevel"    # I

    .line 252
    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist calcPowerFromRadioActiveDurationMah(J)D
    .locals 2
    .param p1, "radioActiveDurationMs"    # J

    .line 243
    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist calcScanTimePowerMah(J)D
    .locals 2
    .param p1, "scanningTimeMs"    # J

    .line 259
    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 16
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 94
    move-object/from16 v0, p1

    new-instance v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration-IA;)V

    .line 96
    .local v1, "total":Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;
    nop

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v2

    .line 98
    .local v2, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    sget-object v3, Lcom/android/internal/os/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 100
    .local v3, "keys":[Landroid/os/BatteryConsumer$Key;
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    move-object v12, v3

    move v9, v4

    .end local v3    # "keys":[Landroid/os/BatteryConsumer$Key;
    .local v9, "i":I
    .local v12, "keys":[Landroid/os/BatteryConsumer$Key;
    :goto_0
    const/16 v13, 0x8

    if-ltz v9, :cond_2

    .line 101
    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/os/UidBatteryConsumer$Builder;

    .line 102
    .local v10, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v14

    .line 103
    .local v14, "uid":Landroid/os/BatteryStats$Uid;
    sget-object v3, Lcom/android/internal/os/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v12, v3, :cond_1

    .line 104
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v10, v13}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    move-object v12, v3

    .end local v12    # "keys":[Landroid/os/BatteryConsumer$Key;
    .restart local v3    # "keys":[Landroid/os/BatteryConsumer$Key;
    goto :goto_1

    .line 107
    .end local v3    # "keys":[Landroid/os/BatteryConsumer$Key;
    .restart local v12    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_0
    const/4 v3, 0x0

    move-object v12, v3

    .line 111
    :cond_1
    :goto_1
    move-object/from16 v3, p0

    move-object v4, v10

    move-object v5, v14

    move-object v6, v1

    move-object/from16 v7, p7

    move-object v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;[Landroid/os/BatteryConsumer$Key;)V

    .line 100
    .end local v10    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v14    # "uid":Landroid/os/BatteryStats$Uid;
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 114
    .end local v9    # "i":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getMobileRadioMeasuredBatteryConsumptionUC()J

    move-result-wide v14

    .line 115
    .local v14, "totalConsumptionUC":J
    move-object/from16 v9, p7

    invoke-static {v14, v15, v9}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    .line 116
    .local v10, "powerModel":I
    move-object/from16 v3, p0

    move-object v4, v1

    move v5, v10

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move v11, v10

    .end local v10    # "powerModel":I
    .local v11, "powerModel":I
    move-wide v9, v14

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JJ)V

    .line 118
    iget-wide v3, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    .line 119
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->durationMs:J

    .line 121
    invoke-virtual {v3, v13, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    iget-wide v6, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v4, v6

    .line 123
    invoke-virtual {v3, v13, v4, v5, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 126
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->durationMs:J

    .line 128
    invoke-virtual {v3, v13, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    .line 130
    invoke-virtual {v3, v13, v4, v5, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 133
    :cond_4
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 87
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
