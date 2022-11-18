.class public Landroid/bluetooth/IBluetoothLeAudioCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeAudioCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeAudioCallback;
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

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "status"    # Landroid/bluetooth/BluetoothLeAudioCodecStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onGroupStatusChanged(II)V
    .locals 0
    .param p1, "groupId"    # I
    .param p2, "groupStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
