.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;
.super Landroid/hardware/camera2/extension/IProcessResultImpl$Stub;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureResultHandler"
.end annotation


# instance fields
.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

.field private final blacklist mClientRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequestId:I

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;I)V
    .locals 0
    .param p2, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .param p5, "requestId"    # I

    .line 1350
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IProcessResultImpl$Stub;-><init>()V

    .line 1351
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1352
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1353
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 1354
    iput p5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mRequestId:I

    .line 1355
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCaptureCompleted$0$android-hardware-camera2-impl-CameraExtensionSessionImpl$CaptureResultHandler(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "totalResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 1371
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureResultAvailable(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public blacklist onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 12
    .param p1, "shutterTimestamp"    # J
    .param p3, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 1359
    if-nez p3, :cond_0

    .line 1360
    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Invalid capture result!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void

    .line 1364
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1365
    new-instance v0, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    iget v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mRequestId:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v10

    const/4 v1, 0x0

    new-array v11, v1, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object v2, v0

    move-object v4, p3

    move-wide v7, p1

    invoke-direct/range {v2 .. v11}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;IJLjava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 1368
    .local v0, "totalResult":Landroid/hardware/camera2/TotalCaptureResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1370
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    nop

    .line 1376
    return-void

    .line 1374
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1375
    throw v3
.end method
