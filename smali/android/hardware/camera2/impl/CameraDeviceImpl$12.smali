.class Landroid/hardware/camera2/impl/CameraDeviceImpl$12;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->onCaptureErrorLocked(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic blacklist val$frameNumber:J

.field final synthetic blacklist val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

.field final synthetic blacklist val$request:Landroid/hardware/camera2/CaptureRequest;

.field final synthetic blacklist val$surface:Landroid/view/Surface;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 1945
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$surface:Landroid/view/Surface;

    iput-wide p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$frameNumber:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 7

    .line 1948
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1949
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$holder:Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$request:Landroid/hardware/camera2/CaptureRequest;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$surface:Landroid/view/Surface;

    iget-wide v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$12;->val$frameNumber:J

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/camera2/impl/CaptureCallback;->onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V

    .line 1952
    :cond_0
    return-void
.end method
