.class public final Landroid/app/time/TimeManager;
.super Ljava/lang/Object;
.source "TimeManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "time.TimeManager"


# instance fields
.field private final blacklist mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

.field private final blacklist mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mTimeZoneDetectorListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/time/TimeManager$TimeZoneDetectorListener;",
            "Landroid/app/time/TimeManager$TimeZoneDetectorListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyTimeZoneDetectorListeners(Landroid/app/time/TimeManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/time/TimeManager;->notifyTimeZoneDetectorListeners()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    .line 65
    nop

    .line 66
    const-string/jumbo v0, "time_zone_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezonedetector/ITimeZoneDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    .line 67
    nop

    .line 68
    const-string/jumbo v0, "time_detector"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/app/timedetector/ITimeDetectorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timedetector/ITimeDetectorService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    .line 69
    return-void
.end method

.method static synthetic blacklist lambda$addTimeZoneDetectorListener$0(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .param p1, "listener"    # Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    .line 212
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/app/time/TimeManager$$ExternalSyntheticLambda1;-><init>(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist notifyTimeZoneDetectorListeners()V
    .locals 4

    .line 218
    iget-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 222
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 223
    .local v1, "timeZoneDetectorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/time/TimeManager$TimeZoneDetectorListener;Landroid/app/time/TimeManager$TimeZoneDetectorListener;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 225
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 226
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    invoke-interface {v3}, Landroid/app/time/TimeManager$TimeZoneDetectorListener;->onChange()V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 220
    .end local v0    # "size":I
    .end local v1    # "timeZoneDetectorListeners":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/time/TimeManager$TimeZoneDetectorListener;Landroid/app/time/TimeManager$TimeZoneDetectorListener;>;"
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v0

    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addTimeZoneDetectorListener(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    .line 191
    iget-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 193
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    monitor-exit v0

    return-void

    .line 198
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;

    if-nez v1, :cond_2

    .line 199
    new-instance v1, Landroid/app/time/TimeManager$1;

    invoke-direct {v1, p0}, Landroid/app/time/TimeManager$1;-><init>(Landroid/app/time/TimeManager;)V

    .line 205
    .local v1, "iListener":Landroid/app/time/ITimeZoneDetectorListener;
    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :try_start_1
    iget-object v2, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v2, v1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->addListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    goto :goto_1

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/time/TimeManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    throw v3

    .line 212
    .end local v1    # "iListener":Landroid/app/time/ITimeZoneDetectorListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/time/TimeManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Landroid/app/time/TimeManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist getTimeCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 2

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0}, Landroid/app/timedetector/ITimeDetectorService;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 2

    .line 81
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeTimeZoneDetectorListener(Landroid/app/time/TimeManager$TimeZoneDetectorListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/time/TimeManager$TimeZoneDetectorListener;

    .line 240
    iget-object v0, p0, Landroid/app/time/TimeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 244
    :cond_0
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 250
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    iget-object v3, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;

    invoke-interface {v2, v3}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    goto :goto_1

    .line 254
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/time/TimeManager;
    .end local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/time/TimeManager;
    .restart local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    :goto_0
    :try_start_4
    iput-object v1, p0, Landroid/app/time/TimeManager;->mTimeZoneDetectorReceiver:Landroid/app/time/ITimeZoneDetectorListener;

    .line 255
    nop

    .end local p0    # "this":Landroid/app/time/TimeManager;
    .end local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    throw v2

    .line 257
    .restart local p0    # "this":Landroid/app/time/TimeManager;
    .restart local p1    # "listener":Landroid/app/time/TimeManager$TimeZoneDetectorListener;
    :cond_1
    :goto_1
    monitor-exit v0

    .line 258
    return-void

    .line 242
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    .line 257
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public whitelist suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 2
    .param p1, "timeSuggestion"    # Landroid/app/time/ExternalTimeSuggestion;

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    nop

    .line 276
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist updateTimeConfiguration(Landroid/app/time/TimeConfiguration;)Z
    .locals 2
    .param p1, "configuration"    # Landroid/app/time/TimeConfiguration;

    .line 119
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeDetectorService:Landroid/app/timedetector/ITimeDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timedetector/ITimeDetectorService;->updateConfiguration(Landroid/app/time/TimeConfiguration;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateTimeZoneConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z
    .locals 2
    .param p1, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 158
    :try_start_0
    iget-object v0, p0, Landroid/app/time/TimeManager;->mITimeZoneDetectorService:Landroid/app/timezonedetector/ITimeZoneDetectorService;

    invoke-interface {v0, p1}, Landroid/app/timezonedetector/ITimeZoneDetectorService;->updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
