.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothPowerCalc"

.field private static final blacklist UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final blacklist mHasBluetoothPowerController:Z

.field private final blacklist mIdleMa:D

.field private final blacklist mRxMa:D

.field private final blacklist mTxMa:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/internal/os/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 8
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 56
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 57
    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    .line 58
    const-string v2, "bluetooth.controller.rx"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    .line 59
    const-string v4, "bluetooth.controller.tx"

    invoke-virtual {p1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    .line 60
    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_0

    cmpl-double v0, v2, v6

    if-eqz v0, :cond_0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    .line 61
    return-void
.end method

.method private blacklist calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V
    .locals 12
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "powerAndDuration"    # Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;
    .param p3, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 128
    nop

    .line 129
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getBluetoothMeasuredBatteryConsumptionUC()J

    move-result-wide v9

    .line 130
    .local v9, "measuredChargeUC":J
    invoke-static {v9, v10, p3}, Lcom/android/internal/os/BluetoothPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v0

    .line 131
    .local v0, "powerModel":I
    nop

    .line 132
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v11

    .line 133
    .local v11, "activityCounter":Landroid/os/BatteryStats$ControllerActivityCounter;
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v2

    .line 134
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v7

    .line 133
    move-object v1, p0

    move v3, v0

    move-wide v4, v9

    move-object v6, v11

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 136
    iget-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v4, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 138
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 142
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    iget-wide v3, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 144
    iget-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    iget-wide v3, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 147
    :cond_0
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v1, :cond_2

    .line 148
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 149
    iget-object v2, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v2, v2, v1

    .line 150
    .local v2, "key":Landroid/os/BatteryConsumer$Key;
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 151
    .local v3, "processState":I
    if-nez v3, :cond_1

    .line 153
    goto :goto_1

    .line 156
    :cond_1
    iget-object v4, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    aget-wide v4, v4, v1

    invoke-virtual {p1, v2, v4, v5, v0}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 148
    .end local v2    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v3    # "processState":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private blacklist calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;)V
    .locals 28
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "powerModel"    # I
    .param p3, "measuredChargeUC"    # J
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "ignoreReportedPower"    # Z
    .param p7, "powerAndDuration"    # Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;

    .line 166
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    if-nez p5, :cond_1

    .line 167
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 168
    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 169
    iget-object v4, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v4, :cond_0

    .line 170
    iget-object v4, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 172
    :cond_0
    return-void

    .line 175
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    .line 176
    .local v4, "idleTimeCounter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    .line 177
    .local v5, "rxTimeCounter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 178
    .local v6, "txTimeCounter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v15

    .line 179
    .local v15, "idleTimeMs":J
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    .line 180
    .local v17, "rxTimeMs":J
    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v19

    .line 182
    .local v19, "txTimeMs":J
    add-long v8, v15, v17

    add-long v8, v8, v19

    iput-wide v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 184
    const/4 v8, 0x2

    move/from16 v13, p2

    if-ne v13, v8, :cond_5

    .line 185
    invoke-static/range {p3 .. p4}, Lcom/android/internal/os/BluetoothPowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 186
    if-eqz v0, :cond_4

    iget-object v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_4

    .line 187
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 188
    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v3, v3, v2

    .line 189
    .local v3, "key":Landroid/os/BatteryConsumer$Key;
    iget v7, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 190
    .local v7, "processState":I
    if-nez v7, :cond_2

    .line 192
    goto :goto_1

    .line 195
    :cond_2
    iget-object v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 196
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats$Uid;->getBluetoothMeasuredBatteryConsumptionUC(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/os/BluetoothPowerCalculator;->uCtoMah(J)D

    move-result-wide v9

    aput-wide v9, v8, v2

    .line 187
    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v7    # "processState":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v7, p0

    .end local v2    # "i":I
    goto/16 :goto_4

    .line 186
    :cond_4
    move-object/from16 v7, p0

    goto/16 :goto_4

    .line 200
    :cond_5
    if-nez p6, :cond_7

    .line 201
    nop

    .line 202
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x414b774000000000L    # 3600000.0

    div-double/2addr v7, v9

    .line 204
    .local v7, "powerMah":D
    cmpl-double v9, v7, v2

    if-eqz v9, :cond_7

    .line 205
    iput-wide v7, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 206
    iget-object v9, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v9, :cond_6

    .line 209
    iget-object v9, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v9, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 211
    :cond_6
    return-void

    .line 215
    .end local v7    # "powerMah":D
    :cond_7
    move-object/from16 v7, p0

    iget-boolean v8, v7, Lcom/android/internal/os/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    if-eqz v8, :cond_a

    .line 216
    move-object/from16 v8, p0

    move-wide/from16 v9, v17

    move-wide/from16 v11, v19

    move-wide v13, v15

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 218
    iget-object v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_b

    .line 219
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 220
    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v3, v3, v2

    .line 221
    .restart local v3    # "key":Landroid/os/BatteryConsumer$Key;
    iget v8, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 222
    .local v8, "processState":I
    if-nez v8, :cond_8

    .line 224
    goto :goto_3

    .line 227
    :cond_8
    iget-object v9, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 229
    invoke-virtual {v5, v8}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v22

    .line 230
    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v24

    .line 231
    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v26

    .line 228
    move-object/from16 v21, p0

    invoke-virtual/range {v21 .. v27}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v10

    aput-wide v10, v9, v2

    .line 219
    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v8    # "processState":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_9
    goto :goto_4

    .line 235
    :cond_a
    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 236
    iget-object v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v8, :cond_b

    .line 237
    iget-object v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v8, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 241
    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 20
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 71
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    sget-object v2, Lcom/android/internal/os/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 76
    .local v2, "keys":[Landroid/os/BatteryConsumer$Key;
    new-instance v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration-IA;)V

    .line 78
    .local v3, "powerAndDuration":Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;
    nop

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v4

    .line 80
    .local v4, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    .local v5, "i":I
    :goto_0
    const/4 v14, 0x2

    if-ltz v5, :cond_3

    .line 81
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 82
    .local v6, "app":Landroid/os/UidBatteryConsumer$Builder;
    sget-object v7, Lcom/android/internal/os/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v2, v7, :cond_2

    .line 83
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    invoke-virtual {v6, v14}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    .line 85
    iput-object v2, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 86
    array-length v7, v2

    new-array v7, v7, [D

    iput-object v7, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    goto :goto_1

    .line 88
    :cond_1
    const/4 v2, 0x0

    .line 91
    :cond_2
    :goto_1
    move-object/from16 v15, p0

    invoke-direct {v15, v6, v3, v1}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V

    .line 80
    .end local v6    # "app":Landroid/os/UidBatteryConsumer$Builder;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v15, p0

    .line 94
    .end local v5    # "i":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothMeasuredBatteryConsumptionUC()J

    move-result-wide v11

    .line 95
    .local v11, "measuredChargeUC":J
    invoke-static {v11, v12, v1}, Lcom/android/internal/os/BluetoothPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    .line 96
    .local v10, "powerModel":I
    nop

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v16

    .line 98
    .local v16, "activityCounter":Landroid/os/BatteryStats$ControllerActivityCounter;
    const/4 v6, 0x0

    .line 99
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v17

    .line 98
    move-object/from16 v5, p0

    move v7, v10

    move-wide v8, v11

    move v13, v10

    .end local v10    # "powerModel":I
    .local v13, "powerModel":I
    move-object/from16 v10, v16

    move-wide/from16 v18, v11

    .end local v11    # "measuredChargeUC":J
    .local v18, "measuredChargeUC":J
    move/from16 v11, v17

    move-object v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 102
    const-wide/16 v5, 0x0

    iget-wide v7, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide v9, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 109
    .local v5, "systemComponentDurationMs":J
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 111
    invoke-virtual {v7, v14, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-wide v10, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 114
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 113
    invoke-virtual {v7, v14, v8, v9, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 117
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 119
    invoke-virtual {v7, v14, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 121
    invoke-virtual {v7, v14, v8, v9, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 124
    return-void
.end method

.method public blacklist calculatePowerMah(JJJ)D
    .locals 6
    .param p1, "rxTimeMs"    # J
    .param p3, "txTimeMs"    # J
    .param p5, "idleTimeMs"    # J

    .line 245
    long-to-double v0, p5

    iget-wide v2, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr v0, v2

    long-to-double v2, p1

    iget-wide v4, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    long-to-double v2, p3

    iget-wide v4, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 65
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
