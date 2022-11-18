.class public interface abstract Landroid/bluetooth/IBluetoothSyncHelper;
.super Ljava/lang/Object;
.source "IBluetoothSyncHelper.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSyncHelper$Stub;,
        Landroid/bluetooth/IBluetoothSyncHelper$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSyncHelper"


# virtual methods
.method public abstract blacklist addBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAllBroadcastSourceInformation(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/util/List;
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
.end method

.method public abstract blacklist getConnectedDevices(Landroid/content/AttributionSource;)Ljava/util/List;
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
.end method

.method public abstract blacklist getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;)Ljava/util/List;
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
.end method

.method public abstract blacklist registerAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeBroadcastSource(Landroid/bluetooth/BluetoothDevice;BZLandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist searchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist selectBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;ZLandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setBroadcastCode(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopScanOffload(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopSearchforLeAudioBroadcasters(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterAppCallback(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateBroadcastSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BleBroadcastSourceInfo;ZLandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
