.class public interface abstract Landroid/bluetooth/IBluetoothDeviceGroup;
.super Ljava/lang/Object;
.source "IBluetoothDeviceGroup.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothDeviceGroup$Stub;,
        Landroid/bluetooth/IBluetoothDeviceGroup$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothDeviceGroup"


# virtual methods
.method public abstract blacklist connect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist disconnect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDeviceGroup(IZLandroid/content/AttributionSource;)Landroid/bluetooth/DeviceGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDiscoveredGroups(ZLandroid/content/AttributionSource;)Ljava/util/List;
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
.end method

.method public abstract blacklist getExclusiveAccessStatus(IILjava/util/List;Landroid/content/AttributionSource;)V
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
.end method

.method public abstract blacklist getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;ZLandroid/content/AttributionSource;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isGroupDiscoveryInProgress(ILandroid/content/AttributionSource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerGroupClientApp(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGroupCallback;Landroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setExclusiveAccess(IILjava/util/List;ILandroid/content/AttributionSource;)V
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
.end method

.method public abstract blacklist startGroupDiscovery(IILandroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopGroupDiscovery(IILandroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterGroupClientApp(ILandroid/content/AttributionSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
