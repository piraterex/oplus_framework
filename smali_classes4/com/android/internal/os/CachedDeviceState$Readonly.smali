.class public Lcom/android/internal/os/CachedDeviceState$Readonly;
.super Ljava/lang/Object;
.source "CachedDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/CachedDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Readonly"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/CachedDeviceState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/CachedDeviceState;

    .line 82
    iput-object p1, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createTimeOnBatteryStopwatch()Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmStopwatchesLock(Lcom/android/internal/os/CachedDeviceState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    new-instance v1, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    iget-object v2, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {v1, v2}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;-><init>(Lcom/android/internal/os/CachedDeviceState;)V

    .line 95
    .local v1, "stopwatch":Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;
    iget-object v2, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v2}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmOnBatteryStopwatches(Lcom/android/internal/os/CachedDeviceState;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v2}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmCharging(Lcom/android/internal/os/CachedDeviceState;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    invoke-static {v1}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->-$$Nest$mstart(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    .line 99
    :cond_0
    monitor-exit v0

    return-object v1

    .line 100
    .end local v1    # "stopwatch":Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCharging()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmCharging(Lcom/android/internal/os/CachedDeviceState;)Z

    move-result v0

    return v0
.end method

.method public blacklist isScreenInteractive()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState$Readonly;->this$0:Lcom/android/internal/os/CachedDeviceState;

    invoke-static {v0}, Lcom/android/internal/os/CachedDeviceState;->-$$Nest$fgetmScreenInteractive(Lcom/android/internal/os/CachedDeviceState;)Z

    move-result v0

    return v0
.end method
