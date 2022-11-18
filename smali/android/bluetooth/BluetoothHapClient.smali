.class public final Landroid/bluetooth/BluetoothHapClient;
.super Ljava/lang/Object;
.source "BluetoothHapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHapClient$Feature;,
        Landroid/bluetooth/BluetoothHapClient$Callback;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_HAP_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.action.HAP_CONNECTION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ACTION_HAP_DEVICE_AVAILABLE:Ljava/lang/String; = "android.bluetooth.action.HAP_DEVICE_AVAILABLE"

.field private static final blacklist DBG:Z = false

.field public static final blacklist EXTRA_HAP_FEATURES:Ljava/lang/String; = "android.bluetooth.extra.HAP_FEATURES"

.field public static final blacklist FEATURE_DYNAMIC_PRESETS:I = 0x10

.field public static final blacklist FEATURE_INDEPENDENT_PRESETS:I = 0x8

.field public static final blacklist FEATURE_SYNCHRONIZATED_PRESETS:I = 0x4

.field public static final blacklist FEATURE_TYPE_BANDED:I = 0x2

.field public static final blacklist FEATURE_TYPE_MONAURAL:I = 0x1

.field public static final blacklist FEATURE_WRITABLE_PRESETS:I = 0x20

.field public static final blacklist PRESET_INDEX_UNAVAILABLE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothHapClient"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

.field private final blacklist mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothHapClient$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private final blacklist mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothHapClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/IBluetoothHapClientCallback;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetService(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/IBluetoothHapClient;
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    .line 234
    new-instance v0, Landroid/bluetooth/BluetoothHapClient$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHapClient$1;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

    .line 426
    new-instance v0, Landroid/bluetooth/BluetoothHapClient$2;

    const-class v1, Landroid/bluetooth/IBluetoothHapClient;

    .line 428
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x1c

    const-string v5, "BluetoothHapClient"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothHapClient$2;-><init>(Landroid/bluetooth/BluetoothHapClient;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 435
    new-instance v1, Landroid/bluetooth/BluetoothHapClient$3;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothHapClient$3;-><init>(Landroid/bluetooth/BluetoothHapClient;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 469
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 470
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 471
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 473
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 474
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 476
    :try_start_0
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    goto :goto_0

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 482
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/CloseGuard;

    invoke-direct {v1}, Landroid/util/CloseGuard;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mCloseGuard:Landroid/util/CloseGuard;

    .line 483
    const-string v2, "close"

    invoke-virtual {v1, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothHapClient;
    .locals 1

    .line 515
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothHapClient;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 1276
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1277
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1281
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1283
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 1284
    :cond_1
    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 1288
    const-string v0, "BluetoothHapClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 502
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 503
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 505
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothHapClient"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 512
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 490
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 493
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHapClient;->close()V

    .line 494
    return-void
.end method

.method public blacklist getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 865
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 866
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, 0x0

    .line 867
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 868
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 870
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 872
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 873
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHapClient;->getActivePresetIndex(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 874
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 877
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 878
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 875
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 876
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getActivePresetInfo(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothHapPresetInfo;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 899
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 900
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, 0x0

    .line 901
    .local v1, "defaultValue":Landroid/bluetooth/BluetoothHapPresetInfo;
    const-string v2, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 902
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 907
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 908
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHapClient;->getActivePresetInfo(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 909
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    nop

    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    goto :goto_0

    .line 912
    :catch_0
    move-exception v2

    .line 913
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 910
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 911
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getAllPresetInfo(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHapPresetInfo;",
            ">;"
        }
    .end annotation

    .line 1152
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1153
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    const-string v2, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 1155
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1160
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1161
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHapClient;->getAllPresetInfo(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1162
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1165
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothHapPresetInfo;>;>;"
    :catch_0
    move-exception v2

    .line 1166
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1163
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1164
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 721
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 722
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v1, "defaultValue":Ljava/util/List;
    const-string v2, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 724
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 729
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothHapClient;->getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 730
    nop

    .line 731
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 730
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 735
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List;>;"
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 733
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 734
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 689
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 690
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, 0x0

    .line 691
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 692
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 696
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 697
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHapClient;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 698
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 701
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 702
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 699
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 700
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 791
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 792
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, 0x0

    .line 793
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 794
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 796
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 798
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 799
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 800
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 803
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 801
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 802
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
    .param p1, "states"    # [I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 756
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 757
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v1, "defaultValue":Ljava/util/List;
    const-string v2, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 759
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 763
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 764
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v4, v3}, Landroid/bluetooth/IBluetoothHapClient;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 765
    nop

    .line 766
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    .line 765
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 770
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List;>;"
    :catch_0
    move-exception v2

    .line 771
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 768
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 769
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public blacklist getFeatures(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1185
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1186
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, 0x0

    .line 1187
    .local v1, "defaultValue":I
    const/4 v2, 0x0

    const-string v3, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 1188
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1190
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1192
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 1193
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHapClient;->getFeatures(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1194
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 1197
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 1198
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1195
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1196
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public blacklist getHapGroup(Landroid/bluetooth/BluetoothDevice;)I
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 833
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 834
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, -0x1

    .line 835
    .local v1, "defaultValue":I
    const/4 v2, -0x1

    const-string v3, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 836
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 838
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 840
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 841
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothHapClient;->getHapGroup(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 842
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 845
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 846
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 843
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 844
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public blacklist getPresetInfo(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothHapPresetInfo;
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I

    .line 1118
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1119
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, 0x0

    .line 1120
    .local v1, "defaultValue":Landroid/bluetooth/BluetoothHapPresetInfo;
    const-string v2, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 1121
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1123
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1126
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 1127
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v4, v3}, Landroid/bluetooth/IBluetoothHapClient;->getPresetInfo(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1128
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHapPresetInfo;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1131
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Landroid/bluetooth/BluetoothHapPresetInfo;>;"
    :catch_0
    move-exception v2

    .line 1132
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1129
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 1130
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHapClient$Callback;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 542
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 543
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 549
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 558
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v1

    .line 559
    .local v1, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-eqz v1, :cond_1

    .line 561
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 562
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothHapClient;->mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothHapClient;->registerCallback(Landroid/bluetooth/IBluetoothHapClientCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 563
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    .end local v1    # "service":Landroid/bluetooth/IBluetoothHapClient;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/bluetooth/BluetoothHapClient;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    throw v2

    .line 565
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothHapClient;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    :catch_1
    move-exception v1

    .line 566
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothHapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    nop

    .line 573
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 576
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    monitor-exit v0

    .line 578
    return-void

    .line 574
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothHapClient;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    throw v1

    .line 577
    .restart local p0    # "this":Landroid/bluetooth/BluetoothHapClient;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist selectPreset(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 938
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 939
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 940
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 944
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHapClient;->selectPreset(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    goto :goto_0

    .line 945
    :catch_0
    move-exception v1

    .line 946
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 949
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist selectPresetForGroup(II)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "presetIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 974
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 975
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 976
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 978
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 980
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothHapClient;->selectPresetForGroup(IILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    goto :goto_0

    .line 981
    :catch_0
    move-exception v1

    .line 982
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 985
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 647
    const-string v0, "BluetoothDevice cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 648
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 649
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    const/4 v1, 0x0

    .line 650
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothHapClient"

    if-nez v0, :cond_0

    .line 651
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    const/16 v4, 0x64

    if-ne p2, v4, :cond_2

    .line 657
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 658
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v5, v4}, Landroid/bluetooth/IBluetoothHapClient;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 659
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 662
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v2

    .line 663
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 660
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 661
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_0
    return v2
.end method

.method public whitelist setPresetName(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "presetIndex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1227
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1228
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 1229
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1231
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1233
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothHapClient;->setPresetName(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    goto :goto_0

    .line 1234
    :catch_0
    move-exception v1

    .line 1235
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1238
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setPresetNameForGroup(IILjava/lang/String;)V
    .locals 3
    .param p1, "groupId"    # I
    .param p2, "presetIndex"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1262
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1263
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 1264
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1266
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1268
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/bluetooth/IBluetoothHapClient;->setPresetNameForGroup(IILjava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    goto :goto_0

    .line 1269
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1273
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist switchToNextPreset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1002
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1003
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 1004
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1006
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1008
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHapClient;->switchToNextPreset(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1011
    goto :goto_0

    .line 1009
    :catch_0
    move-exception v1

    .line 1010
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1013
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist switchToNextPresetForGroup(I)V
    .locals 3
    .param p1, "groupId"    # I

    .line 1032
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1033
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 1034
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1036
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1038
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHapClient;->switchToNextPresetForGroup(ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    goto :goto_0

    .line 1039
    :catch_0
    move-exception v1

    .line 1040
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1043
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist switchToPreviousPreset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 1060
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1061
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 1062
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1064
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothHapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHapClient;->switchToPreviousPreset(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    goto :goto_0

    .line 1067
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1071
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist switchToPreviousPresetForGroup(I)V
    .locals 3
    .param p1, "groupId"    # I

    .line 1090
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 1091
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-nez v0, :cond_0

    .line 1092
    const-string v1, "BluetoothHapClient"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1094
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1096
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothHapClient;->switchToPreviousPresetForGroup(ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    goto :goto_0

    .line 1097
    :catch_0
    move-exception v1

    .line 1098
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1101
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothHapClient$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothHapClient$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 599
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 607
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothHapClient;->getService()Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v0

    .line 613
    .local v0, "service":Landroid/bluetooth/IBluetoothHapClient;
    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 615
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothHapClient;->mCallback:Landroid/bluetooth/IBluetoothHapClientCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothHapClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothHapClient;->unregisterCallback(Landroid/bluetooth/IBluetoothHapClientCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 616
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 620
    .end local v0    # "service":Landroid/bluetooth/IBluetoothHapClient;
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 618
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 619
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v1, "BluetoothHapClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has not been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothHapClient;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    throw v1

    .line 607
    .restart local p0    # "this":Landroid/bluetooth/BluetoothHapClient;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothHapClient$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
