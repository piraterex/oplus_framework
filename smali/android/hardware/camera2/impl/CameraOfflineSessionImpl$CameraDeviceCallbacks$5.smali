.class Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;
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

.field final synthetic blacklist val$fpsRange:Landroid/util/Range;

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$partialResults:Ljava/util/List;

.field final synthetic blacklist val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic blacklist val$resultAsCapture:Landroid/hardware/camera2/TotalCaptureResult;

.field final synthetic blacklist val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

.field final synthetic blacklist val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic blacklist val$sensorTimestamp:J

.field final synthetic blacklist val$subsequenceId:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;JILandroid/util/Range;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    .line 380
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$sensorTimestamp:J

    iput p6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$subsequenceId:I

    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$fpsRange:Landroid/util/Range;

    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$partialResults:Ljava/util/List;

    iput-object p10, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p11, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$resultAsCapture:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 13

    .line 383
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 384
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 385
    .local v0, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 386
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequestCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 390
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$sensorTimestamp:J

    iget v6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$subsequenceId:I

    sub-int/2addr v6, v1

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$fpsRange:Landroid/util/Range;

    .line 392
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 391
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 390
    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 393
    new-instance v7, Landroid/hardware/camera2/impl/CameraMetadataNative;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$resultCopy:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v7, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 396
    .local v7, "resultLocal":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v2, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v3, v3, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$fgetmCameraId(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 397
    invoke-virtual {v3, v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$partialResults:Ljava/util/List;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 398
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getSessionId()I

    move-result v11

    const/4 v3, 0x0

    new-array v12, v3, [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 401
    .local v2, "resultInBatch":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 402
    .local v3, "cbRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v4, v4, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-virtual {v0, v4, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 389
    .end local v2    # "resultInBatch":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v3    # "cbRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "resultLocal":Landroid/hardware/camera2/impl/CameraMetadataNative;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 406
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$5;->val$resultAsCapture:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 410
    :cond_2
    :goto_1
    return-void
.end method
