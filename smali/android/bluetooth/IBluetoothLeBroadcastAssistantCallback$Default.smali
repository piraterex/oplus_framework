.class public Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeBroadcastAssistantCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastAssistantCallback;
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
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "state"    # Landroid/bluetooth/BluetoothLeBroadcastReceiveState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist onSearchStartFailed(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onSearchStarted(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onSearchStopFailed(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist onSearchStopped(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0
    .param p1, "source"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0
    .param p1, "sink"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "sourceId"    # I
    .param p3, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method
