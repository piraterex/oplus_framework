.class public Landroid/bluetooth/IBluetoothDeviceGroup$Default;
.super Ljava/lang/Object;
.source "IBluetoothDeviceGroup.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothDeviceGroup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothDeviceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist disconnect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist getDeviceGroup(IZLandroid/content/AttributionSource;)Landroid/bluetooth/DeviceGroup;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "mPublicAddr"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDiscoveredGroups(ZLandroid/content/AttributionSource;)Ljava/util/List;
    .locals 1
    .param p1, "mPublicAddr"    # Z
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/DeviceGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExclusiveAccessStatus(IILjava/util/List;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "groupId"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    .local p3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-void
.end method

.method public blacklist getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;ZLandroid/content/AttributionSource;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "mPublicAddr"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isGroupDiscoveryInProgress(ILandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerGroupClientApp(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGroupCallback;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "uuid"    # Landroid/os/ParcelUuid;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothGroupCallback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist setExclusiveAccess(IILjava/util/List;ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "groupId"    # I
    .param p4, "value"    # I
    .param p5, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    .local p3, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-void
.end method

.method public blacklist startGroupDiscovery(IILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "groupId"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist stopGroupDiscovery(IILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "groupId"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist unregisterGroupClientApp(ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "appId"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
