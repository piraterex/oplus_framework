.class public Landroid/media/MediaRouter$RouteGroup;
.super Landroid/media/MediaRouter$RouteInfo;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteGroup"
.end annotation


# instance fields
.field final greylist-max-o mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mUpdateName:Z


# direct methods
.method constructor greylist-max-o <init>(Landroid/media/MediaRouter$RouteCategory;)V
    .locals 1
    .param p1, "category"    # Landroid/media/MediaRouter$RouteCategory;

    .line 2589
    invoke-direct {p0, p1}, Landroid/media/MediaRouter$RouteInfo;-><init>(Landroid/media/MediaRouter$RouteCategory;)V

    .line 2585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    .line 2590
    iput-object p0, p0, Landroid/media/MediaRouter$RouteGroup;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2591
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeHandling:I

    .line 2592
    return-void
.end method


# virtual methods
.method public whitelist addRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 2606
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2609
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-ne v0, v1, :cond_0

    .line 2615
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2616
    .local v0, "at":I
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2617
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2618
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2619
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2620
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2621
    invoke-static {p1, p0, v0}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 2622
    return-void

    .line 2610
    .end local v0    # "at":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route cannot be added to a group with a different category. (Route category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2612
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2607
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already part of a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addRoute(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "insertAt"    # I

    .line 2631
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2634
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    if-ne v0, v1, :cond_0

    .line 2640
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2641
    iput-object p0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2642
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2643
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2644
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2645
    invoke-static {p1, p0, p2}, Landroid/media/MediaRouter;->dispatchRouteGrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V

    .line 2646
    return-void

    .line 2635
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route cannot be added to a group with a different category. (Route category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2637
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getCategory()Landroid/media/MediaRouter$RouteCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " group category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mCategory:Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2632
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already part of a group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 2596
    iget-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateName()V

    .line 2597
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p1, "index"    # I

    .line 2694
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public whitelist getRouteCount()I
    .locals 1

    .line 2684
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method greylist-max-o memberNameChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 2761
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2762
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2763
    return-void
.end method

.method greylist-max-o memberStatusChanged(Landroid/media/MediaRouter$RouteInfo;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;
    .param p2, "status"    # Ljava/lang/CharSequence;

    .line 2766
    invoke-virtual {p0, p2}, Landroid/media/MediaRouter$RouteGroup;->setStatusInt(Ljava/lang/CharSequence;)V

    .line 2767
    return-void
.end method

.method greylist-max-o memberVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 2770
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2771
    return-void
.end method

.method public whitelist removeRoute(I)V
    .locals 2
    .param p1, "index"    # I

    .line 2672
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    .line 2673
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2674
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2675
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2676
    invoke-static {v0, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 2677
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2678
    return-void
.end method

.method public whitelist removeRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 2654
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getGroup()Landroid/media/MediaRouter$RouteGroup;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2658
    iget-object v0, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2659
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/media/MediaRouter$RouteInfo;->mGroup:Landroid/media/MediaRouter$RouteGroup;

    .line 2660
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2661
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->updateVolume()V

    .line 2662
    invoke-static {p1, p0}, Landroid/media/MediaRouter;->dispatchRouteUngrouped(Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V

    .line 2663
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->routeUpdated()V

    .line 2664
    return-void

    .line 2655
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a member of this group."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestSetVolume(I)V
    .locals 6
    .param p1, "volume"    # I

    .line 2719
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    move-result v0

    .line 2720
    .local v0, "maxVol":I
    if-nez v0, :cond_0

    .line 2721
    return-void

    .line 2724
    :cond_0
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 2725
    .local v1, "scaledVolume":F
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v2

    .line 2726
    .local v2, "routeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2727
    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 2728
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    .line 2729
    .local v5, "routeVol":I
    invoke-virtual {v4, v5}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 2726
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v5    # "routeVol":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2731
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    if-eq p1, v3, :cond_2

    .line 2732
    iput p1, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    .line 2733
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2735
    :cond_2
    return-void
.end method

.method public whitelist requestUpdateVolume(I)V
    .locals 6
    .param p1, "direction"    # I

    .line 2739
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getVolumeMax()I

    move-result v0

    .line 2740
    .local v0, "maxVol":I
    if-nez v0, :cond_0

    .line 2741
    return-void

    .line 2744
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v1

    .line 2745
    .local v1, "routeCount":I
    const/4 v2, 0x0

    .line 2746
    .local v2, "volume":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2747
    invoke-virtual {p0, v3}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    .line 2748
    .local v4, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v4, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 2749
    invoke-virtual {v4}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v5

    .line 2750
    .local v5, "routeVol":I
    if-le v5, v2, :cond_1

    .line 2751
    move v2, v5

    .line 2746
    .end local v4    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v5    # "routeVol":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2754
    .end local v3    # "i":I
    :cond_2
    iget v3, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    if-eq v2, v3, :cond_3

    .line 2755
    iput v2, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    .line 2756
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2758
    :cond_3
    return-void
.end method

.method greylist-max-o routeUpdated()V
    .locals 11

    .line 2791
    const/4 v0, 0x0

    .line 2792
    .local v0, "types":I
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2793
    .local v1, "count":I
    if-nez v1, :cond_0

    .line 2795
    invoke-static {p0}, Landroid/media/MediaRouter;->removeRouteStatic(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2796
    return-void

    .line 2799
    :cond_0
    const/4 v2, 0x0

    .line 2800
    .local v2, "maxVolume":I
    const/4 v3, 0x1

    .line 2801
    .local v3, "isLocal":Z
    const/4 v4, 0x1

    .line 2802
    .local v4, "isFixedVolume":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v1, :cond_4

    .line 2803
    iget-object v8, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaRouter$RouteInfo;

    .line 2804
    .local v8, "route":Landroid/media/MediaRouter$RouteInfo;
    iget v9, v8, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    or-int/2addr v0, v9

    .line 2805
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v9

    .line 2806
    .local v9, "routeMaxVolume":I
    if-le v9, v2, :cond_1

    .line 2807
    move v2, v9

    .line 2809
    :cond_1
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v10

    if-nez v10, :cond_2

    move v10, v7

    goto :goto_1

    :cond_2
    move v10, v6

    :goto_1
    and-int/2addr v3, v10

    .line 2810
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v10

    if-nez v10, :cond_3

    move v6, v7

    :cond_3
    and-int/2addr v4, v6

    .line 2802
    .end local v8    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v9    # "routeMaxVolume":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2812
    .end local v5    # "i":I
    :cond_4
    xor-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/media/MediaRouter$RouteGroup;->mPlaybackType:I

    .line 2813
    xor-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeHandling:I

    .line 2814
    iput v0, p0, Landroid/media/MediaRouter$RouteGroup;->mSupportedTypes:I

    .line 2815
    iput v2, p0, Landroid/media/MediaRouter$RouteGroup;->mVolumeMax:I

    .line 2816
    if-ne v1, v7, :cond_5

    iget-object v5, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    iput-object v5, p0, Landroid/media/MediaRouter$RouteGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2817
    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->routeUpdated()V

    .line 2818
    return-void
.end method

.method public whitelist setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 2704
    iput-object p1, p0, Landroid/media/MediaRouter$RouteGroup;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 2705
    return-void
.end method

.method public whitelist setIconResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 2714
    sget-object v0, Landroid/media/MediaRouter;->sStatic:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$RouteGroup;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2715
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/media/MediaRouter$RouteInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2838
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2839
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2840
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2841
    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    :cond_0
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2840
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2844
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2845
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method greylist-max-o updateName()V
    .locals 5

    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2822
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2823
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2824
    iget-object v3, p0, Landroid/media/MediaRouter$RouteGroup;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaRouter$RouteInfo;

    .line 2826
    .local v3, "info":Landroid/media/MediaRouter$RouteInfo;
    if-lez v2, :cond_0

    .line 2827
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2823
    .end local v3    # "info":Landroid/media/MediaRouter$RouteInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2831
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaRouter$RouteGroup;->mName:Ljava/lang/CharSequence;

    .line 2832
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/MediaRouter$RouteGroup;->mUpdateName:Z

    .line 2833
    return-void
.end method

.method greylist-max-o updateVolume()V
    .locals 4

    .line 2775
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteGroup;->getRouteCount()I

    move-result v0

    .line 2776
    .local v0, "routeCount":I
    const/4 v1, 0x0

    .line 2777
    .local v1, "volume":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2778
    invoke-virtual {p0, v2}, Landroid/media/MediaRouter$RouteGroup;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v3

    .line 2779
    .local v3, "routeVol":I
    if-le v3, v1, :cond_0

    .line 2780
    move v1, v3

    .line 2777
    .end local v3    # "routeVol":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2783
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    if-eq v1, v2, :cond_2

    .line 2784
    iput v1, p0, Landroid/media/MediaRouter$RouteGroup;->mVolume:I

    .line 2785
    invoke-static {p0}, Landroid/media/MediaRouter;->dispatchRouteVolumeChanged(Landroid/media/MediaRouter$RouteInfo;)V

    .line 2787
    :cond_2
    return-void
.end method
