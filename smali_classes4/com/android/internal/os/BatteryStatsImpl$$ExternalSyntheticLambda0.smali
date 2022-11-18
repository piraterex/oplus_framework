.class public final synthetic Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/os/BatteryStatsImpl;

.field public final synthetic blacklist f$1:J

.field public final synthetic blacklist f$2:J

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Z

.field public final synthetic blacklist f$5:Landroid/util/SparseLongArray;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;JJIZLandroid/util/SparseLongArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-wide p2, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$2:J

    iput p6, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$3:I

    iput-boolean p7, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$4:Z

    iput-object p8, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$5:Landroid/util/SparseLongArray;

    return-void
.end method


# virtual methods
.method public final blacklist onUidCpuTime(ILjava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$2:J

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$3:I

    iget-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$4:Z

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$$ExternalSyntheticLambda0;->f$5:Landroid/util/SparseLongArray;

    move-object v9, p2

    check-cast v9, [J

    move v8, p1

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->lambda$readKernelUidCpuTimesLocked$0$com-android-internal-os-BatteryStatsImpl(JJIZLandroid/util/SparseLongArray;I[J)V

    return-void
.end method
