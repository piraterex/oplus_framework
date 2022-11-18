.class public final Landroid/app/search/SearchTarget$Builder;
.super Ljava/lang/Object;
.source "SearchTarget.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHidden:Z

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLayoutType:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParentId:Ljava/lang/String;

.field private blacklist mResultType:I

.field private blacklist mScore:F

.field private blacklist mSearchAction:Landroid/app/search/SearchAction;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mSliceUri:Landroid/net/Uri;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resultType"    # I
    .param p2, "layoutType"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p3, p0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    .line 385
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    .line 386
    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    .line 387
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    .line 389
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/search/SearchTarget;
    .locals 17

    .line 511
    move-object/from16 v0, p0

    new-instance v16, Landroid/app/search/SearchTarget;

    iget v2, v0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    iget-object v3, v0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    iget v6, v0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    iget-boolean v7, v0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    iget-object v8, v0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v10, v0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    iget-object v11, v0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v12, v0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    iget-object v13, v0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v14, v0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Landroid/app/search/SearchTarget;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/app/search/SearchTarget-IA;)V

    return-object v16
.end method

.method public whitelist setAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/app/search/SearchTarget$Builder;
    .locals 2
    .param p1, "appWidgetProviderInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 438
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 439
    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 440
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SearchTarget packageName is different from appWidgetProviderInfo\'s packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_1
    :goto_0
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    .line 471
    return-object p0
.end method

.method public whitelist setHidden(Z)Landroid/app/search/SearchTarget$Builder;
    .locals 0
    .param p1, "hidden"    # Z

    .line 488
    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    .line 489
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 405
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    .line 406
    return-object p0
.end method

.method public whitelist setParentId(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .locals 1
    .param p1, "parentId"    # Ljava/lang/String;

    .line 396
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    .line 397
    return-object p0
.end method

.method public whitelist setScore(F)Landroid/app/search/SearchTarget$Builder;
    .locals 0
    .param p1, "score"    # F

    .line 479
    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    .line 480
    return-object p0
.end method

.method public whitelist setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;
    .locals 0
    .param p1, "searchAction"    # Landroid/app/search/SearchAction;

    .line 461
    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    .line 462
    return-object p0
.end method

.method public whitelist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/app/search/SearchTarget$Builder;
    .locals 2
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 423
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 424
    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SearchTarget packageName is different from shortcut\'s packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public greylist setShouldHide(Z)Landroid/app/search/SearchTarget$Builder;
    .locals 0
    .param p1, "shouldHide"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 500
    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    .line 501
    return-object p0
.end method

.method public whitelist setSliceUri(Landroid/net/Uri;)Landroid/app/search/SearchTarget$Builder;
    .locals 0
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 452
    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    .line 453
    return-object p0
.end method

.method public whitelist setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 414
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 415
    return-object p0
.end method
