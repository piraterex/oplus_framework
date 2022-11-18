.class Landroid/hardware/camera2/impl/CameraDeviceImpl$9;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;->switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field final synthetic blacklist val$offlineStreamIds:Ljava/util/HashSet;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 1034
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$offlineStreamIds:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 1042
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v2

    .line 1043
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->val$offlineStreamIds:Ljava/util/HashSet;

    .line 1045
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    .line 1044
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 1045
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    .line 1046
    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 1042
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->switchToOffline(Landroid/hardware/camera2/ICameraDeviceCallbacks;[I)Landroid/hardware/camera2/ICameraOfflineSession;

    move-result-object v1

    .line 1047
    .local v1, "remoteOfflineSession":Landroid/hardware/camera2/ICameraOfflineSession;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->setRemoteSession(Landroid/hardware/camera2/ICameraOfflineSession;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "remoteOfflineSession":Landroid/hardware/camera2/ICameraOfflineSession;
    goto :goto_0

    .line 1051
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1048
    :catch_0
    move-exception v1

    .line 1049
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->notifyFailedSwitch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1051
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 1052
    nop

    .line 1053
    return-void

    .line 1051
    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 1052
    throw v1
.end method
