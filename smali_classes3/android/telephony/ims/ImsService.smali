.class public Landroid/telephony/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsService$Listener;,
        Landroid/telephony/ims/ImsService$ImsServiceCapability;
    }
.end annotation


# static fields
.field private static final blacklist CAPABILITIES_LOG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CAPABILITY_EMERGENCY_OVER_MMTEL:J = 0x1L

.field public static final blacklist CAPABILITY_MAX_INDEX:J

.field public static final whitelist CAPABILITY_SIP_DELEGATE_CREATION:J = 0x2L

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsService"

.field public static final greylist-max-o SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.ImsService"


# instance fields
.field private final blacklist mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final greylist-max-o mImsServiceController:Landroid/os/IBinder;

.field private greylist-max-o mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/ImsService;Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateEmergencyOnlyMmTelFeatureInternal(Landroid/telephony/ims/ImsService;I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateMmTelFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeature(Landroid/telephony/ims/ImsService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsService;->removeImsFeature(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetImsFeatureCreatedForSlot(Landroid/telephony/ims/ImsService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smsanitizeCapabilities(J)J
    .locals 0

    invoke-static {p0, p1}, Landroid/telephony/ims/ImsService;->sanitizeCapabilities(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 146
    nop

    .line 147
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    .line 167
    new-instance v0, Landroid/telephony/ims/ImsService$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsService$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    .line 187
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    .line 225
    new-instance v0, Landroid/telephony/ims/ImsService$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2;-><init>(Landroid/telephony/ims/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    .line 201
    invoke-virtual {p0}, Landroid/telephony/ims/ImsService;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 202
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 205
    :cond_0
    return-void
.end method

.method private greylist-max-o addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "f"    # Landroid/telephony/ims/feature/ImsFeature;

    .line 480
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 483
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_0

    .line 485
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 486
    iget-object v2, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    monitor-exit v0

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist addImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 447
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 450
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_0

    .line 451
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not add ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit v0

    return-void

    .line 455
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 456
    .local v2, "f":Landroid/telephony/ims/feature/ImsFeature;
    if-eqz v2, :cond_1

    .line 457
    invoke-virtual {v2, p3}, Landroid/telephony/ims/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 459
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/feature/ImsFeature;
    :cond_1
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist createEmergencyOnlyMmTelFeatureInternal(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3
    .param p1, "slotId"    # I

    .line 417
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    .line 418
    .local v0, "f":Landroid/telephony/ims/feature/MmTelFeature;
    if-eqz v0, :cond_0

    .line 419
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 420
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 421
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1

    .line 423
    :cond_0
    const-string v1, "ImsService"

    const-string v2, "createEmergencyOnlyMmTelFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createMmTelFeatureInternal(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 405
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    .line 406
    .local v0, "f":Landroid/telephony/ims/feature/MmTelFeature;
    if-eqz v0, :cond_0

    .line 407
    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 408
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 409
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1

    .line 411
    :cond_0
    const-string v1, "ImsService"

    const-string v2, "createMmTelFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist createRcsFeatureInternal(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "subI"    # I

    .line 429
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/ImsService;->createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    .line 430
    .local v0, "f":Landroid/telephony/ims/feature/RcsFeature;
    if-eqz v0, :cond_0

    .line 431
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 432
    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Landroid/telephony/ims/ImsService;->setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V

    .line 433
    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    return-object v1

    .line 435
    :cond_0
    const-string v1, "ImsService"

    const-string v2, "createRcsFeatureInternal: null feature returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getCapabilitiesString(J)Ljava/lang/String;
    .locals 13
    .param p0, "caps"    # J

    .line 805
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 806
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "capabilities={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 809
    const-wide/16 v1, -0x1

    .line 811
    .local v1, "filter":J
    const-wide/16 v3, 0x0

    .line 812
    .local v3, "i":J
    :goto_0
    and-long v5, p0, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x3f

    cmp-long v5, v3, v5

    if-gtz v5, :cond_1

    .line 813
    long-to-int v5, v3

    const-wide/16 v9, 0x1

    shl-long v5, v9, v5

    .line 814
    .local v5, "bitToCheck":J
    and-long v11, p0, v5

    cmp-long v7, v11, v7

    if-eqz v7, :cond_0

    .line 815
    sget-object v7, Landroid/telephony/ims/ImsService;->CAPABILITIES_LOG_MAP:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v8, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 816
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    :cond_0
    const/4 v7, 0x1

    shl-long/2addr v1, v7

    .line 820
    add-long/2addr v3, v9

    .line 821
    .end local v5    # "bitToCheck":J
    goto :goto_0

    .line 822
    :cond_1
    const-string/jumbo v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private blacklist getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;
    .locals 2
    .param p1, "slotId"    # I

    .line 547
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 548
    .local v0, "createFlag":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 549
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v1

    .line 550
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 552
    :cond_0
    return-object v0
.end method

.method private blacklist removeImsFeature(II)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 493
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 496
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_0

    .line 497
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    monitor-exit v0

    return-void

    .line 501
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 502
    .local v2, "f":Landroid/telephony/ims/feature/ImsFeature;
    if-nez v2, :cond_1

    .line 503
    const-string v3, "ImsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exists on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    monitor-exit v0

    return-void

    .line 507
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/ims/feature/ImsFeature;->onFeatureRemoved()V

    .line 508
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 509
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/feature/ImsFeature;
    monitor-exit v0

    .line 511
    return-void

    .line 509
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist removeImsFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 464
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 467
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_0

    .line 468
    const-string v2, "ImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeatureStatusCallback - no features on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    monitor-exit v0

    return-void

    .line 472
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    .line 473
    .local v2, "f":Landroid/telephony/ims/feature/ImsFeature;
    if-eqz v2, :cond_1

    .line 474
    invoke-virtual {v2, p3}, Landroid/telephony/ims/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    .line 476
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    .end local v2    # "f":Landroid/telephony/ims/feature/ImsFeature;
    :cond_1
    monitor-exit v0

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist sanitizeCapabilities(J)J
    .locals 6
    .param p0, "caps"    # J

    .line 789
    const-wide/16 v0, -0x1

    .line 791
    .local v0, "filter":J
    sget-wide v2, Landroid/telephony/ims/ImsService;->CAPABILITY_MAX_INDEX:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v2, v2

    shl-long/2addr v0, v2

    .line 793
    not-long v2, v0

    and-long/2addr p0, v2

    .line 796
    const-wide/16 v2, -0x2

    and-long/2addr p0, v2

    .line 797
    return-wide p0
.end method

.method private blacklist setImsFeatureCreatedForSlot(IIZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "createdForSlot"    # Z

    .line 530
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 531
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 532
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setupFeature(Landroid/telephony/ims/feature/ImsFeature;II)V
    .locals 0
    .param p1, "f"    # Landroid/telephony/ims/feature/ImsFeature;
    .param p2, "slotId"    # I
    .param p3, "featureType"    # I

    .line 441
    invoke-virtual {p1, p0, p2}, Landroid/telephony/ims/feature/ImsFeature;->initialize(Landroid/content/Context;I)V

    .line 442
    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/ImsService;->addImsFeature(IILandroid/telephony/ims/feature/ImsFeature;)V

    .line 443
    return-void
.end method


# virtual methods
.method public whitelist createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 1
    .param p1, "slotId"    # I

    .line 686
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 687
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 659
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 660
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 672
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/telephony/ims/ImsService;->setImsFeatureCreatedForSlot(IIZ)V

    .line 673
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->createRcsFeature(I)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist disableIms(I)V
    .locals 0
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 647
    return-void
.end method

.method public whitelist disableImsForSubscription(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 628
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->disableIms(I)V

    .line 629
    return-void
.end method

.method public whitelist enableIms(I)V
    .locals 0
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    return-void
.end method

.method public whitelist enableImsForSubscription(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 618
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->enableIms(I)V

    .line 619
    return-void
.end method

.method public whitelist getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;-><init>()V

    return-object v0
.end method

.method public whitelist getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 727
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 834
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method

.method public blacklist getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 518
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    .line 520
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 521
    .local v1, "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    if-nez v1, :cond_0

    .line 522
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 524
    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/ImsFeature;

    monitor-exit v0

    return-object v2

    .line 525
    .end local v1    # "features":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/telephony/ims/feature/ImsFeature;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getImsServiceCapabilities()J
    .locals 2

    .line 594
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 1
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 764
    new-instance v0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    return-object v0
.end method

.method public whitelist getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "subscriptionId"    # I

    .line 739
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsService;->getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .locals 1
    .param p1, "slotId"    # I

    .line 785
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isImsFeatureCreatedForSlot(II)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I

    .line 541
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mCreateImsFeatureWithSlotIdFlagMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 542
    :try_start_0
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsService;->getImsFeatureCreatedForSlot(I)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 397
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.ims.ImsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const-string v0, "ImsService"

    const-string v1, "ImsService Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V
    .locals 2
    .param p1, "c"    # Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Landroid/telephony/ims/ImsService;->mListener:Landroid/telephony/ims/aidl/IImsServiceControllerListener;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsServiceControllerListener;->onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V

    .line 581
    return-void

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Framework is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 1

    .line 567
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;-><init>()V

    return-object v0
.end method

.method public whitelist readyForFeatureCreation()V
    .locals 0

    .line 608
    return-void
.end method
