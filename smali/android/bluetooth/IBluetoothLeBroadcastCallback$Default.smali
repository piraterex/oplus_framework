.class public Landroid/bluetooth/IBluetoothLeBroadcastCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeBroadcastCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeBroadcastCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeBroadcastCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0
    .param p1, "broadcastId"    # I
    .param p2, "metadata"    # Landroid/bluetooth/BluetoothLeBroadcastMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist onBroadcastStartFailed(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onBroadcastStarted(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onBroadcastStopFailed(I)V
    .locals 0
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onBroadcastStopped(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onBroadcastUpdateFailed(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist onBroadcastUpdated(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onPlaybackStarted(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist onPlaybackStopped(II)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "broadcastId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
