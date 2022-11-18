.class public Lcom/android/internal/os/PhonePowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "PhonePowerCalculator.java"


# instance fields
.field private final blacklist mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 31
    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 32
    const-string/jumbo v1, "radio.active"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/PhonePowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    .line 33
    return-void
.end method


# virtual methods
.method public blacklist calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 7
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 45
    .local v1, "phoneOnTimeMs":J
    iget-object v3, p0, Lcom/android/internal/os/PhonePowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    .line 46
    .local v3, "phoneOnPower":D
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    .line 49
    const/16 v5, 0xe

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 50
    invoke-virtual {v0, v5, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 52
    :cond_0
    return-void
.end method

.method public blacklist isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 37
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
