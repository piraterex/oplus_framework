.class public Landroid/bluetooth/IBluetoothGroupCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothGroupCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGroupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGroupCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConnectionStateChanged(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist onExclusiveAccessAvailable(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onExclusiveAccessChanged(IIILjava/util/List;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "accessValue"    # I
    .param p3, "accessStatus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    .local p4, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-void
.end method

.method public blacklist onExclusiveAccessStatusFetched(II)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "accessValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onGroupClientAppRegistered(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onGroupClientAppUnregistered(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onGroupDeviceFound(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "groupDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onGroupDiscoveryStatusChanged(III)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "status"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
