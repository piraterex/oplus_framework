.class public Landroid/media/tv/tuner/Tuner;
.super Ljava/lang/Object;
.source "Tuner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Tuner$Frontend;,
        Landroid/media/tv/tuner/Tuner$EventHandler;,
        Landroid/media/tv/tuner/Tuner$OnResourceLostListener;,
        Landroid/media/tv/tuner/Tuner$DvrType;,
        Landroid/media/tv/tuner/Tuner$Result;,
        Landroid/media/tv/tuner/Tuner$ScanType;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DVR_TYPE_PLAYBACK:I = 0x1

.field public static final blacklist DVR_TYPE_RECORD:I = 0x0

.field private static final blacklist FILTER_CLEANUP_THRESHOLD:I = 0x100

.field public static final whitelist INVALID_AV_SYNC_ID:I = -0x1

.field public static final whitelist INVALID_FILTER_ID:I = -0x1

.field public static final whitelist INVALID_FILTER_ID_LONG:J = -0x1L

.field public static final whitelist INVALID_FIRST_MACROBLOCK_IN_SLICE:I = -0x1

.field public static final whitelist INVALID_FRONTEND_ID:I = -0x1

.field public static final whitelist INVALID_FRONTEND_SETTING_FREQUENCY:I = -0x1

.field public static final blacklist INVALID_LNB_ID:I = -0x1

.field public static final whitelist INVALID_LTS_ID:I = -0x1

.field public static final whitelist INVALID_MMTP_RECORD_EVENT_MPT_SEQUENCE_NUM:I = -0x1

.field public static final whitelist INVALID_STREAM_ID:I = 0xffff

.field public static final whitelist INVALID_TIMESTAMP:J = -0x1L

.field public static final whitelist INVALID_TS_PID:I = 0xffff

.field private static final blacklist MSG_ON_FILTER_EVENT:I = 0x2

.field private static final blacklist MSG_ON_FILTER_STATUS:I = 0x3

.field private static final blacklist MSG_ON_LNB_EVENT:I = 0x4

.field private static final blacklist MSG_RESOURCE_LOST:I = 0x1

.field public static final whitelist RESULT_INVALID_ARGUMENT:I = 0x4

.field public static final whitelist RESULT_INVALID_STATE:I = 0x3

.field public static final whitelist RESULT_NOT_INITIALIZED:I = 0x2

.field public static final whitelist RESULT_OUT_OF_MEMORY:I = 0x5

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field public static final whitelist RESULT_UNAVAILABLE:I = 0x1

.field public static final whitelist RESULT_UNKNOWN_ERROR:I = 0x6

.field public static final whitelist SCAN_TYPE_AUTO:I = 0x1

.field public static final whitelist SCAN_TYPE_BLIND:I = 0x2

.field public static final whitelist SCAN_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "MediaTvTuner"

.field public static final whitelist VOID_KEYTOKEN:[B

.field private static blacklist sTunerVersion:I


# instance fields
.field private final blacklist mClientId:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDemuxHandle:Ljava/lang/Integer;

.field private final blacklist mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mDescramblers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/Descrambler;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

.field private blacklist mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/filter/Filter;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

.field private blacklist mFrontendCiCamHandle:Ljava/lang/Integer;

.field private blacklist mFrontendCiCamId:Ljava/lang/Integer;

.field private final blacklist mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mFrontendHandle:Ljava/lang/Integer;

.field private blacklist mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

.field private final blacklist mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mFrontendType:I

.field private blacklist mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

.field private blacklist mLnb:Landroid/media/tv/tuner/Lnb;

.field private blacklist mLnbHandle:Ljava/lang/Integer;

.field private final blacklist mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mNativeContext:J

.field private blacklist mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

.field private blacklist mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mOnResourceLostListenerLock:Ljava/lang/Object;

.field private blacklist mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

.field private final blacklist mOnTuneEventLock:Ljava/lang/Object;

.field private blacklist mRequestedCiCamId:I

.field private final blacklist mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private blacklist mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

.field private blacklist mScanCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mScanCallbackLock:Ljava/lang/Object;

.field private final blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFrontend(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/tuner/Tuner;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseAll(Landroid/media/tv/tuner/Tuner;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Landroid/media/tv/tuner/Tuner;->VOID_KEYTOKEN:[B

    .line 246
    const-string v0, "MediaTvTuner"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    .line 273
    :try_start_0
    const-string v2, "media_tv_tuner"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 274
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->nativeInit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "tuner JNI library not found!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sput v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tvInputSessionId"    # Ljava/lang/String;
    .param p3, "useCase"    # I

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 308
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    .line 309
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    .line 310
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    .line 311
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 312
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 313
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 314
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 320
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    .line 323
    new-instance v1, Landroid/media/tv/tuner/Tuner$1;

    invoke-direct {v1, p0}, Landroid/media/tv/tuner/Tuner$1;-><init>(Landroid/media/tv/tuner/Tuner;)V

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 347
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeSetup()V

    .line 348
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetTunerVersion()I

    move-result v2

    sput v2, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 349
    const-string v3, "MediaTvTuner"

    if-nez v2, :cond_0

    .line 350
    const-string v2, "Unknown Tuner version!"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Tuner version is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 353
    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 354
    invoke-static {v5}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mContext:Landroid/content/Context;

    .line 357
    nop

    .line 358
    const-string/jumbo v2, "tv_tuner_resource_mgr"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 359
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v3, :cond_1

    .line 360
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    .line 363
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [I

    .line 364
    .local v3, "clientId":[I
    new-instance v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v4}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 365
    .local v4, "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    iput-object p2, v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 366
    iput p3, v4, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 367
    new-instance v5, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    .line 369
    aget v0, v3, v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    .line 371
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 372
    return-void
.end method

.method private blacklist acquireTRMSLock(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionNameForLog"    # Ljava/lang/String;

    .line 2512
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_0

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTEMPT:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->acquireLock(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - this can cause deadlock between Tuner API calls and onReclaimResources()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_1
    return-void
.end method

.method private blacklist checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .locals 2
    .param p1, "resourceType"    # I
    .param p2, "localLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 2401
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2427
    :pswitch_0
    return v0

    .line 2421
    :pswitch_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2422
    return v0

    .line 2409
    :pswitch_2
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2410
    return v0

    .line 2415
    :pswitch_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2416
    return v0

    .line 2403
    :pswitch_4
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2404
    return v0

    .line 2429
    :cond_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;
    .locals 3

    .line 1043
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1044
    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$EventHandler-IA;)V

    return-object v0

    .line 1045
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 1046
    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner$EventHandler-IA;)V

    return-object v0

    .line 1048
    :cond_1
    return-object v2
.end method

.method private blacklist getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 7

    .line 379
    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendIds()Ljava/util/List;

    move-result-object v0

    .line 380
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 381
    const/4 v1, 0x0

    return-object v1

    .line 383
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 384
    .local v1, "infos":[Landroid/media/tv/tuner/frontend/FrontendInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 385
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 386
    .local v3, "id":I
    invoke-virtual {p0, v3}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v4

    .line 387
    .local v4, "frontendInfo":Landroid/media/tv/tuner/frontend/FrontendInfo;
    if-nez v4, :cond_1

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get a FrontendInfo on frontend id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaTvTuner"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    goto :goto_1

    .line 391
    :cond_1
    aput-object v4, v1, v2

    .line 384
    .end local v3    # "id":I
    .end local v4    # "frontendInfo":Landroid/media/tv/tuner/frontend/FrontendInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v2
.end method

.method public static blacklist getTunerVersion()I
    .locals 1

    .line 398
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return v0
.end method

.method private blacklist isFrontendOwner()Z
    .locals 4

    .line 595
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 596
    .local v0, "notAnOwner":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 597
    const-string v1, "MediaTvTuner"

    const-string/jumbo v3, "transferOwner() - cannot be called on the non-owner"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    return v2

    .line 600
    :cond_1
    return v1
.end method

.method private blacklist isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z
    .locals 5
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 609
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 611
    .local v0, "newOwnerIsTheCurrentSharee":Z
    :goto_0
    const-string v3, "MediaTvTuner"

    if-nez v0, :cond_1

    .line 612
    const-string/jumbo v1, "transferOwner() - new owner must be the current sharee"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return v2

    .line 617
    :cond_1
    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-nez v4, :cond_3

    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v1

    .line 619
    .local v4, "newOwnerAlreadyHoldsToBeSharedResource":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 620
    const-string/jumbo v1, "transferOwner() - new owner cannot be holding CiCam nor Lnb resource"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return v2

    .line 625
    :cond_4
    return v1
.end method

.method static synthetic blacklist lambda$getFrontendInfoListInternal$0(I)[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 1
    .param p0, "x$0"    # I

    .line 393
    new-array v0, p0, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v0
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeCloseDemux(I)I
.end method

.method private native blacklist nativeCloseFrontend(I)I
.end method

.method private native blacklist nativeConnectCiCam(I)I
.end method

.method private native blacklist nativeDisconnectCiCam()I
.end method

.method private native blacklist nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;
.end method

.method private native blacklist nativeGetAvSyncTime(I)Ljava/lang/Long;
.end method

.method private native blacklist nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
.end method

.method private native blacklist nativeGetFrontendHardwareInfo()Ljava/lang/String;
.end method

.method private native blacklist nativeGetFrontendIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
.end method

.method private native blacklist nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
.end method

.method private native blacklist nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
.end method

.method private native blacklist nativeGetMaxNumberOfFrontends(I)I
.end method

.method private native blacklist nativeGetTunerVersion()I
.end method

.method private static native blacklist nativeInit()V
.end method

.method private native blacklist nativeLinkCiCam(I)I
.end method

.method private native blacklist nativeOpenDemuxByhandle(I)I
.end method

.method private native blacklist nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;
.end method

.method private native blacklist nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;
.end method

.method private native blacklist nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;
.end method

.method private native blacklist nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;
.end method

.method private native blacklist nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;
.end method

.method private native blacklist nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;
.end method

.method private native blacklist nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;
.end method

.method private static native blacklist nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;
.end method

.method private native blacklist nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
.end method

.method private native blacklist nativeRegisterFeCbListener(J)V
.end method

.method private native blacklist nativeRemoveOutputPid(I)I
.end method

.method private native blacklist nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I
.end method

.method private native blacklist nativeSetLna(Z)I
.end method

.method private native blacklist nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
.end method

.method private native blacklist nativeSetMaxNumberOfFrontends(II)I
.end method

.method private native blacklist nativeSetup()V
.end method

.method private native blacklist nativeShareFrontend(I)I
.end method

.method private native blacklist nativeStopScan()I
.end method

.method private native blacklist nativeStopTune()I
.end method

.method private native blacklist nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I
.end method

.method private native blacklist nativeUnlinkCiCam(I)I
.end method

.method private native blacklist nativeUnregisterFeCbListener(J)V
.end method

.method private native blacklist nativeUnshareFrontend()I
.end method

.method private native blacklist nativeUpdateFrontend(J)V
.end method

.method private blacklist onAnalogSifStandard(I)V
    .locals 3
    .param p1, "sif"    # I

    .line 2011
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2012
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 2013
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2021
    :cond_0
    monitor-exit v0

    .line 2022
    return-void

    .line 2021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onAtsc3PlpInfos([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .locals 3
    .param p1, "atsc3PlpInfos"    # [Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    .line 2025
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2026
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 2027
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2035
    :cond_0
    monitor-exit v0

    .line 2036
    return-void

    .line 2035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onDvbcAnnexReported(I)V
    .locals 3
    .param p1, "dvbcAnnex"    # I

    .line 2067
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2068
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 2069
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2077
    :cond_0
    monitor-exit v0

    .line 2078
    return-void

    .line 2077
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onDvbsStandard(I)V
    .locals 3
    .param p1, "dvbsStandandard"    # I

    .line 1983
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1984
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1985
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1993
    :cond_0
    monitor-exit v0

    .line 1994
    return-void

    .line 1993
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onDvbtCellIdsReported([I)V
    .locals 3
    .param p1, "dvbtCellIds"    # [I

    .line 2081
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2082
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 2083
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2091
    :cond_0
    monitor-exit v0

    .line 2092
    return-void

    .line 2091
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onDvbtStandard(I)V
    .locals 3
    .param p1, "dvbtStandard"    # I

    .line 1997
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1998
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1999
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2007
    :cond_0
    monitor-exit v0

    .line 2008
    return-void

    .line 2007
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onFrequenciesReport([J)V
    .locals 3
    .param p1, "frequencies"    # [J

    .line 1885
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1886
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1887
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/tuner/Tuner;[J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1895
    :cond_0
    monitor-exit v0

    .line 1896
    return-void

    .line 1895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onFrontendEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .line 1790
    const-string v0, "MediaTvTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got event from tuning. Event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1792
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v2, :cond_0

    .line 1793
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1801
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for the events from tuning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/4 v0, 0x2

    const/16 v1, 0x114

    if-nez p1, :cond_1

    .line 1805
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1806
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_0

    .line 1808
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1809
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x3

    .line 1810
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_0

    .line 1812
    :cond_2
    if-ne p1, v0, :cond_3

    .line 1813
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x4

    .line 1814
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1817
    :cond_3
    :goto_0
    return-void

    .line 1801
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist onGroupIds([I)V
    .locals 3
    .param p1, "groupIds"    # [I

    .line 1955
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1956
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1957
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1965
    :cond_0
    monitor-exit v0

    .line 1966
    return-void

    .line 1965
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onHierarchy(I)V
    .locals 3
    .param p1, "hierarchy"    # I

    .line 1913
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1914
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1915
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1923
    :cond_0
    monitor-exit v0

    .line 1924
    return-void

    .line 1923
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onInputStreamIds([I)V
    .locals 3
    .param p1, "inputStreamIds"    # [I

    .line 1969
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1970
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1971
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1979
    :cond_0
    monitor-exit v0

    .line 1980
    return-void

    .line 1979
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onLocked()V
    .locals 3

    .line 1820
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for locked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/16 v1, 0x114

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1825
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1826
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1827
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1835
    :cond_0
    monitor-exit v0

    .line 1836
    return-void

    .line 1835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onModulationReported(I)V
    .locals 3
    .param p1, "modulation"    # I

    .line 2039
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2040
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 2041
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2049
    :cond_0
    monitor-exit v0

    .line 2050
    return-void

    .line 2049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onPlpIds([I)V
    .locals 3
    .param p1, "plpIds"    # [I

    .line 1941
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1943
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1951
    :cond_0
    monitor-exit v0

    .line 1952
    return-void

    .line 1951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onPriorityReported(Z)V
    .locals 3
    .param p1, "isHighPriority"    # Z

    .line 2053
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2054
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 2055
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Tuner;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2063
    :cond_0
    monitor-exit v0

    .line 2064
    return-void

    .line 2063
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onProgress(I)V
    .locals 3
    .param p1, "percent"    # I

    .line 1871
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1872
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1873
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1881
    :cond_0
    monitor-exit v0

    .line 1882
    return-void

    .line 1881
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onScanStopped()V
    .locals 3

    .line 1857
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1858
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1859
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1867
    :cond_0
    monitor-exit v0

    .line 1868
    return-void

    .line 1867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onSignalType(I)V
    .locals 3
    .param p1, "signalType"    # I

    .line 1927
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1928
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1929
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1937
    :cond_0
    monitor-exit v0

    .line 1938
    return-void

    .line 1937
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onSymbolRates([I)V
    .locals 3
    .param p1, "rate"    # [I

    .line 1899
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1900
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1901
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1909
    :cond_0
    monitor-exit v0

    .line 1910
    return-void

    .line 1909
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onUnlocked()V
    .locals 3

    .line 1839
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for unlocked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/16 v1, 0x114

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1843
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1844
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v2, :cond_0

    .line 1845
    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1853
    :cond_0
    monitor-exit v0

    .line 1854
    return-void

    .line 1853
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist openSharedFilter(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/SharedFilterCallback;)Landroid/media/tv/tuner/filter/SharedFilter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedFilterToken"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cb"    # Landroid/media/tv/tuner/filter/SharedFilterCallback;

    .line 2337
    const-string v0, "sharedFilterToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2338
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2339
    const-string v0, "SharedFilterCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2341
    const-string v0, "android.permission.ACCESS_TV_SHARED_FILTER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2347
    invoke-static {p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;

    move-result-object v0

    .line 2348
    .local v0, "filter":Landroid/media/tv/tuner/filter/SharedFilter;
    if-eqz v0, :cond_0

    .line 2349
    invoke-virtual {v0, p3, p2}, Landroid/media/tv/tuner/filter/SharedFilter;->setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V

    .line 2351
    :cond_0
    return-object v0

    .line 2344
    .end local v0    # "filter":Landroid/media/tv/tuner/filter/SharedFilter;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have ACCESS_TV_SHAREDFILTER permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .locals 2
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 774
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeRegisterFeCbListener(J)V

    .line 775
    return-void
.end method

.method private blacklist releaseAll()V
    .locals 7

    .line 892
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseCiCam()V

    .line 894
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V

    .line 896
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 899
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_1

    .line 900
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 901
    const-string v0, "MediaTvTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling mLnb.close() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Lnb;->close()V

    goto :goto_0

    .line 905
    :cond_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 906
    const-string v0, "MediaTvTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT calling mLnb.close() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 910
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 911
    nop

    .line 914
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v0

    .line 915
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 916
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 917
    .local v2, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/Descrambler;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/Descrambler;

    .line 918
    .local v3, "descrambler":Landroid/media/tv/tuner/Descrambler;
    if-eqz v3, :cond_3

    .line 919
    invoke-virtual {v3}, Landroid/media/tv/tuner/Descrambler;->close()V

    .line 921
    :cond_3
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v4, v5, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    .line 922
    .end local v2    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/Descrambler;>;>;"
    .end local v3    # "descrambler":Landroid/media/tv/tuner/Descrambler;
    goto :goto_1

    .line 923
    :cond_4
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 925
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 927
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v1

    .line 928
    :try_start_2
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 929
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 930
    .local v2, "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/filter/Filter;

    .line 931
    .local v3, "filter":Landroid/media/tv/tuner/filter/Filter;
    if-eqz v3, :cond_6

    .line 932
    invoke-virtual {v3}, Landroid/media/tv/tuner/filter/Filter;->close()V

    .line 934
    .end local v2    # "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    .end local v3    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :cond_6
    goto :goto_2

    .line 935
    :cond_7
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 937
    :cond_8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 939
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 941
    :try_start_3
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 942
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeCloseDemux(I)I

    move-result v0

    .line 943
    .local v0, "res":I
    if-eqz v0, :cond_9

    .line 944
    const-string v1, "failed to close demux"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 946
    :cond_9
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDemux(II)V

    .line 947
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 950
    .end local v0    # "res":I
    :cond_a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 951
    nop

    .line 953
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    .line 955
    return-void

    .line 950
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 951
    throw v0

    .line 937
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 925
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 910
    :catchall_3
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 911
    throw v0
.end method

.method private blacklist releaseCiCam()V
    .locals 4

    .line 866
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 868
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_2

    .line 869
    :try_start_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinking CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    move-result v0

    .line 873
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 874
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(II)V

    .line 875
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    goto :goto_0

    .line 877
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeUnlinkCiCam("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for mClientId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed with result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v0    # "result":I
    :goto_0
    goto :goto_1

    .line 881
    :cond_2
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT unlinking CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 886
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 887
    nop

    .line 888
    return-void

    .line 886
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 887
    throw v0
.end method

.method private blacklist releaseFrontend()V
    .locals 5

    .line 821
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_0

    .line 822
    const-string v2, "Tuner#releaseFrontend"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_0
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 826
    :try_start_0
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 827
    if-eqz v0, :cond_1

    .line 828
    const-string v2, "mFrontendHandle not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_1
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 831
    if-eqz v0, :cond_2

    .line 832
    const-string v2, "mFeOwnerTuner not null - sharee"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_2
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner;->unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    .line 836
    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 837
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeUnshareFrontend()I

    goto :goto_0

    .line 839
    :cond_3
    if-eqz v0, :cond_4

    .line 840
    const-string v2, "mFeOwnerTuner null - owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_4
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->nativeCloseFrontend(I)I

    move-result v2

    .line 844
    .local v2, "res":I
    if-eqz v2, :cond_5

    .line 845
    const-string v4, "failed to close frontend"

    invoke-static {v2, v4}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 848
    .end local v2    # "res":I
    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call TRM#releaseFrontend :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_6
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseFrontend(II)V

    .line 852
    const/16 v0, 0x114

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x0

    .line 853
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 855
    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_7
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 859
    nop

    .line 860
    return-void

    .line 858
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 859
    throw v0
.end method

.method private blacklist releaseTRMSLock()V
    .locals 2

    .line 2524
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLock(I)Z

    .line 2525
    return-void
.end method

.method private blacklist replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V
    .locals 3
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 544
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 546
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_1

    .line 547
    :try_start_0
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetting CiCamParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    .line 551
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    goto :goto_0

    .line 553
    :cond_1
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying CiCamParams from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFrontendCiCamHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrontendCiCamId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    .line 559
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    nop

    .line 564
    return-void

    .line 562
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 563
    throw v0
.end method

.method private blacklist replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    .locals 3
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 503
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 505
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_1

    .line 506
    :try_start_0
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetting Frontend params for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 510
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 511
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    goto :goto_0

    .line 514
    :cond_1
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Frontend params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_2
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 519
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 520
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 521
    iget v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 525
    throw v0
.end method

.method private blacklist replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V
    .locals 3
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 570
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 572
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_1

    .line 573
    :try_start_0
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 574
    const-string v1, "resetting Lnb params"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 577
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    goto :goto_0

    .line 579
    :cond_1
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Lnb params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_2
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 583
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :goto_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 587
    nop

    .line 588
    return-void

    .line 586
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 587
    throw v0
.end method

.method private blacklist requestDemux()Z
    .locals 4

    .line 2355
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2356
    .local v0, "demuxHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;-><init>()V

    .line 2357
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 2358
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v2

    .line 2359
    .local v2, "granted":Z
    if-eqz v2, :cond_0

    .line 2360
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    .line 2361
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDemuxByhandle(I)I

    .line 2363
    :cond_0
    return v2
.end method

.method private blacklist requestDescrambler()Landroid/media/tv/tuner/Descrambler;
    .locals 9

    .line 2367
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2368
    .local v0, "descramblerHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;-><init>()V

    .line 2369
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    .line 2370
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v2

    .line 2371
    .local v2, "granted":Z
    if-nez v2, :cond_0

    .line 2372
    const/4 v3, 0x0

    return-object v3

    .line 2374
    :cond_0
    const/4 v3, 0x0

    aget v3, v0, v3

    .line 2375
    .local v3, "handle":I
    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenDescramblerByHandle(I)Landroid/media/tv/tuner/Descrambler;

    move-result-object v4

    .line 2376
    .local v4, "descrambler":Landroid/media/tv/tuner/Descrambler;
    if-eqz v4, :cond_1

    .line 2377
    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v5

    .line 2378
    :try_start_0
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2379
    .local v6, "weakDescrambler":Ljava/lang/ref/WeakReference;
    iget-object v7, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    nop

    .end local v6    # "weakDescrambler":Ljava/lang/ref/WeakReference;
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2382
    :cond_1
    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v6, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v5, v3, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(II)V

    .line 2384
    :goto_0
    return-object v4
.end method

.method private blacklist requestFrontend()Z
    .locals 5

    .line 1305
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1306
    .local v0, "feHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;-><init>()V

    .line 1307
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 1308
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    .line 1309
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v2

    .line 1310
    .local v2, "granted":Z
    if-eqz v2, :cond_0

    .line 1311
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 1312
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenFrontendByHandle(I)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 1317
    :cond_0
    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1320
    :cond_1
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1322
    :try_start_0
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v3, :cond_2

    .line 1323
    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    :cond_2
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1327
    nop

    .line 1329
    :cond_3
    return v2

    .line 1326
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1327
    throw v3
.end method

.method private blacklist requestFrontendCiCam(I)Z
    .locals 4
    .param p1, "ciCamId"    # I

    .line 2388
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2389
    .local v0, "ciCamHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;-><init>()V

    .line 2390
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 2391
    iput p1, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    .line 2392
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[I)Z

    move-result v2

    .line 2393
    .local v2, "granted":Z
    if-eqz v2, :cond_0

    .line 2394
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    .line 2395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    .line 2397
    :cond_0
    return v2
.end method

.method private blacklist requestLnb()Z
    .locals 4

    .line 2213
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2214
    .local v0, "lnbHandle":[I
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;-><init>()V

    .line 2215
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 2216
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v2

    .line 2217
    .local v2, "granted":Z
    if-eqz v2, :cond_0

    .line 2218
    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    .line 2219
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByHandle(I)Landroid/media/tv/tuner/Lnb;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 2221
    :cond_0
    return v2
.end method

.method private blacklist requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .locals 4
    .param p1, "resourceType"    # I
    .param p2, "localLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 2439
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 2442
    .local v1, "enableLockOperations":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 2443
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2444
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 2446
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "local lock must be locked beforehand"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2451
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 2452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestResource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 2457
    :cond_3
    if-eqz v1, :cond_4

    .line 2458
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2477
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 2460
    :cond_4
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 2474
    :pswitch_0
    nop

    .line 2477
    if-eqz v1, :cond_a

    .line 2478
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    goto :goto_4

    .line 2471
    :pswitch_1
    :try_start_1
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->requestFrontendCiCam(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2477
    if-eqz v1, :cond_5

    .line 2478
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2471
    :cond_5
    return v0

    .line 2465
    :pswitch_2
    :try_start_2
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestLnb()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2477
    if-eqz v1, :cond_6

    .line 2478
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2465
    :cond_6
    return v0

    .line 2468
    :pswitch_3
    :try_start_3
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDemux()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2477
    if-eqz v1, :cond_7

    .line 2478
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2468
    :cond_7
    return v0

    .line 2462
    :pswitch_4
    :try_start_4
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestFrontend()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2477
    if-eqz v1, :cond_8

    .line 2478
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2462
    :cond_8
    return v0

    .line 2477
    :goto_3
    if-eqz v1, :cond_9

    .line 2478
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2480
    :cond_9
    throw v0

    .line 2474
    :cond_a
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V
    .locals 2
    .param p1, "owner"    # Landroid/media/tv/tuner/Tuner;

    .line 532
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 534
    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
    throw v0
.end method

.method private blacklist setLnb(Landroid/media/tv/tuner/Lnb;)I
    .locals 2
    .param p1, "lnb"    # Landroid/media/tv/tuner/Lnb;

    .line 1344
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1346
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1346
    return v0

    .line 1348
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1349
    throw v0
.end method

.method private blacklist transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 6
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 660
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 661
    .local v0, "notAnOwner":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 663
    return v1

    .line 669
    :cond_1
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 670
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 673
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    const/4 v3, 0x5

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v5, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    return v1

    .line 678
    :cond_2
    const/4 v1, 0x6

    return v1
.end method

.method private blacklist transferFeOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 4
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 634
    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    .line 635
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    .line 638
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 641
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 642
    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 645
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    return v3

    .line 650
    :cond_0
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 6
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 688
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 689
    .local v2, "notAnOwner":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 691
    return v1

    .line 697
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 699
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 700
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 703
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    const/4 v3, 0x3

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v5, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    return v1

    .line 708
    :cond_2
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .locals 2
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 781
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUnregisterFeCbListener(J)V

    .line 782
    return-void
.end method


# virtual methods
.method public whitelist cancelScanning()I
    .locals 4

    .line 1288
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1290
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1291
    const/16 v1, 0x114

    :try_start_1
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1294
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopScan()I

    move-result v1

    .line 1295
    .local v1, "retVal":I
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1296
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1297
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1300
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1297
    return v1

    .line 1298
    .end local v1    # "retVal":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1300
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1301
    throw v0
.end method

.method public whitelist cancelTuning()I
    .locals 2

    .line 1205
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1207
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopTune()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1207
    return v0

    .line 1209
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1210
    throw v0
.end method

.method public whitelist clearOnTuneEventListener()V
    .locals 2

    .line 1121
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1123
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    .line 1124
    monitor-exit v0

    .line 1125
    return-void

    .line 1124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist clearResourceLostListener()V
    .locals 2

    .line 431
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 433
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    .line 434
    monitor-exit v0

    .line 435
    return-void

    .line 434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 2

    .line 796
    const-string v0, "close()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 798
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    .line 799
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeClose()I

    move-result v0

    const-string v1, "failed to close tuner"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 802
    nop

    .line 803
    return-void

    .line 801
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 802
    throw v0
.end method

.method public whitelist closeFrontend()V
    .locals 1

    .line 809
    const-string v0, "closeFrontend()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 811
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 814
    nop

    .line 815
    return-void

    .line 813
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 814
    throw v0
.end method

.method public whitelist connectCiCam(I)I
    .locals 2
    .param p1, "ciCamId"    # I

    .line 1441
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1443
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeConnectCiCam(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1448
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1444
    return v0

    .line 1446
    :cond_0
    nop

    .line 1448
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1446
    return v1

    .line 1448
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1449
    throw v0
.end method

.method public whitelist connectFrontendToCiCam(I)I
    .locals 2
    .param p1, "ciCamId"    # I

    .line 1479
    const-string v0, "connectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1481
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1483
    const v0, 0x10001

    :try_start_0
    const-string v1, "linkFrontendToCiCam"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    iput p1, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    .line 1489
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1490
    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeLinkCiCam(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1498
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1499
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1492
    return v0

    .line 1495
    :cond_0
    const/4 v0, -0x1

    .line 1497
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1498
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1499
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1495
    return v0

    .line 1497
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1498
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1499
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1500
    throw v0
.end method

.method public whitelist disconnectCiCam()I
    .locals 2

    .line 1515
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1517
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1518
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeDisconnectCiCam()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1518
    return v0

    .line 1520
    :cond_0
    const/4 v0, 0x1

    .line 1522
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1520
    return v0

    .line 1522
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1523
    throw v0
.end method

.method public whitelist disconnectFrontendToCiCam(I)I
    .locals 4
    .param p1, "ciCamId"    # I

    .line 1544
    const-string v0, "disconnectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 1546
    const v0, 0x10001

    :try_start_0
    const-string/jumbo v1, "unlinkFrontendToCiCam"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1549
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1550
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1551
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 1552
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    move-result v0

    .line 1553
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 1554
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(II)V

    .line 1555
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    .line 1556
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1558
    :cond_0
    nop

    .line 1563
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1564
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1566
    :cond_1
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1558
    return v0

    .line 1561
    .end local v0    # "result":I
    :cond_2
    const/4 v0, 0x1

    .line 1563
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1564
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1566
    :cond_3
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1561
    return v0

    .line 1563
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1564
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1566
    :cond_4
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1567
    throw v0
.end method

.method public whitelist getAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)I
    .locals 3
    .param p1, "filter"    # Landroid/media/tv/tuner/filter/Filter;

    .line 1393
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1395
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1396
    nop

    .line 1401
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1396
    return v1

    .line 1398
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;

    move-result-object v0

    .line 1399
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1401
    :goto_0
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1399
    return v1

    .line 1401
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1402
    throw v0
.end method

.method public whitelist getAvSyncTime(I)J
    .locals 4
    .param p1, "avSyncHwId"    # I

    .line 1415
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1417
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 1418
    nop

    .line 1423
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1418
    return-wide v1

    .line 1420
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncTime(I)Ljava/lang/Long;

    move-result-object v0

    .line 1421
    .local v0, "time":Ljava/lang/Long;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    :goto_0
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1421
    return-wide v1

    .line 1423
    .end local v0    # "time":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1424
    throw v0
.end method

.method public whitelist getAvailableFrontendInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendInfo;",
            ">;"
        }
    .end annotation

    .line 1671
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    .line 1672
    .local v0, "feInfoList":[Landroid/media/tv/tuner/frontend/FrontendInfo;
    if-nez v0, :cond_0

    .line 1673
    const/4 v1, 0x0

    return-object v1

    .line 1675
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getClientId()I
    .locals 1

    .line 2508
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    return v0
.end method

.method public whitelist getCurrentFrontendHardwareInfo()Ljava/lang/String;
    .locals 2

    .line 1691
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1693
    const/high16 v0, 0x20000

    :try_start_0
    const-string v1, "Get Frontend hardware info"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1695
    const/4 v0, 0x0

    .line 1702
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1695
    return-object v0

    .line 1697
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1

    .line 1700
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendHardwareInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1700
    return-object v0

    .line 1698
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1702
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1703
    throw v0
.end method

.method public whitelist getDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
    .locals 2

    .line 1781
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1783
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1785
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1783
    return-object v0

    .line 1785
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1786
    throw v0
.end method

.method public blacklist getFrontendIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 405
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendIds()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 405
    return-object v0

    .line 407
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 408
    throw v0
.end method

.method public whitelist getFrontendInfo()Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 2

    .line 1643
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1645
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1646
    const/4 v0, 0x0

    .line 1656
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1646
    return-object v0

    .line 1648
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_2

    .line 1651
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    if-nez v1, :cond_1

    .line 1652
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1654
    :cond_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1656
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1654
    return-object v0

    .line 1649
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1656
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1657
    throw v0
.end method

.method public blacklist getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
    .locals 2
    .param p1, "id"    # I

    .line 1765
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1767
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1767
    return-object v0

    .line 1769
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1770
    throw v0
.end method

.method public whitelist getFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
    .locals 2
    .param p1, "statusTypes"    # [I

    .line 1375
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1377
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_0

    .line 1380
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1380
    return-object v0

    .line 1378
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1382
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1383
    throw v0
.end method

.method public whitelist getFrontendStatusReadiness([I)Ljava/util/List;
    .locals 3
    .param p1, "statusTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;",
            ">;"
        }
    .end annotation

    .line 1615
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1617
    const/high16 v0, 0x20000

    :try_start_0
    const-string v1, "Get fronted status readiness"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1619
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1619
    return-object v0

    .line 1621
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_2

    .line 1624
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;

    move-result-object v0

    .line 1625
    .local v0, "readiness":[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
    if-nez v0, :cond_1

    .line 1626
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1630
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1626
    return-object v1

    .line 1628
    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1630
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1628
    return-object v1

    .line 1622
    .end local v0    # "readiness":[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1630
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1631
    throw v0
.end method

.method public whitelist getMaxNumberOfFrontends(I)I
    .locals 4
    .param p1, "frontendType"    # I

    .line 1750
    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1752
    const/4 v0, -0x1

    return v0

    .line 1754
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetMaxNumberOfFrontends(I)I

    move-result v0

    .line 1755
    .local v0, "maxNumFromHAL":I
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->getMaxNumberOfFrontends(I)I

    move-result v1

    .line 1756
    .local v1, "maxNumFromTRM":I
    if-eq v0, v1, :cond_1

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max num of usable frontend is out-of-sync b/w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaTvTuner"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_1
    return v0
.end method

.method blacklist getNativeContext()J
    .locals 2

    .line 788
    iget-wide v0, p0, Landroid/media/tv/tuner/Tuner;->mNativeContext:J

    return-wide v0
.end method

.method public whitelist hasUnusedFrontend(I)Z
    .locals 1
    .param p1, "frontendType"    # I

    .line 738
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->hasUnusedFrontend(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLowestPriority(I)Z
    .locals 2
    .param p1, "frontendType"    # I

    .line 765
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->isLowestPriority(II)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$onAnalogSifStandard$15$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "sif"    # I

    .line 2014
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2015
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 2016
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAnalogSifStandardReported(I)V

    .line 2018
    :cond_0
    monitor-exit v0

    .line 2019
    return-void

    .line 2018
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onAtsc3PlpInfos$16$android-media-tv-tuner-Tuner([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .locals 2
    .param p1, "atsc3PlpInfos"    # [Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    .line 2028
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2029
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 2030
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    .line 2032
    :cond_0
    monitor-exit v0

    .line 2033
    return-void

    .line 2032
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onDvbcAnnexReported$19$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "dvbcAnnex"    # I

    .line 2070
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2071
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 2072
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbcAnnexReported(I)V

    .line 2074
    :cond_0
    monitor-exit v0

    .line 2075
    return-void

    .line 2074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onDvbsStandard$13$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "dvbsStandandard"    # I

    .line 1986
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1987
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1988
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbsStandardReported(I)V

    .line 1990
    :cond_0
    monitor-exit v0

    .line 1991
    return-void

    .line 1990
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onDvbtCellIdsReported$20$android-media-tv-tuner-Tuner([I)V
    .locals 2
    .param p1, "dvbtCellIds"    # [I

    .line 2084
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2085
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 2086
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtCellIdsReported([I)V

    .line 2088
    :cond_0
    monitor-exit v0

    .line 2089
    return-void

    .line 2088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onDvbtStandard$14$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "dvbtStandard"    # I

    .line 2000
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2001
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 2002
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtStandardReported(I)V

    .line 2004
    :cond_0
    monitor-exit v0

    .line 2005
    return-void

    .line 2004
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onFrequenciesReport$6$android-media-tv-tuner-Tuner([J)V
    .locals 2
    .param p1, "frequencies"    # [J

    .line 1888
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1889
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1890
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesLongReported([J)V

    .line 1892
    :cond_0
    monitor-exit v0

    .line 1893
    return-void

    .line 1892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onFrontendEvent$1$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "eventType"    # I

    .line 1794
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1795
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v1, :cond_0

    .line 1796
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/OnTuneEventListener;->onTuneEvent(I)V

    .line 1798
    :cond_0
    monitor-exit v0

    .line 1799
    return-void

    .line 1798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onGroupIds$11$android-media-tv-tuner-Tuner([I)V
    .locals 2
    .param p1, "groupIds"    # [I

    .line 1958
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1959
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1960
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onGroupIdsReported([I)V

    .line 1962
    :cond_0
    monitor-exit v0

    .line 1963
    return-void

    .line 1962
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onHierarchy$8$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "hierarchy"    # I

    .line 1916
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1917
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1918
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onHierarchyReported(I)V

    .line 1920
    :cond_0
    monitor-exit v0

    .line 1921
    return-void

    .line 1920
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onInputStreamIds$12$android-media-tv-tuner-Tuner([I)V
    .locals 2
    .param p1, "inputStreamIds"    # [I

    .line 1972
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1973
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1974
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onInputStreamIdsReported([I)V

    .line 1976
    :cond_0
    monitor-exit v0

    .line 1977
    return-void

    .line 1976
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onLocked$2$android-media-tv-tuner-Tuner()V
    .locals 2

    .line 1828
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1829
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1830
    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onLocked()V

    .line 1832
    :cond_0
    monitor-exit v0

    .line 1833
    return-void

    .line 1832
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onModulationReported$17$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "modulation"    # I

    .line 2042
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2043
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 2044
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onModulationReported(I)V

    .line 2046
    :cond_0
    monitor-exit v0

    .line 2047
    return-void

    .line 2046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onPlpIds$10$android-media-tv-tuner-Tuner([I)V
    .locals 2
    .param p1, "plpIds"    # [I

    .line 1944
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1945
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1946
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPlpIdsReported([I)V

    .line 1948
    :cond_0
    monitor-exit v0

    .line 1949
    return-void

    .line 1948
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onPriorityReported$18$android-media-tv-tuner-Tuner(Z)V
    .locals 2
    .param p1, "isHighPriority"    # Z

    .line 2056
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2057
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 2058
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPriorityReported(Z)V

    .line 2060
    :cond_0
    monitor-exit v0

    .line 2061
    return-void

    .line 2060
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onProgress$5$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "percent"    # I

    .line 1874
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1875
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1876
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onProgress(I)V

    .line 1878
    :cond_0
    monitor-exit v0

    .line 1879
    return-void

    .line 1878
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onScanStopped$4$android-media-tv-tuner-Tuner()V
    .locals 2

    .line 1860
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1861
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1862
    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onScanStopped()V

    .line 1864
    :cond_0
    monitor-exit v0

    .line 1865
    return-void

    .line 1864
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onSignalType$9$android-media-tv-tuner-Tuner(I)V
    .locals 2
    .param p1, "signalType"    # I

    .line 1930
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1931
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1932
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSignalTypeReported(I)V

    .line 1934
    :cond_0
    monitor-exit v0

    .line 1935
    return-void

    .line 1934
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onSymbolRates$7$android-media-tv-tuner-Tuner([I)V
    .locals 2
    .param p1, "rate"    # [I

    .line 1902
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1903
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1904
    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSymbolRatesReported([I)V

    .line 1906
    :cond_0
    monitor-exit v0

    .line 1907
    return-void

    .line 1906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$onUnlocked$3$android-media-tv-tuner-Tuner()V
    .locals 2

    .line 1846
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1847
    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    .line 1848
    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onUnlocked()V

    .line 1850
    :cond_0
    monitor-exit v0

    .line 1851
    return-void

    .line 1850
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist openDescrambler()Landroid/media/tv/tuner/Descrambler;
    .locals 2

    .line 2250
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2252
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2253
    const/4 v0, 0x0

    .line 2257
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2253
    return-object v0

    .line 2255
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDescrambler()Landroid/media/tv/tuner/Descrambler;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2257
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2255
    return-object v0

    .line 2257
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2258
    throw v0
.end method

.method public whitelist openDvrPlayback(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrPlayback;
    .locals 2
    .param p1, "bufferSize"    # J
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "l"    # Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    .line 2306
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2308
    :try_start_0
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2309
    const-string v0, "OnPlaybackStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2310
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2311
    const/4 v0, 0x0

    .line 2317
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2311
    return-object v0

    .line 2313
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;

    move-result-object v0

    .line 2314
    .local v0, "dvr":Landroid/media/tv/tuner/dvr/DvrPlayback;
    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrPlayback;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2315
    nop

    .line 2317
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2315
    return-object v0

    .line 2317
    .end local v0    # "dvr":Landroid/media/tv/tuner/dvr/DvrPlayback;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2318
    throw v0
.end method

.method public whitelist openDvrRecorder(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrRecorder;
    .locals 2
    .param p1, "bufferSize"    # J
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "l"    # Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    .line 2276
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2278
    :try_start_0
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2279
    const-string v0, "OnRecordStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2280
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2281
    const/4 v0, 0x0

    .line 2287
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2281
    return-object v0

    .line 2283
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;

    move-result-object v0

    .line 2284
    .local v0, "dvr":Landroid/media/tv/tuner/dvr/DvrRecorder;
    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrRecorder;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2285
    nop

    .line 2287
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2285
    return-object v0

    .line 2287
    .end local v0    # "dvr":Landroid/media/tv/tuner/dvr/DvrRecorder;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2288
    throw v0
.end method

.method public whitelist openFilter(IIJLjava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/FilterCallback;)Landroid/media/tv/tuner/filter/Filter;
    .locals 6
    .param p1, "mainType"    # I
    .param p2, "subType"    # I
    .param p3, "bufferSize"    # J
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "cb"    # Landroid/media/tv/tuner/filter/FilterCallback;

    .line 2110
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2112
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 2113
    const/4 v0, 0x0

    .line 2139
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2113
    return-object v0

    .line 2115
    :cond_0
    nop

    .line 2116
    :try_start_1
    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    .line 2115
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/media/tv/tuner/Tuner;->nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;

    move-result-object v0

    .line 2117
    .local v0, "filter":Landroid/media/tv/tuner/filter/Filter;
    if-eqz v0, :cond_4

    .line 2118
    invoke-virtual {v0, p1, p2}, Landroid/media/tv/tuner/filter/Filter;->setType(II)V

    .line 2119
    invoke-virtual {v0, p6, p5}, Landroid/media/tv/tuner/filter/Filter;->setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V

    .line 2120
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v1, :cond_1

    .line 2121
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    .line 2123
    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2124
    :try_start_2
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2125
    .local v2, "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2126
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_3

    .line 2127
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2128
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 2130
    .local v4, "wFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 2131
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2133
    .end local v4    # "wFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    :cond_2
    goto :goto_0

    .line 2135
    .end local v2    # "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;>;"
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "mainType":I
    .end local p2    # "subType":I
    .end local p3    # "bufferSize":J
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "cb":Landroid/media/tv/tuner/filter/FilterCallback;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2137
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "mainType":I
    .restart local p2    # "subType":I
    .restart local p3    # "bufferSize":J
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "cb":Landroid/media/tv/tuner/filter/FilterCallback;
    :cond_4
    :goto_1
    nop

    .line 2139
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2137
    return-object v0

    .line 2139
    .end local v0    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2140
    throw v0
.end method

.method public whitelist openLnb(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/tv/tuner/LnbCallback;

    .line 2155
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2157
    :try_start_0
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2158
    const-string v0, "LnbCallback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2159
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2161
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2161
    return-object v0

    .line 2163
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_2

    .line 2165
    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2166
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1

    .line 2167
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    .line 2169
    :cond_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2173
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2169
    return-object v0

    .line 2171
    :cond_2
    const/4 v0, 0x0

    .line 2173
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2171
    return-object v0

    .line 2173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2174
    throw v0
.end method

.method public whitelist openLnbByName(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cb"    # Landroid/media/tv/tuner/LnbCallback;

    .line 2189
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2191
    :try_start_0
    const-string v0, "LNB name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2192
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2193
    const-string v0, "LnbCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2194
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;

    move-result-object v0

    .line 2195
    .local v0, "newLnb":Landroid/media/tv/tuner/Lnb;
    if-eqz v0, :cond_1

    .line 2196
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v1, :cond_0

    .line 2197
    invoke-virtual {v1}, Landroid/media/tv/tuner/Lnb;->close()V

    .line 2198
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    .line 2200
    :cond_0
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 2201
    invoke-virtual {v0, p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2202
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v1, :cond_1

    .line 2203
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    .line 2206
    :cond_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2206
    return-object v1

    .line 2208
    .end local v0    # "newLnb":Landroid/media/tv/tuner/Lnb;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2209
    throw v0
.end method

.method public whitelist openTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
    .locals 2

    .line 2231
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2233
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2234
    const/4 v0, 0x0

    .line 2238
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2234
    return-object v0

    .line 2236
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2238
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2236
    return-object v0

    .line 2238
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2239
    throw v0
.end method

.method blacklist releaseLnb()V
    .locals 4

    .line 2484
    const-string v0, "releaseLnb()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 2485
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2487
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MediaTvTuner"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2489
    :try_start_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2490
    const-string v0, "releasing Lnb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLnb(II)V

    .line 2493
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Integer;

    goto :goto_0

    .line 2495
    :cond_1
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2496
    const-string v0, "NOT releasing Lnb because mLnbHandle is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_2
    :goto_0
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2501
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2502
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2503
    nop

    .line 2504
    return-void

    .line 2501
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2502
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2503
    throw v0
.end method

.method public whitelist removeOutputPid(I)I
    .locals 2
    .param p1, "pid"    # I

    .line 1585
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1587
    const/high16 v0, 0x20000

    :try_start_0
    const-string v1, "Remove output PID"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1589
    const/4 v0, 0x1

    .line 1596
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1589
    return v0

    .line 1591
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1

    .line 1594
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeRemoveOutputPid(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1596
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1594
    return v0

    .line 1592
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "pid":I
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1596
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "pid":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1597
    throw v0
.end method

.method public whitelist scan(Landroid/media/tv/tuner/frontend/FrontendSettings;ILjava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/ScanCallback;)I
    .locals 4
    .param p1, "settings"    # Landroid/media/tv/tuner/frontend/FrontendSettings;
    .param p2, "scanType"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "scanCallback"    # Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1238
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1240
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1243
    :try_start_1
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_0

    if-ne v1, p4, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    if-ne v1, p3, :cond_1

    goto :goto_0

    .line 1246
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Different Scan session already in progress.  stopScan must be called before a new scan session can be started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .end local p2    # "scanType":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    throw v1

    .line 1250
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .restart local p2    # "scanType":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 1251
    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 1252
    const v1, 0x10001

    const-string v2, "Scan with DTMB Frontend"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1255
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1271
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1255
    return v3

    .line 1258
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1, v2}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1260
    iput-object p4, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1261
    iput-object p3, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1262
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1263
    const/16 v1, 0x114

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v3, 0x5

    .line 1264
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1266
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I

    move-result v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1271
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1266
    return v1

    .line 1268
    :cond_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1271
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1268
    return v3

    .line 1269
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .end local p2    # "scanType":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1271
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .restart local p2    # "scanType":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1272
    throw v0
.end method

.method public whitelist setLnaEnabled(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 1361
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLna(Z)I

    move-result v0

    return v0
.end method

.method public whitelist setMaxNumberOfFrontends(II)I
    .locals 2
    .param p1, "frontendType"    # I
    .param p2, "maxNumber"    # I

    .line 1722
    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1724
    const/4 v0, 0x1

    return v0

    .line 1726
    :cond_0
    if-gez p2, :cond_1

    .line 1727
    const/4 v0, 0x4

    return v0

    .line 1729
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeSetMaxNumberOfFrontends(II)I

    move-result v0

    .line 1730
    .local v0, "res":I
    if-nez v0, :cond_2

    .line 1731
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setMaxNumberOfFrontends(II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1732
    const/4 v0, 0x4

    .line 1735
    :cond_2
    return v0
.end method

.method public whitelist setOnTuneEventListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/OnTuneEventListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventListener"    # Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1108
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_0
    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1110
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    .line 1111
    monitor-exit v0

    .line 1112
    return-void

    .line 1111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setResourceLostListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/Tuner$OnResourceLostListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 419
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    const-string v1, "OnResourceLostListener must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 421
    const-string v1, "executor must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 423
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist shareFrontendFromTuner(Landroid/media/tv/tuner/Tuner;)V
    .locals 3
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 443
    const-string v0, "shareFrontendFromTuner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 446
    :try_start_0
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->shareFrontend(II)V

    .line 447
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 448
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    .line 449
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iget-object v1, v0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;

    .line 450
    iget-object v0, v0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 451
    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeShareFrontend(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 454
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 455
    nop

    .line 456
    return-void

    .line 453
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 454
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 455
    throw v0
.end method

.method public whitelist transferOwner(Landroid/media/tv/tuner/Tuner;)I
    .locals 2
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 466
    const-string/jumbo v0, "transferOwner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 468
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 469
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :try_start_0
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->isFrontendOwner()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferFeOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .local v0, "res":I
    if-eqz v0, :cond_1

    .line 478
    nop

    .line 491
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 478
    return v0

    .line 481
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 482
    if-eqz v0, :cond_2

    .line 483
    nop

    .line 491
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 483
    return v0

    .line 486
    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 487
    if-eqz v0, :cond_3

    .line 488
    nop

    .line 491
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 488
    return v0

    .line 491
    .end local v0    # "res":I
    :cond_3
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 495
    nop

    .line 496
    const/4 v0, 0x0

    return v0

    .line 473
    :cond_4
    :goto_0
    const/4 v0, 0x3

    .line 491
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 473
    return v0

    .line 491
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 492
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 493
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 494
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 495
    throw v0
.end method

.method public whitelist tune(Landroid/media/tv/tuner/frontend/FrontendSettings;)I
    .locals 5
    .param p1, "settings"    # Landroid/media/tv/tuner/frontend/FrontendSettings;

    .line 1162
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1164
    :try_start_0
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    .line 1165
    .local v0, "type":I
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MediaTvTuner"

    if-eqz v1, :cond_0

    :try_start_1
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    if-eq v0, v1, :cond_0

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Frontend was opened with type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", new type is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1168
    const/4 v1, 0x3

    .line 1191
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1168
    return v1

    .line 1170
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tune to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getFrequencyLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 1172
    const/16 v1, 0xa

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1173
    const v1, 0x10001

    const-string v4, "Tuner with DTMB Frontend"

    invoke-static {v1, v4}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    .line 1175
    nop

    .line 1191
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1175
    return v3

    .line 1179
    :cond_1
    const/4 v1, 0x0

    :try_start_3
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0, v1, v4}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1180
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1181
    const-string v1, "Write Stats Log for tuning."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/16 v1, 0x114

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1183
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1185
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/media/tv/tuner/Tuner;->nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1186
    .local v1, "res":I
    nop

    .line 1191
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1186
    return v1

    .line 1188
    .end local v1    # "res":I
    :cond_2
    nop

    .line 1191
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1188
    return v3

    .line 1191
    .end local v0    # "type":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1192
    throw v0
.end method

.method public whitelist updateResourcePriority(II)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "niceValue"    # I

    .line 727
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateClientPriority(III)Z

    .line 728
    return-void
.end method
