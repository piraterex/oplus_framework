.class public final Landroid/bluetooth/le/PeriodicAdvertisingManager;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"


# static fields
.field private static final blacklist SKIP_MAX:I = 0x1f3

.field private static final blacklist SKIP_MIN:I = 0x0

.field private static final blacklist SYNC_STARTING:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "PeriodicAdvertisingManager"

.field private static final blacklist TIMEOUT_MAX:I = 0x4000

.field private static final blacklist TIMEOUT_MIN:I = 0xa


# instance fields
.field private final blacklist mAttributionSource:Landroid/content/AttributionSource;

.field private final blacklist mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final blacklist mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field blacklist mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/PeriodicAdvertisingCallback;",
            "Landroid/bluetooth/le/IPeriodicAdvertisingCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Landroid/content/AttributionSource;
    .locals 0

    iget-object p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .param p1, "bluetoothAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 83
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    .line 84
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    .line 85
    return-void
.end method

.method private blacklist wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 307
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V

    return-object v0
.end method


# virtual methods
.method public blacklist registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 6
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 111
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method public blacklist registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .locals 10
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 139
    const-string v0, "PeriodicAdvertisingManager"

    if-eqz p4, :cond_5

    .line 143
    if-eqz p1, :cond_4

    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    .line 151
    const-string/jumbo v1, "timeout must be between 10 and 16384"

    if-ltz p2, :cond_2

    const/16 v2, 0x1f3

    if-gt p2, v2, :cond_2

    .line 156
    const/16 v2, 0xa

    if-lt p3, v2, :cond_1

    const/16 v2, 0x4000

    if-gt p3, v2, :cond_1

    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 172
    if-nez p5, :cond_0

    .line 173
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p5, v1

    .line 176
    :cond_0
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    .line 177
    .local v1, "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v3, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    move-object v9, v3

    .line 181
    .local v9, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 182
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    nop

    .line 187
    .end local v9    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return-void

    .line 183
    :catch_0
    move-exception v3

    .line 184
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Failed to register sync - "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    return-void

    .line 164
    .end local v1    # "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v6

    const/4 v9, 0x2

    move-object v3, p4

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 169
    return-void

    .line 157
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult must contain a valid sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 6
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "advHandle"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 265
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    .line 266
    return-void
.end method

.method public blacklist transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .locals 10
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "advHandle"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 276
    const-string v0, "PeriodicAdvertisingManager"

    if-eqz p4, :cond_2

    .line 281
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 286
    if-nez p5, :cond_0

    .line 287
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p5, v1

    .line 289
    :cond_0
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    .line 290
    .local v1, "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    if-eqz v1, :cond_1

    .line 294
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    move-object v9, v3

    .line 295
    .local v9, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 296
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    nop

    .line 302
    .end local v9    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return-void

    .line 297
    :catch_0
    move-exception v3

    .line 298
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Failed to register sync - "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    return-void

    .line 291
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback was not properly registered"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    .end local v1    # "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_1
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return-void

    .line 277
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist transferSync(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8
    .param p1, "bda"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "serviceData"    # I
    .param p3, "syncHandle"    # I

    .line 235
    const-string v0, "PeriodicAdvertisingManager"

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    .local v2, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 249
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    .line 250
    .local v1, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothGatt;->transferSync(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 251
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    nop

    .line 256
    .end local v1    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return-void

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to register sync - "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    return-void

    .line 236
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    :catch_1
    move-exception v1

    .line 237
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "callback":Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 240
    .local v3, "cb":Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    move-object v0, v3

    .line 241
    .end local v3    # "cb":Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    goto :goto_0

    .line 242
    :cond_0
    if-eqz v0, :cond_1

    .line 243
    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V

    .line 246
    :cond_1
    return-void
.end method

.method public blacklist unregisterSync(Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 6
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 200
    const-string v0, "PeriodicAdvertisingManager"

    if-eqz p1, :cond_1

    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    .local v1, "gatt":Landroid/bluetooth/IBluetoothGatt;
    nop

    .line 212
    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 213
    .local v2, "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    if-eqz v2, :cond_0

    .line 218
    :try_start_1
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    .line 219
    .local v3, "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    iget-object v4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v4, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 220
    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    nop

    .line 225
    .end local v3    # "recv":Lcom/android/modules/utils/SynchronousResultReceiver;
    return-void

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Failed to cancel sync creation - "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    return-void

    .line 214
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback was not properly registered"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    .end local v1    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :catch_1
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    return-void

    .line 201
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
