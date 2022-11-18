.class public abstract Landroid/media/tv/TvView$TvInputCallback;
.super Ljava/lang/Object;
.source "TvView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAitInfoUpdated(Ljava/lang/String;Landroid/media/tv/AitInfo;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "aitInfo"    # Landroid/media/tv/AitInfo;

    .line 1078
    return-void
.end method

.method public whitelist onChannelRetuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 966
    return-void
.end method

.method public whitelist onConnectionFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 948
    return-void
.end method

.method public whitelist onContentAllowed(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1033
    return-void
.end method

.method public whitelist onContentBlocked(Ljava/lang/String;Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .line 1043
    return-void
.end method

.method public whitelist onDisconnected(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 956
    return-void
.end method

.method public whitelist onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1055
    return-void
.end method

.method public whitelist onSignalStrengthUpdated(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "strength"    # I

    .line 1088
    return-void
.end method

.method public whitelist onTimeShiftStatusChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 1070
    return-void
.end method

.method public whitelist onTrackSelected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .line 987
    return-void
.end method

.method public whitelist onTracksChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 975
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public whitelist onTuned(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 1096
    return-void
.end method

.method public whitelist onVideoAvailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public whitelist onVideoSizeChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 999
    return-void
.end method

.method public whitelist onVideoUnavailable(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1024
    return-void
.end method
