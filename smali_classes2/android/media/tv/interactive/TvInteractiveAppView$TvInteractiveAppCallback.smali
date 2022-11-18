.class public abstract Landroid/media/tv/interactive/TvInteractiveAppView$TvInteractiveAppCallback;
.super Ljava/lang/Object;
.source "TvInteractiveAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInteractiveAppCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBiInteractiveAppCreated(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "biIAppUri"    # Landroid/net/Uri;
    .param p3, "biIAppId"    # Ljava/lang/String;

    .line 772
    return-void
.end method

.method public whitelist onPlaybackCommandRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "cmdType"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .line 741
    return-void
.end method

.method public whitelist onRequestCurrentChannelLcn(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 810
    return-void
.end method

.method public whitelist onRequestCurrentChannelUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 801
    return-void
.end method

.method public whitelist onRequestCurrentTvInputId(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 837
    return-void
.end method

.method public whitelist onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "signingId"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "data"    # [B

    .line 853
    return-void
.end method

.method public whitelist onRequestStreamVolume(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 819
    return-void
.end method

.method public whitelist onRequestTrackInfoList(Ljava/lang/String;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;

    .line 828
    return-void
.end method

.method public whitelist onSetVideoBounds(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 792
    return-void
.end method

.method public whitelist onStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "err"    # I

    .line 756
    return-void
.end method

.method public whitelist onTeletextAppStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 783
    return-void
.end method
