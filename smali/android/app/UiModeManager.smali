.class public Landroid/app/UiModeManager;
.super Ljava/lang/Object;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;,
        Landroid/app/UiModeManager$InnerListener;,
        Landroid/app/UiModeManager$ProjectionType;,
        Landroid/app/UiModeManager$DisableCarMode;,
        Landroid/app/UiModeManager$EnableCarMode;,
        Landroid/app/UiModeManager$NightModeCustomReturnType;,
        Landroid/app/UiModeManager$NightModeCustomType;,
        Landroid/app/UiModeManager$NightMode;,
        Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    }
.end annotation


# static fields
.field public static whitelist ACTION_ENTER_CAR_MODE:Ljava/lang/String; = null

.field public static final whitelist ACTION_ENTER_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.ENTER_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_ENTER_DESK_MODE:Ljava/lang/String; = null

.field public static whitelist ACTION_EXIT_CAR_MODE:Ljava/lang/String; = null

.field public static final whitelist ACTION_EXIT_CAR_MODE_PRIORITIZED:Ljava/lang/String; = "android.app.action.EXIT_CAR_MODE_PRIORITIZED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static whitelist ACTION_EXIT_DESK_MODE:Ljava/lang/String; = null

.field public static final whitelist DEFAULT_PRIORITY:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DISABLE_CAR_MODE_ALL_PRIORITIES:I = 0x2

.field public static final whitelist DISABLE_CAR_MODE_GO_HOME:I = 0x1

.field public static final whitelist ENABLE_CAR_MODE_ALLOW_SLEEP:I = 0x2

.field public static final whitelist ENABLE_CAR_MODE_GO_CAR_HOME:I = 0x1

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.app.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.app.extra.PRIORITY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_AUTO:I = 0x0

.field public static final whitelist MODE_NIGHT_CUSTOM:I = 0x3

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_BEDTIME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_SCHEDULE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_CUSTOM_TYPE_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist MODE_NIGHT_NO:I = 0x1

.field public static final whitelist MODE_NIGHT_YES:I = 0x2

.field public static final whitelist PROJECTION_TYPE_ALL:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_AUTOMOTIVE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROJECTION_TYPE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UiModeManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

.field private final blacklist mProjectionStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListener;",
            "Landroid/app/UiModeManager$InnerListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mService:Landroid/app/IUiModeManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 111
    const-string v0, "android.app.action.ENTER_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 144
    const-string v0, "android.app.action.EXIT_CAR_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 185
    const-string v0, "android.app.action.ENTER_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    .line 192
    const-string v0, "android.app.action.EXIT_DESK_MODE"

    sput-object v0, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    return-void
.end method

.method constructor greylist <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/UiModeManager;-><init>(Landroid/content/Context;)V

    .line 325
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    .line 309
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    .line 317
    new-instance v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;-><init>(Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager-IA;)V

    iput-object v0, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    .line 328
    nop

    .line 329
    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 328
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    .line 330
    iput-object p1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 331
    return-void
.end method


# virtual methods
.method public whitelist addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .locals 4
    .param p1, "projectionType"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 957
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 958
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    const-string v1, "UiModeManager"

    const-string v2, "Attempted to add listener that was already added."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    monitor-exit v0

    return-void

    .line 962
    :cond_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v1, :cond_1

    .line 963
    new-instance v1, Landroid/app/UiModeManager$InnerListener;

    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager$InnerListener-IA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    .local v1, "innerListener":Landroid/app/UiModeManager$InnerListener;
    :try_start_1
    iget-object v2, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v2, v1, p1}, Landroid/app/IUiModeManager;->addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V

    .line 967
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    goto :goto_0

    .line 968
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v3, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {v3, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 970
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/UiModeManager;
    .end local p1    # "projectionType":I
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    throw v3

    .line 973
    .end local v1    # "innerListener":Landroid/app/UiModeManager$InnerListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiModeManager;
    .restart local p1    # "projectionType":I
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 974
    return-void

    .line 973
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist disableCarMode(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 471
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_1

    .line 473
    nop

    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 473
    :goto_0
    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->disableCarModeByCallingPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    goto :goto_1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 479
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist enableCarMode(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/UiModeManager;->enableCarMode(II)V

    .line 369
    return-void
.end method

.method public whitelist enableCarMode(II)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_1

    .line 421
    nop

    .line 422
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 421
    :goto_0
    invoke-interface {v0, p2, p1, v1}, Landroid/app/IUiModeManager;->enableCarMode(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public whitelist getActiveProjectionTypes()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 932
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 934
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getActiveProjectionTypes()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 935
    :catch_0
    move-exception v0

    .line 936
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 939
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCurrentModeType()I
    .locals 2

    .line 492
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 494
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getCustomNightModeEnd()Ljava/time/LocalTime;
    .locals 4

    .line 777
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 779
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeEnd()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 784
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist getCustomNightModeStart()Ljava/time/LocalTime;
    .locals 4

    .line 742
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 744
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCustomNightModeStart()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v0, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    return-object v0
.end method

.method public whitelist getNightMode()I
    .locals 2

    .line 643
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 650
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getNightModeCustomType()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 579
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 581
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->getNightModeCustomType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getProjectingPackages(I)Ljava/util/Set;
    .locals 2
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 914
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 916
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->getProjectingPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 921
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isNightModeLocked()Z
    .locals 2

    .line 682
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 684
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->isNightModeLocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 689
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isUiModeLocked()Z
    .locals 2

    .line 660
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 662
    :try_start_0
    invoke-interface {v0}, Landroid/app/IUiModeManager;->isUiModeLocked()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 667
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist releaseProjection(I)Z
    .locals 2
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 891
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 893
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/app/IUiModeManager;->releaseProjection(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 898
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeOnProjectionStateChangedListener(Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 987
    iget-object v0, p0, Landroid/app/UiModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 988
    :try_start_0
    iget-object v1, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$InnerListener;

    .line 989
    .local v1, "innerListener":Landroid/app/UiModeManager$InnerListener;
    if-nez v1, :cond_0

    .line 990
    const-string v2, "UiModeManager"

    const-string v3, "Attempted to remove listener that was not added."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    monitor-exit v0

    return-void

    .line 993
    :cond_0
    iget-object v2, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 995
    :try_start_1
    invoke-interface {v2, v1}, Landroid/app/IUiModeManager;->removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    goto :goto_0

    .line 996
    :catch_0
    move-exception v2

    .line 997
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/UiModeManager;
    .end local p1    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    throw v3

    .line 1000
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/UiModeManager;
    .restart local p1    # "listener":Landroid/app/UiModeManager$OnProjectionStateChangedListener;
    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/app/UiModeManager;->mProjectionStateListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v2, p0, Landroid/app/UiModeManager;->mOnProjectionStateChangedListenerResourceManager:Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    invoke-virtual {v2, v1}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->remove(Landroid/app/UiModeManager$InnerListener;)V

    .line 1002
    .end local v1    # "innerListener":Landroid/app/UiModeManager$InnerListener;
    monitor-exit v0

    .line 1003
    return-void

    .line 1002
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist requestProjection(I)Z
    .locals 3
    .param p1, "projectionType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 862
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 864
    :try_start_0
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget-object v2, p0, Landroid/app/UiModeManager;->mContext:Landroid/content/Context;

    .line 865
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-interface {v0, v1, p1, v2}, Landroid/app/IUiModeManager;->requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 870
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setApplicationNightMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 618
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setApplicationNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 625
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCustomNightModeEnd(Ljava/time/LocalTime;)V
    .locals 5
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 795
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 797
    :try_start_0
    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeEnd(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 802
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setCustomNightModeStart(Ljava/time/LocalTime;)V
    .locals 5
    .param p1, "time"    # Ljava/time/LocalTime;

    .line 760
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 762
    :try_start_0
    invoke-virtual {p1}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Landroid/app/IUiModeManager;->setCustomNightModeStart(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 767
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setNightMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 539
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 541
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setNightModeActivated(Z)Z
    .locals 2
    .param p1, "active"    # Z

    .line 724
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 726
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeActivated(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 731
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setNightModeActivatedForCustomMode(IZ)Z
    .locals 2
    .param p1, "nightModeCustomType"    # I
    .param p2, "active"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 706
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 708
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/app/IUiModeManager;->setNightModeActivatedForCustomMode(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 713
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setNightModeCustomType(I)V
    .locals 2
    .param p1, "nightModeCustomType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 560
    iget-object v0, p0, Landroid/app/UiModeManager;->mService:Landroid/app/IUiModeManager;

    if-eqz v0, :cond_0

    .line 562
    :try_start_0
    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->setNightModeCustomType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 567
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
