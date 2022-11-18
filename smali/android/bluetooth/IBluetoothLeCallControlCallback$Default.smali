.class public Landroid/bluetooth/IBluetoothLeCallControlCallback$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeCallControlCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeCallControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeCallControlCallback;
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

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAcceptCall(ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onBearerRegistered(I)V
    .locals 0
    .param p1, "ccid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onHoldCall(ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist onJoinCalls(ILjava/util/List;)V
    .locals 0
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    .local p2, "uuids":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelUuid;>;"
    return-void
.end method

.method public blacklist onPlaceCall(ILandroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onTerminateCall(ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onUnholdCall(ILandroid/os/ParcelUuid;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
