.class public Landroid/telephony/INetworkService$Default;
.super Ljava/lang/Object;
.source "INetworkService.java"

# interfaces
.implements Landroid/telephony/INetworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/INetworkService;
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

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createNetworkServiceProvider(I)V
    .locals 0
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist removeNetworkServiceProvider(I)V
    .locals 0
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "domain"    # I
    .param p3, "callback"    # Landroid/telephony/INetworkServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
