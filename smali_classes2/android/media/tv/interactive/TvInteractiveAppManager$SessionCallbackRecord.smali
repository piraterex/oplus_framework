.class final Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;
.super Ljava/lang/Object;
.source "TvInteractiveAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SessionCallbackRecord"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

.field private final blacklist mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSession(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "sessionCallback"    # Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSessionCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallback;

    .line 1580
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    .line 1581
    return-void
.end method


# virtual methods
.method blacklist postAdRequest(Landroid/media/tv/AdRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/media/tv/AdRequest;

    .line 1705
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$14;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$14;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1713
    return-void
.end method

.method blacklist postBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "biIAppId"    # Ljava/lang/String;

    .line 1725
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$16;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$16;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1731
    return-void
.end method

.method blacklist postBroadcastInfoRequest(Landroid/media/tv/BroadcastInfoRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/media/tv/BroadcastInfoRequest;

    .line 1613
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$4;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/BroadcastInfoRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1619
    return-void
.end method

.method blacklist postCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "cmdType"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .line 1633
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$6;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1639
    return-void
.end method

.method blacklist postLayoutSurface(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1604
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;IIII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1610
    return-void
.end method

.method blacklist postRemoveBroadcastInfo(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 1622
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1628
    return-void
.end method

.method blacklist postRequestCurrentChannelLcn()V
    .locals 2

    .line 1660
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$9;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1666
    return-void
.end method

.method blacklist postRequestCurrentChannelUri()V
    .locals 2

    .line 1651
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$8;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1657
    return-void
.end method

.method blacklist postRequestCurrentTvInputId()V
    .locals 2

    .line 1687
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$12;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$12;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1693
    return-void
.end method

.method blacklist postRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 1696
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$13;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1702
    return-void
.end method

.method blacklist postRequestStreamVolume()V
    .locals 2

    .line 1669
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$10;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1675
    return-void
.end method

.method blacklist postRequestTrackInfoList()V
    .locals 2

    .line 1678
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$11;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$11;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1684
    return-void
.end method

.method blacklist postSessionCreated(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .locals 2
    .param p1, "session"    # Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1584
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mSession:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    .line 1585
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1591
    return-void
.end method

.method blacklist postSessionReleased()V
    .locals 2

    .line 1594
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$2;

    invoke-direct {v1, p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1600
    return-void
.end method

.method blacklist postSessionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "err"    # I

    .line 1716
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$15;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1722
    return-void
.end method

.method blacklist postSetVideoBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1642
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$7;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1648
    return-void
.end method

.method blacklist postTeletextAppStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 1734
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$17;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord$17;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1740
    return-void
.end method
