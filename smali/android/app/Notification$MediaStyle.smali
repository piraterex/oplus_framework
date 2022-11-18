.class public Landroid/app/Notification$MediaStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStyle"
.end annotation


# static fields
.field static final greylist-max-o MAX_MEDIA_BUTTONS:I = 0x5

.field static final greylist-max-o MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3

.field private static final blacklist MEDIA_BUTTON_IDS:[I


# instance fields
.field private greylist-max-o mActionsToShowInCompact:[I

.field private blacklist mDeviceIcon:I

.field private blacklist mDeviceIntent:Landroid/app/PendingIntent;

.field private blacklist mDeviceName:Ljava/lang/CharSequence;

.field private greylist-max-o mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9229
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10201ae
        0x10201af
        0x10201b0
        0x10201b1
        0x10201b2
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 9243
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 9244
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9250
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9237
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 9251
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 9252
    return-void
.end method

.method private blacklist bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V
    .locals 6
    .param p1, "container"    # Landroid/widget/RemoteViews;
    .param p2, "buttonId"    # I
    .param p3, "action"    # Landroid/app/Notification$Action;
    .param p4, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 9402
    iget-object v0, p3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 9403
    .local v0, "tombstone":Z
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9404
    invoke-virtual {p3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 9408
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, p4}, Landroid/app/Notification$Builder;->-$$Nest$mgetStandardActionColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    .line 9410
    .local v2, "tintColor":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 9413
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p4}, Landroid/app/Notification$Builder;->-$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getRippleAlpha()I

    move-result v1

    .line 9414
    .local v1, "rippleAlpha":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 9415
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 9414
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 9416
    .local v3, "rippleColor":I
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V

    .line 9418
    if-nez v0, :cond_1

    .line 9419
    iget-object v4, p3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 9421
    :cond_1
    iget-object v4, p3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 9422
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9344
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 9346
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    .line 9347
    const-string v1, "android.mediaSession"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9349
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_1

    .line 9350
    const-string v1, "android.compactActions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 9352
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 9353
    const-string v1, "android.mediaRemoteDevice"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9355
    :cond_2
    iget v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIcon:I

    if-lez v0, :cond_3

    .line 9356
    const-string v1, "android.mediaRemoteIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9358
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    .line 9359
    const-string v1, "android.mediaRemoteIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9361
    :cond_4
    return-void
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 2
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 9393
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 9397
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 9394
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public greylist buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    .line 9310
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 9311
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 9312
    const-string/jumbo v0, "transport"

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 9314
    :cond_0
    return-object p1
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 9330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$MediaStyle;->makeMediaBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 9322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 9338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist makeMediaBigContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 8
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 9480
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9481
    .local v0, "actionCount":I
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, v2, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v2}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 9482
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 9483
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9484
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 9485
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v3, Landroid/app/Notification$TemplateBindResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    .line 9486
    .local v3, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v5, 0x10900b9

    invoke-static {v4, v5, v2, v3}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 9489
    .local v4, "template":Landroid/widget/RemoteViews;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 9490
    if-ge v5, v0, :cond_0

    .line 9491
    sget-object v6, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v6, v6, v5

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v7

    .line 9492
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$Action;

    .line 9491
    invoke-direct {p0, v4, v6, v7, v2}, Landroid/app/Notification$MediaStyle;->bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_1

    .line 9494
    :cond_0
    sget-object v6, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v6, v6, v5

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9489
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9497
    .end local v5    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, p1, v2, v3}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 9498
    return-object v4
.end method

.method protected blacklist makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 11
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 9426
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9427
    .local v0, "numActions":I
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 9428
    move v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    .line 9427
    :goto_0
    const/4 v3, 0x3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9429
    .local v1, "numActionsToShow":I
    const/4 v4, 0x1

    if-gt v1, v0, :cond_5

    .line 9452
    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, v5, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    sget v6, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 9453
    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 9454
    invoke-virtual {v5, v4}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9455
    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 9456
    .local v5, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v6, Landroid/app/Notification$TemplateBindResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    .line 9457
    .local v6, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v8, 0x10900c1

    invoke-static {v7, v8, v5, v6}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 9461
    .local v7, "template":Landroid/widget/RemoteViews;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/16 v9, 0x8

    if-ge v8, v3, :cond_2

    .line 9462
    if-ge v8, v1, :cond_1

    .line 9463
    iget-object v9, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v9}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    .line 9464
    .local v9, "action":Landroid/app/Notification$Action;
    sget-object v10, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v10, v10, v8

    invoke-direct {p0, v7, v10, v9, v5}, Landroid/app/Notification$MediaStyle;->bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V

    .line 9465
    .end local v9    # "action":Landroid/app/Notification$Action;
    goto :goto_2

    .line 9466
    :cond_1
    sget-object v10, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v10, v10, v8

    invoke-virtual {v7, v10, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9461
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9470
    .end local v8    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    move v3, v4

    .line 9471
    .local v3, "hasActions":Z
    const v4, 0x102039f

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v2, v9

    :goto_4
    invoke-virtual {v7, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9474
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, p1, v5, v6}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 9475
    return-object v7

    .line 9430
    .end local v3    # "hasActions":Z
    .end local v5    # "p":Landroid/app/Notification$StandardTemplateParams;
    .end local v6    # "result":Landroid/app/Notification$TemplateBindResult;
    .end local v7    # "template":Landroid/widget/RemoteViews;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 9432
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    .line 9430
    const-string/jumbo v2, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9368
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 9370
    const-string v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9371
    const-class v1, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 9373
    :cond_0
    const-string v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9374
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 9376
    :cond_1
    const-string v0, "android.mediaRemoteDevice"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9377
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceName:Ljava/lang/CharSequence;

    .line 9379
    :cond_2
    const-string v0, "android.mediaRemoteIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9380
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIcon:I

    .line 9382
    :cond_3
    const-string v0, "android.mediaRemoteIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9383
    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIntent:Landroid/app/PendingIntent;

    .line 9386
    :cond_4
    return-void
.end method

.method public whitelist setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .line 9270
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 9271
    return-object p0
.end method

.method public whitelist setRemotePlaybackInfo(Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/CharSequence;
    .param p2, "iconResource"    # I
    .param p3, "chipIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 9298
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mDeviceName:Ljava/lang/CharSequence;

    .line 9299
    iput p2, p0, Landroid/app/Notification$MediaStyle;->mDeviceIcon:I

    .line 9300
    iput-object p3, p0, Landroid/app/Notification$MediaStyle;->mDeviceIntent:Landroid/app/PendingIntent;

    .line 9301
    return-object p0
.end method

.method public varargs whitelist setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .locals 0
    .param p1, "actions"    # [I

    .line 9261
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 9262
    return-object p0
.end method
