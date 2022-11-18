.class public Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuDeltaPowerAccumulator"
.end annotation


# instance fields
.field private blacklist mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field private final blacklist mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

.field private blacklist mUidClusterCache:[D

.field public final blacklist perUidCpuClusterChargesMah:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "[D>;"
        }
    .end annotation
.end field

.field public final blacklist totalClusterChargesMah:[D


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/CpuPowerCalculator;I)V
    .locals 1
    .param p1, "calculator"    # Lcom/android/internal/os/CpuPowerCalculator;
    .param p2, "nClusters"    # I

    .line 15156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 15154
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    .line 15157
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    .line 15158
    new-array v0, p2, [D

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    .line 15159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    .line 15160
    return-void
.end method

.method private blacklist getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D
    .locals 2
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 15186
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    return-object v0

    .line 15188
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 15189
    .local v0, "uidChargesMah":[D
    if-nez v0, :cond_1

    .line 15190
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    array-length v1, v1

    new-array v0, v1, [D

    .line 15191
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15193
    :cond_1
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    .line 15194
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    .line 15195
    return-object v0
.end method


# virtual methods
.method public blacklist addCpuClusterDurationsMs(Lcom/android/internal/os/BatteryStatsImpl$Uid;[J)V
    .locals 7
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "durationsMs"    # [J

    .line 15164
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D

    move-result-object v0

    .line 15165
    .local v0, "uidChargesMah":[D
    const/4 v1, 0x0

    .local v1, "cluster":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 15166
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    aget-wide v3, p2, v1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePerCpuClusterPowerMah(IJ)D

    move-result-wide v2

    .line 15168
    .local v2, "estimatedDeltaMah":D
    aget-wide v4, v0, v1

    add-double/2addr v4, v2

    aput-wide v4, v0, v1

    .line 15169
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide v5, v4, v1

    add-double/2addr v5, v2

    aput-wide v5, v4, v1

    .line 15165
    .end local v2    # "estimatedDeltaMah":D
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15171
    .end local v1    # "cluster":I
    :cond_0
    return-void
.end method

.method public blacklist addCpuClusterSpeedDurationsMs(Lcom/android/internal/os/BatteryStatsImpl$Uid;IIJ)V
    .locals 6
    .param p1, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p2, "cluster"    # I
    .param p3, "speed"    # I
    .param p4, "durationsMs"    # J

    .line 15176
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D

    move-result-object v0

    .line 15177
    .local v0, "uidChargesMah":[D
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePerCpuFreqPowerMah(IIJ)D

    move-result-wide v1

    .line 15179
    .local v1, "estimatedDeltaMah":D
    aget-wide v3, v0, p2

    add-double/2addr v3, v1

    aput-wide v3, v0, p2

    .line 15180
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide v4, v3, p2

    add-double/2addr v4, v1

    aput-wide v4, v3, p2

    .line 15181
    return-void
.end method
