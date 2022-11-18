.class public Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;
.super Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;
.source "TvInteractiveAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ITvInteractiveAppSessionWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;
    }
.end annotation


# instance fields
.field private blacklist mChannel:Landroid/view/InputChannel;

.field private blacklist mReceiver:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

.field private final blacklist mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mSessionImpl"    # Landroid/media/tv/interactive/TvInteractiveAppService$Session;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 1430
    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppSession$Stub;-><init>()V

    .line 1431
    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    .line 1432
    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 1433
    if-eqz p3, :cond_0

    .line 1434
    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mReceiver:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;

    .line 1436
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "biIAppUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1455
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1456
    return-void
.end method

.method public blacklist createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .line 1571
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 1572
    return-void
.end method

.method public blacklist destroyBiInteractiveApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "biIAppId"    # Ljava/lang/String;

    .line 1465
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->destroyBiInteractiveApp(Ljava/lang/String;)V

    .line 1466
    return-void
.end method

.method public blacklist dispatchSurfaceChanged(III)V
    .locals 1
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 1556
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->dispatchSurfaceChanged(III)V

    .line 1557
    return-void
.end method

.method public blacklist notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .locals 1
    .param p1, "response"    # Landroid/media/tv/AdResponse;

    .line 1566
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyAdResponse(Landroid/media/tv/AdResponse;)V

    .line 1567
    return-void
.end method

.method public blacklist notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .locals 1
    .param p1, "response"    # Landroid/media/tv/BroadcastInfoResponse;

    .line 1561
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    .line 1562
    return-void
.end method

.method public blacklist notifyContentAllowed()V
    .locals 1

    .line 1536
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentAllowed()V

    .line 1537
    return-void
.end method

.method public blacklist notifyContentBlocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "rating"    # Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyContentBlocked(Landroid/media/tv/TvContentRating;)V

    .line 1542
    return-void
.end method

.method public blacklist notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 1500
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1501
    return-void
.end method

.method public blacklist notifySignalStrength(I)V
    .locals 1
    .param p1, "strength"    # I

    .line 1546
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifySignalStrength(I)V

    .line 1547
    return-void
.end method

.method public blacklist notifyTrackSelected(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .line 1516
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTrackSelected(ILjava/lang/String;)V

    .line 1517
    return-void
.end method

.method public blacklist notifyTracksChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1521
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTracksChanged(Ljava/util/List;)V

    .line 1522
    return-void
.end method

.method public blacklist notifyTuned(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1511
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyTuned(Landroid/net/Uri;)V

    .line 1512
    return-void
.end method

.method public blacklist notifyVideoAvailable()V
    .locals 1

    .line 1526
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoAvailable()V

    .line 1527
    return-void
.end method

.method public blacklist notifyVideoUnavailable(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 1531
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->notifyVideoUnavailable(I)V

    .line 1532
    return-void
.end method

.method public blacklist relayoutMediaView(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 1576
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->relayoutMediaView(Landroid/graphics/Rect;)V

    .line 1577
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 1505
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->scheduleMediaViewCleanup()V

    .line 1506
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->release()V

    .line 1507
    return-void
.end method

.method public blacklist removeMediaView()V
    .locals 2

    .line 1581
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    .line 1582
    return-void
.end method

.method public blacklist resetInteractiveApp()V
    .locals 1

    .line 1450
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->resetInteractiveApp()V

    .line 1451
    return-void
.end method

.method public blacklist sendCurrentChannelLcn(I)V
    .locals 1
    .param p1, "lcn"    # I

    .line 1475
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelLcn(I)V

    .line 1476
    return-void
.end method

.method public blacklist sendCurrentChannelUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "channelUri"    # Landroid/net/Uri;

    .line 1470
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentChannelUri(Landroid/net/Uri;)V

    .line 1471
    return-void
.end method

.method public blacklist sendCurrentTvInputId(Ljava/lang/String;)V
    .locals 1
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1490
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendCurrentTvInputId(Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public blacklist sendSigningResult(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "signingId"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .line 1495
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendSigningResult(Ljava/lang/String;[B)V

    .line 1496
    return-void
.end method

.method public blacklist sendStreamVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 1480
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendStreamVolume(F)V

    .line 1481
    return-void
.end method

.method public blacklist sendTrackInfoList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1485
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvTrackInfo;>;"
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->sendTrackInfoList(Ljava/util/List;)V

    .line 1486
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1551
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setSurface(Landroid/view/Surface;)V

    .line 1552
    return-void
.end method

.method public blacklist setTeletextAppEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1460
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->setTeletextAppEnabled(Z)V

    .line 1461
    return-void
.end method

.method public blacklist startInteractiveApp()V
    .locals 1

    .line 1440
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->startInteractiveApp()V

    .line 1441
    return-void
.end method

.method public blacklist stopInteractiveApp()V
    .locals 1

    .line 1445
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->mSessionImpl:Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    invoke-virtual {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->stopInteractiveApp()V

    .line 1446
    return-void
.end method
