.class public Landroid/net/wifi/nl80211/IInterfaceEventCallback$Default;
.super Ljava/lang/Object;
.source "IInterfaceEventCallback.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IInterfaceEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IInterfaceEventCallback;
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
.method public blacklist OnApInterfaceReady(Landroid/net/wifi/nl80211/IApInterface;)V
    .locals 0
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IApInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist OnApTorndownEvent(Landroid/net/wifi/nl80211/IApInterface;)V
    .locals 0
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IApInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist OnClientInterfaceReady(Landroid/net/wifi/nl80211/IClientInterface;)V
    .locals 0
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IClientInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist OnClientTorndownEvent(Landroid/net/wifi/nl80211/IClientInterface;)V
    .locals 0
    .param p1, "network_interface"    # Landroid/net/wifi/nl80211/IClientInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
