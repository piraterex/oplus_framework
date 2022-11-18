.class final Landroid/media/AudioManager$ModeDispatcherStub;
.super Landroid/media/IAudioModeDispatcher$Stub;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ModeDispatcherStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 3307
    iput-object p1, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioModeDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchAudioModeChanged$0(ILandroid/media/AudioManager$OnModeChangedListener;)V
    .locals 0
    .param p0, "mode"    # I
    .param p1, "listener"    # Landroid/media/AudioManager$OnModeChangedListener;

    .line 3325
    invoke-interface {p1, p0}, Landroid/media/AudioManager$OnModeChangedListener;->onModeChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist dispatchAudioModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 3325
    iget-object v0, p0, Landroid/media/AudioManager$ModeDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmModeChangedListenerMgr(Landroid/media/AudioManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioManager$ModeDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/media/AudioManager$ModeDispatcherStub$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    .line 3326
    return-void
.end method

.method public blacklist register(Z)V
    .locals 1
    .param p1, "register"    # Z

    .line 3313
    if-eqz p1, :cond_0

    .line 3314
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V

    goto :goto_0

    .line 3316
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3320
    :goto_0
    goto :goto_1

    .line 3318
    :catch_0
    move-exception v0

    .line 3319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3321
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
