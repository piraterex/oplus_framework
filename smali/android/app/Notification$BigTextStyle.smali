.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field private greylist-max-o mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 7782
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 7783
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7789
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 7790
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 7791
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7830
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 7832
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    const-string v1, "android.bigText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7833
    return-void
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .locals 4
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 7899
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 7902
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$BigTextStyle;

    .line 7903
    .local v1, "newS":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->getBigText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 7900
    .end local v1    # "newS":Landroid/app/Notification$BigTextStyle;
    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 7815
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 7816
    return-object p0
.end method

.method public greylist-max-o getBigText()Ljava/lang/CharSequence;
    .locals 1

    .line 7823
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .locals 4

    .line 7878
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 7879
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7880
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7881
    const v1, 0x1020216

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->textViewId(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 7882
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7885
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7886
    .local v1, "bigTextText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7887
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 7890
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$mgetBigTextLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroid/app/Notification$BigTextStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "increasedHeight"    # Z

    .line 7852
    if-eqz p1, :cond_0

    .line 7853
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7854
    .local v0, "originalActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 7855
    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 7856
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 7857
    return-object v1

    .line 7859
    .end local v0    # "originalActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "increasedHeight"    # Z

    .line 7867
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7869
    invoke-virtual {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 7871
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7840
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 7842
    const-string v0, "android.bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 7843
    return-void
.end method

.method public whitelist setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 7798
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 7799
    return-object p0
.end method

.method public whitelist setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 7806
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 7807
    return-object p0
.end method
