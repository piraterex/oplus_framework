.class public final Landroid/media/MediaRouter2;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter2$ManagerCallback;,
        Landroid/media/MediaRouter2$MediaRouter2Stub;,
        Landroid/media/MediaRouter2$ControllerCreationRequest;,
        Landroid/media/MediaRouter2$ControllerCallbackRecord;,
        Landroid/media/MediaRouter2$TransferCallbackRecord;,
        Landroid/media/MediaRouter2$RouteCallbackRecord;,
        Landroid/media/MediaRouter2$SystemRoutingController;,
        Landroid/media/MediaRouter2$RoutingController;,
        Landroid/media/MediaRouter2$ControllerCallback;,
        Landroid/media/MediaRouter2$OnGetControllerHintsListener;,
        Landroid/media/MediaRouter2$TransferCallback;,
        Landroid/media/MediaRouter2$RouteCallback;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist MANAGER_REQUEST_ID_NONE:J = 0x0L

.field private static final blacklist TAG:Ljava/lang/String; = "MR2"

.field private static final blacklist TRANSFER_TIMEOUT_MS:I = 0x7530

.field private static blacklist sInstance:Landroid/media/MediaRouter2;

.field private static blacklist sManager:Landroid/media/MediaRouter2Manager;

.field private static final blacklist sRouterLock:Ljava/lang/Object;

.field private static blacklist sSystemMediaRouter2Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter2;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sSystemRouterLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mClientPackageName:Ljava/lang/String;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$ControllerCreationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

.field private volatile blacklist mFilteredRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field final blacklist mManagerCallback:Landroid/media/MediaRouter2$ManagerCallback;

.field private final blacklist mMediaRouterService:Landroid/media/IMediaRouterService;

.field private final blacklist mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mNonSystemRoutingControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private volatile blacklist mPreviousRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$RouteCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

.field final blacklist mSystemController:Landroid/media/MediaRouter2$RoutingController;

.field private final blacklist mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/media/MediaRouter2$TransferCallbackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mensureClientPackageNameForSystemSession(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRouter2;->updateAllRoutesFromManager()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;
    .locals 1

    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 68
    const-string v0, "MR2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/media/MediaRouter2;->sSystemMediaRouter2Map:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "appContext"    # Landroid/content/Context;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 110
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 268
    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 269
    nop

    .line 271
    const-string v0, "media_router"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaRouter2;->mPackageName:Ljava/lang/String;

    .line 273
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "currentSystemRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    const/4 v2, 0x0

    .line 278
    .local v2, "currentSystemSessionInfo":Landroid/media/RoutingSessionInfo;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IMediaRouterService;->getSystemRoutes()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 279
    invoke-interface {v0}, Landroid/media/IMediaRouterService;->getSystemSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "MR2"

    const-string v4, "Unable to get current system\'s routes / session info"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    if-eqz v2, :cond_1

    .line 292
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 293
    .local v3, "route":Landroid/media/MediaRoute2Info;
    iget-object v4, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v3    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_1

    .line 295
    :cond_0
    new-instance v0, Landroid/media/MediaRouter2$SystemRoutingController;

    invoke-direct {v0, p0, v2}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Landroid/media/MediaRouter2;->mManagerCallback:Landroid/media/MediaRouter2$ManagerCallback;

    .line 300
    return-void

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Null currentSystemSessionInfo. Something is wrong."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Null or empty currentSystemRoutes. Something is wrong."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientPackageName"    # Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 96
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 105
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 110
    sget-object v0, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 117
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 303
    iput-object p1, p0, Landroid/media/MediaRouter2;->mContext:Landroid/content/Context;

    .line 304
    iput-object p2, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    .line 305
    new-instance v0, Landroid/media/MediaRouter2$ManagerCallback;

    invoke-direct {v0, p0}, Landroid/media/MediaRouter2$ManagerCallback;-><init>(Landroid/media/MediaRouter2;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mManagerCallback:Landroid/media/MediaRouter2$ManagerCallback;

    .line 306
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    .line 307
    new-instance v0, Landroid/media/MediaRouter2$SystemRoutingController;

    sget-object v1, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    .line 310
    invoke-virtual {v1, p2}, Landroid/media/MediaRouter2Manager;->getSystemRoutingSession(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 309
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRouter2$SystemRoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .line 311
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p2}, Landroid/media/MediaRouter2Manager;->getDiscoveryPreference(Ljava/lang/String;)Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 312
    invoke-direct {p0}, Landroid/media/MediaRouter2;->updateAllRoutesFromManager()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 316
    iput-object v0, p0, Landroid/media/MediaRouter2;->mPackageName:Ljava/lang/String;

    .line 317
    return-void
.end method

.method static blacklist checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .param p1, "routeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 326
    .local p0, "routeList":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRoute2Info;

    .line 327
    .local v1, "info":Landroid/media/MediaRoute2Info;
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 330
    .end local v1    # "info":Landroid/media/MediaRoute2Info;
    :cond_0
    goto :goto_0

    .line 331
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 2
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1060
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    iget-object v1, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    .line 1066
    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 1065
    return-object v0

    .line 1062
    :cond_1
    :goto_0
    return-object p1
.end method

.method private blacklist filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1092
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1094
    .local v0, "deduplicationIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .local v1, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v2, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v2}, Landroid/media/RouteDiscoveryPreference;->getDeduplicationPackageOrder()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2;->getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 1097
    .local v3, "route":Landroid/media/MediaRoute2Info;
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1098
    goto :goto_0

    .line 1100
    :cond_1
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1101
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1103
    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v4

    .line 1104
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1105
    goto :goto_0

    .line 1107
    :cond_2
    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-virtual {v4}, Landroid/media/RouteDiscoveryPreference;->shouldRemoveDuplicates()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1108
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1109
    goto :goto_0

    .line 1111
    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getDeduplicationIds()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1113
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    .end local v3    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 1115
    :cond_5
    return-object v1
.end method

.method private blacklist filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;
    .locals 5
    .param p2, "discoveryPreference"    # Landroid/media/RouteDiscoveryPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RouteDiscoveryPreference;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1120
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v0, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1123
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1124
    return-object v0

    .line 1126
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1127
    .local v2, "route":Landroid/media/MediaRoute2Info;
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRoute2Info;->hasAnyFeatures(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1128
    goto :goto_0

    .line 1130
    :cond_2
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1131
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1133
    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getAllowedPackages()Ljava/util/List;

    move-result-object v3

    .line 1134
    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1135
    goto :goto_0

    .line 1137
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1138
    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 1139
    :cond_4
    return-object v0
.end method

.method private blacklist getCurrentController()Landroid/media/MediaRouter2$RoutingController;
    .locals 2

    .line 682
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    .line 683
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter2$RoutingController;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    return-object v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    sget-object v0, Landroid/media/MediaRouter2;->sRouterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Landroid/media/MediaRouter2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    .line 136
    :cond_0
    sget-object v1, Landroid/media/MediaRouter2;->sInstance:Landroid/media/MediaRouter2;

    monitor-exit v0

    return-object v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaRouter2;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 176
    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string v0, "clientPackageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    const-string v0, "media_router"

    .line 183
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/media/IMediaRouterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRouterService;

    move-result-object v0

    .line 186
    .local v0, "serviceBinder":Landroid/media/IMediaRouterService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IMediaRouterService;->enforceMediaContentControlPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 191
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 193
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    nop

    .line 199
    sget-object v2, Landroid/media/MediaRouter2;->sSystemRouterLock:Ljava/lang/Object;

    monitor-enter v2

    .line 200
    :try_start_2
    sget-object v3, Landroid/media/MediaRouter2;->sSystemMediaRouter2Map:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter2;

    .line 201
    .local v3, "instance":Landroid/media/MediaRouter2;
    if-nez v3, :cond_1

    .line 202
    sget-object v4, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    if-nez v4, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaRouter2Manager;->getInstance(Landroid/content/Context;)Landroid/media/MediaRouter2Manager;

    move-result-object v4

    sput-object v4, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    .line 205
    :cond_0
    new-instance v4, Landroid/media/MediaRouter2;

    invoke-direct {v4, p0, p1}, Landroid/media/MediaRouter2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v3, v4

    .line 206
    sget-object v4, Landroid/media/MediaRouter2;->sSystemMediaRouter2Map:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v4, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iget-object v6, v3, Landroid/media/MediaRouter2;->mManagerCallback:Landroid/media/MediaRouter2$ManagerCallback;

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRouter2Manager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2Manager$Callback;)V

    .line 211
    :cond_1
    monitor-exit v2

    return-object v3

    .line 212
    .end local v3    # "instance":Landroid/media/MediaRouter2;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 194
    :catch_1
    move-exception v2

    .line 195
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "MR2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x0

    return-object v3
.end method

.method private blacklist getSortedRoutes(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1072
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    .local p2, "packageOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    return-object p1

    .line 1075
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1076
    .local v0, "packagePriority":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1077
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1079
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1081
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1083
    .local v2, "sortedRoutes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaRoute2Info;>;"
    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;-><init>(Ljava/util/Map;)V

    .line 1084
    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    .line 1083
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1085
    return-object v2
.end method

.method private blacklist isSystemRouter()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$getSortedRoutes$1(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I
    .locals 2
    .param p0, "packagePriority"    # Ljava/util/Map;
    .param p1, "r"    # Landroid/media/MediaRoute2Info;

    .line 1084
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method static synthetic blacklist lambda$notifyControllerUpdated$9(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$ControllerCallbackRecord;
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1215
    iget-object v0, p0, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mCallback:Landroid/media/MediaRouter2$ControllerCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$ControllerCallback;->onControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyPreferredFeaturesChanged$5(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "features"    # Ljava/util/List;

    .line 1190
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onPreferredFeaturesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesAdded$2(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "filteredRoutes"    # Ljava/util/List;

    .line 1160
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesChanged$4(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "filteredRoutes"    # Ljava/util/List;

    .line 1182
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyRoutesRemoved$3(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;
    .param p1, "filteredRoutes"    # Ljava/util/List;

    .line 1171
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mRouteCallback:Landroid/media/MediaRouter2$RouteCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RouteCallback;->onRoutesRemoved(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyStop$8(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$TransferCallbackRecord;
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1209
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onStop(Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransfer$6(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$TransferCallbackRecord;
    .param p1, "oldController"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "newController"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1197
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2$TransferCallback;->onTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyTransferFailure$7(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$TransferCallbackRecord;
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1203
    iget-object v0, p0, Landroid/media/MediaRouter2$TransferCallbackRecord;->mTransferCallback:Landroid/media/MediaRouter2$TransferCallback;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$TransferCallback;->onTransferFailure(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static synthetic blacklist lambda$updateDiscoveryPreferenceIfNeededLocked$0(Landroid/media/MediaRouter2$RouteCallbackRecord;)Landroid/media/RouteDiscoveryPreference;
    .locals 1
    .param p0, "record"    # Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 440
    iget-object v0, p0, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    return-object v0
.end method

.method private blacklist notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 4
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1214
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    .line 1215
    .local v1, "record":Landroid/media/MediaRouter2$ControllerCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaRouter2$ControllerCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1216
    .end local v1    # "record":Landroid/media/MediaRouter2$ControllerCallbackRecord;
    goto :goto_0

    .line 1217
    :cond_0
    return-void
.end method

.method private blacklist notifyPreferredFeaturesChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1188
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1189
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda8;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1191
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method

.method private blacklist notifyRoutesAdded(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1156
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1157
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1158
    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1159
    .local v2, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1160
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda7;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1162
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    .end local v2    # "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :cond_0
    goto :goto_0

    .line 1163
    :cond_1
    return-void
.end method

.method private blacklist notifyRoutesChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1177
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1178
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1179
    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1180
    .local v2, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1181
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda3;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1184
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    .end local v2    # "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :cond_0
    goto :goto_0

    .line 1185
    :cond_1
    return-void
.end method

.method private blacklist notifyRoutesRemoved(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 1166
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    .line 1167
    .local v1, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mPreference:Landroid/media/RouteDiscoveryPreference;

    .line 1168
    invoke-direct {p0, p1, v2}, Landroid/media/MediaRouter2;->filterRoutesWithIndividualPreference(Ljava/util/List;Landroid/media/RouteDiscoveryPreference;)Ljava/util/List;

    move-result-object v2

    .line 1169
    .local v2, "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1170
    iget-object v3, v1, Landroid/media/MediaRouter2$RouteCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda10;-><init>(Landroid/media/MediaRouter2$RouteCallbackRecord;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1173
    .end local v1    # "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    .end local v2    # "filteredRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    :cond_0
    goto :goto_0

    .line 1174
    :cond_1
    return-void
.end method

.method private blacklist notifyStop(Landroid/media/MediaRouter2$RoutingController;)V
    .locals 4
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1208
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1209
    .local v1, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1210
    .end local v1    # "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    goto :goto_0

    .line 1211
    :cond_0
    return-void
.end method

.method private blacklist notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 4
    .param p1, "oldController"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "newController"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1195
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1196
    .local v1, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1, p1, p2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda5;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1198
    .end local v1    # "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    goto :goto_0

    .line 1199
    :cond_0
    return-void
.end method

.method private blacklist notifyTransferFailure(Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1202
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    .line 1203
    .local v1, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v2, v1, Landroid/media/MediaRouter2$TransferCallbackRecord;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, p1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda2;-><init>(Landroid/media/MediaRouter2$TransferCallbackRecord;Landroid/media/MediaRoute2Info;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1204
    .end local v1    # "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    goto :goto_0

    .line 1205
    :cond_0
    return-void
.end method

.method private blacklist updateAllRoutesFromManager()V
    .locals 5

    .line 1143
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1148
    sget-object v1, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v1}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 1149
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 1151
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 1152
    monitor-exit v0

    .line 1153
    return-void

    .line 1152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateDiscoveryPreferenceIfNeededLocked()Z
    .locals 3

    .line 439
    new-instance v0, Landroid/media/RouteDiscoveryPreference$Builder;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 440
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 441
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    .line 440
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/media/RouteDiscoveryPreference$Builder;-><init>(Ljava/util/Collection;)V

    .line 441
    invoke-virtual {v0}, Landroid/media/RouteDiscoveryPreference$Builder;->build()Landroid/media/RouteDiscoveryPreference;

    move-result-object v0

    .line 443
    .local v0, "newDiscoveryPreference":Landroid/media/RouteDiscoveryPreference;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    const/4 v1, 0x0

    return v1

    .line 446
    :cond_0
    iput-object v0, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    .line 447
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 448
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method blacklist addRoutesOnHandler(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 842
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 844
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 847
    monitor-exit v0

    .line 848
    return-void

    .line 847
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist changeRoutesOnHandler(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 860
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 861
    .local v0, "changedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 862
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRoute2Info;

    .line 863
    .local v3, "route":Landroid/media/MediaRoute2Info;
    iget-object v4, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    nop

    .end local v3    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 866
    monitor-exit v1

    .line 867
    return-void

    .line 866
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method blacklist createControllerOnHandler(ILandroid/media/RoutingSessionInfo;)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 887
    const/4 v0, 0x0

    .line 888
    .local v0, "matchingRequest":Landroid/media/MediaRouter2$ControllerCreationRequest;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter2$ControllerCreationRequest;

    .line 889
    .local v2, "request":Landroid/media/MediaRouter2$ControllerCreationRequest;
    iget v3, v2, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRequestId:I

    if-ne v3, p1, :cond_0

    .line 890
    move-object v0, v2

    .line 891
    goto :goto_1

    .line 893
    .end local v2    # "request":Landroid/media/MediaRouter2$ControllerCreationRequest;
    :cond_0
    goto :goto_0

    .line 895
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 896
    const-string v1, "MR2"

    const-string v2, "createControllerOnHandler: Ignoring an unknown request."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void

    .line 900
    :cond_2
    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 901
    iget-object v1, v0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mRoute:Landroid/media/MediaRoute2Info;

    .line 904
    .local v1, "requestedRoute":Landroid/media/MediaRoute2Info;
    if-nez p2, :cond_3

    .line 905
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 906
    return-void

    .line 907
    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 908
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session\'s provider ID does not match the requested route\'s. (requested route\'s providerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 912
    invoke-virtual {v1}, Landroid/media/MediaRoute2Info;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual providerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 914
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 908
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 917
    return-void

    .line 920
    :cond_4
    iget-object v2, v0, Landroid/media/MediaRouter2$ControllerCreationRequest;->mOldController:Landroid/media/MediaRouter2$RoutingController;

    .line 923
    .local v2, "oldController":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v2}, Landroid/media/MediaRouter2$RoutingController;->scheduleRelease()Z

    move-result v3

    if-nez v3, :cond_6

    .line 924
    const-string v3, "MR2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createControllerOnHandler: Ignoring controller creation for released old controller. oldController="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v3

    if-nez v3, :cond_5

    .line 931
    new-instance v3, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v3, p0, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    invoke-virtual {v3}, Landroid/media/MediaRouter2$RoutingController;->release()V

    .line 933
    :cond_5
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 934
    return-void

    .line 938
    :cond_6
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 939
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v3

    .line 940
    .local v3, "newController":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v3, p2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    goto :goto_2

    .line 942
    .end local v3    # "newController":Landroid/media/MediaRouter2$RoutingController;
    :cond_7
    new-instance v3, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v3, p0, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 943
    .restart local v3    # "newController":Landroid/media/MediaRouter2$RoutingController;
    iget-object v4, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 944
    :try_start_0
    iget-object v5, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    :goto_2
    invoke-direct {p0, v2, v3}, Landroid/media/MediaRouter2;->notifyTransfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    .line 949
    return-void

    .line 945
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method blacklist dispatchFilteredRoutesChangedLocked(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 797
    .local p1, "newRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v0, "addedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 799
    .local v1, "removedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 801
    .local v2, "changedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    nop

    .line 802
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 804
    .local v3, "newRouteIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 805
    .local v5, "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRoute2Info;

    .line 806
    .local v6, "prevRoute":Landroid/media/MediaRoute2Info;
    if-nez v6, :cond_0

    .line 807
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 808
    :cond_0
    invoke-virtual {v6, v5}, Landroid/media/MediaRoute2Info;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 809
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    .end local v6    # "prevRoute":Landroid/media/MediaRoute2Info;
    :cond_1
    :goto_1
    goto :goto_0

    .line 813
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 814
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 815
    iget-object v5, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 820
    .end local v4    # "i":I
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 821
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_3

    .line 823
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 824
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_4

    .line 826
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 827
    .restart local v5    # "route":Landroid/media/MediaRoute2Info;
    iget-object v6, p0, Landroid/media/MediaRouter2;->mPreviousRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .end local v5    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_5

    .line 830
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 831
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyRoutesAdded(Ljava/util/List;)V

    .line 833
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 834
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyRoutesRemoved(Ljava/util/List;)V

    .line 836
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 837
    invoke-direct {p0, v2}, Landroid/media/MediaRouter2;->notifyRoutesChanged(Ljava/util/List;)V

    .line 839
    :cond_a
    return-void
.end method

.method public whitelist getAllRoutes()Ljava/util/List;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 462
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 345
    iget-object v0, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getController(Ljava/lang/String;)Landroid/media/MediaRouter2$RoutingController;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .line 706
    const-string v0, "id must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 707
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getControllers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 708
    .local v1, "controller":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 709
    return-object v1

    .line 711
    .end local v1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_0
    goto :goto_0

    .line 712
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getControllers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRouter2$RoutingController;",
            ">;"
        }
    .end annotation

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 726
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRouter2$RoutingController;>;"
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    sget-object v1, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    iget-object v2, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 730
    .local v1, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/RoutingSessionInfo;

    .line 732
    .local v3, "session":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    iget-object v4, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .line 734
    invoke-direct {p0, v3}, Landroid/media/MediaRouter2;->ensureClientPackageNameForSystemSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v5

    .line 733
    invoke-virtual {v4, v5}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 735
    iget-object v4, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    .local v4, "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_1

    .line 737
    .end local v4    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_0
    new-instance v4, Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {v4, p0, v3}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    .line 739
    .restart local v4    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    .end local v3    # "session":Landroid/media/RoutingSessionInfo;
    .end local v4    # "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_0

    .line 741
    :cond_1
    return-object v0

    .line 744
    .end local v1    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 745
    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 746
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    monitor-exit v1

    .line 748
    return-object v0

    .line 747
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist getRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSystemController()Landroid/media/MediaRouter2$RoutingController;
    .locals 1

    .line 697
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    return-object v0
.end method

.method blacklist onRequestCreateControllerByManagerOnHandler(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;J)V
    .locals 3
    .param p1, "oldSession"    # Landroid/media/RoutingSessionInfo;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "managerRequestId"    # J

    .line 1032
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .local v0, "controller":Landroid/media/MediaRouter2$RoutingController;
    goto :goto_0

    .line 1035
    .end local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1037
    .local v1, "controller":Landroid/media/MediaRouter2$RoutingController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 1039
    .end local v1    # "controller":Landroid/media/MediaRouter2$RoutingController;
    .restart local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :goto_0
    if-nez v0, :cond_1

    .line 1040
    return-void

    .line 1042
    :cond_1
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/media/MediaRouter2;->requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V

    .line 1043
    return-void

    .line 1037
    .end local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist registerControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/MediaRouter2$ControllerCallback;

    .line 528
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 529
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 531
    new-instance v0, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    .line 532
    .local v0, "record":Landroid/media/MediaRouter2$ControllerCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    const-string v1, "MR2"

    const-string v2, "registerControllerCallback: Ignoring the same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void

    .line 536
    :cond_0
    return-void
.end method

.method public whitelist registerRouteCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;
    .param p3, "preference"    # Landroid/media/RouteDiscoveryPreference;

    .line 358
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 359
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 360
    const-string v0, "preference must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object p3, Landroid/media/RouteDiscoveryPreference;->EMPTY:Landroid/media/RouteDiscoveryPreference;

    .line 365
    :cond_0
    new-instance v0, Landroid/media/MediaRouter2$RouteCallbackRecord;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    .line 367
    .local v0, "record":Landroid/media/MediaRouter2$RouteCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 372
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    return-void

    .line 376
    :cond_1
    iget-object v1, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    if-nez v2, :cond_2

    .line 378
    new-instance v2, Landroid/media/MediaRouter2$MediaRouter2Stub;

    invoke-direct {v2, p0}, Landroid/media/MediaRouter2$MediaRouter2Stub;-><init>(Landroid/media/MediaRouter2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    .local v2, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v4, p0, Landroid/media/MediaRouter2;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Landroid/media/IMediaRouterService;->registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 381
    iput-object v2, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v3

    .line 383
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MR2"

    const-string v5, "registerRouteCallback: Unable to register MediaRouter2."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    .end local v2    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/media/MediaRouter2;->updateDiscoveryPreferenceIfNeededLocked()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 388
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v2, v3, v4}, Landroid/media/IMediaRouterService;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    goto :goto_1

    .line 389
    :catch_1
    move-exception v2

    .line 390
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "MR2"

    const-string v4, "registerRouteCallback: Unable to set discovery request."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    monitor-exit v1

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public whitelist registerTransferCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/media/MediaRouter2$TransferCallback;

    .line 494
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 495
    const-string v0, "callback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 497
    new-instance v0, Landroid/media/MediaRouter2$TransferCallbackRecord;

    invoke-direct {v0, p1, p2}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    .line 498
    .local v0, "record":Landroid/media/MediaRouter2$TransferCallbackRecord;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    const-string v1, "MR2"

    const-string v2, "registerTransferCallback: Ignoring the same callback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 502
    :cond_0
    return-void
.end method

.method blacklist releaseControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 994
    if-nez p1, :cond_0

    .line 995
    const-string v0, "MR2"

    const-string v1, "releaseControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1001
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 1002
    .local v1, "matchingController":Landroid/media/MediaRouter2$RoutingController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    if-nez v1, :cond_2

    .line 1005
    sget-boolean v0, Landroid/media/MediaRouter2;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1006
    const-string v0, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseControllerOnHandler: Matching controller not found. uniqueSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1010
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1006
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_1
    return-void

    .line 1015
    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 1016
    .local v0, "oldInfo":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1017
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseControllerOnHandler: Provider IDs are not matched. old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1020
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1022
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1017
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void

    .line 1026
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter2$RoutingController;->releaseInternal(Z)V

    .line 1027
    return-void

    .line 1002
    .end local v0    # "oldInfo":Landroid/media/RoutingSessionInfo;
    .end local v1    # "matchingController":Landroid/media/MediaRouter2$RoutingController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist removeRoutesOnHandler(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    .line 851
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 852
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 853
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 855
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 856
    monitor-exit v0

    .line 857
    return-void

    .line 856
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V
    .locals 16
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .param p3, "managerRequestId"    # J

    .line 641
    move-object/from16 v1, p0

    move-object/from16 v10, p2

    iget-object v0, v1, Landroid/media/MediaRouter2;->mNextRequestId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    .line 643
    .local v11, "requestId":I
    new-instance v0, Landroid/media/MediaRouter2$ControllerCreationRequest;

    move-object v2, v0

    move v3, v11

    move-wide/from16 v4, p3

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaRouter2$ControllerCreationRequest;-><init>(IJLandroid/media/MediaRoute2Info;Landroid/media/MediaRouter2$RoutingController;)V

    move-object v12, v0

    .line 645
    .local v12, "request":Landroid/media/MediaRouter2$ControllerCreationRequest;
    iget-object v0, v1, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v13, v1, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 648
    .local v13, "listener":Landroid/media/MediaRouter2$OnGetControllerHintsListener;
    const/4 v0, 0x0

    .line 649
    .local v0, "controllerHints":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    .line 650
    invoke-interface {v13, v10}, Landroid/media/MediaRouter2$OnGetControllerHintsListener;->onGetControllerHints(Landroid/media/MediaRoute2Info;)Landroid/os/Bundle;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    .line 652
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    move-object v14, v0

    goto :goto_0

    .line 651
    :cond_0
    move-object v14, v0

    goto :goto_0

    .line 649
    :cond_1
    move-object v14, v0

    .line 657
    .end local v0    # "controllerHints":Landroid/os/Bundle;
    .local v14, "controllerHints":Landroid/os/Bundle;
    :goto_0
    iget-object v2, v1, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 658
    :try_start_0
    iget-object v0, v1, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    move-object v15, v0

    .line 659
    .local v15, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    if-eqz v15, :cond_2

    .line 662
    :try_start_1
    iget-object v2, v1, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v7

    .line 662
    move-object v3, v15

    move v4, v11

    move-wide/from16 v5, p3

    move-object/from16 v8, p2

    move-object v9, v14

    invoke-interface/range {v2 .. v9}, Landroid/media/IMediaRouterService;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 676
    goto :goto_1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "createControllerForTransfer: Failed to request for creating a controller."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    iget-object v2, v1, Landroid/media/MediaRouter2;->mControllerCreationRequests:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 673
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 674
    invoke-direct {v1, v10}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 678
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void

    .line 659
    .end local v15    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist setOnGetControllerHintsListener(Landroid/media/MediaRouter2$OnGetControllerHintsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 562
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    return-void

    .line 565
    :cond_0
    iput-object p1, p0, Landroid/media/MediaRouter2;->mOnGetControllerHintsListener:Landroid/media/MediaRouter2$OnGetControllerHintsListener;

    .line 566
    return-void
.end method

.method public whitelist setRouteVolume(Landroid/media/MediaRoute2Info;I)V
    .locals 1
    .param p1, "route"    # Landroid/media/MediaRoute2Info;
    .param p2, "volume"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 764
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 766
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaRouter2Manager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    .line 768
    return-void

    .line 771
    :cond_0
    return-void
.end method

.method public whitelist startScan()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 236
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->startScan()V

    .line 239
    :cond_0
    return-void
.end method

.method public whitelist stop()V
    .locals 3

    .line 609
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 611
    .local v0, "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 612
    .local v1, "sessionToRelease":Landroid/media/RoutingSessionInfo;
    sget-object v2, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 613
    return-void

    .line 615
    .end local v0    # "sessionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    .end local v1    # "sessionToRelease":Landroid/media/RoutingSessionInfo;
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaRouter2;->getCurrentController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->release()V

    .line 616
    return-void
.end method

.method public whitelist stopScan()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 262
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {v0}, Landroid/media/MediaRouter2Manager;->stopScan()V

    .line 265
    :cond_0
    return-void
.end method

.method blacklist syncRoutesOnHandler(Ljava/util/List;Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p2, "currentSystemSessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Landroid/media/RoutingSessionInfo;",
            ")V"
        }
    .end annotation

    .line 775
    .local p1, "currentRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 781
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 783
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2Info;

    .line 784
    .local v2, "route":Landroid/media/MediaRoute2Info;
    iget-object v3, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    nop

    .end local v2    # "route":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->updateFilteredRoutesLocked()V

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    iget-object v0, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 790
    .local v0, "oldInfo":Landroid/media/RoutingSessionInfo;
    iget-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-virtual {v1, p2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 791
    invoke-virtual {v0, p2}, Landroid/media/RoutingSessionInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 792
    iget-object v1, p0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    .line 794
    :cond_2
    return-void

    .line 787
    .end local v0    # "oldInfo":Landroid/media/RoutingSessionInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 776
    :cond_3
    :goto_1
    const-string v0, "MR2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncRoutesOnHandler: Received wrong data. currentRoutes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSystemSessionInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method public whitelist transfer(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/MediaRouter2$RoutingController;
    .param p2, "route"    # Landroid/media/MediaRoute2Info;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 630
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    invoke-virtual {p1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaRouter2Manager;->transfer(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 632
    return-void

    .line 634
    :cond_0
    return-void
.end method

.method public whitelist transferTo(Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 578
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Landroid/media/MediaRouter2;->sManager:Landroid/media/MediaRouter2Manager;

    iget-object v1, p0, Landroid/media/MediaRouter2;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter2Manager;->selectRoute(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 580
    return-void

    .line 583
    :cond_0
    const-string v0, "MR2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transferring to route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 589
    .local v1, "routeFound":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    if-nez v1, :cond_1

    .line 591
    invoke-direct {p0, p1}, Landroid/media/MediaRouter2;->notifyTransferFailure(Landroid/media/MediaRoute2Info;)V

    .line 592
    return-void

    .line 595
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaRouter2;->getCurrentController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .line 596
    .local v0, "controller":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 597
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->transferToRoute(Landroid/media/MediaRoute2Info;)V

    .line 598
    return-void

    .line 601
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/media/MediaRouter2;->requestCreateController(Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRoute2Info;J)V

    .line 602
    return-void

    .line 589
    .end local v0    # "controller":Landroid/media/MediaRouter2$RoutingController;
    .end local v1    # "routeFound":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist unregisterControllerCallback(Landroid/media/MediaRouter2$ControllerCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/MediaRouter2$ControllerCallback;

    .line 545
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Landroid/media/MediaRouter2;->mControllerCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$ControllerCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$ControllerCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$ControllerCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const-string v0, "MR2"

    const-string/jumbo v1, "unregisterControllerCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-void

    .line 551
    :cond_0
    return-void
.end method

.method public whitelist unregisterRouteCallback(Landroid/media/MediaRouter2$RouteCallback;)V
    .locals 5
    .param p1, "routeCallback"    # Landroid/media/MediaRouter2$RouteCallback;

    .line 404
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$RouteCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/media/MediaRouter2$RouteCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$RouteCallback;Landroid/media/RouteDiscoveryPreference;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    const-string v0, "MR2"

    const-string/jumbo v1, "unregisterRouteCallback: Ignoring unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaRouter2;->isSystemRouter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    if-nez v1, :cond_2

    .line 417
    monitor-exit v0

    return-void

    .line 419
    :cond_2
    invoke-direct {p0}, Landroid/media/MediaRouter2;->updateDiscoveryPreferenceIfNeededLocked()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 421
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    iget-object v4, p0, Landroid/media/MediaRouter2;->mDiscoveryPreference:Landroid/media/RouteDiscoveryPreference;

    invoke-interface {v1, v3, v4}, Landroid/media/IMediaRouterService;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    .line 423
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "MR2"

    const-string/jumbo v4, "unregisterRouteCallback: Unable to set discovery request."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mRouteCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 428
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaRouter2;->mMediaRouterService:Landroid/media/IMediaRouterService;

    iget-object v3, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    invoke-interface {v1, v3}, Landroid/media/IMediaRouterService;->unregisterRouter2(Landroid/media/IMediaRouter2;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 431
    goto :goto_1

    .line 429
    :catch_1
    move-exception v1

    .line 430
    .restart local v1    # "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "MR2"

    const-string v4, "Unable to unregister media router."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    iput-object v2, p0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 434
    :cond_4
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public whitelist unregisterTransferCallback(Landroid/media/MediaRouter2$TransferCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/media/MediaRouter2$TransferCallback;

    .line 512
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 514
    iget-object v0, p0, Landroid/media/MediaRouter2;->mTransferCallbackRecords:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/media/MediaRouter2$TransferCallbackRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/media/MediaRouter2$TransferCallbackRecord;-><init>(Ljava/util/concurrent/Executor;Landroid/media/MediaRouter2$TransferCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const-string v0, "MR2"

    const-string/jumbo v1, "unregisterTransferCallback: Ignoring an unknown callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 518
    :cond_0
    return-void
.end method

.method blacklist updateControllerOnHandler(Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 952
    if-nez p1, :cond_0

    .line 953
    const-string v0, "MR2"

    const-string/jumbo v1, "updateControllerOnHandler: Ignoring null sessionInfo."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void

    .line 957
    :cond_0
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    invoke-virtual {p0}, Landroid/media/MediaRouter2;->getSystemController()Landroid/media/MediaRouter2$RoutingController;

    move-result-object v0

    .line 960
    .local v0, "systemController":Landroid/media/MediaRouter2$RoutingController;
    invoke-virtual {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 961
    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    .line 962
    return-void

    .line 966
    .end local v0    # "systemController":Landroid/media/MediaRouter2$RoutingController;
    :cond_1
    iget-object v0, p0, Landroid/media/MediaRouter2;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2;->mNonSystemRoutingControllers:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter2$RoutingController;

    .line 968
    .local v1, "matchingController":Landroid/media/MediaRouter2$RoutingController;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    if-nez v1, :cond_2

    .line 971
    const-string v0, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateControllerOnHandler: Matching controller not found. uniqueSessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 974
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 971
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 978
    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 979
    .local v0, "oldInfo":Landroid/media/RoutingSessionInfo;
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 980
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateControllerOnHandler: Provider IDs are not matched. old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 983
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 985
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void

    .line 989
    :cond_3
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    .line 990
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2;->notifyControllerUpdated(Landroid/media/MediaRouter2$RoutingController;)V

    .line 991
    return-void

    .line 968
    .end local v0    # "oldInfo":Landroid/media/RoutingSessionInfo;
    .end local v1    # "matchingController":Landroid/media/MediaRouter2$RoutingController;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist updateFilteredRoutesLocked()V
    .locals 3

    .line 872
    iget-object v0, p0, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 874
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaRouter2;->filterRoutesWithCompositePreferenceLocked(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 873
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 875
    iget-object v0, p0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda11;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2;->mFilteredRoutes:Ljava/util/List;

    .line 876
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 875
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 878
    return-void
.end method
