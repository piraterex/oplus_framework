.class public Landroid/telephony/mbms/vendor/IMbmsGroupCallService$Default;
.super Ljava/lang/Object;
.source "IMbmsGroupCallService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsGroupCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsGroupCallService;
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist dispose(I)V
    .locals 0
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist initialize(Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;I)I
    .locals 1
    .param p1, "callback"    # Landroid/telephony/mbms/IMbmsGroupCallSessionCallback;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startGroupCall(IJLjava/util/List;Ljava/util/List;Landroid/telephony/mbms/IGroupCallCallback;)I
    .locals 1
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .param p4, "saiList"    # Ljava/util/List;
    .param p5, "frequencyList"    # Ljava/util/List;
    .param p6, "callback"    # Landroid/telephony/mbms/IGroupCallCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopGroupCall(IJ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "tmgi"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist updateGroupCall(IJLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "subscriptionId"    # I
    .param p2, "tmgi"    # J
    .param p4, "saiList"    # Ljava/util/List;
    .param p5, "frequencyList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
