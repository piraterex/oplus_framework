.class public Landroid/hardware/contexthub/IContextHub$Default;
.super Ljava/lang/Object;
.source "IContextHub.java"

# interfaces
.implements Landroid/hardware/contexthub/IContextHub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/IContextHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist disableNanoapp(IJI)V
    .locals 0
    .param p1, "contextHubId"    # I
    .param p2, "appId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist enableNanoapp(IJI)V
    .locals 0
    .param p1, "contextHubId"    # I
    .param p2, "appId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist getContextHubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    .locals 0
    .param p1, "contextHubId"    # I
    .param p2, "appBinary"    # Landroid/hardware/contexthub/NanoappBinary;
    .param p3, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .locals 0
    .param p1, "hostEndpointInfo"    # Landroid/hardware/contexthub/HostEndpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onHostEndpointDisconnected(C)V
    .locals 0
    .param p1, "hostEndpointId"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist onSettingChanged(BZ)V
    .locals 0
    .param p1, "setting"    # B
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public blacklist queryNanoapps(I)V
    .locals 0
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    .locals 0
    .param p1, "contextHubId"    # I
    .param p2, "cb"    # Landroid/hardware/contexthub/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method public blacklist sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V
    .locals 0
    .param p1, "contextHubId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist unloadNanoapp(IJI)V
    .locals 0
    .param p1, "contextHubId"    # I
    .param p2, "appId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method
