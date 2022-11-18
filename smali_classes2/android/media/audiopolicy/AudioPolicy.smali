.class public Landroid/media/audiopolicy/AudioPolicy;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioPolicy$PolicyStatus;,
        Landroid/media/audiopolicy/AudioPolicy$EventHandler;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;,
        Landroid/media/audiopolicy/AudioPolicy$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FOCUS_POLICY_DUCKING_DEFAULT:I = 0x0

.field public static final whitelist FOCUS_POLICY_DUCKING_IN_APP:I = 0x0

.field public static final whitelist FOCUS_POLICY_DUCKING_IN_POLICY:I = 0x1

.field private static final greylist-max-o MSG_FOCUS_ABANDON:I = 0x5

.field private static final greylist-max-o MSG_FOCUS_GRANT:I = 0x1

.field private static final greylist-max-o MSG_FOCUS_LOSS:I = 0x2

.field private static final greylist-max-o MSG_FOCUS_REQUEST:I = 0x4

.field private static final greylist-max-o MSG_MIX_STATE_UPDATE:I = 0x3

.field private static final greylist-max-o MSG_POLICY_STATUS_CHANGE:I = 0x0

.field private static final greylist-max-o MSG_VOL_ADJUST:I = 0x6

.field public static final whitelist POLICY_STATUS_REGISTERED:I = 0x2

.field public static final whitelist POLICY_STATUS_UNREGISTERED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioPolicy"

.field private static greylist-max-o sService:Landroid/media/IAudioService;


# instance fields
.field private blacklist mCaptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

.field private greylist-max-o mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

.field private blacklist mInjectors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mIsFocusPolicy:Z

.field private blacklist mIsTestFocusPolicy:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final blacklist mProjection:Landroid/media/projection/MediaProjection;

.field private greylist-max-o mRegistrationId:Ljava/lang/String;

.field private greylist-max-o mStatus:I

.field private greylist-max-o mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

.field private final greylist-max-o mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;
    .locals 0

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolCb(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monPolicyStatusChange(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->onPolicyStatusChange()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(ILjava/lang/Object;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;)V
    .locals 2
    .param p1, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "fl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .param p5, "sl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    .param p6, "isFocusPolicy"    # Z
    .param p7, "isTestFocusPolicy"    # Z
    .param p8, "vc"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
    .param p9, "projection"    # Landroid/media/projection/MediaProjection;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    .line 959
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$1;

    invoke-direct {v0, p0}, Landroid/media/audiopolicy/AudioPolicy$1;-><init>(Landroid/media/audiopolicy/AudioPolicy;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 146
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    .line 148
    iput-object p2, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    .line 149
    if-nez p3, :cond_0

    .line 150
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 152
    :cond_0
    if-eqz p3, :cond_1

    .line 153
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;-><init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    .line 156
    const-string v0, "AudioPolicy"

    const-string v1, "No event handler due to looper without a thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    iput-object p4, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    .line 159
    iput-object p5, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .line 160
    iput-boolean p6, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    .line 161
    iput-boolean p7, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsTestFocusPolicy:Z

    .line 162
    iput-object p8, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    .line 163
    iput-object p9, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    .line 164
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;Landroid/media/audiopolicy/AudioPolicy-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method private static greylist-max-o addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;
    .locals 2
    .param p0, "mix"    # Landroid/media/audiopolicy/AudioMix;

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 637
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 640
    :cond_0
    const-string v0, "AudioPolicy"

    const-string v1, "Null context, checking permission via ActivityManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 642
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 644
    .local v1, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private greylist-max-o checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V
    .locals 2
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .param p2, "forTrack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 652
    if-nez p1, :cond_1

    .line 653
    if-eqz p2, :cond_0

    const-string v0, "Invalid null AudioMix for AudioTrack creation"

    goto :goto_0

    .line 654
    :cond_0
    const-string v0, "Invalid null AudioMix for AudioRecord creation"

    :goto_0
    nop

    .line 655
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 657
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 660
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 664
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 665
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AudioMix: not defined for being a recording source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :cond_3
    :goto_1
    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 669
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AudioMix: not defined for capturing playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_5
    :goto_2
    return-void

    .line 662
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AudioMix: not defined for loop back"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mix: not part of this policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getService()Landroid/media/IAudioService;
    .locals 2

    .line 1106
    sget-object v0, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_0

    .line 1107
    return-object v0

    .line 1109
    :cond_0
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1110
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    .line 1111
    return-object v1
.end method

.method private blacklist isCallRedirectionPolicy()Z
    .locals 4

    .line 623
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 625
    .local v2, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 626
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 628
    .end local v2    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_0
    goto :goto_0

    .line 629
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isLoopbackRenderPolicy()Z
    .locals 3

    .line 616
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 619
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$isLoopbackRenderPolicy$0(Landroid/media/audiopolicy/AudioMix;)Z
    .locals 2
    .param p0, "mix"    # Landroid/media/audiopolicy/AudioMix;

    .line 617
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o onPolicyStatusChange()V
    .locals 2

    .line 944
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    :try_start_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    if-nez v1, :cond_0

    .line 946
    monitor-exit v0

    return-void

    .line 948
    :cond_0
    nop

    .line 949
    .local v1, "l":Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onStatusChange()V

    .line 951
    return-void

    .line 949
    .end local v1    # "l":Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private greylist-max-o policyReadyToUse()Z
    .locals 7

    .line 577
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_0
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 579
    const-string v1, "AudioPolicy"

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    monitor-exit v0

    return v3

    .line 582
    :cond_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 583
    const-string v1, "AudioPolicy"

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    monitor-exit v0

    return v3

    .line 586
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 590
    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 592
    .local v0, "canModifyAudioRouting":Z
    :goto_0
    const-string v2, "android.permission.CALL_AUDIO_INTERCEPTION"

    .line 593
    invoke-direct {p0, v2}, Landroid/media/audiopolicy/AudioPolicy;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 598
    .local v2, "canInterceptCallAudio":Z
    :goto_1
    :try_start_1
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v3

    .line 602
    .local v4, "canProjectAudio":Z
    :goto_2
    nop

    .line 604
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isLoopbackRenderPolicy()Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v4, :cond_7

    .line 605
    :cond_5
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isCallRedirectionPolicy()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_7

    :cond_6
    if-nez v0, :cond_7

    .line 607
    const-string v1, "AudioPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot use AudioPolicy for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", needs MODIFY_AUDIO_ROUTING or MediaProjection that can project audio."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 607
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    return v3

    .line 612
    :cond_7
    return v1

    .line 599
    .end local v4    # "canProjectAudio":Z
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "AudioPolicy"

    const-string v4, "Failed to check if MediaProjection#canProjectAudio"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 586
    .end local v0    # "canModifyAudioRouting":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "canInterceptCallAudio":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private greylist-max-o sendMsg(I)V
    .locals 1
    .param p1, "msg"    # I

    .line 1090
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendEmptyMessage(I)Z

    .line 1093
    :cond_0
    return-void
.end method

.method private greylist-max-o sendMsg(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "i"    # I

    .line 1096
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_0

    .line 1097
    const/4 v1, 0x0

    .line 1098
    invoke-virtual {v0, p1, p3, v1, p2}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1097
    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist attachMixes(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 337
    .local p1, "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    if-eqz p1, :cond_4

    .line 340
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v1, "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 346
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    if-eqz v3, :cond_0

    .line 349
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    nop

    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    goto :goto_0

    .line 347
    .restart local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal null AudioMix in attachMixes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v2

    .line 352
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :cond_1
    new-instance v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    .line 353
    .local v2, "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/media/IAudioService;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 356
    .local v4, "status":I
    if-nez v4, :cond_2

    .line 357
    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v5, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->add(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    :cond_2
    :try_start_2
    monitor-exit v0

    return v4

    .line 360
    .end local v4    # "status":I
    :catch_0
    move-exception v4

    .line 361
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AudioPolicy"

    const-string v6, "Dead object in attachMixes"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    const/4 v5, -0x1

    monitor-exit v0

    return v5

    .line 342
    .end local v1    # "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    .end local v2    # "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot alter unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v1

    .line 364
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 338
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null list of AudioMix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o cb()Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 1

    .line 957
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method public whitelist createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;
    .locals 8
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 777
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    const-string v0, "AudioPolicy"

    const-string v1, "Cannot create AudioRecord sink for AudioMix"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const/4 v0, 0x0

    return-object v0

    .line 781
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    .line 784
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    .line 786
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    .line 785
    invoke-static {v2}, Landroid/media/AudioFormat;->inChannelMaskFromOutChannelMask(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 789
    .local v1, "mixFormat":Landroid/media/AudioFormat;
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0x8

    .line 790
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 791
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const-string v3, "fixedVolume"

    .line 792
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 793
    .local v2, "ab":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    .line 797
    :cond_1
    new-instance v3, Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 799
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v5

    const/16 v6, 0xc

    .line 801
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v7

    .line 799
    invoke-static {v5, v6, v7}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    invoke-direct {v3, v4, v1, v5, v0}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    move-object v0, v3

    .line 804
    .local v0, "ar":Landroid/media/AudioRecord;
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 805
    :try_start_0
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 806
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    .line 808
    :cond_2
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    monitor-exit v3

    .line 810
    return-object v0

    .line 809
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public whitelist createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;
    .locals 9
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 825
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    const-string v0, "AudioPolicy"

    const-string v1, "Cannot create AudioTrack source for AudioMix"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v0, 0x0

    return-object v0

    .line 829
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    .line 831
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xf

    .line 832
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 833
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 834
    .local v1, "ab":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    .line 837
    :cond_1
    new-instance v2, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 838
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v5

    .line 839
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    .line 840
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v7

    .line 839
    invoke-static {v3, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 844
    .local v2, "at":Landroid/media/AudioTrack;
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 845
    :try_start_0
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 846
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    .line 848
    :cond_2
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    monitor-exit v3

    .line 850
    return-object v2

    .line 849
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist detachMixes(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 376
    .local p1, "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    if-eqz p1, :cond_4

    .line 379
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    .local v1, "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 385
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    nop

    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    goto :goto_0

    .line 386
    .restart local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal null AudioMix in detachMixes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v2

    .line 392
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :cond_1
    new-instance v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    .line 393
    .local v2, "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/media/IAudioService;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 396
    .local v4, "status":I
    if-nez v4, :cond_2

    .line 397
    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v5, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->remove(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :cond_2
    :try_start_2
    monitor-exit v0

    return v4

    .line 400
    .end local v4    # "status":I
    :catch_0
    move-exception v4

    .line 401
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AudioPolicy"

    const-string v6, "Dead object in detachMixes"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    const/4 v5, -0x1

    monitor-exit v0

    return v5

    .line 381
    .end local v1    # "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    .end local v2    # "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot alter unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v1

    .line 404
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 377
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null list of AudioMix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;
    .locals 1

    .line 123
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object v0
.end method

.method public whitelist getFocusDuckingBehavior()I
    .locals 1

    .line 679
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    return v0
.end method

.method public whitelist getFocusStack()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 736
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getFocusStack()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMediaProjection()Landroid/media/projection/MediaProjection;
    .locals 1

    .line 136
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public blacklist getRegistration()Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 1

    .line 896
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    return v0
.end method

.method public greylist-max-o hasFocusListener()Z
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist invalidateCaptorsAndInjectors()V
    .locals 5

    .line 857
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 862
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 863
    .local v2, "weakTrack":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioTrack;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_1

    .line 865
    goto :goto_2

    .line 869
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    .line 870
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 874
    goto :goto_1

    .line 871
    :catch_0
    move-exception v4

    .line 875
    .end local v2    # "weakTrack":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioTrack;>;"
    .end local v3    # "track":Landroid/media/AudioTrack;
    :goto_1
    goto :goto_0

    .line 877
    :cond_2
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 878
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 879
    .local v2, "weakRecord":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioRecord;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 880
    .local v3, "record":Landroid/media/AudioRecord;
    if-nez v3, :cond_3

    .line 881
    goto :goto_5

    .line 885
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 889
    goto :goto_4

    .line 886
    :catch_1
    move-exception v4

    .line 890
    .end local v2    # "weakRecord":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioRecord;>;"
    .end local v3    # "record":Landroid/media/AudioRecord;
    :goto_4
    goto :goto_3

    .line 892
    :cond_4
    :goto_5
    :try_start_4
    monitor-exit v0

    .line 893
    return-void

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public greylist-max-o isFocusPolicy()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    return v0
.end method

.method public blacklist isTestFocusPolicy()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsTestFocusPolicy:Z

    return v0
.end method

.method public greylist-max-o isVolumeController()Z
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist removeUidDeviceAffinity(I)Z
    .locals 6
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 464
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_0
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 468
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .local v1, "service":Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/media/IAudioService;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .local v3, "status":I
    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :try_start_2
    monitor-exit v0

    return v2

    .line 472
    .end local v3    # "status":I
    :catch_0
    move-exception v3

    .line 473
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioPolicy"

    const-string v5, "Dead object in removeUidDeviceAffinity"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    monitor-exit v0

    return v2

    .line 466
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "uid":I
    throw v1

    .line 476
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "uid":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist removeUserIdDeviceAffinity(I)Z
    .locals 6
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 489
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 493
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    .local v1, "service":Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/media/IAudioService;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    .local v3, "status":I
    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    :try_start_2
    monitor-exit v0

    return v2

    .line 497
    .end local v3    # "status":I
    :catch_0
    move-exception v3

    .line 498
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioPolicy"

    const-string v5, "Dead object in removeUserIdDeviceAffinity"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    monitor-exit v0

    return v2

    .line 491
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "userId":I
    throw v1

    .line 501
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "userId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist reset()V
    .locals 1

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicyConfig;->reset()V

    .line 556
    return-void
.end method

.method public whitelist sendFocusLoss(Landroid/media/AudioFocusInfo;)Z
    .locals 2
    .param p1, "focusLoser"    # Landroid/media/AudioFocusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 757
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFocusDuckingBehavior(I)I
    .locals 5
    .param p1, "behavior"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 696
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ducking behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 701
    :try_start_0
    iget v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 705
    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 708
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot handle ducking without an audio focus listener"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "behavior":I
    throw v0

    .line 711
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "behavior":I
    :cond_3
    :goto_1
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    .local v0, "service":Landroid/media/IAudioService;
    nop

    .line 714
    :try_start_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 713
    invoke-interface {v0, p1, v2}, Landroid/media/IAudioService;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 715
    .local v2, "status":I
    if-nez v2, :cond_4

    .line 716
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iput p1, v3, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :cond_4
    :try_start_2
    monitor-exit v1

    return v2

    .line 719
    .end local v2    # "status":I
    :catch_0
    move-exception v2

    .line 720
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioPolicy"

    const-string v4, "Dead object in setFocusPropertiesForPolicy for behavior"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    const/4 v3, -0x1

    monitor-exit v1

    return v3

    .line 702
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot change ducking behavior for unregistered policy"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "behavior":I
    throw v0

    .line 723
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "behavior":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist setRegistration(Ljava/lang/String;)V
    .locals 2
    .param p1, "regId"    # Ljava/lang/String;

    .line 559
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    .line 561
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->setRegistration(Ljava/lang/String;)V

    .line 562
    if-eqz p1, :cond_0

    .line 563
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    goto :goto_0

    .line 565
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    .line 567
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(I)V

    .line 569
    return-void

    .line 567
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist setUidDeviceAffinity(ILjava/util/List;)Z
    .locals 9
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 423
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    if-eqz p2, :cond_4

    .line 426
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 430
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 431
    .local v1, "deviceTypes":[I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 432
    .local v2, "deviceAdresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 433
    .local v3, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 434
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v5, :cond_0

    .line 438
    nop

    .line 439
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    aput v6, v1, v3

    .line 440
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 441
    nop

    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    add-int/lit8 v3, v3, 0x1

    .line 442
    goto :goto_0

    .line 435
    .restart local v5    # "device":Landroid/media/AudioDeviceInfo;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal null AudioDeviceInfo in setUidDeviceAffinity"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "uid":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v4

    .line 443
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "uid":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :cond_1
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .local v4, "service":Landroid/media/IAudioService;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v6

    invoke-interface {v4, v6, p1, v1, v2}, Landroid/media/IAudioService;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .local v6, "status":I
    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    :try_start_2
    monitor-exit v0

    return v5

    .line 448
    .end local v6    # "status":I
    :catch_0
    move-exception v6

    .line 449
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AudioPolicy"

    const-string v8, "Dead object in setUidDeviceAffinity"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    monitor-exit v0

    return v5

    .line 428
    .end local v1    # "deviceTypes":[I
    .end local v2    # "deviceAdresses":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "service":Landroid/media/IAudioService;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "uid":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v1

    .line 452
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "uid":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 424
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null list of audio devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserIdDeviceAffinity(ILjava/util/List;)Z
    .locals 9
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 522
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    const-string v0, "Illegal null list of audio devices"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_0
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 527
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 528
    .local v1, "deviceTypes":[I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 529
    .local v2, "deviceAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 530
    .local v3, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 531
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v5, :cond_0

    .line 535
    nop

    .line 536
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    aput v6, v1, v3

    .line 537
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 538
    nop

    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    add-int/lit8 v3, v3, 0x1

    .line 539
    goto :goto_0

    .line 532
    .restart local v5    # "device":Landroid/media/AudioDeviceInfo;
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal null AudioDeviceInfo in setUserIdDeviceAffinity"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "userId":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v4

    .line 540
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "userId":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :cond_1
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    .local v4, "service":Landroid/media/IAudioService;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v6

    invoke-interface {v4, v6, p1, v1, v2}, Landroid/media/IAudioService;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .local v6, "status":I
    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    :try_start_2
    monitor-exit v0

    return v5

    .line 545
    .end local v6    # "status":I
    :catch_0
    move-exception v6

    .line 546
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AudioPolicy"

    const-string v8, "Dead object in setUserIdDeviceAffinity"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    monitor-exit v0

    return v5

    .line 525
    .end local v1    # "deviceTypes":[I
    .end local v2    # "deviceAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "service":Landroid/media/IAudioService;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "userId":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v1

    .line 549
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "userId":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist toLogFriendlyString()Ljava/lang/String;
    .locals 3

    .line 1115
    new-instance v0, Ljava/lang/String;

    const-string v1, "android.media.audiopolicy.AudioPolicy:\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v0, "textDump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1117
    return-object v0
.end method
