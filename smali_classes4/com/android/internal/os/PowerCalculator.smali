.class public abstract Lcom/android/internal/os/PowerCalculator;
.super Ljava/lang/Object;
.source "PowerCalculator.java"


# static fields
.field protected static final blacklist DEBUG:Z = false

.field protected static final blacklist MILLIAMPHOUR_PER_MICROCOULOMB:D = 2.777777777777778E-7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static blacklist getPowerModel(J)I
    .locals 2
    .param p0, "measuredEnergyUC"    # J

    .line 93
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x2

    goto :goto_0

    .line 95
    :cond_0
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0
.end method

.method protected static blacklist getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I
    .locals 2
    .param p0, "measuredEnergyUC"    # J
    .param p2, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 85
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x2

    return v0

    .line 89
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist printPowerMah(Ljava/io/PrintWriter;D)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "powerMah"    # D

    .line 102
    invoke-static {p1, p2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static blacklist uCtoMah(J)D
    .locals 4
    .param p0, "chargeUC"    # J

    .line 106
    long-to-double v0, p0

    const-wide v2, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 11
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v0

    .line 59
    .local v0, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    .line 61
    .local v2, "app":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    move-object v3, p0

    move-object v4, v2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V

    .line 59
    .end local v2    # "app":Landroid/os/UidBatteryConsumer$Builder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected blacklist calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 0
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 75
    return-void
.end method

.method public abstract blacklist isPowerComponentSupported(I)Z
.end method

.method public greylist-max-o reset()V
    .locals 0

    .line 81
    return-void
.end method
