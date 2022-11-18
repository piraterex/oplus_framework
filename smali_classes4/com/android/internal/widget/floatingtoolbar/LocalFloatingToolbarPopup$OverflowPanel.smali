.class final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;
.super Landroid/widget/ListView;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanel"
.end annotation


# instance fields
.field private blacklist mOverflowPanelExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;

.field private final blacklist mPopup:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)V
    .locals 2
    .param p1, "popup"    # Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 1475
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmContext(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1471
    const-class v0, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->mOverflowPanelExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;

    .line 1476
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    .line 1477
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 1483
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->mOverflowPanelExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;->hookOverflowPanel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1484
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->setScrollIndicators(I)V

    .line 1487
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->mOverflowPanelExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelExt;->hookSetScrollerbar(Landroid/view/View;)V

    .line 1491
    :cond_0
    return-void
.end method


# virtual methods
.method protected whitelist awakenScrollBars()Z
    .locals 1

    .line 1514
    invoke-super {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1505
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$misOverflowAnimating(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    const/4 v0, 0x1

    return v0

    .line 1509
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1497
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowPanelSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanel;->mPopup:Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;

    invoke-static {v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$fgetmOverflowButtonSize(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;)Landroid/util/Size;

    move-result-object v1

    .line 1498
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1499
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1500
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1501
    return-void
.end method
