.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;
.super Landroid/hardware/camera2/extension/ICaptureCallback$Stub;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestCallbackHandler"
.end annotation


# instance fields
.field private final blacklist mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

.field private final blacklist mClientExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mClientRequest:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)V
    .locals 0
    .param p2, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "clientExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "clientCallbacks"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 571
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/ICaptureCallback$Stub;-><init>()V

    .line 572
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 573
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientExecutor:Ljava/util/concurrent/Executor;

    .line 574
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 575
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCaptureCompleted$5$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "totalResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 652
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureResultAvailable(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureFailed$2$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler()V
    .locals 3

    .line 607
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureProcessStarted$1$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler()V
    .locals 3

    .line 595
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureSequenceAborted$4$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler(I)V
    .locals 2
    .param p1, "captureSequenceId"    # I

    .line 631
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureSequenceCompleted$3$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler(I)V
    .locals 2
    .param p1, "captureSequenceId"    # I

    .line 619
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureStarted$0$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .line 582
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method

.method public blacklist onCaptureCompleted(JILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 13
    .param p1, "timestamp"    # J
    .param p3, "requestId"    # I
    .param p4, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 640
    move-object v1, p0

    move-object/from16 v12, p4

    if-nez v12, :cond_0

    .line 641
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    const-string v2, "Invalid capture result!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return-void

    .line 645
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 646
    new-instance v0, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)I

    move-result v10

    const/4 v2, 0x0

    new-array v11, v2, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object v2, v0

    move-object/from16 v4, p4

    move/from16 v6, p3

    move-wide v7, p1

    invoke-direct/range {v2 .. v11}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 649
    .local v2, "totalResult":Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 651
    .local v3, "ident":J
    :try_start_0
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v5, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    throw v0
.end method

.method public blacklist onCaptureFailed(I)V
    .locals 4
    .param p1, "captureSequenceId"    # I

    .line 604
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 606
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    nop

    .line 612
    return-void

    .line 610
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    throw v2
.end method

.method public blacklist onCaptureProcessStarted(I)V
    .locals 4
    .param p1, "captureSequenceId"    # I

    .line 592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 594
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    nop

    .line 600
    return-void

    .line 598
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    throw v2
.end method

.method public blacklist onCaptureSequenceAborted(I)V
    .locals 4
    .param p1, "captureSequenceId"    # I

    .line 628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 630
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    nop

    .line 636
    return-void

    .line 634
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 635
    throw v2
.end method

.method public blacklist onCaptureSequenceCompleted(I)V
    .locals 4
    .param p1, "captureSequenceId"    # I

    .line 616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 618
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    nop

    .line 624
    return-void

    .line 622
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 623
    throw v2
.end method

.method public blacklist onCaptureStarted(IJ)V
    .locals 4
    .param p1, "captureSequenceId"    # I
    .param p2, "timestamp"    # J

    .line 579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 581
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->mClientExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2, p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    nop

    .line 588
    return-void

    .line 586
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    throw v2
.end method
