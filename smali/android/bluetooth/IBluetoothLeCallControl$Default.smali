.class public Landroid/bluetooth/IBluetoothLeCallControl$Default;
.super Ljava/lang/Object;
.source "IBluetoothLeCallControl.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothLeCallControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothLeCallControl;
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

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist callAdded(ILandroid/bluetooth/BluetoothLeCall;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "ccid"    # I
    .param p2, "call"    # Landroid/bluetooth/BluetoothLeCall;
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist callRemoved(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "ccid"    # I
    .param p2, "callId"    # Landroid/os/ParcelUuid;
    .param p3, "reason"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist callStateChanged(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "ccid"    # I
    .param p2, "callId"    # Landroid/os/ParcelUuid;
    .param p3, "state"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist currentCallsList(ILjava/util/List;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "ccid"    # I
    .param p3, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeCall;",
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

    .line 31
    .local p2, "calls":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothLeCall;>;"
    return-void
.end method

.method public blacklist networkStateChanged(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "ccid"    # I
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "technology"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothLeCallControlCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/bluetooth/IBluetoothLeCallControlCallback;
    .param p3, "uci"    # Ljava/lang/String;
    .param p5, "capabilities"    # I
    .param p6, "provider"    # Ljava/lang/String;
    .param p7, "technology"    # I
    .param p8, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/bluetooth/IBluetoothLeCallControlCallback;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p4, "uriSchemes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist requestResult(IIILandroid/content/AttributionSource;)V
    .locals 0
    .param p1, "ccid"    # I
    .param p2, "requestId"    # I
    .param p3, "result"    # I
    .param p4, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist unregisterBearer(Ljava/lang/String;Landroid/content/AttributionSource;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
