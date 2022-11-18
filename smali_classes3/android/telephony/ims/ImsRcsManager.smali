.class public Landroid/telephony/ims/ImsRcsManager;
.super Ljava/lang/Object;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;,
        Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;,
        Landroid/telephony/ims/ImsRcsManager$RcsImsCapabilityFlag;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SHOW_CAPABILITY_DISCOVERY_OPT_IN:Ljava/lang/String; = "android.telephony.ims.action.SHOW_CAPABILITY_DISCOVERY_OPT_IN"

.field public static final blacklist CAPABILITY_TYPE_MAX:I = 0x3

.field public static final whitelist CAPABILITY_TYPE_NONE:I = 0x0

.field public static final whitelist CAPABILITY_TYPE_OPTIONS_UCE:I = 0x1

.field public static final whitelist CAPABILITY_TYPE_PRESENCE_UCE:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "ImsRcsManager"


# instance fields
.field private final blacklist mAvailabilityChangedCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;",
            "Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mSubId:I

.field private final blacklist mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    .line 220
    .local p3, "binderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Landroid/telephony/ims/aidl/IImsRcsController;>;"
    .local p4, "telephonyBinderCache":Landroid/telephony/BinderCacheManager;, "Landroid/telephony/BinderCacheManager<Lcom/android/internal/telephony/ITelephony;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    .line 222
    iput-object p1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    .line 223
    iput-object p3, p0, Landroid/telephony/ims/ImsRcsManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    .line 225
    iput-object p4, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    .line 226
    return-void
.end method

.method private blacklist addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    .line 658
    new-instance v0, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V

    .line 659
    .local v0, "adapter":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 660
    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    monitor-exit v1

    .line 662
    return-object v0

    .line 661
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;
    .locals 2

    .line 680
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 683
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getRegistrationState$0(Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "stateCallback"    # Ljava/util/function/Consumer;

    .line 363
    nop

    .line 364
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 363
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$getRegistrationTransportType$1(Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "transportTypeCallback"    # Ljava/util/function/Consumer;

    .line 414
    nop

    .line 415
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 414
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;

    .line 673
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 674
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mAvailabilityChangedCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    monitor-exit v0

    return-object v1

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addOnAvailabilityChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 444
    if-eqz p2, :cond_2

    .line 448
    if-eqz p1, :cond_1

    .line 452
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 453
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_0

    .line 459
    nop

    .line 460
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager;->addAvailabilityChangedListenerToCollection(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object v3

    .line 462
    .local v3, "adapter":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    :try_start_0
    iget v4, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {v3}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/telephony/ims/aidl/IImsRcsController;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    nop

    .line 470
    return-void

    .line 465
    :catch_0
    move-exception v4

    .line 466
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Error calling IImsRcsController#registerRcsAvailabilityCallback"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v5, "Remote IMS Service is not available"

    invoke-direct {v2, v5, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 463
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 464
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v4, v5}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 454
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    .end local v3    # "adapter":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    :cond_0
    const-string v3, "Add availability changed listener: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 449
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 336
    .local p2, "stateCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    .line 339
    if-eqz p1, :cond_1

    .line 343
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 344
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_0

    .line 350
    :try_start_0
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$1;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get registration state error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v1, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 366
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v2, "Get registration state error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null stateCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRegistrationTransportType(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 386
    .local p2, "transportTypeCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    .line 389
    if-eqz p1, :cond_1

    .line 393
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 394
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const-string v1, "ImsRcsManager"

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    new-instance v3, Landroid/telephony/ims/ImsRcsManager$2;

    invoke-direct {v3, p0, p1, p2}, Landroid/telephony/ims/ImsRcsManager$2;-><init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get registration transport type error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v1, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsRcsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 417
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 395
    :cond_0
    const-string v2, "Get registration transport type error: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null transportTypeCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;
    .locals 3

    .line 234
    new-instance v0, Landroid/telephony/ims/RcsUceAdapter;

    iget-object v1, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/RcsUceAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public whitelist isAvailable(II)Z
    .locals 5
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 571
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 572
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_0

    .line 579
    :try_start_0
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isAvailable(III)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 580
    :catch_0
    move-exception v3

    .line 581
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#isAvailable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 582
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 573
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "isAvailable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist isCapable(II)Z
    .locals 5
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 534
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 535
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    const-string v2, "ImsRcsManager"

    if-eqz v0, :cond_0

    .line 542
    :try_start_0
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-interface {v0, v3, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->isCapable(III)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 543
    :catch_0
    move-exception v3

    .line 544
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#isCapable"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v4, "Remote IMS Service is not available"

    invoke-direct {v2, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 536
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "isCapable: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "c"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 259
    if-eqz p2, :cond_2

    .line 262
    if-eqz p1, :cond_1

    .line 266
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 267
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p2, p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 275
    :try_start_0
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 277
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 268
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    const-string v2, "ImsRcsManager"

    const-string v3, "Register registration callback: IImsRcsController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Cannot find remote IMS service"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 263
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null Executor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/ims/ImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 609
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 610
    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 612
    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    .line 613
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 614
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 620
    :try_start_0
    iget v2, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    const/4 v3, 0x2

    .line 622
    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ims/ImsRcsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    nop

    .line 628
    return-void

    .line 625
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 623
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 624
    .local v1, "e":Landroid/os/ServiceSpecificException;
    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 615
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public whitelist removeOnAvailabilityChangedListener(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 488
    if-eqz p1, :cond_2

    .line 493
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 494
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    const-string v1, "ImsRcsManager"

    if-nez v0, :cond_0

    .line 495
    const-string v2, "Remove availability changed listener: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 499
    :cond_0
    nop

    .line 500
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsRcsManager;->removeAvailabilityChangedListenerFromCollection(Landroid/telephony/ims/ImsRcsManager$OnAvailabilityChangedListener;)Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;

    move-result-object v2

    .line 501
    .local v2, "callback":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    if-nez v2, :cond_1

    .line 502
    return-void

    .line 506
    :cond_1
    :try_start_0
    iget v3, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {v2}, Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;->getBinder()Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    goto :goto_0

    .line 507
    :catch_0
    move-exception v3

    .line 508
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error calling IImsRcsController#unregisterRcsAvailabilityCallback"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 489
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    .end local v2    # "callback":Landroid/telephony/ims/ImsRcsManager$AvailabilityCallbackAdapter;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-nullOnAvailabilityChangedListener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    .locals 3
    .param p1, "c"    # Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 301
    if-eqz p1, :cond_1

    .line 305
    invoke-direct {p0}, Landroid/telephony/ims/ImsRcsManager;->getIImsRcsController()Landroid/telephony/ims/aidl/IImsRcsController;

    move-result-object v0

    .line 306
    .local v0, "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    iget v1, p0, Landroid/telephony/ims/ImsRcsManager;->mSubId:I

    invoke-virtual {p1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;->getBinder()Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    nop

    .line 316
    return-void

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 307
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "ImsRcsManager"

    const-string v2, "Unregister registration callback: IImsRcsController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot find remote IMS service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    .end local v0    # "imsRcsController":Landroid/telephony/ims/aidl/IImsRcsController;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must include a non-null RegistrationCallback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/ImsStateCallback;

    .line 636
    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 638
    iget-object v0, p0, Landroid/telephony/ims/ImsRcsManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 640
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 641
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v1

    goto :goto_1

    .line 645
    :cond_0
    :goto_0
    nop

    .line 646
    :goto_1
    return-void
.end method
