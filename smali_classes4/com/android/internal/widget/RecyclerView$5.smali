.class Lcom/android/internal/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;

    .line 683
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 691
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 693
    return-void
.end method

.method public blacklist attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 731
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 732
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_2

    .line 733
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 740
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 742
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->access$000(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 743
    return-void
.end method

.method public blacklist detachViewFromParent(I)V
    .locals 5
    .param p1, "offset"    # I

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 748
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 749
    invoke-static {v0}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 750
    .local v1, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    .line 751
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 758
    :cond_1
    :goto_0
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 761
    .end local v1    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v1, p1}, Lcom/android/internal/widget/RecyclerView;->access$100(Lcom/android/internal/widget/RecyclerView;I)V

    .line 762
    return-void
.end method

.method public blacklist getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "offset"    # I

    .line 711
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChildCount()I
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public blacklist getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 725
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist indexOfChild(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 697
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public blacklist onEnteredHiddenState(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 766
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 767
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$monEnteredHiddenState(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V

    .line 770
    :cond_0
    return-void
.end method

.method public blacklist onLeftHiddenState(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 774
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 775
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 776
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$monLeftHiddenState(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView;)V

    .line 778
    :cond_0
    return-void
.end method

.method public blacklist removeAllViews()V
    .locals 4

    .line 716
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$5;->getChildCount()I

    move-result v0

    .line 717
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 718
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 717
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->removeAllViews()V

    .line 721
    return-void
.end method

.method public blacklist removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$5;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->removeViewAt(I)V

    .line 707
    return-void
.end method
