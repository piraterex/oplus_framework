.class Landroid/app/Notification$TemplateBindResult$MarginSet;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$TemplateBindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarginSet"
.end annotation


# instance fields
.field private blacklist mValueIfGone:F

.field private blacklist mValueIfVisible:F

.field final synthetic blacklist this$0:Landroid/app/Notification$TemplateBindResult;


# direct methods
.method private constructor blacklist <init>(Landroid/app/Notification$TemplateBindResult;)V
    .locals 0

    .line 12472
    iput-object p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/Notification$TemplateBindResult;Landroid/app/Notification$TemplateBindResult$MarginSet-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Notification$TemplateBindResult$MarginSet;-><init>(Landroid/app/Notification$TemplateBindResult;)V

    return-void
.end method


# virtual methods
.method public blacklist applyToView(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I

    .line 12482
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;IF)V

    .line 12483
    return-void
.end method

.method public blacklist applyToView(Landroid/widget/RemoteViews;IF)V
    .locals 5
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "viewId"    # I
    .param p3, "extraMarginDp"    # F

    .line 12487
    invoke-virtual {p0}, Landroid/app/Notification$TemplateBindResult$MarginSet;->getDpValue()F

    move-result v0

    add-float/2addr v0, p3

    .line 12488
    .local v0, "marginEndDp":F
    const v1, 0x10203e7

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 12489
    const-string/jumbo v3, "setTopLineExtraMarginEndDp"

    invoke-virtual {p1, v1, v3, v0}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_1

    .line 12491
    :cond_0
    const v1, 0x102050f

    const/4 v3, 0x5

    if-eq p2, v1, :cond_2

    const v1, 0x1020216

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 12515
    :cond_1
    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    goto :goto_1

    .line 12492
    :cond_2
    :goto_0
    iget v1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    .line 12499
    iget v1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    const-string/jumbo v4, "setImageEndMarginDp"

    invoke-virtual {p1, p2, v4, v1}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 12500
    iget-object v1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v1, v1, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    const-string/jumbo v4, "setHasImage"

    invoke-virtual {p1, p2, v4, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 12511
    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 12518
    :goto_1
    iget-object v1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v1, v1, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v1, :cond_3

    .line 12519
    const v1, 0x102050b

    iget v3, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    add-float/2addr v3, p3

    .line 12520
    invoke-static {v3, v2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v3

    .line 12519
    invoke-virtual {p1, p2, v1, v3}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 12522
    const v1, 0x102050a

    iget v3, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    add-float/2addr v3, p3

    .line 12523
    invoke-static {v3, v2}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result v2

    .line 12522
    invoke-virtual {p1, p2, v1, v2}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 12526
    :cond_3
    return-void

    .line 12493
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Programming error: `text` and `big_text` use ImageFloatingTextView which can either show a margin or not; thus mValueIfGone must be 0, but it was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getDpValue()F
    .locals 1

    .line 12529
    iget-object v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->this$0:Landroid/app/Notification$TemplateBindResult;

    iget-boolean v0, v0, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    :goto_0
    return v0
.end method

.method public blacklist setValues(FF)V
    .locals 0
    .param p1, "valueIfGone"    # F
    .param p2, "valueIfVisible"    # F

    .line 12477
    iput p1, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfGone:F

    .line 12478
    iput p2, p0, Landroid/app/Notification$TemplateBindResult$MarginSet;->mValueIfVisible:F

    .line 12479
    return-void
.end method
