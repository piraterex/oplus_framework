.class public Landroid/os/renderacc/RenderAcceleratingManager;
.super Ljava/lang/Object;
.source "RenderAcceleratingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RAManager"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDelegates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/renderacc/RenderAcceleratingStateListener;",
            "Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/renderacc/IRenderAcceleratingService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/renderacc/IRenderAcceleratingService;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    .line 47
    iput-object p1, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist addStateListener(Ljava/util/concurrent/ExecutorService;Landroid/os/renderacc/RenderAcceleratingStateListener;)V
    .locals 4
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "listener"    # Landroid/os/renderacc/RenderAcceleratingStateListener;

    .line 381
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 382
    const-string v0, "RAManager"

    const-string v1, "Failed to render accelerating state listener; no service context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 389
    :try_start_0
    iget-object v1, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const-string v1, "RAManager"

    const-string v2, "Listener already registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 395
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;-><init>(Landroid/os/renderacc/RenderAcceleratingManager;Ljava/util/concurrent/ExecutorService;Landroid/os/renderacc/RenderAcceleratingStateListener;)V

    .line 397
    .local v1, "delegate":Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;
    iget-object v2, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    invoke-interface {v2, v1}, Landroid/os/renderacc/IRenderAcceleratingService;->registerListener(Landroid/os/renderacc/IRenderAcceleratingStateListener;)I

    move-result v2

    if-gez v2, :cond_2

    .line 398
    const-string v2, "RAManager"

    const-string v3, "Failed to register render accelerating state listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 401
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    .end local v1    # "delegate":Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;
    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "RAManager"

    const-string v3, "failed by RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 407
    :cond_3
    const-string v0, "RAManager"

    const-string v1, "RenderAcceleratingService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_1
    return-void
.end method

.method public whitelist getDeviceCapability()I
    .locals 3

    .line 66
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 68
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->getDeviceCapability()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 73
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getDeviceType()I
    .locals 3

    .line 96
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 98
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->getDeviceType()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getDeviceWorkMode()I
    .locals 3

    .line 120
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->getDeviceWorkMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist isGameInPqEnhanceList(Ljava/lang/String;)I
    .locals 3
    .param p1, "game"    # Ljava/lang/String;

    .line 221
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/renderacc/IRenderAcceleratingService;->isGameInPqEnhanceList(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 228
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist isSupportGameFrc()I
    .locals 3

    .line 197
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 199
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->isSupportGameFrc()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 204
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist isSupportSuperResolution()I
    .locals 3

    .line 314
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 316
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->isSupportSuperResolution()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 321
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist removeStateListener(Landroid/os/renderacc/RenderAcceleratingStateListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/os/renderacc/RenderAcceleratingStateListener;

    .line 421
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 422
    const-string v0, "RAManager"

    const-string v1, "Failed to render accelerating state listener; no service context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    iget-object v1, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    .line 431
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .local v1, "delegate":Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    invoke-interface {v2, v1}, Landroid/os/renderacc/IRenderAcceleratingService;->unregisterListener(Landroid/os/renderacc/IRenderAcceleratingStateListener;)I

    move-result v2

    if-gez v2, :cond_1

    .line 434
    const-string v2, "RAManager"

    const-string v3, "Failed to unregister render accelerating state listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 437
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 440
    goto :goto_0

    .line 438
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "RAManager"

    const-string v4, "failed by RemoteException"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    .end local v1    # "delegate":Landroid/os/renderacc/RenderAcceleratingManager$RenderAcceleratingStateListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 444
    :cond_3
    const-string v0, "RAManager"

    const-string v1, "RenderAcceleratingService disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_1
    return-void
.end method

.method public blacklist setDeviceCommand(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/renderacc/IRenderAcceleratingService;->setDeviceCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 143
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_1
    return-void
.end method

.method public whitelist setGameFps(I)I
    .locals 3
    .param p1, "fps"    # I

    .line 245
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/renderacc/IRenderAcceleratingService;->setGameFps(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 252
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setPqEnhanceListMode(I)V
    .locals 3
    .param p1, "values"    # I

    .line 156
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/renderacc/IRenderAcceleratingService;->setPqEnhanceListMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 163
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_1
    return-void
.end method

.method public whitelist turnOffGameFrc()I
    .locals 3

    .line 292
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->turnOffGameFrc()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 299
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist turnOffSuperResolution()I
    .locals 3

    .line 358
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 360
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->turnOffSuperResolution()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 365
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist turnOnGameFrc(II)I
    .locals 3
    .param p1, "mode"    # I
    .param p2, "fps"    # I

    .line 270
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 272
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/renderacc/IRenderAcceleratingService;->turnOnGameFrc(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 277
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist turnOnSuperResolution()I
    .locals 3

    .line 336
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    invoke-interface {v0}, Landroid/os/renderacc/IRenderAcceleratingService;->turnOnSuperResolution()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 343
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist updatePqEnhanceList(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/renderacc/RenderAcceleratingManager;->mRenderAcceleratingService:Landroid/os/renderacc/IRenderAcceleratingService;

    const-string v1, "RAManager"

    if-eqz v0, :cond_0

    .line 178
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/renderacc/IRenderAcceleratingService;->updatePqEnhanceList(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "failed by RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 183
    :cond_0
    const-string v0, "RenderAcceleratingService disconnected"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_1
    return-void
.end method
