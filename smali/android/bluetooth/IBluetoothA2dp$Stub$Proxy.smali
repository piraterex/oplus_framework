.class Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp$Stub;
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

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 580
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 583
    iget-object v0, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 594
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 595
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 596
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 597
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    nop

    .line 602
    return-void

    .line 600
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    throw v1
.end method

.method public blacklist connectWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 607
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 608
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 609
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 610
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 611
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    nop

    .line 616
    return-void

    .line 614
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    throw v1
.end method

.method public blacklist disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 863
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 865
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 866
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 870
    nop

    .line 871
    return-void

    .line 869
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 870
    throw v1
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 621
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 623
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 624
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 628
    nop

    .line 629
    return-void

    .line 627
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 628
    throw v1
.end method

.method public blacklist disconnectWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 636
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 637
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 638
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 642
    nop

    .line 643
    return-void

    .line 641
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 642
    throw v1
.end method

.method public blacklist enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 852
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 853
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 857
    nop

    .line 858
    return-void

    .line 856
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 857
    throw v1
.end method

.method public blacklist getActiveDevice(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 741
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 743
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 744
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 748
    nop

    .line 749
    return-void

    .line 747
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 748
    throw v1
.end method

.method public blacklist getBufferConstraints(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 931
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 932
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 933
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 934
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 938
    nop

    .line 939
    return-void

    .line 937
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 938
    throw v1
.end method

.method public blacklist getCodecStatus(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 822
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 823
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 824
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 825
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 826
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    nop

    .line 831
    return-void

    .line 829
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    throw v1
.end method

.method public blacklist getConnectedDevices(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 648
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 649
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 650
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    nop

    .line 655
    return-void

    .line 653
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    throw v1
.end method

.method public blacklist getConnectedDevicesWithAttribution(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 660
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 662
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 663
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 667
    nop

    .line 668
    return-void

    .line 666
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 667
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

    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 769
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 770
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 771
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 772
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 773
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 777
    nop

    .line 778
    return-void

    .line 776
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 777
    throw v1
.end method

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 701
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 702
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 703
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 707
    nop

    .line 708
    return-void

    .line 706
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 707
    throw v1
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

    .line 711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 713
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 714
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 715
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 716
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 717
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    nop

    .line 722
    return-void

    .line 720
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 721
    throw v1
.end method

.method public blacklist getDevicesMatchingConnectionStates([ILcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "states"    # [I
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 673
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 675
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    nop

    .line 681
    return-void

    .line 679
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 680
    throw v1
.end method

.method public blacklist getDevicesMatchingConnectionStatesWithAttribution([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "states"    # [I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 686
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 688
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 689
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 690
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    nop

    .line 695
    return-void

    .line 693
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw v1
.end method

.method public blacklist getDynamicBufferSupport(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 919
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 920
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 921
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    nop

    .line 926
    return-void

    .line 924
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 587
    const-string v0, "android.bluetooth.IBluetoothA2dp"

    return-object v0
.end method

.method public blacklist isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 809
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 810
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 811
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 812
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 816
    nop

    .line 817
    return-void

    .line 815
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 816
    throw v1
.end method

.method public blacklist isAvrcpAbsoluteVolumeSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 783
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 785
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    nop

    .line 790
    return-void

    .line 788
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 789
    throw v1
.end method

.method public blacklist isOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 890
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 891
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 892
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 893
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 894
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    nop

    .line 899
    return-void

    .line 897
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    throw v1
.end method

.method public blacklist isOptionalCodecsSupported(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 876
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 877
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 878
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 879
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 880
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 884
    nop

    .line 885
    return-void

    .line 883
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 884
    throw v1
.end method

.method public blacklist setActiveDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 727
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 729
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 730
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 731
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    nop

    .line 736
    return-void

    .line 734
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    throw v1
.end method

.method public blacklist setAvrcpAbsoluteVolume(ILandroid/content/AttributionSource;)V
    .locals 5
    .param p1, "volume"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 795
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 798
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    nop

    .line 803
    return-void

    .line 801
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    throw v1
.end method

.method public blacklist setBufferLengthMillis(IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 5
    .param p1, "codec"    # I
    .param p2, "size"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 944
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 948
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 949
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    nop

    .line 954
    return-void

    .line 952
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    throw v1
.end method

.method public blacklist setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;Landroid/content/AttributionSource;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 834
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 836
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 837
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 838
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 839
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 840
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    nop

    .line 845
    return-void

    .line 843
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
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

    .line 752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 754
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 756
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 758
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 759
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    nop

    .line 764
    return-void

    .line 762
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 763
    throw v1
.end method

.method public blacklist setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "value"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 904
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 905
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 908
    iget-object v1, p0, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    nop

    .line 913
    return-void

    .line 911
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    throw v1
.end method
