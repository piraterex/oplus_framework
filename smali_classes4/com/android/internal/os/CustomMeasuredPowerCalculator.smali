.class public Lcom/android/internal/os/CustomMeasuredPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CustomMeasuredPowerCalculator.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CustomMeasuredPowerCalc"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 37
    return-void
.end method

.method private blacklist calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[D)[D
    .locals 7
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "totalPowerMah"    # [D

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "newTotalPowerMah":[D
    nop

    .line 84
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCustomConsumerMeasuredBatteryConsumptionUC()[J

    move-result-object v1

    .line 83
    invoke-direct {p0, v1}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->calculateMeasuredEnergiesMah([J)[D

    move-result-object v1

    .line 85
    .local v1, "customMeasuredPowerMah":[D
    if-eqz v1, :cond_3

    .line 86
    if-nez p3, :cond_0

    .line 87
    array-length v2, v1

    new-array v0, v2, [D

    goto :goto_0

    .line 88
    :cond_0
    array-length v2, p3

    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of custom energy components is not the same for all apps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomMeasuredPowerCalc"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    array-length v2, v1

    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    move-object v0, p3

    .line 95
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 96
    add-int/lit16 v3, v2, 0x3e8

    aget-wide v4, v1, v2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 99
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    aget-wide v3, v0, v2

    aget-wide v5, v1, v2

    add-double/2addr v3, v5

    aput-wide v3, v0, v2

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method private blacklist calculateMeasuredEnergiesMah([J)[D
    .locals 4
    .param p1, "measuredChargeUC"    # [J

    .line 108
    if-nez p1, :cond_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    array-length v0, p1

    new-array v0, v0, [D

    .line 112
    .local v0, "measuredEnergiesMah":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 113
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 11
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 47
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    .line 49
    .local v2, "totalAppPowerMah":[D
    nop

    .line 50
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v3

    .line 51
    .local v3, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 52
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 53
    .local v6, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    invoke-direct {p0, v6, v7, v2}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[D)[D

    move-result-object v2

    .line 51
    .end local v6    # "app":Landroid/os/UidBatteryConsumer$Builder;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 56
    .end local v4    # "i":I
    :cond_0
    nop

    .line 57
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getCustomConsumerMeasuredBatteryConsumptionUC()[J

    move-result-object v4

    .line 56
    invoke-direct {p0, v4}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->calculateMeasuredEnergiesMah([J)[D

    move-result-object v4

    .line 58
    .local v4, "customMeasuredPowerMah":[D
    if-eqz v4, :cond_1

    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-virtual {p1, v6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v6

    .line 62
    .local v6, "deviceBatteryConsumerBuilder":Landroid/os/AggregateBatteryConsumer$Builder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_1

    .line 63
    add-int/lit16 v8, v7, 0x3e8

    aget-wide v9, v4, v7

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 62
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68
    .end local v6    # "deviceBatteryConsumerBuilder":Landroid/os/AggregateBatteryConsumer$Builder;
    .end local v7    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    .line 69
    nop

    .line 70
    invoke-virtual {p1, v5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v5

    .line 72
    .local v5, "appsBatteryConsumerBuilder":Landroid/os/AggregateBatteryConsumer$Builder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 73
    add-int/lit16 v7, v6, 0x3e8

    aget-wide v8, v2, v6

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 72
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 78
    .end local v5    # "appsBatteryConsumerBuilder":Landroid/os/AggregateBatteryConsumer$Builder;
    .end local v6    # "i":I
    :cond_2
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 41
    const/4 v0, 0x0

    return v0
.end method
