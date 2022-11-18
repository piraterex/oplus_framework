.class Landroid/bluetooth/IBluetooth$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2047
    iput-object p1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2048
    return-void
.end method


# virtual methods
.method public blacklist allowLowLatencyAudio(ZLandroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "allowed"    # Z
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3348
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3349
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3350
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3354
    nop

    .line 3355
    return-void

    .line 3353
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3354
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2051
    iget-object v0, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist canBondWithoutDialog(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3317
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3318
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3319
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3320
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3321
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    nop

    .line 3326
    return-void

    .line 3324
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3325
    throw v1
.end method

.method public blacklist cancelBondProcess(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2438
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2439
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2440
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2441
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2442
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2446
    nop

    .line 2447
    return-void

    .line 2445
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2446
    throw v1
.end method

.method public blacklist cancelDiscovery(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2344
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2345
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2346
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2347
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2351
    nop

    .line 2352
    return-void

    .line 2350
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2351
    throw v1
.end method

.method public blacklist connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3205
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3206
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3207
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3208
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3209
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3213
    nop

    .line 3214
    return-void

    .line 3212
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3213
    throw v1
.end method

.method public blacklist createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Landroid/bluetooth/OobData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transport"    # I
    .param p3, "p192Data"    # Landroid/bluetooth/OobData;
    .param p4, "p256Data"    # Landroid/bluetooth/OobData;
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2421
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2422
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2423
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2425
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2426
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2427
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2428
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2432
    nop

    .line 2433
    return-void

    .line 2431
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2432
    throw v1
.end method

.method public blacklist disable(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2085
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2087
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2088
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2089
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2090
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2094
    nop

    .line 2095
    return-void

    .line 2093
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2094
    throw v1
.end method

.method public blacklist disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3219
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3220
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3221
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3222
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3223
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3227
    nop

    .line 3228
    return-void

    .line 3226
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3227
    throw v1
.end method

.method public blacklist enable(ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "quietMode"    # Z
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2073
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2074
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2075
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2076
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2077
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2081
    nop

    .line 2082
    return-void

    .line 2080
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2081
    throw v1
.end method

.method public blacklist factoryReset(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2928
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2929
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2930
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2931
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2935
    nop

    .line 2936
    return-void

    .line 2934
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2935
    throw v1
.end method

.method public blacklist fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2645
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2646
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2647
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2648
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2651
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2653
    nop

    .line 2654
    return v2

    .line 2651
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2653
    throw v2
.end method

.method public blacklist fetchRemoteUuidsWithAttribution(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "transport"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2660
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2661
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2663
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2664
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2665
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2668
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2669
    nop

    .line 2670
    return-void

    .line 2668
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2669
    throw v1
.end method

.method public blacklist generateLocalOobData(ILandroid/bluetooth/IBluetoothOobDataCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "transport"    # I
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothOobDataCallback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3331
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3334
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3335
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3336
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3340
    nop

    .line 3341
    return-void

    .line 3339
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3340
    throw v1
.end method

.method public blacklist getActiveDevices(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "profile"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3248
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3250
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3251
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3252
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x56

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3256
    nop

    .line 3257
    return-void

    .line 3255
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3256
    throw v1
.end method

.method public blacklist getAdapterConnectionState(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2383
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2384
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2385
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2389
    nop

    .line 2390
    return-void

    .line 2388
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2389
    throw v1
.end method

.method public blacklist getAddress()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2099
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2102
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2103
    iget-object v2, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2104
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2105
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2108
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2110
    nop

    .line 2111
    return-object v2

    .line 2108
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2110
    throw v2
.end method

.method public blacklist getAddressWithAttribution(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2117
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2118
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2119
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2120
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2124
    nop

    .line 2125
    return-void

    .line 2123
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2124
    throw v1
.end method

.method public blacklist getBatteryLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2690
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2691
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2692
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2693
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2694
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2698
    nop

    .line 2699
    return-void

    .line 2697
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2698
    throw v1
.end method

.method public blacklist getBluetoothClass(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2196
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2197
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2198
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2199
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2203
    nop

    .line 2204
    return-void

    .line 2202
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2203
    throw v1
.end method

.method public blacklist getBondState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2466
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2467
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2468
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2469
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2470
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2474
    nop

    .line 2475
    return-void

    .line 2473
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2474
    throw v1
.end method

.method public blacklist getBondedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2408
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2409
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2410
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2411
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    nop

    .line 2416
    return-void

    .line 2414
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    throw v1
.end method

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2506
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2509
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2510
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2511
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2512
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2516
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2518
    nop

    .line 2519
    return v2

    .line 2516
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2518
    throw v2
.end method

.method public blacklist getConnectionStateWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2525
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2526
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2527
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2528
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2529
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2533
    nop

    .line 2534
    return-void

    .line 2532
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2533
    throw v1
.end method

.method public blacklist getDeviceType(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3381
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3382
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3383
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3384
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3385
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3388
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3390
    nop

    .line 3391
    return v2

    .line 3388
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3390
    throw v2
.end method

.method public blacklist getDiscoverableTimeout(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2304
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2305
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2306
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2307
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2311
    nop

    .line 2312
    return-void

    .line 2310
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2311
    throw v1
.end method

.method public blacklist getDiscoveryEndMillis(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2371
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2372
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2373
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2377
    nop

    .line 2378
    return-void

    .line 2376
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2377
    throw v1
.end method

.method public blacklist getIdentityAddress(Ljava/lang/String;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2157
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2159
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2160
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    nop

    .line 2165
    return-void

    .line 2163
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2164
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 2055
    const-string v0, "android.bluetooth.IBluetooth"

    return-object v0
.end method

.method public blacklist getIoCapability(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2223
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2224
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2225
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2226
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2230
    nop

    .line 2231
    return-void

    .line 2229
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2230
    throw v1
.end method

.method public blacklist getLeIoCapability(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2250
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2251
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2252
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2253
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2257
    nop

    .line 2258
    return-void

    .line 2256
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2257
    throw v1
.end method

.method public blacklist getLeMaximumAdvertisingDataLength(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3073
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3074
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3075
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3078
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3079
    nop

    .line 3080
    return-void

    .line 3078
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3079
    throw v1
.end method

.method public blacklist getMaxConnectedAudioDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2704
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2705
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2706
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2707
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2711
    nop

    .line 2712
    return-void

    .line 2710
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2711
    throw v1
.end method

.method public blacklist getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2822
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2824
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2825
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2826
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2827
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2828
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    nop

    .line 2833
    return-void

    .line 2831
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    throw v1
.end method

.method public blacklist getMetadata(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "key"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3144
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3145
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3146
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3147
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3148
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3149
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    nop

    .line 3154
    return-void

    .line 3152
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3153
    throw v1
.end method

.method public blacklist getMostRecentlyConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3262
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3263
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3264
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3265
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x57

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3269
    nop

    .line 3270
    return-void

    .line 3268
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3269
    throw v1
.end method

.method public blacklist getName(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2170
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2171
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2172
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2173
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2177
    nop

    .line 2178
    return-void

    .line 2176
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2177
    throw v1
.end method

.method public blacklist getNameLengthForAdvertise(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2184
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2185
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2186
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2190
    nop

    .line 2191
    return-void

    .line 2189
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2190
    throw v1
.end method

.method public blacklist getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2766
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2767
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2768
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2769
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2770
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2774
    nop

    .line 2775
    return-void

    .line 2773
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2774
    throw v1
.end method

.method public blacklist getProfileConnectionState(ILcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "profile"    # I
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2395
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2398
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2402
    nop

    .line 2403
    return-void

    .line 2401
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2402
    throw v1
.end method

.method public blacklist getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2570
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2571
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2572
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2573
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2576
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2578
    nop

    .line 2579
    return-object v2

    .line 2576
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2578
    throw v2
.end method

.method public blacklist getRemoteAliasWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2585
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2586
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2587
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2588
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2589
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2593
    nop

    .line 2594
    return-void

    .line 2592
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2593
    throw v1
.end method

.method public blacklist getRemoteClass(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2614
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2615
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2616
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2617
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2618
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    nop

    .line 2623
    return-void

    .line 2621
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    throw v1
.end method

.method public blacklist getRemoteName(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2539
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2540
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2541
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2542
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2543
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2547
    nop

    .line 2548
    return-void

    .line 2546
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2547
    throw v1
.end method

.method public blacklist getRemoteType(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2553
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2554
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2555
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2556
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2557
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    nop

    .line 2562
    return-void

    .line 2560
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2561
    throw v1
.end method

.method public blacklist getRemoteUuids(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2628
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2629
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2630
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2631
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2632
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2636
    nop

    .line 2637
    return-void

    .line 2635
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2636
    throw v1
.end method

.method public blacklist getScanMode(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2277
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2278
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2279
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2280
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    nop

    .line 2285
    return-void

    .line 2283
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2284
    throw v1
.end method

.method public blacklist getSilenceMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2795
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2796
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2797
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2798
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2799
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2803
    nop

    .line 2804
    return-void

    .line 2802
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2803
    throw v1
.end method

.method public blacklist getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2853
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2854
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2855
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2856
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2857
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2861
    nop

    .line 2862
    return-void

    .line 2860
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2861
    throw v1
.end method

.method public blacklist getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2914
    iget-object v2, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2915
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2919
    .local v2, "_result":Landroid/bluetooth/IBluetoothSocketManager;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2921
    nop

    .line 2922
    return-object v2

    .line 2919
    .end local v2    # "_result":Landroid/bluetooth/IBluetoothSocketManager;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2920
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2921
    throw v2
.end method

.method public blacklist getSocketOpt(III[B)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "port"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3478
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3479
    if-nez p4, :cond_0

    .line 3480
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3483
    :cond_0
    array-length v2, p4

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3485
    :goto_0
    iget-object v2, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3486
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3488
    .local v3, "_result":I
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3491
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3493
    nop

    .line 3494
    return v3

    .line 3491
    .end local v3    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3493
    throw v2
.end method

.method public blacklist getState(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 4
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2061
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2062
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2063
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2067
    nop

    .line 2068
    return-void

    .line 2066
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2067
    throw v1
.end method

.method public blacklist getSupportedProfiles(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2494
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2495
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2496
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2497
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2501
    nop

    .line 2502
    return-void

    .line 2500
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2501
    throw v1
.end method

.method public blacklist getTwsPlusPeerAddress(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3419
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3420
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3421
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x61

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3422
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3423
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 3426
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3428
    nop

    .line 3429
    return-object v2

    .line 3426
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3428
    throw v2
.end method

.method public blacklist getUuids(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2130
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2131
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2132
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2133
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2137
    nop

    .line 2138
    return-void

    .line 2136
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2137
    throw v1
.end method

.method public blacklist isActivityAndEnergyReportingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2977
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2978
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2979
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2983
    nop

    .line 2984
    return-void

    .line 2982
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2983
    throw v1
.end method

.method public blacklist isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2480
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2481
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2482
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2483
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2484
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2488
    nop

    .line 2489
    return-void

    .line 2487
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2488
    throw v1
.end method

.method public blacklist isBroadcastActive(Landroid/content/AttributionSource;)Z
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3503
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3504
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3505
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3506
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3509
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3511
    nop

    .line 3512
    return v2

    .line 3509
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3511
    throw v2
.end method

.method public blacklist isDiscovering(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2357
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2358
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2359
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2360
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2364
    nop

    .line 2365
    return-void

    .line 2363
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2364
    throw v1
.end method

.method public blacklist isLe2MPhySupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2989
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2990
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2991
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x43

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2995
    nop

    .line 2996
    return-void

    .line 2994
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2995
    throw v1
.end method

.method public blacklist isLeAudioBroadcastAssistantSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3061
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3062
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3063
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x49

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3067
    nop

    .line 3068
    return-void

    .line 3066
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3067
    throw v1
.end method

.method public blacklist isLeAudioBroadcastSourceSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3049
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3050
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3051
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3055
    nop

    .line 3056
    return-void

    .line 3054
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3055
    throw v1
.end method

.method public blacklist isLeAudioSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3037
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3038
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3039
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3043
    nop

    .line 3044
    return-void

    .line 3042
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3043
    throw v1
.end method

.method public blacklist isLeCodedPhySupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3001
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3003
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3007
    nop

    .line 3008
    return-void

    .line 3006
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3007
    throw v1
.end method

.method public blacklist isLeExtendedAdvertisingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3011
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3013
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3014
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3015
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x45

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3019
    nop

    .line 3020
    return-void

    .line 3018
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3019
    throw v1
.end method

.method public blacklist isLePeriodicAdvertisingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3025
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3026
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3027
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x46

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3031
    nop

    .line 3032
    return-void

    .line 3030
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3031
    throw v1
.end method

.method public blacklist isMultiAdvertisementSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2939
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2941
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2942
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2943
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2947
    nop

    .line 2948
    return-void

    .line 2946
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2947
    throw v1
.end method

.method public blacklist isOffloadedFilteringSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2953
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2954
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2955
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    nop

    .line 2960
    return-void

    .line 2958
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2959
    throw v1
.end method

.method public blacklist isOffloadedScanBatchingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2965
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2966
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2967
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x41

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2971
    nop

    .line 2972
    return-void

    .line 2970
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2971
    throw v1
.end method

.method public blacklist isTwsPlusDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3399
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3400
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3401
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3402
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3403
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3404
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3407
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3409
    nop

    .line 3410
    return v2

    .line 3407
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3409
    throw v2
.end method

.method public blacklist onBrEdrDown(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3192
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3193
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3194
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3195
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x52

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3199
    nop

    .line 3200
    return-void

    .line 3198
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3199
    throw v1
.end method

.method public blacklist onLeServiceUp(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3179
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3180
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3181
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3182
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x51

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    nop

    .line 3187
    return-void

    .line 3185
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    throw v1
.end method

.method public blacklist registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothConnectionCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3289
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3291
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3292
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3293
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x59

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3297
    nop

    .line 3298
    return-void

    .line 3296
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3297
    throw v1
.end method

.method public blacklist registerCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2882
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2883
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2884
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2885
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2886
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2890
    nop

    .line 2891
    return-void

    .line 2889
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2890
    throw v1
.end method

.method public blacklist registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "listener"    # Landroid/bluetooth/IBluetoothMetadataListener;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3099
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3100
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3101
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3102
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3103
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3104
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3108
    nop

    .line 3109
    return-void

    .line 3107
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3108
    throw v1
.end method

.method public blacklist removeActiveDevice(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "profiles"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3275
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3278
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3279
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x58

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3283
    nop

    .line 3284
    return-void

    .line 3282
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3283
    throw v1
.end method

.method public blacklist removeBond(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2452
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2453
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2454
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2455
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2456
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    nop

    .line 2461
    return-void

    .line 2459
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2460
    throw v1
.end method

.method public blacklist reportActivityInfo(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3085
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3086
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3087
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3088
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3092
    nop

    .line 3093
    return-void

    .line 3091
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3092
    throw v1
.end method

.method public blacklist requestActivityInfo(Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;Landroid/content/AttributionSource;)V
    .locals 5
    .param p1, "listener"    # Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3166
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3168
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3169
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x50

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3173
    nop

    .line 3174
    return-void

    .line 3172
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3173
    throw v1
.end method

.method public blacklist retrievePendingSocketForServiceRecord(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3548
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3549
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3550
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3551
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3552
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3556
    nop

    .line 3557
    return-void

    .line 3555
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3556
    throw v1
.end method

.method public blacklist sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2675
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2676
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2677
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2678
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2679
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2680
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2684
    nop

    .line 2685
    return-void

    .line 2683
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2684
    throw v1
.end method

.method public blacklist setActiveDevice(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profiles"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3233
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3234
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3236
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3237
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3238
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x55

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3242
    nop

    .line 3243
    return-void

    .line 3241
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3242
    throw v1
.end method

.method public blacklist setBluetoothClass(Landroid/bluetooth/BluetoothClass;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "bluetoothClass"    # Landroid/bluetooth/BluetoothClass;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2209
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2210
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2211
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2212
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2213
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2217
    nop

    .line 2218
    return-void

    .line 2216
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2217
    throw v1
.end method

.method public blacklist setBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)V
    .locals 5
    .param p1, "devicei"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "localInitiated"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3363
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3365
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3366
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3367
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3370
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3372
    nop

    .line 3373
    return-void

    .line 3370
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3372
    throw v2
.end method

.method public blacklist setDiscoverableTimeout(JLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2317
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2319
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2320
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2321
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    nop

    .line 2326
    return-void

    .line 2324
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    throw v1
.end method

.method public blacklist setForegroundUserId(ILandroid/content/AttributionSource;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3562
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3564
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3565
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x69

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3569
    nop

    .line 3570
    return-void

    .line 3568
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3569
    throw v1
.end method

.method public blacklist setIoCapability(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "capability"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2236
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2238
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2239
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2240
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2244
    nop

    .line 2245
    return-void

    .line 2243
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2244
    throw v1
.end method

.method public blacklist setLeIoCapability(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "capability"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2263
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2266
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2267
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2271
    nop

    .line 2272
    return-void

    .line 2270
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2271
    throw v1
.end method

.method public blacklist setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2838
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2839
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2840
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2841
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2842
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2843
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2847
    nop

    .line 2848
    return-void

    .line 2846
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2847
    throw v1
.end method

.method public blacklist setMetadata(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "key"    # I
    .param p3, "value"    # [B
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3128
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3129
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3130
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3131
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3132
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3133
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3134
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3138
    nop

    .line 3139
    return-void

    .line 3137
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3138
    throw v1
.end method

.method public blacklist setName(Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2143
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2145
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2146
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2147
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    nop

    .line 2152
    return-void

    .line 2150
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    throw v1
.end method

.method public blacklist setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2751
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2753
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2754
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2755
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2756
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    nop

    .line 2761
    return-void

    .line 2759
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    throw v1
.end method

.method public blacklist setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "passkey"    # [B
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2734
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2736
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2737
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2739
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2740
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2741
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2745
    nop

    .line 2746
    return-void

    .line 2744
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2745
    throw v1
.end method

.method public blacklist setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2809
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2810
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2811
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2812
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2813
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2814
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2818
    nop

    .line 2819
    return-void

    .line 2817
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2818
    throw v1
.end method

.method public blacklist setPin(Landroid/bluetooth/BluetoothDevice;ZI[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "accept"    # Z
    .param p3, "len"    # I
    .param p4, "pinCode"    # [B
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2717
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2718
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2719
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2720
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2721
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2722
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2723
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2724
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2728
    nop

    .line 2729
    return-void

    .line 2727
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2728
    throw v1
.end method

.method public blacklist setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2599
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2600
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2602
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2603
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2604
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    nop

    .line 2609
    return-void

    .line 2607
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2608
    throw v1
.end method

.method public blacklist setScanMode(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2293
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2294
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2298
    nop

    .line 2299
    return-void

    .line 2297
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2298
    throw v1
.end method

.method public blacklist setSilenceMode(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "silence"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2778
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2780
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2781
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2782
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2783
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2784
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2785
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2789
    nop

    .line 2790
    return-void

    .line 2788
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2789
    throw v1
.end method

.method public blacklist setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2865
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2867
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2868
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2870
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2871
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2872
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2876
    nop

    .line 2877
    return-void

    .line 2875
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2876
    throw v1
.end method

.method public blacklist setSocketOpt(III[BI)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "port"    # I
    .param p3, "optionName"    # I
    .param p4, "optionVal"    # [B
    .param p5, "optionLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3456
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3457
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3458
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3459
    iget-object v2, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3460
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3464
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3466
    nop

    .line 3467
    return v2

    .line 3464
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3466
    throw v2
.end method

.method public blacklist startDiscovery(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2331
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2332
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2333
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2334
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    nop

    .line 2339
    return-void

    .line 2337
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2338
    throw v1
.end method

.method public blacklist startRfcommListener(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3518
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3520
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3521
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3522
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3523
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3524
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3528
    nop

    .line 3529
    return-void

    .line 3527
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3528
    throw v1
.end method

.method public blacklist stopRfcommListener(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3535
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3536
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3537
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3538
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x67

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    nop

    .line 3543
    return-void

    .line 3541
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3542
    throw v1
.end method

.method public blacklist unregisterBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothConnectionCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3303
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3305
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3306
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3307
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3311
    nop

    .line 3312
    return-void

    .line 3310
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3311
    throw v1
.end method

.method public blacklist unregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothCallback;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2896
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2898
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2899
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2900
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    nop

    .line 2905
    return-void

    .line 2903
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2904
    throw v1
.end method

.method public blacklist unregisterMetadataListener(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3114
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3115
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3116
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3117
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3118
    iget-object v1, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x4d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3122
    nop

    .line 3123
    return-void

    .line 3121
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3122
    throw v1
.end method

.method public blacklist updateQuietModeStatus(ZLandroid/content/AttributionSource;)V
    .locals 5
    .param p1, "quietMode"    # Z
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetooth"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3438
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3439
    iget-object v3, p0, Landroid/bluetooth/IBluetooth$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3440
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3443
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3445
    nop

    .line 3446
    return-void

    .line 3443
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3445
    throw v2
.end method
