.class Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;
.super Ljava/lang/Object;
.source "CameraOfflineSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic blacklist val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

.field final synthetic blacklist val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field final synthetic blacklist val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    .line 339
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 342
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 343
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 344
    .local v0, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 345
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequestCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 349
    new-instance v2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 351
    .local v2, "resultLocal":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v3, Landroid/hardware/camera2/CaptureResult;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v4, v4, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 352
    invoke-virtual {v5, v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 355
    .local v3, "resultInBatch":Landroid/hardware/camera2/CaptureResult;
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v4, v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 356
    .local v4, "cbRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v5, v5, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-virtual {v0, v5, v4, v3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 348
    .end local v2    # "resultLocal":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v3    # "resultInBatch":Landroid/hardware/camera2/CaptureResult;
    .end local v4    # "cbRequest":Landroid/hardware/camera2/CaptureRequest;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 360
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$4;->val$resultAsCapture:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 364
    :cond_2
    :goto_1
    return-void
.end method
