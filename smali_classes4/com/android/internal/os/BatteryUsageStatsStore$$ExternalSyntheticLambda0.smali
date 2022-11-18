.class public final synthetic Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/os/BatteryUsageStatsStore;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/os/BatteryUsageStatsStore;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/BatteryUsageStatsStore;

    iput-object p2, p0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/os/BatteryUsageStatsStore;

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryUsageStatsStore;->lambda$prepareForBatteryStatsReset$0$com-android-internal-os-BatteryUsageStatsStore(Ljava/util/List;)V

    return-void
.end method
