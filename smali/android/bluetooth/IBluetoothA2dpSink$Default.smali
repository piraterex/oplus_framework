.class public Landroid/bluetooth/IBluetoothA2dpSink$Default;
.super Ljava/lang/Object;
.source "IBluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dpSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dpSink;
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

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist getAudioConfig(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "states"    # [I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "connectionPolicy"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .param p4, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
