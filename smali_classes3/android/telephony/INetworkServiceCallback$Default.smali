.class public Landroid/telephony/INetworkServiceCallback$Default;
.super Ljava/lang/Object;
.source "INetworkServiceCallback.java"

# interfaces
.implements Landroid/telephony/INetworkServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/INetworkServiceCallback;
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

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onNetworkStateChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onRequestNetworkRegistrationInfoComplete(ILandroid/telephony/NetworkRegistrationInfo;)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "state"    # Landroid/telephony/NetworkRegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method
