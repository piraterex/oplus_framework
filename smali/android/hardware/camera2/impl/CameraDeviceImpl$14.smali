.class Landroid/hardware/camera2/impl/CameraDeviceImpl$14;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2553
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 2556
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2557
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmDeviceCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$14;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    .line 2560
    :cond_0
    return-void
.end method
