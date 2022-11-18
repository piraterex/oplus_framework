.class public final Landroid/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "BluetoothManager"


# instance fields
.field private final blacklist mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 74
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->createAdapter(Landroid/content/AttributionSource;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    return-void
.end method


# virtual methods
.method public whitelist getAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public whitelist getConnectedDevices(I)Ljava/util/List;
    .locals 3
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothManager;->getDevicesMatchingConnectionStates(I[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I

    .line 107
    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 109
    .local v2, "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/4 v1, 0x2

    return v1

    .line 112
    .end local v2    # "connectedDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDevicesMatchingConnectionStates(I[I)Ljava/util/List;
    .locals 6
    .param p1, "profile"    # I
    .param p2, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 164
    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 172
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    .line 173
    .local v2, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v2, :cond_2

    return-object v0

    .line 175
    :cond_2
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 176
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    iget-object v4, p0, Landroid/bluetooth/BluetoothManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v2, p2, v4, v3}, Landroid/bluetooth/IBluetoothGatt;->getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 177
    nop

    .line 178
    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BluetoothManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 177
    invoke-static {v4, v5}, Landroid/bluetooth/Attributable;->setAttributionSource(Ljava/util/List;Landroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 182
    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .end local v2    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;>;"
    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BluetoothManager"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public whitelist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;)Landroid/bluetooth/BluetoothGattServer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;I)Landroid/bluetooth/BluetoothGattServer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "transport"    # I

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;IZ)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;IZ)Landroid/bluetooth/BluetoothGattServer;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "transport"    # I
    .param p4, "eatt_support"    # Z

    .line 268
    const-string v0, "BluetoothManager"

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 276
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 277
    .local v2, "managerService":Landroid/bluetooth/IBluetoothManager;
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3

    .line 278
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_0

    .line 279
    const-string v4, "Fail to get GATT Server connection"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-object v1

    .line 282
    :cond_0
    new-instance v4, Landroid/bluetooth/BluetoothGattServer;

    iget-object v5, p0, Landroid/bluetooth/BluetoothManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v4, v3, p3, v5}, Landroid/bluetooth/BluetoothGattServer;-><init>(Landroid/bluetooth/IBluetoothGatt;ILandroid/bluetooth/BluetoothAdapter;)V

    .line 284
    .local v4, "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v4, p2, p4}, Landroid/bluetooth/BluetoothGattServer;->registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 285
    .local v5, "regStatus":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    move-object v1, v4

    :cond_1
    return-object v1

    .line 286
    .end local v2    # "managerService":Landroid/bluetooth/IBluetoothManager;
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "mGattServer":Landroid/bluetooth/BluetoothGattServer;
    .end local v5    # "regStatus":Ljava/lang/Boolean;
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, ""

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    return-object v1

    .line 269
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;Z)Landroid/bluetooth/BluetoothGattServer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothGattServerCallback;
    .param p3, "eatt_support"    # Z

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/BluetoothManager;->openGattServer(Landroid/content/Context;Landroid/bluetooth/BluetoothGattServerCallback;IZ)Landroid/bluetooth/BluetoothGattServer;

    move-result-object v0

    return-object v0
.end method
