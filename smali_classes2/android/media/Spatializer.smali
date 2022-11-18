.class public Landroid/media/Spatializer;
.super Ljava/lang/Object;
.source "Spatializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Spatializer$SpatializerOutputDispatcherStub;,
        Landroid/media/Spatializer$SpatializerPoseDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;,
        Landroid/media/Spatializer$SpatializerInfoDispatcherStub;,
        Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;,
        Landroid/media/Spatializer$OnSpatializerOutputChangedListener;,
        Landroid/media/Spatializer$OnHeadTrackerAvailableListener;,
        Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;,
        Landroid/media/Spatializer$OnSpatializerStateChangedListener;,
        Landroid/media/Spatializer$HeadTrackingModeSupported;,
        Landroid/media/Spatializer$HeadTrackingModeSet;,
        Landroid/media/Spatializer$HeadTrackingMode;,
        Landroid/media/Spatializer$ImmersiveAudioLevel;
    }
.end annotation


# static fields
.field public static final whitelist HEAD_TRACKING_MODE_DISABLED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_RELATIVE_DEVICE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_RELATIVE_WORLD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist HEAD_TRACKING_MODE_UNSUPPORTED:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist SPATIALIZER_IMMERSIVE_LEVEL_MCHAN_BED_PLUS_OBJECTS:I = 0x2

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_MULTICHANNEL:I = 0x1

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_NONE:I = 0x0

.field public static final whitelist SPATIALIZER_IMMERSIVE_LEVEL_OTHER:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Spatializer"


# instance fields
.field private final blacklist mAm:Landroid/media/AudioManager;

.field private final blacklist mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackerAvailableListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

.field private blacklist mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnSpatializerOutputChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOutputListenerLock:Ljava/lang/Object;

.field private blacklist mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

.field private blacklist mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPoseListenerLock:Ljava/lang/Object;

.field private final blacklist mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnSpatializerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeadTrackerListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOutputListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPoseListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPoseListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method protected constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 1
    .param p1, "am"    # Landroid/media/AudioManager;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 963
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 1004
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 1030
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    .line 1061
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    .line 64
    return-void
.end method

.method public static final blacklist headtrackingModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .line 340
    packed-switch p0, :pswitch_data_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "head tracking mode unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 350
    :pswitch_0
    const-string v0, "HEAD_TRACKING_MODE_RELATIVE_DEVICE"

    return-object v0

    .line 348
    :pswitch_1
    const-string v0, "HEAD_TRACKING_MODE_RELATIVE_WORLD"

    return-object v0

    .line 346
    :pswitch_2
    const-string v0, "HEAD_TRACKING_MODE_OTHER"

    return-object v0

    .line 344
    :pswitch_3
    const-string v0, "HEAD_TRACKING_MODE_DISABLED"

    return-object v0

    .line 342
    :pswitch_4
    const-string v0, "HEAD_TRACKING_MODE_UNSUPPORTED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 3
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 577
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling addSpatializerCompatibleAudioDevice(), "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist addOnHeadTrackerAvailableListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    .line 212
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnHeadTrackerAvailableListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 215
    return-void
.end method

.method public whitelist addOnHeadTrackingModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 751
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnHeadTrackingModeChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 754
    return-void
.end method

.method public whitelist addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 533
    iget-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda2;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnSpatializerStateChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 535
    return-void
.end method

.method public whitelist canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .locals 3
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;

    .line 514
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 515
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFormat;

    .line 514
    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error querying canBeSpatialized for attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spatializer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist clearOnHeadToSoundstagePoseUpdatedListener()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 808
    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 813
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 815
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 816
    iput-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    .line 817
    monitor-exit v0

    .line 818
    return-void

    .line 810
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No listener to clear"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    throw v1

    .line 817
    .restart local p0    # "this":Landroid/media/Spatializer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist clearOnSpatializerOutputChangedListener()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 944
    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 949
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 950
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 951
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 952
    iput-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    .line 953
    monitor-exit v0

    .line 954
    return-void

    .line 946
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No listener to clear"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    throw v1

    .line 953
    .restart local p0    # "this":Landroid/media/Spatializer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getCompatibleAudioDevices()Ljava/util/List;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 558
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error querying getSpatializerCompatibleAudioDevices(),  returning empty list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1
.end method

.method public whitelist getDesiredHeadTrackingMode()I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 673
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getDesiredHeadTrackingMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getDesiredHeadTrackingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    const/4 v1, -0x2

    return v1
.end method

.method public whitelist getEffectParameter(I[B)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 875
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getSpatializerParameter(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    goto :goto_0

    .line 878
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getEffectParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 881
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist getHeadTrackingMode()I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 654
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getActualHeadTrackingMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getActualHeadTrackingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    const/4 v1, -0x2

    return v1
.end method

.method public whitelist getImmersiveAudioLevel()I
    .locals 2

    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, "level":I
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getSpatializerImmersiveAudioLevel()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 369
    return v0
.end method

.method public whitelist getOutput()I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 896
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSpatializerOutput()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling getSpatializerOutput"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getSupportedHeadTrackingModes()Ljava/util/List;
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 694
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getSupportedHeadTrackingModes()[I

    move-result-object v1

    .line 695
    .local v1, "modes":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 696
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v1, v4

    .line 697
    .local v5, "mode":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    nop

    .end local v5    # "mode":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 699
    :cond_0
    return-object v2

    .line 700
    .end local v1    # "modes":[I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 701
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Spatializer"

    const-string v3, "Error calling getSupportedHeadTrackModes"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public whitelist hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .locals 1
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 144
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAvailable()Z
    .locals 3

    .line 104
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isSpatializerAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error querying isSpatializerAvailable, returning false"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .locals 1
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 3

    .line 80
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isSpatializerEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error querying isSpatializerEnabled, returning false"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isHeadTrackerAvailable()Z
    .locals 1

    .line 197
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHeadTrackerAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .locals 1
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 179
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$addOnHeadTrackerAvailableListener$0$android-media-Spatializer()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    .line 214
    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub-IA;)V

    return-object v0
.end method

.method synthetic blacklist lambda$addOnHeadTrackingModeChangedListener$2$android-media-Spatializer()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    .line 753
    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub-IA;)V

    return-object v0
.end method

.method synthetic blacklist lambda$addOnSpatializerStateChangedListener$1$android-media-Spatializer()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    .line 534
    new-instance v0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerInfoDispatcherStub-IA;)V

    return-object v0
.end method

.method public whitelist recenterHeadTracker()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 733
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->recenterHeadTracker()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    goto :goto_0

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling recenterHeadTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 3
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 594
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling removeSpatializerCompatibleAudioDevice(), "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist removeOnHeadTrackerAvailableListener(Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/Spatializer$OnHeadTrackerAvailableListener;

    .line 224
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnHeadTrackerAvailableListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public whitelist removeOnHeadTrackingModeChangedListener(Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 766
    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnHeadTrackingModeChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public whitelist removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 545
    iget-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnSpatializerStateChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public whitelist setDesiredHeadTrackingMode(I)V
    .locals 3
    .param p1, "mode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 719
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setDesiredHeadTrackingMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDesiredHeadTrackingMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spatializer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setEffectParameter(I[B)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 855
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSpatializerParameter(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    goto :goto_0

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling setEffectParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 384
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSpatializerEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling setSpatializerEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setGlobalTransform([F)V
    .locals 3
    .param p1, "transform"    # [F
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 833
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 838
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSpatializerGlobalTransform([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    goto :goto_0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Spatializer"

    const-string v2, "Error calling setGlobalTransform"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 842
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 834
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transform array must be of size 6, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 162
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setOnHeadToSoundstagePoseUpdatedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 782
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_0

    .line 788
    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 790
    new-instance v1, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerPoseDispatcherStub-IA;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v3, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {v1, v3}, Landroid/media/IAudioService;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    goto :goto_0

    .line 793
    :catch_0
    move-exception v1

    .line 794
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    iput-object v2, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 795
    iput-object v2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    .line 797
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 798
    return-void

    .line 786
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to overwrite existing listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;
    throw v1

    .line 797
    .restart local p0    # "this":Landroid/media/Spatializer;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist setOnSpatializerOutputChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerOutputChangedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/Spatializer$OnSpatializerOutputChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 916
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_0

    .line 922
    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 924
    new-instance v1, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerOutputDispatcherStub-IA;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v3, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {v1, v3}, Landroid/media/IAudioService;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    .line 928
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-virtual {p0}, Landroid/media/Spatializer;->getOutput()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->dispatchSpatializerOutputChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    goto :goto_0

    .line 929
    :catch_0
    move-exception v1

    .line 930
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    iput-object v2, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    .line 931
    iput-object v2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    .line 933
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 934
    return-void

    .line 920
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to overwrite existing listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/Spatializer;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/media/Spatializer$OnSpatializerOutputChangedListener;
    throw v1

    .line 933
    .restart local p0    # "this":Landroid/media/Spatializer;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/media/Spatializer$OnSpatializerOutputChangedListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
