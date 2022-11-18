.class public Landroid/telephony/mbms/IMbmsGroupCallSessionCallback$Default;
.super Ljava/lang/Object;
.source "IMbmsGroupCallSessionCallback.java"

# interfaces
.implements Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAvailableSaisUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "currentSai"    # Ljava/util/List;
    .param p2, "availableSais"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist onMiddlewareReady()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist onServiceInterfaceAvailable(Ljava/lang/String;I)V
    .locals 0
    .param p1, "interfaceName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method
