.class public abstract Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBiInteractiveAppCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .param p2, "biIAppUri"    # Landroid/net/Uri;
    .param p3, "biIAppId"    # Ljava/lang/String;

    .line 1885
    return-void
.end method

.method public blacklist onCommandRequest(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .line 1790
    return-void
.end method

.method public blacklist onLayoutSurface(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;IIII)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1777
    return-void
.end method

.method public blacklist onRequestCurrentChannelLcn(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1816
    return-void
.end method

.method public blacklist onRequestCurrentChannelUri(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1807
    return-void
.end method

.method public blacklist onRequestCurrentTvInputId(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1843
    return-void
.end method

.method public blacklist onRequestSigning(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .param p2, "signingId"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .line 1859
    return-void
.end method

.method public blacklist onRequestStreamVolume(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1825
    return-void
.end method

.method public blacklist onRequestTrackInfoList(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1834
    return-void
.end method

.method public blacklist onSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1755
    return-void
.end method

.method public blacklist onSessionReleased(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1764
    return-void
.end method

.method public blacklist onSessionStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;II)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .param p2, "state"    # I
    .param p3, "err"    # I

    .line 1872
    return-void
.end method

.method public blacklist onSetVideoBounds(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 1798
    return-void
.end method

.method public blacklist onTeletextAppStateChanged(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .param p2, "state"    # I

    .line 1896
    return-void
.end method
