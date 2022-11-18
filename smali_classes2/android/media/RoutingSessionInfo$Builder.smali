.class public final Landroid/media/RoutingSessionInfo$Builder;
.super Ljava/lang/Object;
.source "RoutingSessionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RoutingSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mClientPackageName:Ljava/lang/String;

.field blacklist mControlHints:Landroid/os/Bundle;

.field final blacklist mDeselectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mId:Ljava/lang/String;

.field blacklist mIsSystemSession:Z

.field blacklist mName:Ljava/lang/CharSequence;

.field blacklist mOwnerPackageName:Ljava/lang/String;

.field blacklist mProviderId:Ljava/lang/String;

.field final blacklist mSelectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSelectedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mVolume:I

.field blacklist mVolumeHandling:I

.field blacklist mVolumeMax:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/RoutingSessionInfo;)V
    .locals 5
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 421
    const-string v0, "sessionInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 423
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mId:Ljava/lang/String;

    .line 424
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    .line 425
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    .line 426
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    .line 429
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    .line 431
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    .line 433
    iget-object v4, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 435
    new-instance v4, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 436
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 437
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 438
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/RoutingSessionInfo$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->replaceAll(Ljava/util/function/UnaryOperator;)V

    .line 441
    :cond_0
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 442
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    .line 443
    iget v0, p1, Landroid/media/RoutingSessionInfo;->mVolume:I

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    .line 445
    iget-object v0, p1, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    .line 446
    iget-boolean v0, p1, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    .line 447
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "clientPackageName"    # Ljava/lang/String;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mId:Ljava/lang/String;

    .line 406
    nop

    .line 407
    const-string v0, "clientPackageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    .line 412
    return-void

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 574
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    return-object p0

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 541
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    return-object p0

    .line 542
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    return-object p0

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    return-object p0

    .line 608
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/media/RoutingSessionInfo;
    .locals 2

    .line 682
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Landroid/media/RoutingSessionInfo;

    invoke-direct {v0, p0}, Landroid/media/RoutingSessionInfo;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    return-object v0

    .line 683
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectedRoutes must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearDeselectableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    .line 565
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 566
    return-object p0
.end method

.method public whitelist clearSelectableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    .line 532
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 533
    return-object p0
.end method

.method public whitelist clearSelectedRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    .line 499
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 500
    return-object p0
.end method

.method public whitelist clearTransferableRoutes()Landroid/media/RoutingSessionInfo$Builder;
    .locals 1

    .line 598
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 599
    return-object p0
.end method

.method public whitelist removeDeselectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 590
    return-object p0

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSelectableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 557
    return-object p0

    .line 554
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeSelectedRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 520
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 524
    return-object p0

    .line 521
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist removeTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "routeId"    # Ljava/lang/String;

    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 623
    return-object p0

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "routeId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setClientPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 476
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    .line 477
    return-object p0
.end method

.method public whitelist setControlHints(Landroid/os/Bundle;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "controlHints"    # Landroid/os/Bundle;

    .line 661
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    .line 662
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/CharSequence;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 454
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    .line 455
    return-object p0
.end method

.method public blacklist setOwnerPackageName(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 465
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mOwnerPackageName:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public blacklist setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;
    .locals 2
    .param p1, "providerId"    # Ljava/lang/String;

    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iput-object p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    .line 491
    return-object p0

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerId must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "isSystemSession"    # Z

    .line 671
    iput-boolean p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    .line 672
    return-object p0
.end method

.method public whitelist setVolume(I)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "volume"    # I

    .line 652
    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    .line 653
    return-object p0
.end method

.method public whitelist setVolumeHandling(I)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "volumeHandling"    # I

    .line 634
    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    .line 635
    return-object p0
.end method

.method public whitelist setVolumeMax(I)Landroid/media/RoutingSessionInfo$Builder;
    .locals 0
    .param p1, "volumeMax"    # I

    .line 643
    iput p1, p0, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    .line 644
    return-object p0
.end method
