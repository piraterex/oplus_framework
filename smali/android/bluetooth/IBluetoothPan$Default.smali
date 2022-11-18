.class public Landroid/bluetooth/IBluetoothPan$Default;
.super Ljava/lang/Object;
.source "IBluetoothPan.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothPan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothPan;
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

    .line 42
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

    .line 24
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

    .line 27
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

    .line 30
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

    .line 36
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

    .line 33
    return-void
.end method

.method public blacklist isTetheringOn(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .locals 0
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothPanCallback;
    .param p2, "id"    # I
    .param p3, "value"    # Z
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .param p5, "receiver"    # Lcom/android/modules/utils/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
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

    .line 39
    return-void
.end method
