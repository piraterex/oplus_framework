.class public abstract Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtensionCaptureCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 129
    return-void
.end method

.method public whitelist onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;

    .line 104
    return-void
.end method

.method public whitelist onCaptureResultAvailable(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 200
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "sequenceId"    # I

    .line 174
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "sequenceId"    # I

    .line 152
    return-void
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraExtensionSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J

    .line 82
    return-void
.end method
