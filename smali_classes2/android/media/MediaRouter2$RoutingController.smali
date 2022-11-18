.class public Landroid/media/MediaRouter2$RoutingController;
.super Ljava/lang/Object;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoutingController"
.end annotation


# static fields
.field private static final blacklist CONTROLLER_STATE_ACTIVE:I = 0x1

.field private static final blacklist CONTROLLER_STATE_RELEASED:I = 0x3

.field private static final blacklist CONTROLLER_STATE_RELEASING:I = 0x2

.field private static final blacklist CONTROLLER_STATE_UNKNOWN:I


# instance fields
.field private final blacklist mControllerLock:Ljava/lang/Object;

.field private blacklist mSessionInfo:Landroid/media/RoutingSessionInfo;

.field private blacklist mState:I

.field final synthetic blacklist this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 1352
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    .line 1353
    iput-object p2, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1354
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1355
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;I)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/MediaRouter2;
    .param p2, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .param p3, "state"    # I

    .line 1357
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1339
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    .line 1358
    iput-object p2, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1359
    iput p3, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1360
    return-void
.end method

.method private blacklist getRoutesWithIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1806
    .local p1, "routeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {v0}, Landroid/media/MediaRouter2;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 1808
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1809
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1807
    return-object v0

    .line 1812
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1813
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v2, v2, Landroid/media/MediaRouter2;->mRoutes:Ljava/util/Map;

    .line 1814
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda3;-><init>()V

    .line 1815
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1816
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    .line 1813
    return-object v1

    .line 1817
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$getRoutesWithIds$1(Ljava/util/List;Landroid/media/MediaRoute2Info;)Z
    .locals 1
    .param p0, "routeIds"    # Ljava/util/List;
    .param p1, "r"    # Landroid/media/MediaRoute2Info;

    .line 1808
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$releaseInternal$0(Ljava/lang/Object;Landroid/media/MediaRouter2$RoutingController;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/media/MediaRouter2$RoutingController;

    .line 1740
    move-object v0, p0

    check-cast v0, Landroid/media/MediaRouter2;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method


# virtual methods
.method public whitelist deselectRoute(Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1558
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1559
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1560
    const-string v0, "MR2"

    const-string v1, "deselectRoute: called on released controller. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void

    .line 1564
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 1565
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1566
    const-string v1, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring deselecting a route that is not selected. route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    return-void

    .line 1570
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1571
    .local v1, "deselectableRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1572
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring deselecting a non-deselectable route="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void

    .line 1576
    :cond_2
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1577
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaRouter2Manager;->deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1578
    return-void

    .line 1582
    :cond_3
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1583
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1584
    .local v3, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    if-eqz v3, :cond_4

    .line 1587
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/media/IMediaRouterService;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1590
    goto :goto_0

    .line 1588
    :catch_0
    move-exception v2

    .line 1589
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "MR2"

    const-string v5, "Unable to deselect route from session."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1592
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return-void

    .line 1584
    .end local v3    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public whitelist getControlHints()Landroid/os/Bundle;
    .locals 2

    .line 1392
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1393
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getControlHints()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getDeselectableRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1427
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1428
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1429
    .local v1, "deselectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1429
    .end local v1    # "deselectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 2

    .line 1367
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1368
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getOriginalId()Ljava/lang/String;
    .locals 2

    .line 1381
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;
    .locals 2

    .line 1794
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1795
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    monitor-exit v0

    return-object v1

    .line 1796
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSelectableRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1416
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1417
    .local v1, "selectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1417
    .end local v1    # "selectableRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getSelectedRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 1403
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1404
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    .line 1405
    .local v1, "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    invoke-direct {p0, v1}, Landroid/media/MediaRouter2$RoutingController;->getRoutesWithIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1405
    .end local v1    # "selectedRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getVolume()I
    .locals 2

    .line 1465
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1466
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getVolumeHandling()I
    .locals 2

    .line 1444
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1445
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getVolumeMax()I
    .locals 2

    .line 1451
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1452
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isReleased()Z
    .locals 3

    .line 1478
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_0
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist release()V
    .locals 1

    .line 1675
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter2$RoutingController;->releaseInternal(Z)V

    .line 1676
    return-void
.end method

.method blacklist releaseInternal(Z)V
    .locals 5
    .param p1, "shouldReleaseSession"    # Z

    .line 1710
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1711
    :try_start_0
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1712
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    const-string v1, "MR2"

    const-string v2, "releaseInternal: Called on released controller. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_0
    monitor-exit v0

    return-void

    .line 1717
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 1718
    .local v1, "shouldNotifyStop":Z
    iput v2, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1719
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1721
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1722
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    .line 1723
    return-void

    .line 1726
    :cond_3
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1727
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1729
    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 1731
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/media/IMediaRouterService;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1734
    goto :goto_1

    .line 1732
    :catch_0
    move-exception v0

    .line 1733
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "MR2"

    const-string v4, "Unable to release session"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 1738
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda0;-><init>()V

    iget-object v4, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    .line 1739
    invoke-static {v3, v4, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1738
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1745
    :cond_5
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmRouteCallbackRecords(Landroid/media/MediaRouter2;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    .line 1746
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    .line 1749
    :try_start_4
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    invoke-interface {v0, v3}, Landroid/media/IMediaRouterService;->unregisterRouter2(Landroid/media/IMediaRouter2;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1752
    goto :goto_2

    .line 1750
    :catch_1
    move-exception v0

    .line 1751
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "MR2"

    const-string v4, "releaseInternal: Unable to unregister media router."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1753
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1755
    :cond_6
    monitor-exit v2

    .line 1756
    return-void

    .line 1755
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1719
    .end local v1    # "shouldNotifyStop":Z
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method blacklist scheduleRelease()Z
    .locals 5

    .line 1685
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_0
    iget v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1687
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1689
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaRouter2$RoutingController;->mState:I

    .line 1690
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1692
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1695
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmNonSystemRoutingControllers(Landroid/media/MediaRouter2;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1698
    monitor-exit v1

    return v2

    .line 1700
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda4;-><init>(Landroid/media/MediaRouter2$RoutingController;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1704
    return v2

    .line 1700
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1690
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public whitelist selectRoute(Landroid/media/MediaRoute2Info;)V
    .locals 6
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1504
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1505
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    const-string v0, "MR2"

    const-string v1, "selectRoute: Called on released controller. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    return-void

    .line 1510
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    .line 1511
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1512
    const-string v1, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring selecting a route that is already selected. route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return-void

    .line 1516
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    .line 1517
    .local v1, "selectableRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaRoute2Info;>;"
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaRouter2;->checkRouteListContainsRouteId(Ljava/util/List;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1518
    const-string v2, "MR2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring selecting a non-selectable route="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return-void

    .line 1522
    :cond_2
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1523
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaRouter2Manager;->selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    .line 1524
    return-void

    .line 1528
    :cond_3
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1529
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v3, v3, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1530
    .local v3, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    if-eqz v3, :cond_4

    .line 1533
    :try_start_1
    iget-object v2, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/media/IMediaRouterService;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1536
    goto :goto_0

    .line 1534
    :catch_0
    move-exception v2

    .line 1535
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "MR2"

    const-string v5, "Unable to select route for session."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1538
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return-void

    .line 1530
    .end local v3    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method blacklist setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/media/RoutingSessionInfo;

    .line 1800
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1801
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 1802
    monitor-exit v0

    .line 1803
    return-void

    .line 1802
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setVolume(I)V
    .locals 4
    .param p1, "volume"    # I

    .line 1637
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getVolumeHandling()I

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    const-string v0, "MR2"

    const-string v1, "setVolume: The routing session has fixed volume. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    return-void

    .line 1641
    :cond_0
    if-ltz p1, :cond_5

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getVolumeMax()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_1

    .line 1646
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1647
    const-string v0, "MR2"

    const-string v1, "setVolume: Called on released controller. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    return-void

    .line 1651
    :cond_2
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$misSystemRouter(Landroid/media/MediaRouter2;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1652
    invoke-static {}, Landroid/media/MediaRouter2;->-$$Nest$sfgetsManager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getRoutingSessionInfo()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter2Manager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    .line 1653
    return-void

    .line 1657
    :cond_3
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v1, v1, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1659
    .local v1, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    if-eqz v1, :cond_4

    .line 1662
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroid/media/IMediaRouterService;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1665
    goto :goto_0

    .line 1663
    :catch_0
    move-exception v0

    .line 1664
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "setVolume: Failed to deliver request."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1667
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    return-void

    .line 1659
    .end local v1    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1642
    :cond_5
    :goto_1
    const-string v0, "MR2"

    const-string v1, "setVolume: The target volume is out of range. Ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 1761
    nop

    .line 1762
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>()V

    .line 1763
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1764
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1765
    .local v0, "selectedRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1766
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>()V

    .line 1767
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1768
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1769
    .local v1, "selectableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1770
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Landroid/media/MediaRouter2$$ExternalSyntheticLambda9;-><init>()V

    .line 1771
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1772
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1774
    .local v2, "deselectableRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1776
    const-string v4, "RoutingController{ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1777
    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1778
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1779
    const-string v4, ", selectedRoutes={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1780
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1781
    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1782
    const-string v5, ", selectableRoutes={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1783
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1784
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1785
    const-string v5, ", deselectableRoutes={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1786
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1787
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1788
    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1789
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method blacklist transferToRoute(Landroid/media/MediaRoute2Info;)V
    .locals 4
    .param p1, "route"    # Landroid/media/MediaRoute2Info;

    .line 1603
    const-string v0, "route must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1604
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->mControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1605
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->isReleased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1606
    const-string v1, "MR2"

    const-string/jumbo v2, "transferToRoute: Called on released controller. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    monitor-exit v0

    return-void

    .line 1610
    :cond_0
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->mSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1611
    const-string v1, "MR2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring transferring to a non-transferable route="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    monitor-exit v0

    return-void

    .line 1614
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1617
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1618
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mStub:Landroid/media/MediaRouter2$MediaRouter2Stub;

    .line 1619
    .local v0, "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1620
    if-eqz v0, :cond_2

    .line 1622
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaRouter2$RoutingController;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1}, Landroid/media/MediaRouter2;->-$$Nest$fgetmMediaRouterService(Landroid/media/MediaRouter2;)Landroid/media/IMediaRouterService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter2$RoutingController;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2, p1}, Landroid/media/IMediaRouterService;->transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1625
    goto :goto_0

    .line 1623
    :catch_0
    move-exception v1

    .line 1624
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "MR2"

    const-string v3, "Unable to transfer to route for session."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void

    .line 1619
    .end local v0    # "stub":Landroid/media/MediaRouter2$MediaRouter2Stub;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1614
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
