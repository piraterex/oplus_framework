.class Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field private greylist-max-o mDropDownContext:Landroid/content/Context;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 498
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 499
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->setDropDownViewContext(Landroid/content/Context;)V

    .line 500
    return-void
.end method


# virtual methods
.method public whitelist getCount()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->-$$Nest$fgetmTabLayout(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 533
    if-nez p2, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->mDropDownContext:Landroid/content/Context;

    .line 535
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$Tab;

    const/4 v3, 0x1

    .line 534
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->-$$Nest$mcreateTabView(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_0

    .line 537
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    .line 539
    :goto_0
    return-object p2
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 513
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->-$$Nest$fgetmTabLayout(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 518
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 523
    if-nez p2, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$Tab;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->-$$Nest$mcreateTabView(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_0

    .line 526
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    .line 528
    :goto_0
    return-object p2
.end method

.method public greylist-max-o setDropDownViewContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 503
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->mDropDownContext:Landroid/content/Context;

    .line 504
    return-void
.end method
