.class public final Landroid/companion/virtual/audio/VirtualAudioDevice;
.super Ljava/lang/Object;
.source "VirtualAudioDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    }
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

.field private final blacklist mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p3, "virtualDisplay"    # Landroid/hardware/display/VirtualDisplay;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 83
    iput-object p3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 84
    iput-object p4, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    .line 85
    iput-object p5, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    .line 86
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 163
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->close()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 168
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;
    .locals 1

    .line 156
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;
    .locals 4
    .param p1, "captureFormat"    # Landroid/media/AudioFormat;

    .line 127
    const-string v0, "captureFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start an audio capture while a session is ongoing. Call close() on this device first to end the previous session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-nez v0, :cond_2

    .line 134
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/audio/VirtualAudioSession;-><init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 138
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 140
    invoke-virtual {v2}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    move-result-object v3

    .line 138
    invoke-interface {v0, v1, v2, v3}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;

    move-result-object v0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;
    .locals 4
    .param p1, "injectionFormat"    # Landroid/media/AudioFormat;

    .line 96
    const-string v0, "injectionFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start an audio injection while a session is ongoing. Call close() on this device first to end the previous session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/virtual/audio/VirtualAudioSession;-><init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 107
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    .line 109
    invoke-virtual {v2}, Landroid/companion/virtual/audio/VirtualAudioSession;->getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    move-result-object v3

    .line 107
    invoke-interface {v0, v1, v2, v3}, Landroid/companion/virtual/IVirtualDevice;->onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioDevice;->mOngoingSession:Landroid/companion/virtual/audio/VirtualAudioSession;

    invoke-virtual {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;

    move-result-object v0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
