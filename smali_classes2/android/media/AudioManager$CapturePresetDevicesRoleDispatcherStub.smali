.class final Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;
.super Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CapturePresetDevicesRoleDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 2508
    iput-object p1, p0, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/ICapturePresetDevicesRoleDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchDevicesRoleChanged$0(Landroid/media/AudioManager$DevRoleListenerInfo;ILjava/util/List;)V
    .locals 1
    .param p0, "info"    # Landroid/media/AudioManager$DevRoleListenerInfo;
    .param p1, "capturePreset"    # I
    .param p2, "devices"    # Ljava/util/List;

    .line 2540
    iget-object v0, p0, Landroid/media/AudioManager$DevRoleListenerInfo;->mListener:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;->onPreferredDevicesForCapturePresetChanged(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchDevicesRoleChanged(IILjava/util/List;)V
    .locals 9
    .param p1, "capturePreset"    # I
    .param p2, "role"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)V"
        }
    .end annotation

    .line 2514
    .local p3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    iget-object v0, p0, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmDevRoleForCapturePresetListeners(Landroid/media/AudioManager;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2515
    .local v0, "listenersObj":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2516
    return-void

    .line 2518
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 2521
    :pswitch_0
    move-object v1, v0

    check-cast v1, Landroid/media/AudioManager$DevRoleListeners;

    .line 2526
    .local v1, "listeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;"
    invoke-static {v1}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2527
    :try_start_0
    invoke-static {v1}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2528
    monitor-exit v2

    return-void

    .line 2530
    :cond_1
    invoke-static {v1}, Landroid/media/AudioManager$DevRoleListeners;->-$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2532
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2533
    .local v3, "prefDevListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$DevRoleListenerInfo<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2538
    .local v4, "ident":J
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager$DevRoleListenerInfo;

    .line 2539
    .local v6, "info":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;"
    iget-object v7, v6, Landroid/media/AudioManager$DevRoleListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6, p1, p3}, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioManager$DevRoleListenerInfo;ILjava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2542
    .end local v6    # "info":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;"
    goto :goto_0

    .line 2544
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2545
    nop

    .line 2546
    .end local v1    # "listeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;"
    .end local v3    # "prefDevListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$DevRoleListenerInfo<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;>;"
    .end local v4    # "ident":J
    goto :goto_1

    .line 2544
    .restart local v1    # "listeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;"
    .restart local v3    # "prefDevListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$DevRoleListenerInfo<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;>;"
    .restart local v4    # "ident":J
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2545
    throw v2

    .line 2533
    .end local v3    # "prefDevListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$DevRoleListenerInfo<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;>;"
    .end local v4    # "ident":J
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 2550
    .end local v1    # "listeners":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<Landroid/media/AudioManager$OnPreferredDevicesForCapturePresetChangedListener;>;"
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
