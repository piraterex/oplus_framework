.class public Landroid/media/tv/interactive/ITvInteractiveAppService$Default;
.super Ljava/lang/Object;
.source "ITvInteractiveAppService.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    .locals 0
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .param p3, "iAppServiceId"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/tv/interactive/AppLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist sendAppLinkCommand(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "command"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/tv/interactive/AppLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
