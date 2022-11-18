.class Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothHidHost.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidHost$Stub;
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

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 394
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 408
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 410
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 411
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 412
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 424
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 425
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 426
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 430
    nop

    .line 431
    return-void

    .line 429
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 430
    throw v1
.end method

.method public blacklist getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 438
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 439
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    nop

    .line 444
    return-void

    .line 442
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    throw v1
.end method

.method public blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 494
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 495
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 496
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    nop

    .line 501
    return-void

    .line 499
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw v1
.end method

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 465
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 466
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 467
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    nop

    .line 472
    return-void

    .line 470
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    throw v1
.end method

.method public blacklist getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "states"    # [I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 452
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 453
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    nop

    .line 458
    return-void

    .line 456
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    throw v1
.end method

.method public blacklist getIdleTime(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 597
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 599
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 600
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 601
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    nop

    .line 606
    return-void

    .line 604
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 401
    const-string v0, "android.bluetooth.IBluetoothHidHost"

    return-object v0
.end method

.method public blacklist getProtocolMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 508
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 509
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 510
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    nop

    .line 515
    return-void

    .line 513
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw v1
.end method

.method public blacklist getReport(Landroid/bluetooth/BluetoothDevice;BBILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "reportId"    # B
    .param p4, "bufferSize"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .param p6, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 549
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 553
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 555
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 556
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    nop

    .line 561
    return-void

    .line 559
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v1
.end method

.method public blacklist sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # Ljava/lang/String;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 582
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 584
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 586
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 587
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    nop

    .line 592
    return-void

    .line 590
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    throw v1
.end method

.method public blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 477
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 479
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 481
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 482
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    throw v1
.end method

.method public blacklist setIdleTime(Landroid/bluetooth/BluetoothDevice;BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "idleTime"    # B
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 611
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 614
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 615
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 616
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    nop

    .line 621
    return-void

    .line 619
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 620
    throw v1
.end method

.method public blacklist setProtocolMode(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "protocolMode"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 538
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 539
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 543
    nop

    .line 544
    return-void

    .line 542
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 543
    throw v1
.end method

.method public blacklist setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reportType"    # B
    .param p3, "report"    # Ljava/lang/String;
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 568
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 569
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 571
    invoke-virtual {v0, p5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 572
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    nop

    .line 577
    return-void

    .line 575
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    throw v1
.end method

.method public blacklist virtualUnplug(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 520
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothHidHost"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 522
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 523
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 524
    iget-object v1, p0, Landroid/bluetooth/IBluetoothHidHost$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-void

    .line 527
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v1
.end method
