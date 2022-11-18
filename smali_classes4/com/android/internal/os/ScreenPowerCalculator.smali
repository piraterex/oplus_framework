.class public Lcom/android/internal/os/ScreenPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "ScreenPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist MIN_ACTIVE_TIME_FOR_SMEARING:J = 0x927c0L

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenPowerCalculator"


# instance fields
.field private final blacklist mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final blacklist mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 52
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    .line 54
    .local v0, "numDisplays":I
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 55
    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 56
    const/4 v1, 0x0

    .local v1, "display":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 58
    const-string/jumbo v4, "screen.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    .line 59
    iget-object v2, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 60
    const-string/jumbo v4, "screen.full.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "display":I
    :cond_0
    return-void
.end method

.method private blacklist calculateAppUsingMeasuredEnergy(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .locals 4
    .param p1, "appPowerAndDuration"    # Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J

    .line 148
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/os/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    .line 150
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getScreenOnMeasuredBatteryConsumptionUC()J

    move-result-wide v0

    .line 151
    .local v0, "chargeUC":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 152
    const-string v2, "ScreenPowerCalculator"

    const-string v3, "Screen energy not supported, so calculateApp shouldn\'t de called"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 154
    return-void

    .line 157
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/os/ScreenPowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 158
    return-void
.end method

.method private blacklist calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 4
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 161
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist calculateTotalDurationAndPower(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V
    .locals 2
    .param p1, "totalPowerAndDuration"    # Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    .param p2, "powerModel"    # I
    .param p3, "batteryStats"    # Landroid/os/BatteryStats;
    .param p4, "rawRealtimeUs"    # J
    .param p6, "statsType"    # I
    .param p7, "consumptionUC"    # J

    .line 132
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    .line 135
    packed-switch p2, :pswitch_data_0

    .line 141
    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-static {p7, p8}, Lcom/android/internal/os/ScreenPowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 138
    nop

    .line 144
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D
    .locals 17
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v4, v4

    .line 167
    .local v4, "numDisplays":I
    const-wide/16 v5, 0x0

    .line 168
    .local v5, "power":D
    const/4 v7, 0x0

    .local v7, "display":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 169
    invoke-virtual {v1, v7, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 171
    .local v8, "displayTime":J
    iget-object v12, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v12, v12, v7

    invoke-virtual {v12, v8, v9}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v12

    add-double/2addr v5, v12

    .line 172
    const/4 v12, 0x0

    .local v12, "bin":I
    :goto_1
    const/4 v13, 0x5

    if-ge v12, v13, :cond_0

    .line 173
    invoke-virtual {v1, v7, v12, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v13

    div-long/2addr v13, v10

    .line 175
    .local v13, "brightnessTime":J
    iget-object v15, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v15, v15, v7

    invoke-virtual {v15, v13, v14}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v15

    int-to-float v10, v12

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v15, v10

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    div-double/2addr v15, v10

    .line 181
    .local v15, "binPowerMah":D
    add-double/2addr v5, v15

    .line 172
    .end local v13    # "brightnessTime":J
    .end local v15    # "binPowerMah":D
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v10, 0x3e8

    goto :goto_1

    .line 168
    .end local v8    # "displayTime":J
    .end local v12    # "bin":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 184
    .end local v7    # "display":I
    :cond_1
    return-wide v5
.end method

.method private blacklist smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;J)V
    .locals 18
    .param p2, "totalPowerAndDuration"    # Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    .param p3, "rawRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;",
            "Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;",
            "J)V"
        }
    .end annotation

    .line 194
    .local p1, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 195
    .local v1, "totalActivityTimeMs":J
    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    .line 196
    .local v3, "activityTimeArray":Landroid/util/SparseLongArray;
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 197
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 198
    .local v6, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    .line 199
    .local v7, "uid":Landroid/os/BatteryStats$Uid;
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/internal/os/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    .line 200
    .local v11, "timeMs":J
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    invoke-virtual {v3, v13, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 201
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v13

    if-nez v13, :cond_0

    .line 202
    add-long/2addr v1, v11

    .line 196
    .end local v6    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v7    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v11    # "timeMs":J
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    .line 206
    .end local v4    # "i":I
    const-wide/32 v6, 0x927c0

    cmp-long v4, v1, v6

    if-ltz v4, :cond_3

    .line 207
    move-object/from16 v4, p2

    iget-wide v6, v4, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 208
    .local v6, "totalScreenPowerMah":D
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v5

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_2

    .line 209
    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    .line 210
    .local v12, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v13

    const-wide/16 v14, 0x0

    invoke-virtual {v3, v13, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v13

    .line 211
    .local v13, "durationMs":J
    move-object v15, v3

    .end local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    .local v15, "activityTimeArray":Landroid/util/SparseLongArray;
    long-to-double v3, v13

    mul-double/2addr v3, v6

    move-wide/from16 v16, v6

    .end local v6    # "totalScreenPowerMah":D
    .local v16, "totalScreenPowerMah":D
    long-to-double v5, v1

    div-double/2addr v3, v5

    .line 212
    .local v3, "powerMah":D
    const/4 v5, 0x0

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 213
    const/4 v7, 0x1

    invoke-virtual {v6, v5, v3, v4, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 208
    .end local v3    # "powerMah":D
    .end local v12    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v13    # "durationMs":J
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, p2

    move v5, v7

    move-object v3, v15

    move-wide/from16 v6, v16

    goto :goto_1

    .end local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    .end local v16    # "totalScreenPowerMah":D
    .local v3, "activityTimeArray":Landroid/util/SparseLongArray;
    .restart local v6    # "totalScreenPowerMah":D
    :cond_2
    move-object v15, v3

    move-wide/from16 v16, v6

    .end local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    .end local v6    # "totalScreenPowerMah":D
    .restart local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    .restart local v16    # "totalScreenPowerMah":D
    goto :goto_2

    .line 206
    .end local v11    # "i":I
    .end local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    .end local v16    # "totalScreenPowerMah":D
    .restart local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    :cond_3
    move-object v15, v3

    .line 217
    .end local v3    # "activityTimeArray":Landroid/util/SparseLongArray;
    .restart local v15    # "activityTimeArray":Landroid/util/SparseLongArray;
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 19
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 73
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    new-instance v0, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration-IA;)V

    move-object v14, v0

    .line 75
    .local v14, "totalPowerAndDuration":Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenOnMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    .line 76
    .local v7, "consumptionUC":J
    move-object/from16 v15, p7

    invoke-static {v7, v8, v15}, Lcom/android/internal/os/ScreenPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v6

    .line 77
    .local v6, "powerModel":I
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move v13, v6

    .end local v6    # "powerModel":I
    .local v13, "powerModel":I
    move/from16 v6, v16

    move-wide/from16 v17, v7

    .end local v7    # "consumptionUC":J
    .local v17, "consumptionUC":J
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateTotalDurationAndPower(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V

    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .local v0, "totalAppPower":D
    const-wide/16 v2, 0x0

    .line 86
    .local v2, "totalAppDuration":J
    nop

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v4

    .line 88
    .local v4, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    const/4 v5, 0x1

    packed-switch v13, :pswitch_data_0

    .line 107
    move-object/from16 v5, p0

    move-wide/from16 v6, p3

    invoke-direct {v5, v4, v14, v6, v7}, Lcom/android/internal/os/ScreenPowerCalculator;->smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;J)V

    .line 109
    iget-wide v0, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 110
    iget-wide v2, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    goto :goto_1

    .line 90
    :pswitch_0
    new-instance v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration-IA;)V

    .line 91
    .local v7, "appPowerAndDuration":Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v5

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 92
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 93
    .local v5, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v6

    invoke-direct {v9, v7, v6, v11, v12}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateAppUsingMeasuredEnergy(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    .line 95
    iget-wide v9, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v9

    check-cast v9, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v10, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 97
    invoke-virtual {v9, v6, v10, v11, v13}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 99
    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v6

    if-nez v6, :cond_0

    .line 100
    iget-wide v9, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v0, v9

    .line 101
    iget-wide v9, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v2, v9

    .line 91
    .end local v5    # "app":Landroid/os/UidBatteryConsumer$Builder;
    :cond_0
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    const/4 v5, 0x1

    goto :goto_0

    .line 104
    .end local v8    # "i":I
    :cond_1
    move-object/from16 v5, p0

    move-wide/from16 v6, p3

    .line 113
    .end local v7    # "appPowerAndDuration":Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    :goto_1
    move-object/from16 v8, p1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    iget-wide v11, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    .line 116
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 115
    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v10

    check-cast v10, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v11, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    .line 117
    invoke-virtual {v10, v9, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 120
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    .line 122
    invoke-virtual {v10, v9, v0, v1, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v10

    check-cast v10, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 123
    invoke-virtual {v10, v9, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 124
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 3
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J

    .line 239
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 240
    .local v0, "timer":Landroid/os/BatteryStats$Timer;
    if-nez v0, :cond_0

    .line 241
    const-wide/16 v1, 0x0

    return-wide v1

    .line 243
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 9
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealTimeUs"    # J

    .line 222
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 224
    .local v0, "foregroundTypes":[I
    const-wide/16 v2, 0x0

    .line 225
    .local v2, "timeUs":J
    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v0, v5

    .line 226
    .local v6, "type":I
    invoke-virtual {p1, v6, p2, p3, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    .line 228
    .local v7, "localTime":J
    add-long/2addr v2, v7

    .line 225
    .end local v6    # "type":I
    .end local v7    # "localTime":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/ScreenPowerCalculator;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
