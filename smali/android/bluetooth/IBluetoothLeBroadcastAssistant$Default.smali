.class public Landroid/bluetooth/IBluetoothLeBroadcastAssistant$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeBroadcastAssistant.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastAssistant;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastAssistant;
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
.method public blacklist addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceMetadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "isGroupOp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 1
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastReceiveState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

.method public blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
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

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaximumSourceCapacity(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSearchInProgress()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist modifySource(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "updatedMetadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public blacklist registerCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist removeSource(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startSearchingForSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    return-void
.end method

.method public blacklist stopSearchingForSources()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
