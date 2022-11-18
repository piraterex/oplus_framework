.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# static fields
.field static final greylist-max-o MAX_REMOTE_INPUT_HISTORY_LINES:I = 0x3


# instance fields
.field private greylist-max-o mBigContentTitle:Ljava/lang/CharSequence;

.field protected whitelist mBuilder:Landroid/app/Notification$Builder;

.field protected greylist-max-o mSummaryText:Ljava/lang/CharSequence;

.field protected greylist-max-o mSummaryTextSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 7197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7209
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 7214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7312
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_0

    .line 7313
    iget-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    const-string v1, "android.summaryText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7315
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 7316
    const-string v1, "android.title.big"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7318
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.template"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7319
    return-void
.end method

.method public abstract greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
.end method

.method public whitelist build()Landroid/app/Notification;
    .locals 1

    .line 7356
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 7357
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    .line 7340
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 7341
    return-object p1
.end method

.method protected whitelist checkBuilder()V
    .locals 2

    .line 7244
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 7247
    return-void

    .line 7245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o displayCustomViewInline()Z
    .locals 1

    .line 7373
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .locals 1

    .line 7403
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist getStandardView(I)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "layoutId"    # I

    .line 7251
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    .line 7252
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 7253
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7254
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Notification$Style;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 7269
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 7271
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 7272
    iput-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    .line 7275
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasSummaryInHeader()Z
    .locals 1

    .line 7365
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 7223
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 7224
    return-void
.end method

.method protected whitelist internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 7230
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 7231
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 7232
    return-void
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 7294
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 7286
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 7304
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o purgeResources()V
    .locals 0

    .line 7347
    return-void
.end method

.method public greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 7382
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7326
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7327
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 7328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 7330
    :cond_0
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7331
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 7333
    :cond_1
    return-void
.end method

.method public whitelist setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 7235
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_0

    .line 7236
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 7237
    if-eqz p1, :cond_0

    .line 7238
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 7241
    :cond_0
    return-void
.end method

.method public greylist-max-o validate(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 7389
    return-void
.end method
