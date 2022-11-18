.class Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildUid"
.end annotation


# instance fields
.field public final blacklist cpuActiveCounter:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field public final blacklist cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V
    .locals 9

    .line 12184
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;->this$0:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12185
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 12186
    .local v7, "timestampMs":J
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v1, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;->cpuActiveCounter:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 12188
    const/4 v1, 0x0

    invoke-static {v0, v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 12190
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12191
    iget-object p1, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result p1

    .line 12193
    .local p1, "cpuFreqCount":I
    new-instance v0, Lcom/android/internal/os/LongArrayMultiStateCounter;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter;-><init>(II)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 12197
    new-instance v1, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;

    invoke-direct {v1, p1}, Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;-><init>(I)V

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/internal/os/LongArrayMultiStateCounter;->updateValues(Lcom/android/internal/os/LongArrayMultiStateCounter$LongArrayContainer;J)V

    .line 12200
    .end local p1    # "cpuFreqCount":I
    goto :goto_0

    .line 12201
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;->cpuTimeInFreqCounter:Lcom/android/internal/os/LongArrayMultiStateCounter;

    .line 12203
    :goto_0
    return-void
.end method
