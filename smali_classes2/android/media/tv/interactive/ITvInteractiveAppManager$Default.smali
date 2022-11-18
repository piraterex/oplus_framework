.class public Landroid/media/tv/interactive/ITvInteractiveAppManager$Default;
.super Ljava/lang/Object;
.source "ITvInteractiveAppManager.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppManager;
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

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createBiInteractiveApp(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "biIAppUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public blacklist createSession(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;III)V
    .locals 0
    .param p1, "client"    # Landroid/media/tv/interactive/ITvInteractiveAppClient;
    .param p2, "iAppServiceId"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "seq"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist destroyBiInteractiveApp(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "biIAppId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist getTvInteractiveAppServiceList(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist notifyAdResponse(Landroid/os/IBinder;Landroid/media/tv/AdResponse;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "response"    # Landroid/media/tv/AdResponse;
    .param p3, "UserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public blacklist notifyBroadcastInfoResponse(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoResponse;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "response"    # Landroid/media/tv/BroadcastInfoResponse;
    .param p3, "UserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public blacklist notifyContentAllowed(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public blacklist notifyContentBlocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "rating"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public blacklist notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "errMsg"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist notifySignalStrength(Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "stength"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public blacklist notifyTrackSelected(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist notifyTracksChanged(Landroid/os/IBinder;Ljava/util/List;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public blacklist notifyTuned(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist notifyVideoAvailable(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist notifyVideoUnavailable(Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "reason"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public blacklist registerAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    .locals 0
    .param p1, "tiasId"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/media/tv/interactive/AppLinkInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public blacklist relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public blacklist releaseSession(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist removeMediaView(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public blacklist resetInteractiveApp(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "tiasId"    # Ljava/lang/String;
    .param p2, "command"    # Landroid/os/Bundle;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist sendCurrentChannelLcn(Landroid/os/IBinder;II)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "lcn"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "signingId"    # Ljava/lang/String;
    .param p3, "result"    # [B
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist sendStreamVolume(Landroid/os/IBinder;FI)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public blacklist setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist setTeletextAppEnabled(Landroid/os/IBinder;ZI)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist startInteractiveApp(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist stopInteractiveApp(Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist unregisterAppLinkInfo(Ljava/lang/String;Landroid/media/tv/interactive/AppLinkInfo;I)V
    .locals 0
    .param p1, "tiasId"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/media/tv/interactive/AppLinkInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;I)V
    .locals 0
    .param p1, "callback"    # Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method
