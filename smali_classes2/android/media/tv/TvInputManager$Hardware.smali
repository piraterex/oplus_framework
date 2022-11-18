.class public final Landroid/media/tv/TvInputManager$Hardware;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hardware"
.end annotation


# instance fields
.field private final greylist-max-o mInterface:Landroid/media/tv/ITvInputHardware;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetInterface(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Hardware;->getInterface()Landroid/media/tv/ITvInputHardware;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/media/tv/ITvInputHardware;)V
    .locals 0
    .param p1, "hardwareInterface"    # Landroid/media/tv/ITvInputHardware;

    .line 3286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3287
    iput-object p1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    .line 3288
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;)V

    return-void
.end method

.method private greylist-max-o getInterface()Landroid/media/tv/ITvInputHardware;
    .locals 1

    .line 3291
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-object v0
.end method


# virtual methods
.method public greylist dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3313
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist overrideAudioSink(ILjava/lang/String;III)V
    .locals 6
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    .line 3329
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3333
    nop

    .line 3334
    return-void

    .line 3331
    :catch_0
    move-exception v0

    .line 3332
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist overrideAudioSink(Landroid/media/AudioDeviceInfo;III)V
    .locals 6
    .param p1, "device"    # Landroid/media/AudioDeviceInfo;
    .param p2, "samplingRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "format"    # I

    .line 3348
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    .line 3351
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    .line 3352
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 3350
    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3355
    nop

    .line 3356
    return-void

    .line 3353
    :catch_0
    move-exception v0

    .line 3354
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setStreamVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .line 3304
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputHardware;->setStreamVolume(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3307
    nop

    .line 3308
    return-void

    .line 3305
    :catch_0
    move-exception v0

    .line 3306
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .line 3296
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputHardware;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3297
    :catch_0
    move-exception v0

    .line 3298
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
