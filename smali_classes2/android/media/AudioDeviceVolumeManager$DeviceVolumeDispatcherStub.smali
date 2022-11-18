.class final Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;
.super Landroid/media/IAudioDeviceVolumeDispatcher$Stub;
.source "AudioDeviceVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeviceVolumeDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioDeviceVolumeManager;

    .line 128
    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {p0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchDeviceVolumeAdjusted$1(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .locals 1
    .param p0, "listenerInfo"    # Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
    .param p3, "direction"    # I
    .param p4, "mode"    # I

    .line 172
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;->onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchDeviceVolumeChanged$0(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .locals 1
    .param p0, "listenerInfo"    # Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;

    .line 156
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;->onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .locals 11
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
    .param p3, "direction"    # I
    .param p4, "mode"    # I

    .line 166
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 168
    .local v1, "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    .line 170
    .local v2, "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3, p1}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v9, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;

    move-object v3, v10

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    .end local v2    # "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    :cond_0
    goto :goto_0

    .line 176
    :cond_1
    return-void

    .line 168
    .end local v1    # "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist dispatchDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;

    .line 150
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 152
    .local v1, "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    .line 154
    .local v2, "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3, p1}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 158
    .end local v2    # "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    return-void

    .line 152
    .end local v1    # "volumeListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDeviceVolumeManager$ListenerInfo;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist register(ZLandroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V
    .locals 7
    .param p1, "register"    # Z
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p4, "handlesVolumeAdjustment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 137
    .local p3, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$smgetService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmPackageName(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    .line 137
    move v1, p1

    move-object v2, p0

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 144
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
