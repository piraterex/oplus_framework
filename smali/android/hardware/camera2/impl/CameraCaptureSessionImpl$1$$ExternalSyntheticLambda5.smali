.class public final synthetic Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

.field public final synthetic blacklist f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public final synthetic blacklist f$2:Landroid/hardware/camera2/CaptureRequest;

.field public final synthetic blacklist f$3:J

.field public final synthetic blacklist f$4:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$3:J

    iput-wide p6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$4:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 7

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$2:Landroid/hardware/camera2/CaptureRequest;

    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$3:J

    iget-wide v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda5;->f$4:J

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureStarted$0$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;JJ)V

    return-void
.end method
