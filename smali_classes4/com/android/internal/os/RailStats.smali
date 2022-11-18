.class public final Lcom/android/internal/os/RailStats;
.super Ljava/lang/Object;
.source "RailStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RailStats$RailInfoData;
    }
.end annotation


# static fields
.field private static final blacklist CELLULAR_SUBSYSTEM:Ljava/lang/String; = "cellular"

.field private static final blacklist TAG:Ljava/lang/String; = "RailStats"

.field private static final blacklist WIFI_SUBSYSTEM:Ljava/lang/String; = "wifi"


# instance fields
.field private blacklist mCellularTotalEnergyUseduWs:J

.field private blacklist mRailInfoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/os/RailStats$RailInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRailStatsAvailability:Z

.field private blacklist mWifiTotalEnergyUseduWs:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 33
    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return-void
.end method


# virtual methods
.method public blacklist getCellularTotalEnergyUseduWs()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public blacklist getRailStats()Lcom/android/internal/os/RailStats;
    .locals 0

    .line 107
    return-object p0
.end method

.method public blacklist getWifiTotalEnergyUseduWs()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public blacklist isRailStatsAvailable()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return v0
.end method

.method public blacklist reset()V
    .locals 2

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 103
    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 104
    return-void
.end method

.method public blacklist resetCellularTotalEnergyUsed()V
    .locals 2

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 82
    return-void
.end method

.method public blacklist resetWifiTotalEnergyUsed()V
    .locals 2

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 88
    return-void
.end method

.method public blacklist setRailStatsAvailability(Z)V
    .locals 0
    .param p1, "railStatsAvailability"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    .line 112
    return-void
.end method

.method public blacklist updateRailData(JLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 21
    .param p1, "index"    # J
    .param p3, "railName"    # Ljava/lang/String;
    .param p4, "subSystemName"    # Ljava/lang/String;
    .param p5, "timestampSinceBootMs"    # J
    .param p7, "energyUsedSinceBootuWs"    # J

    .line 46
    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    const-string/jumbo v10, "wifi"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "cellular"

    if-nez v1, :cond_0

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    return-void

    .line 49
    :cond_0
    iget-object v1, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/internal/os/RailStats$RailInfoData;

    .line 50
    .local v9, "node":Lcom/android/internal/os/RailStats$RailInfoData;
    if-nez v9, :cond_3

    .line 51
    iget-object v6, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v5, Lcom/android/internal/os/RailStats$RailInfoData;

    const/16 v16, 0x0

    move-object v1, v5

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v17, v5

    move-object/from16 v5, p4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-wide/from16 v6, p5

    move-object v13, v8

    move-object v12, v9

    .end local v9    # "node":Lcom/android/internal/os/RailStats$RailInfoData;
    .local v12, "node":Lcom/android/internal/os/RailStats$RailInfoData;
    move-wide/from16 v8, p7

    move-object/from16 v20, v12

    move-object v12, v10

    .end local v12    # "node":Lcom/android/internal/os/RailStats$RailInfoData;
    .local v20, "node":Lcom/android/internal/os/RailStats$RailInfoData;
    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/os/RailStats$RailInfoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLcom/android/internal/os/RailStats$RailInfoData-IA;)V

    move-object/from16 v3, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 55
    return-void

    .line 57
    :cond_1
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 60
    :cond_2
    return-void

    .line 62
    .end local v20    # "node":Lcom/android/internal/os/RailStats$RailInfoData;
    .restart local v9    # "node":Lcom/android/internal/os/RailStats$RailInfoData;
    :cond_3
    move-object v13, v8

    move-object/from16 v20, v9

    move-object v12, v10

    .end local v9    # "node":Lcom/android/internal/os/RailStats$RailInfoData;
    .restart local v20    # "node":Lcom/android/internal/os/RailStats$RailInfoData;
    move-object/from16 v1, v20

    .end local v20    # "node":Lcom/android/internal/os/RailStats$RailInfoData;
    .local v1, "node":Lcom/android/internal/os/RailStats$RailInfoData;
    iget-wide v2, v1, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    move-wide/from16 v4, p5

    sub-long v2, v4, v2

    .line 63
    .local v2, "timeSinceLastLogMs":J
    iget-wide v6, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    sub-long v6, v14, v6

    .line 64
    .local v6, "energyUsedSinceLastLoguWs":J
    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-ltz v10, :cond_4

    cmp-long v8, v6, v8

    if-gez v8, :cond_5

    .line 65
    :cond_4
    iget-wide v6, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    .line 67
    :cond_5
    iput-wide v4, v1, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    .line 68
    iput-wide v14, v1, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    .line 69
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 70
    iget-wide v8, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 71
    return-void

    .line 73
    :cond_6
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 74
    iget-wide v8, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 76
    :cond_7
    return-void
.end method
