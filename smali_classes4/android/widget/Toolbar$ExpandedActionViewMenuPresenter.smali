.class Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field greylist-max-o mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic blacklist this$0:Landroid/widget/Toolbar;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/Toolbar;)V
    .locals 0

    .line 2401
    iput-object p1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2492
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2496
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2497
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-static {v0}, Landroid/widget/Toolbar;->-$$Nest$fgetmCollapseButtonView(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2498
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2500
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->addChildrenForExpandedActionView()V

    .line 2501
    iput-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2502
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2503
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2505
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2463
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-static {v0}, Landroid/widget/Toolbar;->-$$Nest$mensureCollapseButtonView(Landroid/widget/Toolbar;)V

    .line 2464
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-static {v0}, Landroid/widget/Toolbar;->-$$Nest$fgetmCollapseButtonView(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 2465
    invoke-static {v1}, Landroid/widget/Toolbar;->-$$Nest$fgetmCollapseButtonView(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2467
    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2468
    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 2469
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2470
    invoke-virtual {v1}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 2471
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-static {v2}, Landroid/widget/Toolbar;->-$$Nest$fgetmButtonGravity(Landroid/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2472
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2473
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2474
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v2, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2477
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2478
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    invoke-virtual {v0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2479
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2481
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 2482
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2485
    :cond_2
    return v0
.end method

.method public greylist-max-o flagActionItems()Z
    .locals 1

    .line 2458
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getId()I
    .locals 1

    .line 2510
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 2416
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 2408
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 2409
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 2411
    :cond_0
    iput-object p2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 2412
    return-void
.end method

.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2454
    return-void
.end method

.method public greylist-max-o onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2520
    return-void
.end method

.method public greylist-max-o onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 2515
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 2449
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 2445
    return-void
.end method

.method public greylist-max-o updateMenuView(Z)V
    .locals 5
    .param p1, "cleared"    # Z

    .line 2422
    iget-object v0, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 2423
    const/4 v0, 0x0

    .line 2425
    .local v0, "found":Z
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 2426
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 2427
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2428
    iget-object v3, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2429
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_0

    .line 2430
    const/4 v0, 0x1

    .line 2431
    goto :goto_1

    .line 2427
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2436
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2438
    iget-object v1, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v1, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 2441
    .end local v0    # "found":Z
    :cond_2
    return-void
.end method
