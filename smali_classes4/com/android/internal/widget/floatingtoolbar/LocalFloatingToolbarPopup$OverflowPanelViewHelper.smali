.class final Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;
.super Ljava/lang/Object;
.source "LocalFloatingToolbarPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverflowPanelViewHelper"
.end annotation


# instance fields
.field private final blacklist mCalculator:Landroid/view/View;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIconTextSpacing:I

.field private blacklist mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

.field private final blacklist mSidePadding:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOverflowPanelViewHelperExt(Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;)Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconTextSpacing"    # I

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1548
    const-class v0, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    .line 1552
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    .line 1553
    iput p2, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1558
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    .line 1559
    const v2, 0x1050149

    invoke-interface {v1, v2}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;->hookGetSidePaddingRes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    .line 1561
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    .line 1562
    return-void
.end method

.method private blacklist createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1589
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1590
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1589
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$smcreateMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;IZ)Landroid/view/View;

    move-result-object v0

    .line 1591
    .local v0, "button":Landroid/view/View;
    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1592
    return-object v0
.end method

.method private blacklist shouldShowIcon(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1596
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1597
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    const v2, 0x1020041

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1599
    :cond_1
    return v0
.end method


# virtual methods
.method public blacklist calculateWidth(Landroid/view/MenuItem;)I
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 1581
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1582
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v2

    .line 1581
    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    .line 1583
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1585
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mCalculator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "minimumWidth"    # I
    .param p3, "convertView"    # Landroid/view/View;

    .line 1565
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    if-eqz p3, :cond_0

    .line 1567
    iget v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mIconTextSpacing:I

    .line 1568
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->shouldShowIcon(Landroid/view/MenuItem;)Z

    move-result v1

    .line 1567
    invoke-static {p3, p1, v0, v1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup;->-$$Nest$smupdateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;IZ)V

    goto :goto_0

    .line 1570
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->createMenuButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p3

    .line 1572
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1575
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mOverflowPanelViewHelperExt:Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;

    iget v1, p0, Lcom/android/internal/widget/floatingtoolbar/LocalFloatingToolbarPopup$OverflowPanelViewHelper;->mSidePadding:I

    invoke-interface {v0, p3, v1, p2}, Lcom/android/internal/widget/floatingtoolbar/IOverflowPanelViewHelperExt;->hookGetView(Landroid/view/View;II)V

    .line 1577
    return-object p3
.end method
