.class public final synthetic Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:Z

.field public final synthetic blacklist f$6:I

.field public final synthetic blacklist f$7:I

.field public final synthetic blacklist f$8:Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;JJZZZIILcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$1:J

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$2:J

    iput-boolean p6, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$3:Z

    iput-boolean p7, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$4:Z

    iput-boolean p8, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$5:Z

    iput p9, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$6:I

    iput p10, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$7:I

    iput-object p11, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$8:Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    return-void
.end method


# virtual methods
.method public final blacklist onUidCpuTime(ILjava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$1:J

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$2:J

    iget-boolean v5, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$3:Z

    iget-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$4:Z

    iget-boolean v7, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$5:Z

    iget v8, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$6:I

    iget v9, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$7:I

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda3;->f$8:Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;

    move-object v12, p2

    check-cast v12, [J

    move v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuFreqTimesLocked$1$com-android-internal-os-BatteryStatsImpl(JJZZZIILcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;I[J)V

    return-void
.end method
