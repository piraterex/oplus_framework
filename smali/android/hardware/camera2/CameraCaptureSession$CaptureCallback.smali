.class public abstract Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.super Ljava/lang/Object;
.source "CameraCaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraCaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CaptureCallback"
.end annotation


# static fields
.field public static final greylist-max-o NO_FRAMES_CAPTURED:I = -0x1


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "frameNumber"    # J

    .line 1449
    return-void
.end method

.method public whitelist onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 1337
    return-void
.end method

.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 1366
    return-void
.end method

.method public greylist-max-o onCapturePartial(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 1264
    return-void
.end method

.method public whitelist onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 1308
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 1425
    return-void
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 1396
    return-void
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 1234
    return-void
.end method
