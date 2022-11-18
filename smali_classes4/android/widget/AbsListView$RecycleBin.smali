.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private greylist-max-o mActiveViews:[Landroid/view/View;

.field private greylist-max-o mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstActivePosition:I

.field private greylist mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private greylist-max-o mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewTypeCount:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 6912
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6927
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private greylist-max-o clearScrap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7417
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7418
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7419
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7418
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7421
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method private greylist-max-o clearScrapForRebind(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7424
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7425
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7426
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7427
    return-void
.end method

.method private greylist-max-o getSkippedScrap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 7194
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 7197
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private greylist-max-o pruneScrapViews()V
    .locals 9

    .line 7302
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    .line 7303
    .local v0, "maxViews":I
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7304
    .local v1, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7305
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7306
    aget-object v4, v2, v3

    .line 7307
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7308
    .local v5, "size":I
    :goto_1
    if-le v5, v0, :cond_0

    .line 7309
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 7305
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "size":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7313
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7314
    .local v3, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 7315
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 7316
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 7317
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-nez v7, :cond_2

    .line 7318
    invoke-direct {p0, v6, v4}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7319
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7320
    add-int/lit8 v5, v5, -0x1

    .line 7315
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 7325
    .end local v5    # "i":I
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7326
    .local v5, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v5, :cond_5

    .line 7327
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 7328
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 7329
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-nez v8, :cond_4

    .line 7330
    invoke-direct {p0, v7, v4}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7331
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 7332
    add-int/lit8 v6, v6, -0x1

    .line 7327
    .end local v7    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 7336
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method private greylist-max-o removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 7430
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 7431
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 7432
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    .line 7433
    return-void
.end method

.method private greylist-max-o retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 8
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 7388
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7389
    .local v0, "size":I
    if-lez v0, :cond_4

    .line 7392
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 7393
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7394
    .local v2, "view":Landroid/view/View;
    nop

    .line 7395
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 7397
    .local v3, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_1

    .line 7398
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 7399
    .local v4, "id":J
    iget-wide v6, v3, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 7400
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    return-object v6

    .line 7399
    .end local v4    # "id":J
    :cond_0
    goto :goto_1

    .line 7402
    :cond_1
    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v4, p2, :cond_2

    .line 7403
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 7404
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7405
    return-object v4

    .line 7402
    .end local v4    # "scrap":Landroid/view/View;
    :cond_2
    :goto_1
    nop

    .line 7392
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/AbsListView$LayoutParams;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7408
    .end local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7409
    .local v1, "scrap":Landroid/view/View;
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7410
    return-object v1

    .line 7412
    .end local v1    # "scrap":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method greylist-max-o addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 7126
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 7127
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_0

    .line 7130
    return-void

    .line 7133
    :cond_0
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7137
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7138
    .local v1, "viewType":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7142
    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    .line 7143
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7145
    :cond_1
    return-void

    .line 7148
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7154
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7158
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    .line 7159
    .local v2, "scrapHasTransientState":Z
    if-eqz v2, :cond_7

    .line 7160
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_4

    .line 7163
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_3

    .line 7164
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7166
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 7167
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_6

    .line 7170
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_5

    .line 7171
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7173
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 7176
    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7177
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7180
    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 7181
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v4, v3, :cond_8

    .line 7182
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7184
    :cond_8
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7187
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_9

    .line 7188
    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7191
    :cond_9
    :goto_1
    return-void
.end method

.method greylist clear()V
    .locals 3

    .line 6997
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6998
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6999
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v0}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7000
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    goto :goto_1

    .line 7001
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7002
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7003
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7004
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7002
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7008
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7009
    return-void
.end method

.method greylist-max-o clearTransientStateViews()V
    .locals 6

    .line 7081
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7082
    .local v0, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7083
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7084
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 7085
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7084
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7087
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7090
    .end local v2    # "N":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7091
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 7092
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 7093
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 7094
    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7093
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7096
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 7098
    .end local v3    # "N":I
    :cond_3
    return-void
.end method

.method greylist-max-o fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .line 7019
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 7020
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7022
    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 7025
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7026
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 7027
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7028
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 7030
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 7033
    aput-object v2, v0, v1

    .line 7035
    add-int v4, p2, v1

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7026
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7038
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method greylist-max-o fullyDetachScrapViews()V
    .locals 7

    .line 7282
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7283
    .local v0, "viewTypeCount":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7284
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7285
    aget-object v3, v1, v2

    .line 7286
    .local v3, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 7287
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 7288
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7289
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7286
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 7284
    .end local v3    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7293
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method greylist-max-o getActiveView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 7048
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v0, p1, v0

    .line 7049
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7050
    .local v1, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    if-ltz v0, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 7051
    aget-object v3, v1, v0

    .line 7052
    .local v3, "match":Landroid/view/View;
    aput-object v2, v1, v0

    .line 7053
    return-object v3

    .line 7055
    .end local v3    # "match":Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method greylist-max-o getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 7104
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 7105
    .local v0, "whichScrap":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 7106
    return-object v1

    .line 7108
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7109
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 7110
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 7111
    aget-object v1, v2, v0

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 7113
    :cond_2
    return-object v1
.end method

.method greylist-max-o getTransientStateView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 7059
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 7060
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7061
    .local v0, "id":J
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7062
    .local v2, "result":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7063
    return-object v2

    .line 7065
    .end local v0    # "id":J
    .end local v2    # "result":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 7066
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 7067
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 7068
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7069
    .local v1, "result":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7070
    return-object v1

    .line 7073
    .end local v0    # "index":I
    .end local v1    # "result":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o markChildrenDirty()V
    .locals 6

    .line 6958
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6959
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6960
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6961
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6962
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 6961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6964
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_3

    .line 6965
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6966
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 6967
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 6968
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6969
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 6970
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 6969
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6966
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6974
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 6975
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 6976
    .local v0, "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 6977
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 6976
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 6980
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5

    .line 6981
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 6982
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_5

    .line 6983
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 6982
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6986
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method greylist-max-o reclaimScrapViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 7342
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7343
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 7345
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7346
    .local v0, "viewTypeCount":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7347
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 7348
    aget-object v3, v1, v2

    .line 7349
    .local v3, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7347
    .end local v3    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7352
    .end local v0    # "viewTypeCount":I
    .end local v1    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method greylist-max-o removeSkippedScrap()V
    .locals 4

    .line 7204
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7205
    return-void

    .line 7207
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7208
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7209
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7211
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7212
    return-void
.end method

.method greylist-max-o scrapActiveViews()V
    .locals 13

    .line 7218
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7219
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7220
    .local v1, "hasListener":Z
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v4, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7222
    .local v2, "multipleScraps":Z
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7223
    .local v4, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v5, v0

    .line 7224
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_a

    .line 7225
    aget-object v7, v0, v6

    .line 7226
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_9

    .line 7227
    nop

    .line 7228
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 7229
    .local v8, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7231
    .local v9, "whichScrap":I
    const/4 v10, 0x0

    aput-object v10, v0, v6

    .line 7233
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    const/4 v11, -0x2

    if-eqz v10, :cond_6

    .line 7235
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7237
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v10, :cond_3

    .line 7238
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v10, :cond_2

    .line 7239
    new-instance v10, Landroid/util/LongSparseArray;

    invoke-direct {v10}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7241
    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 7242
    .local v10, "id":J
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7243
    .end local v10    # "id":J
    goto :goto_3

    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v10, :cond_5

    .line 7244
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v10, :cond_4

    .line 7245
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7247
    :cond_4
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 7248
    :cond_5
    if-eq v9, v11, :cond_9

    .line 7250
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 7252
    :cond_6
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 7254
    if-eq v9, v11, :cond_9

    .line 7255
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 7259
    :cond_7
    if-eqz v2, :cond_8

    .line 7260
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v10, v9

    .line 7263
    :cond_8
    iget v10, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v10, v6

    iput v10, v8, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7264
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7265
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7267
    if-eqz v1, :cond_9

    .line 7268
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v10, v7}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7224
    .end local v7    # "victim":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "whichScrap":I
    :cond_9
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 7273
    .end local v6    # "i":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 7274
    return-void
.end method

.method greylist-max-o setCacheColorHint(I)V
    .locals 6
    .param p1, "color"    # I

    .line 7360
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7361
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7362
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7363
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7364
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7366
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_3

    .line 7367
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7368
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 7369
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7370
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7371
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 7372
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7371
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7368
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7377
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7378
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 7379
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_5

    .line 7380
    aget-object v3, v0, v2

    .line 7381
    .local v3, "victim":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 7382
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 7379
    .end local v3    # "victim":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7385
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public greylist-max-o setViewTypeCount(I)V
    .locals 3
    .param p1, "viewTypeCount"    # I

    .line 6944
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 6948
    new-array v0, p1, [Ljava/util/ArrayList;

    .line 6949
    .local v0, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 6950
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 6949
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6952
    .end local v1    # "i":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 6953
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 6954
    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 6955
    return-void

    .line 6945
    .end local v0    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .line 6989
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
