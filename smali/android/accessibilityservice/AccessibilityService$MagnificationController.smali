.class public final Landroid/accessibilityservice/AccessibilityService$MagnificationController;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MagnificationController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    }
.end annotation


# instance fields
.field private final blacklist mDisplayId:I

.field private greylist-max-o mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mService:Landroid/accessibilityservice/AccessibilityService;


# direct methods
.method constructor blacklist <init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "service"    # Landroid/accessibilityservice/AccessibilityService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "displayId"    # I

    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1298
    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    .line 1299
    iput p3, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    .line 1300
    return-void
.end method

.method private greylist-max-o setMagnificationCallbackEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1379
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1380
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1382
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1384
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationCallbackEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1387
    goto :goto_0

    .line 1385
    :catch_0
    move-exception v1

    .line 1386
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1389
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V

    .line 1320
    return-void
.end method

.method public whitelist addListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1334
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1335
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 1336
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    .line 1339
    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 1340
    .local v1, "shouldEnableCallback":Z
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    if-eqz v1, :cond_1

    .line 1345
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1347
    .end local v1    # "shouldEnableCallback":Z
    :cond_1
    monitor-exit v0

    .line 1348
    return-void

    .line 1347
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist dispatchMagnificationChanged(Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 6
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1398
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1399
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1408
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 1409
    .local v1, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 1412
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1413
    .local v3, "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 1414
    .local v4, "handler":Landroid/os/Handler;
    if-eqz v4, :cond_1

    .line 1415
    new-instance v5, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, p1, p2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$$ExternalSyntheticLambda0;-><init>(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1421
    :cond_1
    invoke-interface {v3, p0, p1, p2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1411
    .end local v3    # "listener":Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .end local v4    # "handler":Landroid/os/Handler;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1424
    .end local v0    # "i":I
    .end local v2    # "count":I
    :cond_2
    return-void

    .line 1400
    .end local v1    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/os/Handler;>;"
    :cond_3
    :goto_2
    :try_start_1
    const-string v1, "AccessibilityService"

    const-string v2, "Received magnification changed callback with no listeners registered!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1403
    monitor-exit v0

    return-void

    .line 1409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getCenterX()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1508
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1509
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1511
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1513
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterX(I)F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1514
    :catch_0
    move-exception v1

    .line 1515
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain center X"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1516
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1519
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCenterY()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1545
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1546
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1548
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1550
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationCenterY(I)F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1551
    :catch_0
    move-exception v1

    .line 1552
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain center Y"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1553
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1556
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCurrentMagnificationRegion()Landroid/graphics/Region;
    .locals 4

    .line 1626
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1627
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1629
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1631
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getCurrentMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1632
    :catch_0
    move-exception v1

    .line 1633
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain the current magnified region"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1637
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getMagnificationConfig()Landroid/accessibilityservice/MagnificationConfig;
    .locals 4

    .line 1438
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1439
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1441
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1443
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1444
    :catch_0
    move-exception v1

    .line 1445
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain magnification config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1446
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1449
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getMagnificationRegion()Landroid/graphics/Region;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1587
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1588
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1590
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1592
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationRegion(I)Landroid/graphics/Region;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1593
    :catch_0
    move-exception v1

    .line 1594
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain magnified region"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1598
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getScale()F
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1472
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1474
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1476
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getMagnificationScale(I)F

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1477
    :catch_0
    move-exception v1

    .line 1478
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to obtain scale"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1482
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method

.method synthetic blacklist lambda$dispatchMagnificationChanged$0$android-accessibilityservice-AccessibilityService$MagnificationController(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .locals 0
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1416
    invoke-interface {p1, p0, p2, p3}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V

    .line 1418
    return-void
.end method

.method blacklist onServiceConnectedLocked()V
    .locals 1

    .line 1306
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1309
    :cond_0
    return-void
.end method

.method public whitelist removeListener(Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;)Z
    .locals 5
    .param p1, "listener"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;

    .line 1357
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1358
    return v1

    .line 1361
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1362
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v2

    .line 1363
    .local v2, "keyIndex":I
    if-ltz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    .line 1364
    .local v3, "hasKey":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 1365
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1368
    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1371
    invoke-direct {p0, v1}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->setMagnificationCallbackEnabled(Z)V

    .line 1374
    :cond_3
    monitor-exit v0

    return v3

    .line 1375
    .end local v2    # "keyIndex":I
    .end local v3    # "hasKey":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist reset(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .line 1660
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1661
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1663
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1665
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetMagnification(IZ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1666
    :catch_0
    move-exception v1

    .line 1667
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to reset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1668
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1671
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist resetCurrentMagnification(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .line 1690
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1691
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1693
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1695
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->resetCurrentMagnification(IZ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1696
    :catch_0
    move-exception v1

    .line 1697
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to reset"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1698
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1701
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setCenter(FFZ)Z
    .locals 4
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "animate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1798
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1799
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1801
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1803
    :try_start_0
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    const/4 v2, 0x1

    .line 1804
    invoke-virtual {v1, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    .line 1805
    invoke-virtual {v1, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 1806
    .local v1, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v2, v1, p3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1807
    .end local v1    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :catch_0
    move-exception v1

    .line 1808
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set center"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1809
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1812
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setMagnificationConfig(Landroid/accessibilityservice/MagnificationConfig;Z)Z
    .locals 4
    .param p1, "config"    # Landroid/accessibilityservice/MagnificationConfig;
    .param p2, "animate"    # Z

    .line 1721
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1722
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1724
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1726
    :try_start_0
    iget v1, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1727
    :catch_0
    move-exception v1

    .line 1728
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set magnification config"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1729
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1732
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setScale(FZ)Z
    .locals 4
    .param p1, "scale"    # F
    .param p2, "animate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1756
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    .line 1757
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mService:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityService;->-$$Nest$fgetmConnectionId(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1759
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1761
    :try_start_0
    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    const/4 v2, 0x1

    .line 1762
    invoke-virtual {v1, v2}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    .line 1763
    invoke-virtual {v1, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v1

    .line 1764
    .local v1, "config":Landroid/accessibilityservice/MagnificationConfig;
    iget v2, p0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->mDisplayId:I

    invoke-interface {v0, v2, v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1765
    .end local v1    # "config":Landroid/accessibilityservice/MagnificationConfig;
    :catch_0
    move-exception v1

    .line 1766
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "AccessibilityService"

    const-string v3, "Failed to set scale"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1767
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1770
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
