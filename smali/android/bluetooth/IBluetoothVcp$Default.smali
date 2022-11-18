.class public Landroid/bluetooth/IBluetoothVcp$Default;
.super Ljava/lang/Object;
.source "IBluetoothVcp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothVcp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothVcp;
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

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActiveProfile(ILandroid/content/AttributionSource;)I
    .locals 1
    .param p1, "audioType"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getConnectionMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
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

.method public blacklist getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I
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

.method public blacklist isMute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "volume"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist setActiveProfile(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "audioType"    # I
    .param p3, "profile"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMute(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "enableMute"    # Z
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
