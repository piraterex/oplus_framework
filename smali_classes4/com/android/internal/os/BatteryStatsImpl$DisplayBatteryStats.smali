.class Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayBatteryStats"
.end annotation


# instance fields
.field public blacklist screenBrightnessBin:I

.field public blacklist screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public blacklist screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public blacklist screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public blacklist screenState:I

.field public blacklist screenStateAtLastEnergyMeasurement:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 15
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 885
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    .line 873
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessBin:I

    .line 877
    const/4 v2, 0x5

    new-array v3, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 883
    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenStateAtLastEnergyMeasurement:I

    .line 886
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v1

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 888
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 890
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 891
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    rsub-int/lit8 v7, v1, -0x64

    const/4 v8, 0x0

    move-object v4, v10

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v3, v1

    .line 890
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist readSummaryFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 924
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 925
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 926
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 926
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist reset(J)V
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J

    .line 900
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 901
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 902
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    .line 902
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist writeSummaryToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 913
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 914
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 915
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 918
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
