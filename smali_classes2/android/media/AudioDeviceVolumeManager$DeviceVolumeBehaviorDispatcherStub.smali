.class final Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;
.super Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;
.source "AudioDeviceVolumeManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceVolumeBehaviorDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager;)V
    .locals 0

    .line 323
    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {p0}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioDeviceVolumeManager;Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchDeviceVolumeBehaviorChanged$0(Landroid/media/AudioDeviceAttributes;ILandroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .locals 0
    .param p0, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p1, "volumeBehavior"    # I
    .param p2, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;

    .line 337
    invoke-interface {p2, p0, p1}, Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;->onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volumeBehavior"    # I

    .line 336
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeBehaviorChangedListenerMgr(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceAttributes;I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 338
    return-void
.end method

.method public blacklist register(Z)V
    .locals 1
    .param p1, "register"    # Z

    .line 327
    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$smgetService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/media/IAudioService;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
