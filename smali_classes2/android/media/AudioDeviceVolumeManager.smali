.class public Landroid/media/AudioDeviceVolumeManager;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;,
        Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;,
        Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;,
        Landroid/media/AudioDeviceVolumeManager$ListenerInfo;,
        Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;,
        Landroid/media/AudioDeviceVolumeManager$VolumeAdjustmentMode;
    }
.end annotation


# static fields
.field public static final blacklist ADJUST_MODE_END:I = 0x2

.field public static final blacklist ADJUST_MODE_NORMAL:I = 0x0

.field public static final blacklist ADJUST_MODE_START:I = 0x1

.field private static blacklist sService:Landroid/media/IAudioService;


# instance fields
.field private final blacklist mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

.field private final blacklist mDeviceVolumeListenerLock:Ljava/lang/Object;

.field private blacklist mDeviceVolumeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceVolumeManager$ListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeBehaviorChangedListenerMgr(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$LazyListenerManager;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetService()Landroid/media/IAudioService;
    .locals 1

    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    return-object v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    .line 249
    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mPackageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private static blacklist getService()Landroid/media/IAudioService;
    .locals 2

    .line 342
    sget-object v0, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 343
    return-object v0

    .line 345
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 346
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/AudioDeviceVolumeManager;->sService:Landroid/media/IAudioService;

    .line 347
    return-object v1
.end method

.method static synthetic blacklist lambda$setDeviceAbsoluteMultiVolumeBehavior$0(Landroid/media/AudioDeviceAttributes;Landroid/media/AudioDeviceVolumeManager$ListenerInfo;)Z
    .locals 1
    .param p0, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p1, "info"    # Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    .line 238
    iget-object v0, p1, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, p0}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist volumeBehaviorName(I)Ljava/lang/String;
    .locals 2
    .param p0, "behavior"    # I

    .line 307
    packed-switch p0, :pswitch_data_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid volume behavior "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :pswitch_0
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE_MULTI_MODE"

    return-object v0

    .line 315
    :pswitch_1
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_ABSOLUTE"

    return-object v0

    .line 313
    :pswitch_2
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_FIXED"

    return-object v0

    .line 311
    :pswitch_3
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_FULL"

    return-object v0

    .line 309
    :pswitch_4
    const-string v0, "DEVICE_VOLUME_BEHAVIOR_VARIABLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    const-string v2, "addOnDeviceVolumeBehaviorChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 284
    return-void
.end method

.method synthetic blacklist lambda$addOnDeviceVolumeBehaviorChangedListener$1$android-media-AudioDeviceVolumeManager()Landroid/media/CallbackUtil$DispatcherStub;
    .locals 2

    .line 283
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub-IA;)V

    return-object v0
.end method

.method public blacklist removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;

    .line 297
    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeBehaviorChangedListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnDeviceVolumeBehaviorChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public blacklist setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V
    .locals 4
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .param p5, "handlesVolumeAdjustment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;",
            "Z)V"
        }
    .end annotation

    .line 222
    .local p2, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    invoke-direct {v0, p4, p3, p1, p5}, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;-><init>(Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceAttributes;Z)V

    .line 229
    .local v0, "listenerInfo":Landroid/media/AudioDeviceVolumeManager$ListenerInfo;
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    .line 233
    :cond_0
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 234
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    if-nez v2, :cond_2

    .line 235
    new-instance v2, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    invoke-direct {v2, p0}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    iput-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    goto :goto_0

    .line 238
    :cond_1
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Landroid/media/AudioDeviceVolumeManager$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceAttributes;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 240
    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v2, p0, Landroid/media/AudioDeviceVolumeManager;->mDeviceVolumeDispatcherStub:Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, p2, p5}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->register(ZLandroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V

    .line 242
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V
    .locals 8
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volume"    # Landroid/media/VolumeInfo;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .param p5, "handlesVolumeAdjustment"    # Z

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v0, "volumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/VolumeInfo;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteMultiVolumeBehavior(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V

    .line 200
    return-void
.end method
