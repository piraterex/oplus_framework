.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iput p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureSequenceCompleted$2$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler(I)V

    return-void
.end method
