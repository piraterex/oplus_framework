.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseRequestHandler"
.end annotation


# instance fields
.field private final blacklist mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V
    .locals 0
    .param p2, "imageCallback"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1331
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 1332
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1333
    return-void
.end method


# virtual methods
.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 1338
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback-IA;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V

    .line 1339
    return-void
.end method
