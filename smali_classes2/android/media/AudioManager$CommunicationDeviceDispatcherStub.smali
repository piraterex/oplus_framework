.class final Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;
.super Landroid/media/ICommunicationDeviceDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommunicationDeviceDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 8397
    iput-object p1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/ICommunicationDeviceDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$CommunicationDeviceDispatcherStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchCommunicationDeviceChanged$0(Landroid/media/AudioDeviceInfo;Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;)V
    .locals 0
    .param p0, "device"    # Landroid/media/AudioDeviceInfo;
    .param p1, "listener"    # Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;

    .line 8417
    invoke-interface {p1, p0}, Landroid/media/AudioManager$OnCommunicationDeviceChangedListener;->onCommunicationDeviceChanged(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchCommunicationDeviceChanged(I)V
    .locals 3
    .param p1, "portId"    # I

    .line 8415
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/media/AudioManager;->getDeviceForPortId(II)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    .line 8416
    .local v0, "device":Landroid/media/AudioDeviceInfo;
    iget-object v1, p0, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmCommDeviceChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/media/AudioManager$CommunicationDeviceDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-virtual {v1, v2}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 8418
    return-void
.end method

.method public blacklist register(Z)V
    .locals 1
    .param p1, "register"    # Z

    .line 8403
    if-eqz p1, :cond_0

    .line 8404
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V

    goto :goto_0

    .line 8406
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8410
    :goto_0
    goto :goto_1

    .line 8408
    :catch_0
    move-exception v0

    .line 8409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 8411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
