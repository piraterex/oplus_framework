.class public final synthetic Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$1:J

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$2:J

    return-void
.end method


# virtual methods
.method public final blacklist onUidCpuTime(ILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$1:J

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda2;->f$2:J

    move-object v6, p2

    check-cast v6, Ljava/lang/Long;

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuActiveTimesLocked$2$com-android-internal-os-BatteryStatsImpl(JJILjava/lang/Long;)V

    return-void
.end method
