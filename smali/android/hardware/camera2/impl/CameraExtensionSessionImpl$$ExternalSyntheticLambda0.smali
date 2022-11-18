.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->lambda$notifyConfigurationSuccess$2$android-hardware-camera2-impl-CameraExtensionSessionImpl()V

    return-void
.end method
