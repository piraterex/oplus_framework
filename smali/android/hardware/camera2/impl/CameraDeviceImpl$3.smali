.class Landroid/hardware/camera2/impl/CameraDeviceImpl$3;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
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

    .line 210
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    .line 217
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    move-object v0, v2

    .line 218
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onActive(Landroid/hardware/camera2/CameraDevice;)V

    .line 222
    :cond_1
    return-void

    .line 218
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
