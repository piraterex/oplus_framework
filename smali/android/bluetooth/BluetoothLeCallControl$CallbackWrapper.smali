.class Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;
.super Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;
.source "BluetoothLeCallControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothLeCallControl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothLeCallControl;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 309
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLeCallControlCallback$Stub;-><init>()V

    .line 310
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 311
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    .line 312
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAcceptCall$0$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 328
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onAcceptCall(ILjava/util/UUID;)V

    return-void
.end method

.method synthetic blacklist lambda$onHoldCall$2$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 348
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onHoldCall(ILjava/util/UUID;)V

    return-void
.end method

.method synthetic blacklist lambda$onJoinCalls$5$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILjava/util/List;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "uuids"    # Ljava/util/List;

    .line 383
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onJoinCalls(ILjava/util/List;)V

    return-void
.end method

.method synthetic blacklist lambda$onPlaceCall$4$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "uri"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$onTerminateCall$1$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 338
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onTerminateCall(ILjava/util/UUID;)V

    return-void
.end method

.method synthetic blacklist lambda$onUnholdCall$3$android-bluetooth-BluetoothLeCallControl$CallbackWrapper(ILandroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 358
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothLeCallControl$Callback;->onUnholdCall(ILjava/util/UUID;)V

    return-void
.end method

.method public blacklist onAcceptCall(ILandroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 328
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    nop

    .line 332
    return-void

    .line 330
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw v2
.end method

.method public blacklist onBearerRegistered(I)V
    .locals 2
    .param p1, "ccid"    # I

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->this$0:Landroid/bluetooth/BluetoothLeCallControl;

    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$fputmCcid(Landroid/bluetooth/BluetoothLeCallControl;I)V

    goto :goto_0

    .line 320
    :cond_0
    const-string v0, "BluetoothLeCallControl"

    const-string/jumbo v1, "onBearerRegistered: mCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void
.end method

.method public blacklist onHoldCall(ILandroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 348
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    nop

    .line 352
    return-void

    .line 350
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    throw v2
.end method

.method public blacklist onJoinCalls(ILjava/util/List;)V
    .locals 5
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .line 376
    .local p2, "parcelUuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 378
    .local v2, "parcelUuid":Landroid/os/ParcelUuid;
    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v2    # "parcelUuid":Landroid/os/ParcelUuid;
    goto :goto_0

    .line 381
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 383
    .local v1, "identityToken":J
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, v0}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILjava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    nop

    .line 387
    return-void

    .line 385
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    throw v3
.end method

.method public blacklist onPlaceCall(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "uri"    # Ljava/lang/String;

    .line 366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 368
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    nop

    .line 372
    return-void

    .line 370
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    throw v2
.end method

.method public blacklist onTerminateCall(ILandroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 336
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 338
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    nop

    .line 342
    return-void

    .line 340
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    throw v2
.end method

.method public blacklist onUnholdCall(ILandroid/os/ParcelUuid;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;

    .line 356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 358
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, p2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper$$ExternalSyntheticLambda5;-><init>(Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;ILandroid/os/ParcelUuid;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw v2
.end method
