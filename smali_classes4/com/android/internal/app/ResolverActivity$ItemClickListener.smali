.class Lcom/android/internal/app/ResolverActivity$ItemClickListener;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    .line 2347
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2351
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2352
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    if-eqz v0, :cond_1

    .line 2353
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 2355
    :cond_1
    if-gez p3, :cond_2

    .line 2357
    return-void

    .line 2360
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2361
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2362
    return-void

    .line 2364
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 2365
    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveAdapterView()Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 2366
    .local v1, "currentAdapterView":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    .line 2367
    .local v3, "checkedPos":I
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v5

    .line 2368
    .local v4, "hasValidSelection":Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->useLayoutWithDefault()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v4, :cond_5

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmLastSelected(Lcom/android/internal/app/ResolverActivity;)I

    move-result v6

    if-eq v6, v3, :cond_7

    :cond_5
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v6}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmAlwaysButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2371
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v5, v4, v3, v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$msetAlwaysButtonEnabled(Lcom/android/internal/app/ResolverActivity;ZIZ)V

    .line 2372
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2373
    if-eqz v4, :cond_6

    .line 2374
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 2375
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmOnceButton(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 2377
    :cond_6
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2, v3}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fputmLastSelected(Lcom/android/internal/app/ResolverActivity;I)V

    goto :goto_2

    .line 2379
    :cond_7
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6, p3, v5, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 2381
    :goto_2
    return-void
.end method

.method public whitelist onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 2385
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2386
    .local v0, "listView":Landroid/widget/ListView;
    :goto_0
    if-eqz v0, :cond_1

    .line 2387
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 2389
    :cond_1
    if-gez p3, :cond_2

    .line 2391
    const/4 v1, 0x0

    return v1

    .line 2393
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    .line 2394
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/android/internal/app/ResolverListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 2395
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$ItemClickListener;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 2396
    return v2
.end method
