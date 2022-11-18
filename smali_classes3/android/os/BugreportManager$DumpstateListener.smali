.class final Landroid/os/BugreportManager$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "BugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DumpstateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/BugreportManager$BugreportCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsScreenshotRequested:Z

.field final synthetic blacklist this$0:Landroid/os/BugreportManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;Z)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/os/BugreportManager$BugreportCallback;
    .param p4, "isScreenshotRequested"    # Z

    .line 316
    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    .line 317
    iput-object p2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 318
    iput-object p3, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    .line 319
    iput-boolean p4, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    .line 320
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onError$1$android-os-BugreportManager$DumpstateListener(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 336
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onError(I)V

    return-void
.end method

.method synthetic blacklist lambda$onFinished$2$android-os-BugreportManager$DumpstateListener()V
    .locals 1

    .line 346
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onFinished()V

    return-void
.end method

.method synthetic blacklist lambda$onProgress$0$android-os-BugreportManager$DumpstateListener(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 326
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BugreportManager$BugreportCallback;->onProgress(F)V

    return-void
.end method

.method synthetic blacklist lambda$onScreenshotTaken$3$android-os-BugreportManager$DumpstateListener(Z)V
    .locals 3
    .param p1, "success"    # Z

    .line 362
    if-eqz p1, :cond_0

    .line 363
    const v0, 0x10401db

    goto :goto_0

    .line 364
    :cond_0
    const v0, 0x10401da

    :goto_0
    nop

    .line 365
    .local v0, "message":I
    iget-object v1, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-static {v1}, Landroid/os/BugreportManager;->-$$Nest$fgetmContext(Landroid/os/BugreportManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 366
    return-void
.end method

.method synthetic blacklist lambda$onUiIntensiveBugreportDumpsFinished$4$android-os-BugreportManager$DumpstateListener()V
    .locals 1

    .line 373
    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onEarlyReportFinished()V

    return-void
.end method

.method public blacklist onError(I)V
    .locals 4
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 336
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    nop

    .line 340
    return-void

    .line 338
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    throw v2
.end method

.method public blacklist onFinished()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 346
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    nop

    .line 350
    return-void

    .line 348
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    throw v2
.end method

.method public blacklist onProgress(I)V
    .locals 4
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 326
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    nop

    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 329
    throw v2
.end method

.method public blacklist onScreenshotTaken(Z)V
    .locals 2
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-boolean v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    if-nez v0, :cond_0

    .line 355
    return-void

    .line 358
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 359
    .local v0, "mainThreadHandler":Landroid/os/Handler;
    new-instance v1, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;-><init>(Landroid/os/BugreportManager$DumpstateListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public blacklist onUiIntensiveBugreportDumpsFinished()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 373
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    nop

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    throw v2
.end method
