.class public abstract Landroid/service/games/GameSession;
.super Ljava/lang/Object;
.source "GameSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/GameSession$ScreenshotCallback;,
        Landroid/service/games/GameSession$GameSessionRootView;,
        Landroid/service/games/GameSession$LifecycleState;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "GameSession"


# instance fields
.field private blacklist mAreTransientInsetsVisibleDueToGesture:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mGameSessionController:Landroid/service/games/IGameSessionController;

.field private blacklist mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

.field final blacklist mInterface:Landroid/service/games/IGameSession;

.field private blacklist mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

.field private blacklist mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private blacklist mTaskId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdoDestroy(Landroid/service/games/GameSession;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/games/GameSession;->doDestroy()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/service/games/GameSession$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSession$1;-><init>(Landroid/service/games/GameSession;)V

    iput-object v0, p0, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    .line 127
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->INITIALIZED:Landroid/service/games/GameSession$LifecycleState;

    iput-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    return-void
.end method

.method private blacklist doDestroy()V
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 162
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    .line 163
    return-void
.end method

.method private blacklist handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "callback"    # Landroid/service/games/GameSession$ScreenshotCallback;
    .param p2, "result"    # Landroid/service/games/GameScreenshotResult;
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 450
    const/4 v0, 0x0

    const-string v1, "GameSession"

    if-eqz p3, :cond_0

    .line 451
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    invoke-interface {p1, v0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    .line 454
    return-void

    .line 457
    :cond_0
    invoke-virtual {p2}, Landroid/service/games/GameScreenshotResult;->getStatus()I

    move-result v2

    .line 458
    .local v2, "status":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 463
    :pswitch_0
    const-string v3, "Error taking screenshot"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-interface {p1, v0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-interface {p1}, Landroid/service/games/GameSession$ScreenshotCallback;->onSuccess()V

    .line 461
    nop

    .line 468
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$startActivityFromGameSessionForResult$1(Landroid/service/games/GameSessionActivityCallback;Landroid/service/games/GameSessionActivityResult;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "callback"    # Landroid/service/games/GameSessionActivityCallback;
    .param p1, "result"    # Landroid/service/games/GameSessionActivityResult;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 506
    if-eqz p2, :cond_0

    .line 507
    invoke-interface {p0, p2}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    .line 508
    return-void

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/service/games/GameSessionActivityCallback;->onActivityResult(ILandroid/content/Intent;)V

    .line 511
    return-void
.end method

.method static synthetic blacklist lambda$startActivityFromGameSessionForResult$2(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "callback"    # Landroid/service/games/GameSessionActivityCallback;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 526
    invoke-interface {p0, p1}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V
    .locals 2
    .param p1, "gameSessionController"    # Landroid/service/games/IGameSessionController;
    .param p2, "taskId"    # I
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "surfaceControlViewHost"    # Landroid/view/SurfaceControlViewHost;
    .param p5, "widthPx"    # I
    .param p6, "heightPx"    # I

    .line 146
    iput-object p1, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    .line 147
    iput p2, p0, Landroid/service/games/GameSession;->mTaskId:I

    .line 148
    iput-object p3, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    .line 149
    iput-object p4, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    .line 150
    new-instance v0, Landroid/service/games/GameSession$GameSessionRootView;

    iget-object v1, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-direct {v0, p3, v1}, Landroid/service/games/GameSession$GameSessionRootView;-><init>(Landroid/content/Context;Landroid/view/SurfaceControlViewHost;)V

    iput-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    .line 151
    invoke-virtual {p4, v0, p5, p6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    .line 152
    return-void
.end method

.method public blacklist dispatchTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .locals 1
    .param p1, "visibleDueToGesture"    # Z

    .line 170
    iget-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "didValueChange":Z
    :goto_0
    iput-boolean p1, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    .line 172
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Landroid/service/games/GameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V

    .line 175
    :cond_1
    return-void
.end method

.method blacklist doCreate()V
    .locals 1

    .line 156
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    .line 157
    return-void
.end method

.method synthetic blacklist lambda$takeScreenshot$0$android-service-games-GameSession(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/games/GameSession$ScreenshotCallback;
    .param p2, "result"    # Landroid/service/games/GameScreenshotResult;
    .param p3, "error"    # Ljava/lang/Throwable;

    .line 436
    invoke-direct {p0, p1, p2, p3}, Landroid/service/games/GameSession;->handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V

    .line 437
    return-void
.end method

.method public blacklist moveToState(Landroid/service/games/GameSession$LifecycleState;)V
    .locals 2
    .param p1, "newLifecycleState"    # Landroid/service/games/GameSession$LifecycleState;

    .line 187
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_9

    .line 191
    iget-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    if-ne v0, p1, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    sget-object v0, Landroid/service/games/GameSession$2;->$SwitchMap$android$service$games$GameSession$LifecycleState:[I

    iget-object v1, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {v1}, Landroid/service/games/GameSession$LifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    return-void

    .line 236
    :pswitch_1
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_1

    .line 237
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_0

    .line 238
    :cond_1
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_2

    .line 239
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_0

    .line 244
    :cond_2
    return-void

    .line 223
    :pswitch_2
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 224
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_0

    .line 225
    :cond_3
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_4

    .line 226
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    .line 227
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_0

    .line 232
    :cond_4
    return-void

    .line 211
    :pswitch_3
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_5

    .line 212
    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_0

    .line 213
    :cond_5
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_6

    .line 214
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_0

    .line 219
    :cond_6
    return-void

    .line 198
    :pswitch_4
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_7

    .line 199
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    goto :goto_0

    .line 200
    :cond_7
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_8

    .line 201
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    .line 202
    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_0

    .line 207
    :cond_8
    return-void

    .line 254
    :goto_0
    iput-object p1, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    .line 255
    return-void

    .line 188
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "moveToState should be used only from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onCreate()V
    .locals 0

    .line 263
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 273
    return-void
.end method

.method public whitelist onGameTaskFocusChanged(Z)V
    .locals 0
    .param p1, "focused"    # Z

    .line 287
    return-void
.end method

.method public whitelist onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .locals 0
    .param p1, "visibleDueToGesture"    # Z

    .line 302
    return-void
.end method

.method public final whitelist restartGame()Z
    .locals 3

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget v1, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/service/games/IGameSessionController;->restartGame(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    nop

    .line 339
    const/4 v0, 0x1

    return v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GameSession"

    const-string v2, "Failed to restart game"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setTaskOverlayView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 319
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {v0}, Landroid/service/games/GameSession$GameSessionRootView;->removeAllViews()V

    .line 320
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {v0, p1, p2}, Landroid/service/games/GameSession$GameSessionRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    return-void
.end method

.method public final whitelist startActivityFromGameSessionForResult(Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/service/games/GameSessionActivityCallback;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/service/games/GameSessionActivityCallback;

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4}, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/games/GameSessionActivityCallback;)V

    .line 505
    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 513
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameSessionActivityResult;>;"
    nop

    .line 514
    invoke-static {p1, p2, v0}, Landroid/service/games/GameSessionTrampolineActivity;->createIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)Landroid/content/Intent;

    move-result-object v10

    .line 520
    .local v10, "trampolineIntent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    .line 521
    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSession"

    .line 522
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget v8, p0, Landroid/service/games/GameSession;->mTaskId:I

    .line 523
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 520
    move-object v7, v10

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityTaskManager;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v1

    .line 524
    .local v1, "result":I
    invoke-static {v1, v10}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    .end local v1    # "result":I
    goto :goto_0

    .line 525
    :catchall_0
    move-exception v1

    .line 526
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v2, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4, v1}, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;-><init>(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 528
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public whitelist takeScreenshot(Ljava/util/concurrent/Executor;Landroid/service/games/GameSession$ScreenshotCallback;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/service/games/GameSession$ScreenshotCallback;

    .line 430
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    if-eqz v0, :cond_0

    .line 434
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;-><init>(Landroid/service/games/GameSession;Landroid/service/games/GameSession$ScreenshotCallback;)V

    .line 435
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    .line 440
    .local v0, "takeScreenshotResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameScreenshotResult;>;"
    :try_start_0
    iget-object v1, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget v2, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {v1, v2, v0}, Landroid/service/games/IGameSessionController;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    goto :goto_0

    .line 441
    :catch_0
    move-exception v1

    .line 442
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 444
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 431
    .end local v0    # "takeScreenshotResult":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/service/games/GameScreenshotResult;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
