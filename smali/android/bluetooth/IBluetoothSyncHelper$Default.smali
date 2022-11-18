.class public Landroid/bluetooth/IBluetoothSyncHelper$Default;
.super Ljava/lang/Object;
.source "IBluetoothSyncHelper.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSyncHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;
    .param p3, "groupOp"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;
    .locals 1
    .param p1, "states"    # [I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Landroid/content/AttributionSource;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "cb"    # Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public blacklist removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "SourceId"    # B
    .param p3, "groupOp"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRes"    # Landroid/bluetooth/le/ScanResult;
    .param p3, "groupOp"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;
    .param p3, "groupOp"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupOp"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupOp"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "cb"    # Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcInfo"    # Landroid/bluetooth/BleBroadcastSourceInfo;
    .param p3, "groupOp"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method
