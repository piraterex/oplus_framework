.class public final synthetic Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

.field public final synthetic blacklist f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput p3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$2:I

    iput-wide p4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$3:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$1:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$2:I

    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1$$ExternalSyntheticLambda7;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->lambda$onCaptureSequenceCompleted$5$android-hardware-camera2-impl-CameraCaptureSessionImpl$1(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;IJ)V

    return-void
.end method
