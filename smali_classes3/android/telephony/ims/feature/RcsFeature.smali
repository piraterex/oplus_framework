.class public Landroid/telephony/ims/feature/RcsFeature;
.super Landroid/telephony/ims/feature/ImsFeature;
.source "RcsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;,
        Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RcsFeature"


# instance fields
.field private blacklist mCapExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private blacklist mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;->getCapabilityExchangeImplBaseInternal()Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetCapabilityExchangeEventListener(Landroid/telephony/ims/feature/RcsFeature;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->setCapabilityExchangeEventListener(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 287
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 289
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;-><init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    .line 290
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 299
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    .line 300
    if-eqz p1, :cond_0

    .line 303
    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 305
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;-><init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    .line 306
    return-void

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getCapabilityExchangeImplBaseInternal()Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 3

    .line 479
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    if-eqz v1, :cond_0

    .line 485
    monitor-exit v0

    return-object v1

    .line 483
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/ims/feature/RcsFeature;
    throw v1

    .line 486
    .restart local p0    # "this":Landroid/telephony/ims/feature/RcsFeature;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist initRcsCapabilityExchangeImplBase(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 466
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/RcsFeature;->destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V

    .line 471
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setCapabilityExchangeEventListener(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 443
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 445
    if-eqz p1, :cond_0

    .line 446
    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->initRcsCapabilityExchangeImplBase(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/RcsFeature;->destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V

    .line 453
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    .line 455
    :goto_0
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 0
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "callback"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 384
    return-void
.end method

.method public whitelist createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 1
    .param p1, "listener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 404
    new-instance v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    return-object v0
.end method

.method public whitelist destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .locals 0
    .param p1, "capExchangeImpl"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    .line 414
    return-void
.end method

.method public bridge synthetic blacklist getBinder()Landroid/os/IInterface;
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-object v0
.end method

.method public blacklist initialize(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 317
    invoke-super {p0, p1, p2}, Landroid/telephony/ims/feature/ImsFeature;->initialize(Landroid/content/Context;I)V

    .line 319
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/feature/RcsFeature$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/feature/RcsFeature;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method synthetic blacklist lambda$initialize$0$android-telephony-ims-feature-RcsFeature()V
    .locals 0

    .line 319
    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->onFeatureReady()V

    return-void
.end method

.method public final whitelist notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 2
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 341
    if-eqz p1, :cond_0

    .line 344
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    .line 345
    return-void

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RcsImsCapabilities must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onFeatureReady()V
    .locals 0

    .line 426
    return-void
.end method

.method public whitelist onFeatureRemoved()V
    .locals 0

    .line 420
    return-void
.end method

.method public whitelist queryCapabilityConfiguration(II)Z
    .locals 1
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic blacklist queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .locals 3

    .line 331
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities-IA;)V

    return-object v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 496
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 497
    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    .line 498
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->-$$Nest$fputmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/concurrent/Executor;)V

    .line 500
    :cond_0
    return-void
.end method
