.class public Landroid/net/vcn/VcnManager;
.super Ljava/lang/Object;
.source "VcnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;,
        Landroid/net/vcn/VcnManager$VcnStatusCallback;,
        Landroid/net/vcn/VcnManager$VcnErrorCode;,
        Landroid/net/vcn/VcnManager$VcnStatusCode;,
        Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;,
        Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;
    }
.end annotation


# static fields
.field private static final blacklist REGISTERED_POLICY_LISTENERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final whitelist VCN_ERROR_CODE_CONFIG_ERROR:I = 0x1

.field public static final whitelist VCN_ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final whitelist VCN_ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final blacklist VCN_NETWORK_SELECTION_WIFI_ENTRY_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_entry_rssi_threshold"

.field public static final blacklist VCN_NETWORK_SELECTION_WIFI_EXIT_RSSI_THRESHOLD_KEY:Ljava/lang/String; = "vcn_network_selection_wifi_exit_rssi_threshold"

.field public static final blacklist VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

.field public static final whitelist VCN_STATUS_CODE_ACTIVE:I = 0x2

.field public static final whitelist VCN_STATUS_CODE_INACTIVE:I = 0x1

.field public static final whitelist VCN_STATUS_CODE_NOT_CONFIGURED:I = 0x0

.field public static final whitelist VCN_STATUS_CODE_SAFE_MODE:I = 0x3


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/net/vcn/IVcnManagementService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 75
    const-class v0, Landroid/net/vcn/VcnManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->TAG:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "vcn_network_selection_wifi_entry_rssi_threshold"

    const-string/jumbo v1, "vcn_network_selection_wifi_exit_rssi_threshold"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/vcn/VcnManager;->VCN_RELATED_CARRIER_CONFIG_KEYS:[Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/vcn/IVcnManagementService;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/vcn/IVcnManagementService;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, "missing context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    .line 132
    const-string v0, "missing service"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/IVcnManagementService;

    iput-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    .line 133
    return-void
.end method

.method public static blacklist getAllPolicyListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;",
            "Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;",
            ">;"
        }
    .end annotation

    .line 144
    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 340
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    const-string v0, "listener must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 343
    new-instance v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder-IA;)V

    .line 345
    .local v0, "binder":Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;
    sget-object v1, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 350
    :try_start_0
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->addVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    nop

    .line 355
    return-void

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 346
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "listener is already registered with VcnManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist addVcnUnderlyingNetworkPolicyListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;

    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->addVcnNetworkPolicyChangeListener(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 251
    return-void
.end method

.method public whitelist applyVcnNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnNetworkPolicyResult;
    .locals 4
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 407
    const-string v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    const-string v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 410
    nop

    .line 411
    invoke-virtual {p0, p1, p2}, Landroid/net/vcn/VcnManager;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0

    .line 412
    .local v0, "policy":Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    new-instance v1, Landroid/net/vcn/VcnNetworkPolicyResult;

    .line 413
    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->isTeardownRequested()Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/vcn/VcnUnderlyingNetworkPolicy;->getMergedNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/net/vcn/VcnNetworkPolicyResult;-><init>(ZLandroid/net/NetworkCapabilities;)V

    .line 412
    return-object v1
.end method

.method public whitelist clearVcnConfig(Landroid/os/ParcelUuid;)V
    .locals 2
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const-string v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/vcn/IVcnManagementService;->clearVcnConfig(Landroid/os/ParcelUuid;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    nop

    .line 202
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getConfiguredSubscriptionGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/vcn/IVcnManagementService;->getConfiguredSubscriptionGroups(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;
    .locals 2
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 287
    const-string v0, "networkCapabilities must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    const-string v0, "linkProperties must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v0, p1, p2}, Landroid/net/vcn/IVcnManagementService;->getUnderlyingNetworkPolicy(Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Landroid/net/vcn/VcnUnderlyingNetworkPolicy;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerVcnStatusCallback(Landroid/os/ParcelUuid;Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .locals 3
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/vcn/VcnManager$VcnStatusCallback;

    .line 553
    const-string v0, "subscriptionGroup must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 554
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 555
    const-string v0, "callback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 557
    monitor-enter p3

    .line 558
    :try_start_0
    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    invoke-direct {v0, p2, p3}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;-><init>(Ljava/util/concurrent/Executor;Landroid/net/vcn/VcnManager$VcnStatusCallback;)V

    invoke-static {p3, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :try_start_1
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p3}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-interface {v0, p1, v1, v2}, Landroid/net/vcn/IVcnManagementService;->registerVcnStatusCallback(Landroid/os/ParcelUuid;Landroid/net/vcn/IVcnStatusCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    nop

    .line 570
    :try_start_2
    monitor-exit p3

    .line 571
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    invoke-static {p3, v1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    .line 568
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v1

    .line 559
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback is already registered with VcnManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v0

    .line 570
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "subscriptionGroup":Landroid/os/ParcelUuid;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 370
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    sget-object v0, Landroid/net/vcn/VcnManager;->REGISTERED_POLICY_LISTENERS:Ljava/util/Map;

    .line 373
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;

    .line 374
    .local v0, "binder":Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListenerBinder;
    if-nez v0, :cond_0

    .line 375
    return-void

    .line 379
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-interface {v1, v0}, Landroid/net/vcn/IVcnManagementService;->removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    nop

    .line 383
    return-void

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist removeVcnUnderlyingNetworkPolicyListener(Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/net/vcn/VcnManager$VcnUnderlyingNetworkPolicyListener;

    .line 263
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnManager;->removeVcnNetworkPolicyChangeListener(Landroid/net/vcn/VcnManager$VcnNetworkPolicyChangeListener;)V

    .line 264
    return-void
.end method

.method public whitelist setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;)V
    .locals 2
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p2, "config"    # Landroid/net/vcn/VcnConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    const-string v0, "subscriptionGroup was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    const-string v0, "config was null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/net/vcn/IVcnManagementService;->setVcnConfig(Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/ServiceSpecificException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist unregisterVcnStatusCallback(Landroid/net/vcn/VcnManager$VcnStatusCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/net/vcn/VcnManager$VcnStatusCallback;

    .line 582
    const-string v0, "callback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 584
    monitor-enter p1

    .line 585
    :try_start_0
    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 587
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 591
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/net/vcn/VcnManager;->mService:Landroid/net/vcn/IVcnManagementService;

    invoke-static {p1}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fgetmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;)Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/vcn/IVcnManagementService;->unregisterVcnStatusCallback(Landroid/net/vcn/IVcnStatusCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    .line 596
    nop

    .line 597
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 598
    return-void

    .line 595
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :goto_0
    :try_start_4
    invoke-static {p1, v0}, Landroid/net/vcn/VcnManager$VcnStatusCallback;->-$$Nest$fputmCbBinder(Landroid/net/vcn/VcnManager$VcnStatusCallback;Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;)V

    .line 596
    nop

    .end local p0    # "this":Landroid/net/vcn/VcnManager;
    .end local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    throw v1

    .line 597
    .restart local p0    # "this":Landroid/net/vcn/VcnManager;
    .restart local p1    # "callback":Landroid/net/vcn/VcnManager$VcnStatusCallback;
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
