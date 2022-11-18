.class public final synthetic Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda0;->f$1:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->lambda$onCaptureStarted$0$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler(J)V

    return-void
.end method
