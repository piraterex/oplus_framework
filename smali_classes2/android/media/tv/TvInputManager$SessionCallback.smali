.class public abstract Landroid/media/tv/TvInputManager$SessionCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SessionCallback"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAitInfoUpdated(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/AitInfo;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "aitInfo"    # Landroid/media/tv/AitInfo;

    .line 676
    return-void
.end method

.method public greylist-max-o onChannelRetuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 536
    return-void
.end method

.method public greylist-max-o onContentAllowed(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 603
    return-void
.end method

.method public greylist-max-o onContentBlocked(Landroid/media/tv/TvInputManager$Session;Landroid/media/tv/TvContentRating;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "rating"    # Landroid/media/tv/TvContentRating;

    .line 613
    return-void
.end method

.method greylist-max-o onError(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "error"    # I

    .line 713
    return-void
.end method

.method public greylist-max-o onLayoutSurface(Landroid/media/tv/TvInputManager$Session;IIII)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 626
    return-void
.end method

.method greylist-max-o onRecordingStopped(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "recordedProgramUri"    # Landroid/net/Uri;

    .line 703
    return-void
.end method

.method public greylist-max-o onSessionCreated(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 517
    return-void
.end method

.method public greylist-max-o onSessionEvent(Landroid/media/tv/TvInputManager$Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "eventType"    # Ljava/lang/String;
    .param p3, "eventArgs"    # Landroid/os/Bundle;

    .line 636
    return-void
.end method

.method public greylist-max-o onSessionReleased(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 526
    return-void
.end method

.method public blacklist onSignalStrengthUpdated(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "strength"    # I

    .line 684
    return-void
.end method

.method public greylist-max-o onTimeShiftCurrentPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .line 668
    return-void
.end method

.method public greylist-max-o onTimeShiftStartPositionChanged(Landroid/media/tv/TvInputManager$Session;J)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "timeMs"    # J

    .line 659
    return-void
.end method

.method public greylist-max-o onTimeShiftStatusChanged(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "status"    # I

    .line 650
    return-void
.end method

.method public greylist-max-o onTrackSelected(Landroid/media/tv/TvInputManager$Session;ILjava/lang/String;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;

    .line 558
    return-void
.end method

.method public greylist-max-o onTracksChanged(Landroid/media/tv/TvInputManager$Session;Ljava/util/List;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/tv/TvInputManager$Session;",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 545
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    return-void
.end method

.method public greylist-max-o onTuned(Landroid/media/tv/TvInputManager$Session;Landroid/net/Uri;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "channelUri"    # Landroid/net/Uri;

    .line 692
    return-void
.end method

.method public greylist-max-o onVideoAvailable(Landroid/media/tv/TvInputManager$Session;)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;

    .line 578
    return-void
.end method

.method public greylist-max-o onVideoSizeChanged(Landroid/media/tv/TvInputManager$Session;II)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 570
    return-void
.end method

.method public greylist-max-o onVideoUnavailable(Landroid/media/tv/TvInputManager$Session;I)V
    .locals 0
    .param p1, "session"    # Landroid/media/tv/TvInputManager$Session;
    .param p2, "reason"    # I

    .line 594
    return-void
.end method
