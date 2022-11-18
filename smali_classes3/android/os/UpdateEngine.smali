.class public Landroid/os/UpdateEngine;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;,
        Landroid/os/UpdateEngine$AllocateSpaceResult;,
        Landroid/os/UpdateEngine$UpdateStatusConstants;,
        Landroid/os/UpdateEngine$ErrorCode;,
        Landroid/os/UpdateEngine$ErrorCodeConstants;
    }
.end annotation


# static fields
.field private static final blacklist OPLUS_OTADEXOPT_SERVICE:Ljava/lang/String; = "oplusotadexopt"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "UpdateEngine"

.field private static final greylist-max-o UPDATE_ENGINE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineService"


# instance fields
.field private blacklist mOplusOtaDexopt:Lcom/oplus/os/IOplusOtaDexopt;

.field private final greylist-max-o mUpdateEngine:Landroid/os/IUpdateEngine;

.field private greylist-max-o mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

.field private final greylist-max-o mUpdateEngineCallbackLock:Ljava/lang/Object;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    .line 262
    nop

    .line 263
    const-string v0, "android.os.UpdateEngineService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/os/IUpdateEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    .line 264
    if-eqz v0, :cond_0

    .line 267
    return-void

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find update_engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist allocateSpace(Ljava/lang/String;[Ljava/lang/String;)Landroid/os/UpdateEngine$AllocateSpaceResult;
    .locals 5
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;
    .param p2, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 594
    new-instance v0, Landroid/os/UpdateEngine$AllocateSpaceResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$AllocateSpaceResult;-><init>(Landroid/os/UpdateEngine$AllocateSpaceResult-IA;)V

    .line 596
    .local v0, "result":Landroid/os/UpdateEngine$AllocateSpaceResult;
    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v3, p1, p2}, Landroid/os/IUpdateEngine;->allocateSpaceForPayload(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 599
    invoke-static {v0}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fgetmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    .line 600
    const/4 v3, 0x0

    goto :goto_0

    .line 601
    :cond_0
    const/16 v3, 0x3c

    :goto_0
    invoke-static {v0, v3}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    return-object v0

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 603
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 604
    .local v3, "e":Landroid/os/ServiceSpecificException;
    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v0, v4}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmErrorCode(Landroid/os/UpdateEngine$AllocateSpaceResult;I)V

    .line 605
    invoke-static {v0, v1, v2}, Landroid/os/UpdateEngine$AllocateSpaceResult;->-$$Nest$fputmFreeSpaceRequired(Landroid/os/UpdateEngine$AllocateSpaceResult;J)V

    .line 606
    return-object v0
.end method

.method public whitelist applyPayload(Landroid/content/res/AssetFileDescriptor;[Ljava/lang/String;)V
    .locals 7
    .param p1, "assetFd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 379
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 380
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 379
    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayloadFd(Landroid/os/ParcelFileDescriptor;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    nop

    .line 384
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;

    .line 363
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    nop

    .line 367
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist applyPostInstall()Z
    .locals 2

    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->applyPostInstall()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 275
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    new-instance v1, Landroid/os/UpdateEngine$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngine$1;-><init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V

    iput-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v2, v1}, Landroid/os/IUpdateEngine;->bind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngine;
    .end local p1    # "callback":Landroid/os/UpdateEngineCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngine;
    .restart local p1    # "callback":Landroid/os/UpdateEngineCallback;
    .restart local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist cancel()V
    .locals 2

    .line 397
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    nop

    .line 401
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist cleanupAppliedPayload()I
    .locals 3

    .line 671
    new-instance v0, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;-><init>(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback-IA;)V

    .line 673
    .local v0, "callback":Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1, v0}, Landroid/os/IUpdateEngine;->cleanupSuccessfulUpdate(Landroid/os/IUpdateEngineCallback;)V

    .line 674
    invoke-static {v0}, Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;->-$$Nest$mgetResult(Landroid/os/UpdateEngine$CleanupAppliedPayloadCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 675
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist resetShouldSwitchSlotOnReboot()V
    .locals 2

    .line 471
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetShouldSwitchSlotOnReboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    nop

    .line 475
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resetStatus()V
    .locals 2

    .line 438
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resetStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    nop

    .line 442
    return-void

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist resume()V
    .locals 2

    .line 420
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    nop

    .line 424
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    .locals 2
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;

    .line 454
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->setShouldSwitchSlotOnReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    nop

    .line 458
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist suspend()V
    .locals 2

    .line 409
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->suspend()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    nop

    .line 413
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist switchSlot()V
    .locals 2

    .line 686
    :try_start_0
    const-string/jumbo v0, "oplusotadexopt"

    .line 687
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/oplus/os/IOplusOtaDexopt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/os/IOplusOtaDexopt;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mOplusOtaDexopt:Lcom/oplus/os/IOplusOtaDexopt;

    .line 688
    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v0}, Lcom/oplus/os/IOplusOtaDexopt;->interruptOtaDexopt()V

    .line 692
    :cond_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0}, Landroid/os/IUpdateEngine;->switchSlot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    nop

    .line 696
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unbind()Z
    .locals 3

    .line 481
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;

    if-nez v1, :cond_0

    .line 483
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 486
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v2, v1}, Landroid/os/IUpdateEngine;->unbind(Landroid/os/IUpdateEngineCallback;)Z

    move-result v1

    .line 487
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngineCallback:Landroid/os/IUpdateEngineCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :try_start_2
    monitor-exit v0

    return v1

    .line 489
    .end local v1    # "result":Z
    :catch_0
    move-exception v1

    .line 490
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/os/UpdateEngine;
    throw v2

    .line 492
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/os/UpdateEngine;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist verifyPayloadMetadata(Ljava/lang/String;)Z
    .locals 2
    .param p1, "payloadMetadataFilename"    # Ljava/lang/String;

    .line 506
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v0, p1}, Landroid/os/IUpdateEngine;->verifyPayloadApplicable(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
