.class public Lcom/android/internal/os/BatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "BatteryUsageStatsProvider.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BatteryUsageStatsProv"

.field private static blacklist sErrorReported:Z


# instance fields
.field private final blacklist mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPowerCalculators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private final blacklist mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryStats;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/internal/os/BatteryUsageStatsStore;)V

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/internal/os/BatteryUsageStatsStore;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "batteryUsageStatsStore"    # Lcom/android/internal/os/BatteryUsageStatsStore;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 63
    iput-object p3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    .line 64
    instance-of v0, p2, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v0, :cond_0

    .line 65
    move-object v0, p2

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 67
    return-void
.end method

.method private blacklist currentTimeMillis()J
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_0

    .line 375
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 377
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist elapsedRealtime()J
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_0

    .line 359
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    .line 361
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getAggregatedBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 13
    .param p1, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 314
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 316
    .local v0, "includePowerModels":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 318
    invoke-virtual {v3}, Landroid/os/BatteryStats;->isProcessStateDataAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 320
    .local v1, "includeProcessStateData":Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "customEnergyConsumerNames":[Ljava/lang/String;
    new-instance v4, Landroid/os/BatteryUsageStats$Builder;

    invoke-direct {v4, v3, v0, v1}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZ)V

    .line 323
    .local v4, "builder":Landroid/os/BatteryUsageStats$Builder;
    iget-object v5, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    const-string v6, "BatteryUsageStatsProv"

    if-nez v5, :cond_2

    .line 324
    const-string v2, "BatteryUsageStatsStore is unavailable"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2

    .line 328
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryUsageStatsStore;->listBatteryUsageStatsTimestamps()[J

    move-result-object v5

    .line 329
    .local v5, "timestamps":[J
    array-length v7, v5

    :goto_2
    if-ge v2, v7, :cond_7

    aget-wide v8, v5, v2

    .line 330
    .local v8, "timestamp":J
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFromTimestamp()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-lez v10, :cond_6

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gtz v10, :cond_6

    .line 331
    iget-object v10, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    .line 332
    invoke-virtual {v10, v8, v9}, Lcom/android/internal/os/BatteryUsageStatsStore;->loadBatteryUsageStats(J)Landroid/os/BatteryUsageStats;

    move-result-object v10

    .line 333
    .local v10, "snapshot":Landroid/os/BatteryUsageStats;
    if-nez v10, :cond_3

    .line 334
    goto :goto_3

    .line 337
    :cond_3
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 341
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 339
    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    goto :goto_3

    .line 345
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    move-result v11

    if-nez v11, :cond_5

    .line 346
    const-string v11, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    goto :goto_3

    .line 351
    :cond_5
    invoke-virtual {v4, v10}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;

    .line 329
    .end local v8    # "timestamp":J
    .end local v10    # "snapshot":Landroid/os/BatteryUsageStats;
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 354
    :cond_7
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 4
    .param p1, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p2, "currentTimeMs"    # J

    .line 150
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getCurrentBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getAggregatedBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCurrentBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 24
    .param p1, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p2, "currentTimeMs"    # J

    .line 160
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 161
    .local v1, "realtimeUs":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->uptimeMillis()J

    move-result-wide v5

    mul-long/2addr v3, v5

    .line 163
    .local v3, "uptimeUs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v14, v5

    .line 165
    .local v14, "includePowerModels":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 167
    invoke-virtual {v5}, Landroid/os/BatteryStats;->isProcessStateDataAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    move v15, v5

    .line 168
    .local v15, "includeProcessStateData":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move/from16 v16, v5

    .line 171
    .local v16, "includeVirtualUids":Z
    new-instance v5, Landroid/os/BatteryUsageStats$Builder;

    iget-object v7, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    .line 172
    invoke-virtual {v7}, Landroid/os/BatteryStats;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v14, v15}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZ)V

    move-object v12, v5

    .line 176
    .local v12, "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    iget-object v5, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 177
    move-wide/from16 v10, p2

    invoke-virtual {v12, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 179
    iget-object v5, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v8

    .line 180
    .local v8, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_3
    if-ltz v5, :cond_4

    .line 181
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    .line 182
    .local v7, "uid":Landroid/os/BatteryStats$Uid;
    if-nez v16, :cond_3

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    const/16 v13, 0x442

    if-ne v9, v13, :cond_3

    .line 183
    goto :goto_4

    .line 186
    :cond_3
    invoke-virtual {v12, v7}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v9

    .line 188
    invoke-direct {v0, v7, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v10

    .line 187
    invoke-virtual {v9, v6, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v9

    .line 190
    invoke-direct {v0, v7, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v10

    .line 189
    const/4 v13, 0x0

    invoke-virtual {v9, v13, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    .line 180
    .end local v7    # "uid":Landroid/os/BatteryStats$Uid;
    :goto_4
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v10, p2

    goto :goto_3

    .line 193
    .end local v5    # "i":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getPowerComponents()[I

    move-result-object v13

    .line 194
    .local v13, "powerComponents":[I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v10

    .line 195
    .local v10, "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerCalculator;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v9, v5

    .end local v5    # "i":I
    .local v9, "i":I
    .local v11, "count":I
    :goto_5
    if-ge v9, v11, :cond_8

    .line 196
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/internal/os/PowerCalculator;

    .line 197
    .local v7, "powerCalculator":Lcom/android/internal/os/PowerCalculator;
    if-eqz v13, :cond_7

    .line 198
    const/4 v5, 0x0

    .line 199
    .local v5, "include":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    move/from16 v17, v5

    .end local v5    # "include":Z
    .local v17, "include":Z
    array-length v5, v13

    if-ge v6, v5, :cond_6

    .line 200
    aget v5, v13, v6

    invoke-virtual {v7, v5}, Lcom/android/internal/os/PowerCalculator;->isPowerComponentSupported(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 201
    const/4 v5, 0x1

    .line 202
    .end local v17    # "include":Z
    .restart local v5    # "include":Z
    goto :goto_7

    .line 199
    .end local v5    # "include":Z
    .restart local v17    # "include":Z
    :cond_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    goto :goto_6

    :cond_6
    move/from16 v5, v17

    .line 205
    .end local v6    # "j":I
    .end local v17    # "include":Z
    .restart local v5    # "include":Z
    :goto_7
    if-nez v5, :cond_7

    .line 206
    move-wide/from16 v22, v1

    move-object/from16 v17, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object v1, v12

    goto :goto_8

    .line 209
    .end local v5    # "include":Z
    :cond_7
    iget-object v6, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    move-object v5, v7

    move-object/from16 v17, v6

    move-object v6, v12

    move-object/from16 v18, v7

    .end local v7    # "powerCalculator":Lcom/android/internal/os/PowerCalculator;
    .local v18, "powerCalculator":Lcom/android/internal/os/PowerCalculator;
    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move/from16 v19, v9

    .end local v8    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v9    # "i":I
    .local v17, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .local v19, "i":I
    move-wide v8, v1

    move-object/from16 v20, v10

    move/from16 v21, v11

    .end local v10    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerCalculator;>;"
    .end local v11    # "count":I
    .local v20, "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerCalculator;>;"
    .local v21, "count":I
    move-wide v10, v3

    move-wide/from16 v22, v1

    move-object v1, v12

    .end local v12    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .local v1, "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .local v22, "realtimeUs":J
    move-object/from16 v12, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    .line 195
    .end local v18    # "powerCalculator":Lcom/android/internal/os/PowerCalculator;
    :goto_8
    add-int/lit8 v9, v19, 0x1

    move-object v12, v1

    move-object/from16 v8, v17

    move-object/from16 v10, v20

    move/from16 v11, v21

    move-wide/from16 v1, v22

    .end local v19    # "i":I
    .restart local v9    # "i":I
    goto :goto_5

    .end local v17    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v20    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerCalculator;>;"
    .end local v21    # "count":I
    .end local v22    # "realtimeUs":J
    .local v1, "realtimeUs":J
    .restart local v8    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v10    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerCalculator;>;"
    .restart local v11    # "count":I
    .restart local v12    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    :cond_8
    move-wide/from16 v22, v1

    move-object/from16 v17, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object v1, v12

    .line 213
    .end local v8    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v9    # "i":I
    .end local v10    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerCalculator;>;"
    .end local v11    # "count":I
    .end local v12    # "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .local v1, "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    .restart local v17    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v20    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/PowerCalculator;>;"
    .restart local v22    # "realtimeUs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a

    .line 215
    iget-object v2, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v5, v2, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v5, :cond_9

    .line 220
    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl;

    .line 223
    .local v2, "batteryStatsImpl":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 224
    .local v5, "historyBuffer":Landroid/os/Parcel;
    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    .line 225
    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    .line 224
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 227
    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    .line 228
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsHistory;->getHistoryDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 229
    .local v6, "systemDir":Ljava/io/File;
    new-instance v7, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v7, v2, v6, v5}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Parcel;)V

    .line 232
    .local v7, "batteryStatsHistory":Lcom/android/internal/os/BatteryStatsHistory;
    invoke-virtual {v1, v7}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_9

    .line 216
    .end local v2    # "batteryStatsImpl":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v5    # "historyBuffer":Landroid/os/Parcel;
    .end local v6    # "systemDir":Ljava/io/File;
    .end local v7    # "batteryStatsHistory":Lcom/android/internal/os/BatteryStatsHistory;
    :cond_9
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "History cannot be included for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_a
    :goto_9
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    .line 236
    .local v2, "stats":Landroid/os/BatteryUsageStats;
    if-eqz v15, :cond_b

    .line 237
    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->verify(Landroid/os/BatteryUsageStats;)V

    .line 239
    :cond_b
    return-object v2
.end method

.method private blacklist getPowerCalculators()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerCalculator;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    if-nez v1, :cond_1

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 75
    new-instance v2, Lcom/android/internal/os/BatteryChargeCalculator;

    invoke-direct {v2}, Lcom/android/internal/os/BatteryChargeCalculator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/CpuPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/MemoryPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/WakelockPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/WifiPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/BluetoothPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/SensorPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorManager;

    .line 85
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    invoke-direct {v2, v3}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Landroid/hardware/SensorManager;)V

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/GnssPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/GnssPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/CameraPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/FlashlightPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/AudioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/AudioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/VideoPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/VideoPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/PhonePowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/PhonePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/ScreenPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ScreenPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/AmbientDisplayPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/IdlePowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/IdlePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/CustomMeasuredPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/UserPowerCalculator;

    invoke-direct {v2}, Lcom/android/internal/os/UserPowerCalculator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/SystemServicePowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/SystemServicePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    return-object v0

    .line 103
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 4
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "realtimeUs"    # J

    .line 309
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private blacklist getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .locals 10
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "realtimeUs"    # J

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v1

    .line 286
    .local v1, "topStateDurationUs":J
    const-wide/16 v3, 0x0

    .line 287
    .local v3, "foregroundActivityDurationUs":J
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    .line 288
    .local v5, "foregroundActivityTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v5, :cond_0

    .line 289
    invoke-virtual {v5, p2, p3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    .line 295
    :cond_0
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 297
    .local v6, "totalForegroundDurationUs":J
    const/4 v8, 0x2

    invoke-virtual {p1, v8, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 301
    const/4 v8, 0x1

    invoke-virtual {p1, v8, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 305
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    return-wide v8
.end method

.method private blacklist uptimeMillis()J
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_0

    .line 367
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 369
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist verify(Landroid/os/BatteryUsageStats;)V
    .locals 18
    .param p1, "stats"    # Landroid/os/BatteryUsageStats;

    .line 245
    sget-boolean v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->sErrorReported:Z

    if-eqz v0, :cond_0

    .line 246
    return-void

    .line 249
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 250
    .local v0, "precision":D
    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 255
    .local v3, "components":[I
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 260
    .local v2, "states":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    .line 261
    .local v5, "ubc":Landroid/os/UidBatteryConsumer;
    array-length v6, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_4

    aget v9, v3, v8

    .line 262
    .local v9, "component":I
    invoke-virtual {v5, v9}, Landroid/os/UidBatteryConsumer;->getKey(I)Landroid/os/BatteryConsumer$Key;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v10

    .line 263
    .local v10, "consumedPower":D
    const-wide/16 v12, 0x0

    .line 264
    .local v12, "sumStates":D
    array-length v14, v2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_1

    aget v7, v2, v15

    .line 265
    .local v7, "state":I
    move-wide/from16 v16, v0

    .end local v0    # "precision":D
    .local v16, "precision":D
    invoke-virtual {v5, v9, v7}, Landroid/os/UidBatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v0

    add-double/2addr v12, v0

    .line 264
    .end local v7    # "state":I
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v16

    goto :goto_2

    .line 267
    .end local v16    # "precision":D
    .restart local v0    # "precision":D
    :cond_1
    move-wide/from16 v16, v0

    .end local v0    # "precision":D
    .restart local v16    # "precision":D
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double/2addr v0, v10

    cmpl-double v0, v12, v0

    if-lez v0, :cond_3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sum of states exceeds total. UID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    invoke-static {v9}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " states = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "error":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/os/BatteryUsageStatsProvider;->sErrorReported:Z

    const-string v4, "BatteryUsageStatsProv"

    if-nez v1, :cond_2

    .line 272
    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/BatteryUsageStatsProvider;->sErrorReported:Z

    goto :goto_3

    .line 275
    :cond_2
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_3
    return-void

    .line 261
    .end local v0    # "error":Ljava/lang/String;
    .end local v9    # "component":I
    .end local v10    # "consumedPower":D
    .end local v12    # "sumStates":D
    :cond_3
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v0, v16

    goto :goto_1

    .end local v16    # "precision":D
    .local v0, "precision":D
    :cond_4
    move-wide/from16 v16, v0

    .line 280
    .end local v0    # "precision":D
    .end local v5    # "ubc":Landroid/os/UidBatteryConsumer;
    .restart local v16    # "precision":D
    goto/16 :goto_0

    .line 281
    .end local v16    # "precision":D
    .restart local v0    # "precision":D
    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x8
        0xb
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method


# virtual methods
.method public blacklist getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 3
    .param p1, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 142
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    .line 126
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryUsageStats;>;"
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->currentTimeMillis()J

    move-result-wide v2

    .line 130
    .local v2, "currentTimeMillis":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 131
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryUsageStatsQuery;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "currentTimeMillis":J
    .end local v4    # "i":I
    :cond_0
    monitor-exit v1

    .line 134
    return-object v0

    .line 133
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist shouldUpdateStats(Ljava/util/List;J)Z
    .locals 7
    .param p2, "lastUpdateTimeStampMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;J)Z"
        }
    .end annotation

    .line 113
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 114
    .local v0, "allowableStatsAge":J
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    .line 116
    .local v4, "query":Landroid/os/BatteryUsageStatsQuery;
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 114
    .end local v4    # "query":Landroid/os/BatteryUsageStatsQuery;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p2

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method
