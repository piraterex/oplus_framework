.class public Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Default;
.super Ljava/lang/Object;
.source "IBleBroadcastAudioScanAssistCallback.java"

# interfaces
.implements Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    .local p3, "broadcastSourceChannels":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BleBroadcastSourceChannel;>;"
    return-void
.end method

.method public blacklist onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .locals 0
    .param p1, "rcvr"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "srcId"    # B
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .locals 0
    .param p1, "scanres"    # Landroid/bluetooth/le/ScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
