.class public final Landroid/hardware/SensorPrivacyManager;
.super Ljava/lang/Object;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;,
        Landroid/hardware/SensorPrivacyManager$StateTypes;,
        Landroid/hardware/SensorPrivacyManager$ToggleType;,
        Landroid/hardware/SensorPrivacyManager$Sources;,
        Landroid/hardware/SensorPrivacyManager$Sensors;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_ALL_SENSORS:Ljava/lang/String;

.field public static final blacklist EXTRA_SENSOR:Ljava/lang/String;

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final whitelist TOGGLE_TYPE_HARDWARE:I = 0x2

.field public static final whitelist TOGGLE_TYPE_SOFTWARE:I = 0x1

.field private static blacklist sInstance:Landroid/hardware/SensorPrivacyManager;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

.field private final blacklist mLegacyToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;",
            "Landroid/hardware/ISensorPrivacyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRequiresAuthentication:Ljava/lang/Boolean;

.field private final blacklist mService:Landroid/hardware/ISensorPrivacyManager;

.field private blacklist mToggleListenerRegistered:Z

.field private final blacklist mToggleListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToggleSupportCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist token:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 53
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".extra.sensor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".extra.all_sensors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/ISensorPrivacyManager;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    .line 278
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    .line 296
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    .line 303
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    .line 310
    new-instance v0, Landroid/hardware/SensorPrivacyManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/SensorPrivacyManager$1;-><init>(Landroid/hardware/SensorPrivacyManager;)V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    .line 336
    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 337
    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    .line 338
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    .line 339
    return-void
.end method

.method private blacklist addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 514
    iget-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z

    if-nez v0, :cond_0

    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0, v1}, Landroid/hardware/ISensorPrivacyManager;->addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 522
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    return-void

    .line 523
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 347
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 350
    :try_start_1
    const-string/jumbo v1, "sensor_privacy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 351
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/hardware/ISensorPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ISensorPrivacyManager;

    move-result-object v2

    .line 352
    .local v2, "service":Landroid/hardware/ISensorPrivacyManager;
    new-instance v3, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v3, p0, v2}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v3, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/ISensorPrivacyManager;
    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v2

    .line 357
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    monitor-exit v0

    return-object v1

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)Landroid/hardware/SensorPrivacyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/hardware/ISensorPrivacyManager;

    .line 367
    sget-object v0, Landroid/hardware/SensorPrivacyManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    new-instance v1, Landroid/hardware/SensorPrivacyManager;

    invoke-direct {v1, p0, p1}, Landroid/hardware/SensorPrivacyManager;-><init>(Landroid/content/Context;Landroid/hardware/ISensorPrivacyManager;)V

    sput-object v1, Landroid/hardware/SensorPrivacyManager;->sInstance:Landroid/hardware/SensorPrivacyManager;

    .line 369
    monitor-exit v0

    return-object v1

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 572
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 575
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mIToggleListener:Landroid/hardware/ISensorPrivacyListener;

    invoke-interface {v0, v1}, Landroid/hardware/ISensorPrivacyManager;->removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/SensorPrivacyManager;->mToggleListenerRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist resolveSourceFromCurrentContext()I
    .locals 2

    .line 654
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    .line 656
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    const/4 v1, 0x6

    return v1

    .line 659
    :cond_0
    const/4 v1, 0x5

    return v1
.end method


# virtual methods
.method public blacklist addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    .line 845
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 846
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ISensorPrivacyListener;

    .line 847
    .local v1, "iListener":Landroid/hardware/ISensorPrivacyListener;
    if-nez v1, :cond_0

    .line 848
    new-instance v2, Landroid/hardware/SensorPrivacyManager$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/SensorPrivacyManager$3;-><init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V

    move-object v1, v2

    .line 855
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v2, v1}, Landroid/hardware/ISensorPrivacyManager;->addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    nop

    .line 863
    .end local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    :try_start_2
    monitor-exit v0

    .line 864
    return-void

    .line 860
    .restart local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    :catch_0
    move-exception v2

    .line 861
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .end local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    throw v3

    .line 863
    .end local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .restart local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist addSensorPrivacyListener(IILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "userId"    # I
    .param p3, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 437
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 438
    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 420
    return-void
.end method

.method public whitelist addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 4
    .param p1, "sensor"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 456
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 457
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;>;"
    new-instance v1, Landroid/hardware/SensorPrivacyManager$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/hardware/SensorPrivacyManager$2;-><init>(Landroid/hardware/SensorPrivacyManager;ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 469
    .local v1, "toggleListener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 470
    :try_start_0
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-direct {p0, p2, v1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 472
    monitor-exit v2

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public whitelist addSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 488
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 489
    return-void
.end method

.method public whitelist addSensorPrivacyListener(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 506
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListenerLocked(Ljava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 508
    monitor-exit v0

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist areAnySensorPrivacyTogglesEnabled(I)Z
    .locals 2
    .param p1, "sensor"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 631
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAllSensorPrivacyEnabled()Z
    .locals 2

    .line 901
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->isSensorPrivacyEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isSensorPrivacyEnabled(I)Z
    .locals 1
    .param p1, "sensor"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    return v0
.end method

.method public whitelist isSensorPrivacyEnabled(II)Z
    .locals 2
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 612
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->isToggleSensorPrivacyEnabled(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    .line 878
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 879
    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ISensorPrivacyListener;

    .line 880
    .local v1, "iListener":Landroid/hardware/ISensorPrivacyListener;
    if-eqz v1, :cond_0

    .line 881
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    :try_start_1
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v2, v1}, Landroid/hardware/ISensorPrivacyManager;->removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    goto :goto_0

    .line 884
    :catch_0
    move-exception v2

    .line 885
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .end local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    throw v3

    .line 888
    .end local v1    # "iListener":Landroid/hardware/ISensorPrivacyListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .restart local p1    # "listener":Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 889
    return-void

    .line 888
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist removeSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 3
    .param p1, "sensor"    # I
    .param p2, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 541
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;>;"
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mLegacyToggleListeners:Landroid/util/ArrayMap;

    .line 544
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 545
    .local v2, "onToggleSensorPrivacyChangedListener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    if-eqz v2, :cond_0

    .line 546
    invoke-direct {p0, v2}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 548
    .end local v2    # "onToggleSensorPrivacyChangedListener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    :cond_0
    monitor-exit v1

    .line 549
    return-void

    .line 548
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist removeSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 564
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/SensorPrivacyManager;->removeSensorPrivacyListenerLocked(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    .line 566
    monitor-exit v0

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist requiresAuthentication()Z
    .locals 2

    .line 772
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 774
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0}, Landroid/hardware/ISensorPrivacyManager;->requiresAuthentication()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 779
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mRequiresAuthentication:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist setAllSensorPrivacy(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 827
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->setSensorPrivacy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    nop

    .line 831
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSensorPrivacy(IIZ)V
    .locals 1
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z

    .line 674
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    .line 675
    return-void
.end method

.method public blacklist setSensorPrivacy(IIZI)V
    .locals 2
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .line 690
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacy(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    nop

    .line 694
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setSensorPrivacy(IZ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "enable"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 649
    invoke-direct {p0}, Landroid/hardware/SensorPrivacyManager;->resolveSourceFromCurrentContext()I

    move-result v0

    const/4 v1, -0x2

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    .line 651
    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZ)V
    .locals 1
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z

    .line 709
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacyForProfileGroup(IIZI)V

    .line 710
    return-void
.end method

.method public blacklist setSensorPrivacyForProfileGroup(IIZI)V
    .locals 2
    .param p1, "source"    # I
    .param p2, "sensor"    # I
    .param p3, "enable"    # Z
    .param p4, "userId"    # I

    .line 727
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p4, p1, p2, p3}, Landroid/hardware/ISensorPrivacyManager;->setToggleSensorPrivacyForProfileGroup(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    nop

    .line 731
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist showSensorUseDialog(I)V
    .locals 3
    .param p1, "sensor"    # I

    .line 795
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v0, p1}, Landroid/hardware/ISensorPrivacyManager;->showSensorUseDialog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Received exception while trying to show sensor use dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist supportsSensorToggle(I)Z
    .locals 1
    .param p1, "sensor"    # I

    .line 379
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v0

    return v0
.end method

.method public whitelist supportsSensorToggle(II)Z
    .locals 4
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I

    .line 390
    :try_start_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 391
    .local v0, "key":Landroid/util/Pair;
    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :try_start_1
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 393
    .local v2, "val":Ljava/lang/Boolean;
    if-nez v2, :cond_0

    .line 394
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    invoke-interface {v3, p1, p2}, Landroid/hardware/ISensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v2, v3

    .line 395
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager;->mToggleSupportCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v1

    return v3

    .line 398
    .end local v2    # "val":Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .end local p1    # "toggleType":I
    .end local p2    # "sensor":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 399
    .end local v0    # "key":Landroid/util/Pair;
    .restart local p0    # "this":Landroid/hardware/SensorPrivacyManager;
    .restart local p1    # "toggleType":I
    .restart local p2    # "sensor":I
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist suppressSensorPrivacyReminders(IZ)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "suppress"    # Z

    .line 743
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorPrivacyManager;->suppressSensorPrivacyReminders(IZI)V

    .line 744
    return-void
.end method

.method public blacklist suppressSensorPrivacyReminders(IZI)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "suppress"    # Z
    .param p3, "userId"    # I

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager;->mService:Landroid/hardware/ISensorPrivacyManager;

    iget-object v1, p0, Landroid/hardware/SensorPrivacyManager;->token:Landroid/os/IBinder;

    invoke-interface {v0, p3, p1, v1, p2}, Landroid/hardware/ISensorPrivacyManager;->suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    nop

    .line 763
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
