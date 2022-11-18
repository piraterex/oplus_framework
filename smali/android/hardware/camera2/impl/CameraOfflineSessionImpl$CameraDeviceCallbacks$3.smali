.class Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;
.super Ljava/lang/Object;
.source "CameraOfflineSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

.field final synthetic blacklist val$frameNumber:J

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

.field final synthetic blacklist val$timestamp:J


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;JJ)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    .line 244
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$timestamp:J

    iput-wide p6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$frameNumber:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 18

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 248
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    .line 249
    .local v1, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v2, v2, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 251
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v9

    .line 252
    .local v9, "subsequenceId":I
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2, v9}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    .line 254
    .local v10, "request":Landroid/hardware/camera2/CaptureRequest;
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 258
    invoke-virtual {v10, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/util/Range;

    .line 260
    .local v11, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_0
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequestCount()I

    move-result v2

    if-ge v12, v2, :cond_0

    .line 261
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v2, v12}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    .line 262
    .local v13, "cbRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-wide v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$timestamp:J

    sub-int v4, v9, v12

    int-to-long v4, v4

    const-wide/32 v6, 0x3b9aca00

    mul-long/2addr v4, v6

    .line 264
    invoke-virtual {v11}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    div-long/2addr v4, v6

    sub-long v14, v2, v4

    .line 265
    .local v14, "cbTimestamp":J
    iget-wide v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$frameNumber:J

    sub-int v4, v9, v12

    int-to-long v4, v4

    sub-long v16, v2, v4

    .line 267
    .local v16, "cbFrameNumber":J
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-object v2, v1

    move-object v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 260
    .end local v13    # "cbRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v14    # "cbTimestamp":J
    .end local v16    # "cbFrameNumber":J
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 270
    .end local v11    # "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    :cond_0
    goto :goto_1

    .line 271
    :cond_1
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$resultExtras:Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 273
    invoke-virtual {v4}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v4

    .line 272
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-wide v5, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$timestamp:J

    iget-wide v7, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$3;->val$frameNumber:J

    .line 271
    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 277
    .end local v9    # "subsequenceId":I
    .end local v10    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    :goto_1
    return-void
.end method
