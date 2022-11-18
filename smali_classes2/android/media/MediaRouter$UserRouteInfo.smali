.class public Landroid/media/MediaRouter$UserRouteInfo;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserRouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;
    }
.end annotation


# instance fields
.field greylist-max-o mRcc:Landroid/media/RemoteControlClient;

.field greylist-max-o mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .line 2305
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 2306
    const/high16 v0, 0x800000

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSupportedTypes:I

    .line 2307
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2308
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2309
    return-void
.end method

.method private greylist-max-o configureSessionVolume()V
    .locals 5

    .line 2511
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    const-string v1, "MediaRouter"

    if-nez v0, :cond_1

    .line 2512
    invoke-static {}, Landroid/media/MediaRouter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Rcc to configure volume for route "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_0
    return-void

    .line 2517
    :cond_1
    invoke-virtual {v0}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v0

    .line 2518
    .local v0, "session":Landroid/media/session/MediaSession;
    if-nez v0, :cond_3

    .line 2519
    invoke-static {}, Landroid/media/MediaRouter;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2520
    const-string v2, "Rcc has no session to configure volume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_2
    return-void

    .line 2524
    :cond_3
    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2525
    const/4 v1, 0x0

    .line 2526
    .local v1, "volumeControl":I
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2528
    :pswitch_0
    const/4 v1, 0x2

    .line 2529
    nop

    .line 2535
    :goto_0
    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getVolumeControl()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2536
    invoke-virtual {v2}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->getMaxVolume()I

    move-result v2

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v2, v3, :cond_5

    .line 2537
    :cond_4
    new-instance v2, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    iget v3, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    iget v4, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-direct {v2, p0, v1, v3, v4}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;-><init>(Landroid/media/MediaRouter$UserRouteInfo;III)V

    iput-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2538
    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 2540
    .end local v1    # "volumeControl":I
    :cond_5
    goto :goto_1

    .line 2542
    :cond_6
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 2543
    .local v1, "bob":Landroid/media/AudioAttributes$Builder;
    iget v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 2544
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 2545
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    .line 2547
    .end local v1    # "bob":Landroid/media/AudioAttributes$Builder;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o updatePlaybackInfoOnRcc()V
    .locals 0

    .line 2507
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2508
    return-void
.end method


# virtual methods
.method public whitelist getRemoteControlClient()Landroid/media/RemoteControlClient;
    .locals 1

    .line 2384
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method public whitelist requestSetVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .line 2462
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2463
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    .line 2464
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    return-void

    .line 2467
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2469
    :cond_1
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 2473
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2474
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    if-nez v0, :cond_0

    .line 2475
    const-string v0, "MediaRouter"

    const-string v1, "Cannot requestChangeVolume on user route - no volumec callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    return-void

    .line 2478
    :cond_0
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 2480
    :cond_1
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 2346
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mDescription:Ljava/lang/CharSequence;

    .line 2347
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2348
    return-void
.end method

.method public whitelist setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 2394
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2395
    return-void
.end method

.method public whitelist setIconResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 2404
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2405
    return-void
.end method

.method public whitelist setName(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 2331
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2333
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2334
    return-void
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 2316
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mNameResId:I

    .line 2317
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mName:Ljava/lang/CharSequence;

    .line 2318
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->routeUpdated()V

    .line 2319
    return-void
.end method

.method public whitelist setPlaybackStream(I)V
    .locals 1
    .param p1, "stream"    # I

    .line 2500
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    if-eq v0, p1, :cond_0

    .line 2501
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackStream:I

    .line 2502
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2504
    :cond_0
    return-void
.end method

.method public whitelist setPlaybackType(I)V
    .locals 1
    .param p1, "type"    # I

    .line 2422
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    if-eq v0, p1, :cond_0

    .line 2423
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mPlaybackType:I

    .line 2424
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2426
    :cond_0
    return-void
.end method

.method public whitelist setRemoteControlClient(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "rcc"    # Landroid/media/RemoteControlClient;

    .line 2373
    iput-object p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mRcc:Landroid/media/RemoteControlClient;

    .line 2374
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->updatePlaybackInfoOnRcc()V

    .line 2375
    return-void
.end method

.method public whitelist setStatus(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/CharSequence;

    .line 2356
    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 2357
    return-void
.end method

.method public whitelist setVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .line 2447
    invoke-virtual {p0}, Landroid/media/MediaRouter$UserRouteInfo;->getVolumeMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2448
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    if-eq v0, p1, :cond_1

    .line 2449
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    .line 2450
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mSvp:Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;

    if-eqz v0, :cond_0

    .line 2451
    iget v1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter$UserRouteInfo$SessionVolumeProvider;->setCurrentVolume(I)V

    .line 2453
    :cond_0
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2454
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_1

    .line 2455
    iget-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    invoke-virtual {v0, p0}, Landroid/media/MediaRouter$RouteGroup;->memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2458
    :cond_1
    return-void
.end method

.method public whitelist setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V
    .locals 1
    .param p1, "vcb"    # Landroid/media/MediaRouter$VolumeCallback;

    .line 2412
    new-instance v0, Landroid/media/MediaRouter$VolumeCallbackInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaRouter$VolumeCallbackInfo;-><init>(Landroid/media/MediaRouter$VolumeCallback;Landroid/media/MediaRouter$RouteInfo;)V

    iput-object v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 2413
    return-void
.end method

.method public whitelist setVolumeHandling(I)V
    .locals 1
    .param p1, "volumeHandling"    # I

    .line 2435
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    if-eq v0, p1, :cond_0

    .line 2436
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeHandling:I

    .line 2437
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2439
    :cond_0
    return-void
.end method

.method public whitelist setVolumeMax(I)V
    .locals 1
    .param p1, "volumeMax"    # I

    .line 2489
    iget v0, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    if-eq v0, p1, :cond_0

    .line 2490
    iput p1, p0, Landroid/media/MediaRouter$UserRouteInfo;->mVolumeMax:I

    .line 2491
    invoke-direct {p0}, Landroid/media/MediaRouter$UserRouteInfo;->configureSessionVolume()V

    .line 2493
    :cond_0
    return-void
.end method
