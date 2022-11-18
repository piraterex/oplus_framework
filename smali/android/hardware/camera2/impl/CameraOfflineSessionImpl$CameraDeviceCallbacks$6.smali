.class Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;
.super Ljava/lang/Object;
.source "CameraOfflineSessionImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

.field final synthetic blacklist val$frameNumber:J

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic blacklist val$surface:Landroid/view/Surface;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0
    .param p1, "this$1"    # Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    .line 486
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$surface:Landroid/view/Surface;

    iput-wide p5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$frameNumber:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 489
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    .line 490
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0

    .line 491
    .local v0, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 492
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->this$1:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$surface:Landroid/view/Surface;

    iget-wide v5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks$6;->val$frameNumber:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 495
    :cond_0
    return-void
.end method
