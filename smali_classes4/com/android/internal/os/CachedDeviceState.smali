.class public Lcom/android/internal/os/CachedDeviceState;
.super Ljava/lang/Object;
.source "CachedDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;,
        Lcom/android/internal/os/CachedDeviceState$Readonly;
    }
.end annotation


# instance fields
.field private volatile blacklist mCharging:Z

.field private final blacklist mOnBatteryStopwatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mScreenInteractive:Z

.field private final blacklist mStopwatchesLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCharging(Lcom/android/internal/os/CachedDeviceState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnBatteryStopwatches(Lcom/android/internal/os/CachedDeviceState;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenInteractive(Lcom/android/internal/os/CachedDeviceState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopwatchesLock(Lcom/android/internal/os/CachedDeviceState;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(ZZ)V
    .locals 1
    .param p1, "isCharging"    # Z
    .param p2, "isScreenInteractive"    # Z

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    .line 47
    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    .line 48
    iput-boolean p2, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    .line 49
    return-void
.end method

.method private blacklist updateStopwatches(Z)V
    .locals 4
    .param p1, "shouldStart"    # Z

    .line 63
    iget-object v0, p0, Lcom/android/internal/os/CachedDeviceState;->mStopwatchesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 65
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v3, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-static {v3}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->-$$Nest$mstart(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    goto :goto_1

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/CachedDeviceState;->mOnBatteryStopwatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;

    invoke-static {v3}, Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;->-$$Nest$mstop(Lcom/android/internal/os/CachedDeviceState$TimeInStateStopwatch;)V

    .line 65
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getReadonlyClient()Lcom/android/internal/os/CachedDeviceState$Readonly;
    .locals 1

    .line 76
    new-instance v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-direct {v0, p0}, Lcom/android/internal/os/CachedDeviceState$Readonly;-><init>(Lcom/android/internal/os/CachedDeviceState;)V

    return-object v0
.end method

.method public blacklist setCharging(Z)V
    .locals 1
    .param p1, "charging"    # Z

    .line 56
    iget-boolean v0, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    if-eq v0, p1, :cond_0

    .line 57
    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mCharging:Z

    .line 58
    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/CachedDeviceState;->updateStopwatches(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public blacklist setScreenInteractive(Z)V
    .locals 0
    .param p1, "screenInteractive"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/internal/os/CachedDeviceState;->mScreenInteractive:Z

    .line 53
    return-void
.end method
