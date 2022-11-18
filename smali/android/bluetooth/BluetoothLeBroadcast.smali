.class public final Landroid/bluetooth/BluetoothLeBroadcast;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcast.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothLeBroadcast"

.field private static final blacklist VDBG:Z = false


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final blacklist mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

.field private final blacklist mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeBroadcast$Callback;",
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
            "Landroid/bluetooth/IBluetoothLeAudio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/content/AttributionSource;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetService(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/bluetooth/IBluetoothLeAudio;
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v6, Landroid/bluetooth/BluetoothLeBroadcast$1;

    const-class v0, Landroid/bluetooth/IBluetoothLeAudio;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x1a

    const-string v4, "BluetoothLeAudioBroadcast"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothLeBroadcast$1;-><init>(Landroid/bluetooth/BluetoothLeBroadcast;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    .line 78
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcast$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcast$2;-><init>(Landroid/bluetooth/BluetoothLeBroadcast;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    .line 173
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcast$3;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcast$3;-><init>(Landroid/bluetooth/BluetoothLeBroadcast;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 330
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 331
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    .line 332
    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 334
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 335
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    .line 344
    const-string v2, "close"

    invoke-virtual {v0, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private blacklist getService()Landroid/bluetooth/IBluetoothLeAudio;
    .locals 1

    .line 764
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothLeAudio;

    return-object v0
.end method

.method private blacklist isEnabled()Z
    .locals 2

    .line 759
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 760
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 768
    const-string v0, "BluetoothLeBroadcast"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    .line 746
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 747
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 749
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    goto :goto_0

    .line 750
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothLeBroadcast"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    .line 756
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1

    .line 351
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->close()V

    .line 355
    return-void
.end method

.method public whitelist getAllBroadcastMetadata()Ljava/util/List;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
            ">;"
        }
    .end annotation

    .line 691
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 692
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 693
    .local v1, "defaultValue":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastMetadata;>;"
    const-string v2, "BluetoothLeBroadcast"

    if-nez v0, :cond_0

    .line 694
    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 700
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastMetadata;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getAllBroadcastMetadata(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 701
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

    .line 704
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothLeBroadcastMetadata;>;>;"
    :catch_0
    move-exception v2

    .line 705
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 702
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 703
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

    .line 708
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public whitelist getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 369
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMaximumNumberOfBroadcasts()I
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 719
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 720
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x1

    .line 721
    .local v1, "defaultValue":I
    const/4 v2, 0x1

    const-string v3, "BluetoothLeBroadcast"

    if-nez v0, :cond_0

    .line 722
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 724
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 726
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 727
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->getMaximumNumberOfBroadcasts(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 728
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

    .line 731
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 732
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 729
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 730
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

    .line 735
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist isPlaying(I)Z
    .locals 7
    .param p1, "broadcastId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 658
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 659
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    const/4 v1, 0x0

    .line 660
    .local v1, "defaultValue":Z
    const/4 v2, 0x0

    const-string v3, "BluetoothLeBroadcast"

    if-nez v0, :cond_0

    .line 661
    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    .line 666
    .local v4, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->isPlaying(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 667
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

    .line 670
    .end local v4    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v2

    .line 671
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 668
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 669
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

    .line 674
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return v2
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 426
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v0, "registerCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 433
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 442
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    .line 443
    .local v1, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v1, :cond_1

    .line 445
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    .line 446
    .local v2, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothLeAudio;->registerLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 447
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

    .line 453
    .end local v1    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    .end local v2    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    throw v2

    .line 449
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    :catch_1
    move-exception v1

    .line 450
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "BluetoothLeBroadcast"

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

    .line 453
    nop

    .line 457
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 460
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    monitor-exit v0

    .line 462
    return-void

    .line 458
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    throw v1

    .line 461
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist startBroadcast(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)V
    .locals 3
    .param p1, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .param p2, "broadcastCode"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 557
    const-string v0, "contentMetadata cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 559
    const-string/jumbo v0, "startBroadcasting"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 561
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_0

    .line 562
    const-string v1, "BluetoothLeBroadcast"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->startBroadcast(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[BLandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    goto :goto_0

    .line 567
    :catch_0
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 571
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist stopBroadcast(I)V
    .locals 3
    .param p1, "broadcastId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 629
    const-string v0, "disableBroadcastMode"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 631
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_0

    .line 632
    const-string v1, "BluetoothLeBroadcast"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->stopBroadcast(ILandroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 641
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 483
    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 485
    const-string/jumbo v0, "unregisterCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    .line 488
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    :try_start_1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 497
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-eqz v0, :cond_0

    .line 498
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 499
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothLeAudio;->unregisterLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 500
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 504
    .end local v0    # "service":Landroid/bluetooth/IBluetoothLeAudio;
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 502
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothLeBroadcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has not been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .end local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    throw v1

    .line 491
    .restart local p0    # "this":Landroid/bluetooth/BluetoothLeBroadcast;
    .restart local p1    # "callback":Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist updateBroadcast(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;)V
    .locals 3
    .param p1, "broadcastId"    # I
    .param p2, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 595
    const-string v0, "contentMetadata cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    const-string/jumbo v0, "updateBroadcast"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    .line 599
    .local v0, "service":Landroid/bluetooth/IBluetoothLeAudio;
    if-nez v0, :cond_0

    .line 600
    const-string v1, "BluetoothLeBroadcast"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->updateBroadcast(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;Landroid/content/AttributionSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    goto :goto_0

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 609
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
