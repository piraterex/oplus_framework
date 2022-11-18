.class public Landroid/app/UserSwitchObserver;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "UserSwitchObserver.java"


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public greylist-max-o onForegroundProfileSwitch(I)V
    .locals 0
    .param p1, "newProfileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public greylist-max-o onLockedBootComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public greylist-max-o onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public greylist-max-o onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    if-eqz p2, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 37
    :cond_0
    return-void
.end method
