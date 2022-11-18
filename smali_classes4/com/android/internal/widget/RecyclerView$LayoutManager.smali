.class public abstract Lcom/android/internal/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field blacklist mAutoMeasure:Z

.field blacklist mChildHelper:Lcom/android/internal/widget/ChildHelper;

.field private blacklist mHeight:I

.field private blacklist mHeightMode:I

.field blacklist mIsAttachedToWindow:Z

.field private blacklist mItemPrefetchEnabled:Z

.field private blacklist mMeasurementCacheEnabled:Z

.field blacklist mPrefetchMaxCountObserved:I

.field blacklist mPrefetchMaxObservedInInitialPrefetch:Z

.field blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field blacklist mRequestedSimpleAnimations:Z

.field blacklist mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

.field private blacklist mWidth:I

.field private blacklist mWidthMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 6931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 6940
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6942
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 6950
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private blacklist addViewInt(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .line 7806
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7807
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7816
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 7809
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 7818
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 7819
    .local v1, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 7829
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v2, v4, :cond_6

    .line 7831
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 7832
    .local v2, "currentIndex":I
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 7833
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result p2

    .line 7835
    :cond_3
    if-eq v2, v4, :cond_5

    .line 7840
    if-eq v2, p2, :cond_4

    .line 7841
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->moveView(II)V

    .line 7843
    .end local v2    # "currentIndex":I
    :cond_4
    goto :goto_4

    .line 7836
    .restart local v2    # "currentIndex":I
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 7838
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7844
    .end local v2    # "currentIndex":I
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 7845
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7846
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7847
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    .line 7820
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7821
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_3

    .line 7823
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 7825
    :goto_3
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4, v3}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7850
    :cond_9
    :goto_4
    iget-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v2, :cond_a

    .line 7854
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7855
    iput-boolean v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 7857
    :cond_a
    return-void
.end method

.method public static blacklist chooseSize(III)I
    .locals 3
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .line 7137
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7138
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7139
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 7146
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 7141
    :sswitch_0
    return v1

    .line 7143
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 8033
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->detachViewFromParent(I)V

    .line 8034
    return-void
.end method

.method public static blacklist getChildMeasureSpec(IIIIZ)I
    .locals 5
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .line 8667
    sub-int v0, p0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8668
    .local v0, "size":I
    const/4 v1, 0x0

    .line 8669
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 8670
    .local v2, "resultMode":I
    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p4, :cond_2

    .line 8671
    if-ltz p3, :cond_0

    .line 8672
    move v1, p3

    .line 8673
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    .line 8674
    :cond_0
    if-ne p3, v4, :cond_1

    .line 8675
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 8682
    :sswitch_0
    const/4 v1, 0x0

    .line 8683
    const/4 v2, 0x0

    goto :goto_0

    .line 8678
    :sswitch_1
    move v1, v0

    .line 8679
    move v2, p1

    .line 8680
    nop

    .line 8684
    :goto_0
    goto :goto_2

    .line 8686
    :cond_1
    if-ne p3, v3, :cond_7

    .line 8687
    const/4 v1, 0x0

    .line 8688
    const/4 v2, 0x0

    goto :goto_2

    .line 8691
    :cond_2
    if-ltz p3, :cond_3

    .line 8692
    move v1, p3

    .line 8693
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    .line 8694
    :cond_3
    if-ne p3, v4, :cond_4

    .line 8695
    move v1, v0

    .line 8696
    move v2, p1

    goto :goto_2

    .line 8697
    :cond_4
    if-ne p3, v3, :cond_7

    .line 8698
    move v1, v0

    .line 8699
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_5

    goto :goto_1

    .line 8702
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 8700
    :cond_6
    :goto_1
    const/high16 v2, -0x80000000

    .line 8708
    :cond_7
    :goto_2
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static blacklist getChildMeasureSpec(IIIZ)I
    .locals 4
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8624
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8625
    .local v0, "size":I
    const/4 v1, 0x0

    .line 8626
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 8627
    .local v2, "resultMode":I
    if-eqz p3, :cond_1

    .line 8628
    if-ltz p2, :cond_0

    .line 8629
    move v1, p2

    .line 8630
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 8634
    :cond_0
    const/4 v1, 0x0

    .line 8635
    const/4 v2, 0x0

    goto :goto_0

    .line 8638
    :cond_1
    if-ltz p2, :cond_2

    .line 8639
    move v1, p2

    .line 8640
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 8641
    :cond_2
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8642
    move v1, v0

    .line 8644
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 8645
    :cond_3
    const/4 v3, -0x2

    if-ne p2, v3, :cond_4

    .line 8646
    move v1, v0

    .line 8647
    const/high16 v2, -0x80000000

    .line 8650
    :cond_4
    :goto_0
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3
.end method

.method public static blacklist getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 9719
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 9720
    .local v0, "properties":Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    sget-object v1, Lcom/android/internal/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9722
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 9723
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 9724
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 9725
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 9726
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9727
    return-object v0
.end method

.method private static blacklist isMeasurementUpToDate(III)Z
    .locals 4
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .line 8561
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8562
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8563
    .local v1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 8564
    return v2

    .line 8566
    :cond_0
    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 8574
    return v2

    .line 8572
    :sswitch_0
    if-ne v1, p0, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 8568
    :sswitch_1
    return v3

    .line 8570
    :sswitch_2
    if-lt v1, p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist onSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 9404
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 9405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 9407
    :cond_0
    return-void
.end method

.method private blacklist scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .line 8421
    invoke-static {p3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8422
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8426
    return-void

    .line 8428
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 8429
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8430
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8431
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8433
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8434
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 8435
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->onViewDetached(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8437
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7761
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 7762
    return-void
.end method

.method public blacklist addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 7779
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7780
    return-void
.end method

.method public blacklist addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7790
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 7791
    return-void
.end method

.method public blacklist addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 7802
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7803
    return-void
.end method

.method public blacklist assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 7121
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7122
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 7124
    :cond_0
    return-void
.end method

.method public blacklist assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 7158
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7159
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7161
    :cond_0
    return-void
.end method

.method public blacklist attachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8078
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8079
    return-void
.end method

.method public blacklist attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 8067
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$LayoutParams;)V

    .line 8068
    return-void
.end method

.method public blacklist attachView(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8046
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8047
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8048
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8050
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8052
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8056
    return-void
.end method

.method public blacklist calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 8927
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8928
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8929
    return-void

    .line 8931
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8932
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8933
    return-void
.end method

.method public blacklist canScrollHorizontally()Z
    .locals 1

    .line 7662
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canScrollVertically()Z
    .locals 1

    .line 7672
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 7577
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 7329
    return-void
.end method

.method public blacklist collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 7357
    return-void
.end method

.method public blacklist computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9258
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9273
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9288
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9303
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9318
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9333
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist detachAndScrapAttachedViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8413
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8414
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8415
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8416
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8414
    .end local v2    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8418
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist detachAndScrapView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8117
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 8118
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8119
    return-void
.end method

.method public blacklist detachAndScrapViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8131
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8132
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8133
    return-void
.end method

.method public blacklist detachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8004
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 8005
    .local v0, "ind":I
    if-ltz v0, :cond_0

    .line 8006
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 8008
    :cond_0
    return-void
.end method

.method public blacklist detachViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 8026
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 8027
    return-void
.end method

.method blacklist dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 7360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7361
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 7362
    return-void
.end method

.method blacklist dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 7365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7366
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 7367
    return-void
.end method

.method public blacklist endAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 7742
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 7743
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 7745
    :cond_0
    return-void
.end method

.method public blacklist findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 7946
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7947
    return-object v1

    .line 7949
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 7950
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_1

    .line 7951
    return-object v1

    .line 7953
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7954
    return-object v1

    .line 7956
    :cond_2
    return-object v0
.end method

.method public blacklist findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 7973
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7974
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 7975
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7976
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 7977
    .local v3, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_0

    .line 7978
    goto :goto_1

    .line 7980
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 7981
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 7982
    :cond_1
    return-object v2

    .line 7974
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7985
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public abstract blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
.end method

.method public blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 7618
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7594
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 7595
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 7596
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7597
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 7599
    :cond_1
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getBaseline()I
    .locals 1

    .line 7905
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8962
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public blacklist getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 8174
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getChildCount()I
    .locals 1

    .line 8165
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getClipToPadding()Z
    .locals 1

    .line 7477
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9619
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9622
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :cond_1
    return v1

    .line 9620
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8906
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 8858
    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8859
    return-void
.end method

.method public blacklist getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8870
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 8735
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8736
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 8721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8722
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8894
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8882
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getFocusedChild()Landroid/view/View;
    .locals 3

    .line 8311
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8312
    return-object v1

    .line 8314
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8315
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8318
    :cond_1
    return-object v0

    .line 8316
    :cond_2
    :goto_0
    return-object v1
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 8228
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public blacklist getHeightMode()I
    .locals 1

    .line 8210
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public blacklist getItemCount()I
    .locals 2

    .line 8334
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8335
    .local v0, "a":Lcom/android/internal/widget/RecyclerView$Adapter;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public blacklist getItemViewType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7926
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutDirection()I
    .locals 1

    .line 7732
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public blacklist getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8977
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public blacklist getMinimumHeight()I
    .locals 1

    .line 9376
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getMinimumWidth()I
    .locals 1

    .line 9369
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingBottom()I
    .locals 1

    .line 8264
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingEnd()I
    .locals 1

    .line 8282
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingLeft()I
    .locals 1

    .line 8237
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingRight()I
    .locals 1

    .line 8255
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingStart()I
    .locals 1

    .line 8273
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingTop()I
    .locals 1

    .line 8246
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7916
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public blacklist getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8992
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9600
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9603
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :cond_1
    return v1

    .line 9601
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getSelectionModeForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9584
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8947
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public blacklist getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "includeDecorInsets"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 8825
    if-eqz p2, :cond_0

    .line 8826
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8827
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 8828
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 8827
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8829
    .end local v0    # "insets":Landroid/graphics/Rect;
    goto :goto_0

    .line 8830
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8833
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 8834
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 8835
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8836
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8837
    .local v1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8838
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8839
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 8840
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    .line 8841
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 8842
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    .line 8843
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 8839
    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8847
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v1    # "tempRectF":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8848
    return-void
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 8219
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public blacklist getWidthMode()I
    .locals 1

    .line 8192
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method blacklist hasFlexibleChildInBothOrientations()Z
    .locals 5

    .line 9752
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 9753
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9754
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9755
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 9756
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 9757
    const/4 v4, 0x1

    return v4

    .line 9753
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9760
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist hasFocus()Z
    .locals 1

    .line 8302
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist ignoreView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 8379
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8384
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8385
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8386
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8387
    return-void

    .line 8382
    .end local v0    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View should be fully attached to be ignored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAttachedToWindow()Z
    .locals 1

    .line 7377
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public blacklist isAutoMeasureEnabled()Z
    .locals 1

    .line 7240
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public blacklist isFocused()Z
    .locals 1

    .line 8292
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist isItemPrefetchEnabled()Z
    .locals 1

    .line 7305
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public blacklist isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9636
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMeasurementCacheEnabled()Z
    .locals 1

    .line 8545
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public blacklist isSmoothScrolling()Z
    .locals 1

    .line 7719
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 8770
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8771
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 8773
    return-void
.end method

.method public blacklist layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 8806
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8807
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8808
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 8811
    return-void
.end method

.method public blacklist measureChild(Landroid/view/View;II)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 8491
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8493
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8494
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 8495
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 8496
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    .line 8497
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    .line 8498
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 8496
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 8499
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    .line 8500
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    .line 8501
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    .line 8499
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8502
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8503
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 8505
    :cond_0
    return-void
.end method

.method public blacklist measureChildWithMargins(Landroid/view/View;II)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 8590
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8592
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8593
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 8594
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 8596
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    .line 8597
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    .line 8599
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 8596
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 8600
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    .line 8601
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    .line 8603
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    .line 8600
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8604
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8605
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 8607
    :cond_0
    return-void
.end method

.method public blacklist moveView(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 8098
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8099
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 8103
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8104
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8105
    return-void

    .line 8100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "dx"    # I

    .line 8345
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8346
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8348
    :cond_0
    return-void
.end method

.method public blacklist offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .line 8357
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8358
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8360
    :cond_0
    return-void
.end method

.method public blacklist onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 9141
    return-void
.end method

.method public blacklist onAddFocusables(Lcom/android/internal/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 9169
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 7432
    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7441
    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 7468
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 7469
    return-void
.end method

.method public blacklist onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9015
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 9491
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9492
    return-void
.end method

.method public blacklist onInitializeAccessibilityEvent(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 9507
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    .line 9510
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9511
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9512
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9513
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 9510
    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 9515
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    .line 9516
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9518
    :cond_3
    return-void

    .line 9508
    :cond_4
    :goto_2
    return-void
.end method

.method blacklist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9440
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9441
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9470
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9471
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9472
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9473
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 9475
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9476
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9477
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9478
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 9480
    :cond_3
    nop

    .line 9482
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    .line 9483
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    .line 9484
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v2

    .line 9485
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v3

    .line 9482
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 9486
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 9487
    return-void
.end method

.method blacklist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9522
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9524
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9525
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9528
    :cond_0
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9546
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 9547
    .local v2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :cond_1
    move v4, v1

    .line 9548
    .local v4, "columnIndexGuess":I
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9549
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 9551
    .local v0, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 9552
    return-void
.end method

.method public blacklist onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 9035
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 9191
    return-void
.end method

.method public blacklist onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 9179
    return-void
.end method

.method public blacklist onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 9243
    return-void
.end method

.method public blacklist onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 9201
    return-void
.end method

.method public blacklist onItemsUpdated(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 9213
    return-void
.end method

.method public blacklist onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 9226
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/android/internal/widget/RecyclerView;II)V

    .line 9227
    return-void
.end method

.method public blacklist onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7532
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7533
    return-void
.end method

.method public blacklist onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7547
    return-void
.end method

.method public blacklist onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .line 9351
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9352
    return-void
.end method

.method public blacklist onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9103
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .line 9125
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 9395
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 9389
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 9415
    return-void
.end method

.method blacklist performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 9641
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public blacklist performAccessibilityAction(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .line 9657
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9658
    return v1

    .line 9660
    :cond_0
    const/4 v2, 0x0

    .local v2, "vScroll":I
    const/4 v3, 0x0

    .line 9661
    .local v3, "hScroll":I
    const/4 v4, 0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 9663
    :sswitch_0
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9664
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    neg-int v2, v0

    .line 9666
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9667
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    neg-int v3, v0

    goto :goto_0

    .line 9671
    :sswitch_1
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9672
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v2, v0, v5

    .line 9674
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9675
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v3, v0, v5

    .line 9679
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 9680
    return v1

    .line 9682
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9683
    return v4

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method blacklist performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 9688
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public blacklist performAccessibilityActionForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .line 9709
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 7391
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7392
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7394
    :cond_0
    return-void
.end method

.method public blacklist removeAllViews()V
    .locals 3

    .line 7892
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7893
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 7894
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->removeViewAt(I)V

    .line 7893
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7896
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 9430
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9431
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9432
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9433
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 9430
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9436
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method blacklist removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 6
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8449
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v0

    .line 8451
    .local v0, "scrapCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 8452
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 8453
    .local v2, "scrap":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8454
    .local v3, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8455
    goto :goto_1

    .line 8462
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8463
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8464
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8466
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 8467
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8469
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8470
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 8451
    .end local v2    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8472
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->clearScrap()V

    .line 8473
    if-lez v0, :cond_4

    .line 8474
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 8476
    :cond_4
    return-void
.end method

.method public blacklist removeAndRecycleView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8142
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8143
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8144
    return-void
.end method

.method public blacklist removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8153
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8154
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8155
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8156
    return-void
.end method

.method public blacklist removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 7411
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7412
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 7414
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeDetachedView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8088
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8089
    return-void
.end method

.method public blacklist removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7868
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 7869
    return-void
.end method

.method public blacklist removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 7880
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7881
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7882
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper;->removeViewAt(I)V

    .line 7884
    :cond_0
    return-void
.end method

.method public blacklist requestChildRectangleOnScreen(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 9055
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 9056
    .local v2, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 9057
    .local v3, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9058
    .local v4, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 9059
    .local v5, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 9060
    .local v6, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 9061
    .local v7, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v6

    .line 9062
    .local v8, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v7

    .line 9064
    .local v9, "childBottom":I
    sub-int v10, v6, v2

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 9065
    .local v10, "offScreenLeft":I
    sub-int v12, v7, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 9066
    .local v12, "offScreenTop":I
    sub-int v13, v8, v4

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 9067
    .local v13, "offScreenRight":I
    sub-int v14, v9, v5

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 9073
    .local v14, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/4 v11, 0x1

    if-ne v15, v11, :cond_1

    .line 9074
    if-eqz v13, :cond_0

    move v15, v13

    goto :goto_0

    .line 9075
    :cond_0
    sub-int v15, v8, v4

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_0
    nop

    .local v15, "dx":I
    goto :goto_2

    .line 9077
    .end local v15    # "dx":I
    :cond_1
    if-eqz v10, :cond_2

    move v15, v10

    goto :goto_1

    .line 9078
    :cond_2
    sub-int v15, v6, v2

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_1
    nop

    .line 9083
    .restart local v15    # "dx":I
    :goto_2
    if-eqz v12, :cond_3

    move v11, v12

    goto :goto_3

    .line 9084
    :cond_3
    sub-int v11, v7, v3

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_3
    nop

    .line 9086
    .local v11, "dy":I
    if-nez v15, :cond_5

    if-eqz v11, :cond_4

    goto :goto_4

    .line 9094
    :cond_4
    const/16 v16, 0x0

    return v16

    .line 9087
    :cond_5
    :goto_4
    if-eqz p4, :cond_6

    .line 9088
    invoke-virtual {v0, v15, v11}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_5

    .line 9090
    :cond_6
    invoke-virtual {v0, v15, v11}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9092
    :goto_5
    const/16 v16, 0x1

    return v16
.end method

.method public blacklist requestLayout()V
    .locals 1

    .line 7108
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7109
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 7111
    :cond_0
    return-void
.end method

.method public blacklist requestSimpleAnimationsInNextLayout()V
    .locals 1

    .line 9565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 9566
    return-void
.end method

.method public blacklist scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7635
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 7685
    return-void
.end method

.method public blacklist scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7652
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAutoMeasureEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 7228
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7229
    return-void
.end method

.method blacklist setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 9731
    nop

    .line 9732
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9733
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9731
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 9735
    return-void
.end method

.method public final blacklist setItemPrefetchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 7287
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 7288
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 7289
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 7290
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7291
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 7294
    :cond_0
    return-void
.end method

.method blacklist setMeasureSpecs(II)V
    .locals 2
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .line 7019
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7020
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7021
    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 7022
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7025
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7026
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 7027
    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 7028
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7030
    :cond_1
    return-void
.end method

.method public blacklist setMeasuredDimension(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .line 9362
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->access$300(Lcom/android/internal/widget/RecyclerView;II)V

    .line 9363
    return-void
.end method

.method public blacklist setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 7097
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7098
    .local v0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 7099
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v2

    .line 7100
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v3

    invoke-static {p3, v1, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    .line 7101
    .local v3, "height":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 7102
    return-void
.end method

.method blacklist setMeasuredDimensionFromChildren(II)V
    .locals 9
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 7046
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7047
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 7048
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7049
    return-void

    .line 7051
    :cond_0
    const v1, 0x7fffffff

    .line 7052
    .local v1, "minX":I
    const v2, 0x7fffffff

    .line 7053
    .local v2, "minY":I
    const/high16 v3, -0x80000000

    .line 7054
    .local v3, "maxX":I
    const/high16 v4, -0x80000000

    .line 7056
    .local v4, "maxY":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 7057
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7058
    .local v6, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7059
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7060
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-ge v8, v1, :cond_1

    .line 7061
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 7063
    :cond_1
    iget v8, v7, Landroid/graphics/Rect;->right:I

    if-le v8, v3, :cond_2

    .line 7064
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 7066
    :cond_2
    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-ge v8, v2, :cond_3

    .line 7067
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 7069
    :cond_3
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_4

    .line 7070
    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 7056
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7073
    .end local v5    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7074
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 7075
    return-void
.end method

.method public blacklist setMeasurementCacheEnabled(Z)V
    .locals 0
    .param p1, "measurementCacheEnabled"    # Z

    .line 8557
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8558
    return-void
.end method

.method blacklist setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 7003
    if-nez p1, :cond_0

    .line 7004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 7005
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 7006
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7007
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0

    .line 7009
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 7010
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 7011
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7012
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7014
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7015
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 7016
    return-void
.end method

.method blacklist shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8528
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8530
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8531
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8528
    :goto_1
    return v0
.end method

.method blacklist shouldMeasureTwice()Z
    .locals 1

    .line 9748
    const/4 v0, 0x0

    return v0
.end method

.method blacklist shouldReMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8514
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8515
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8516
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8514
    :goto_1
    return v0
.end method

.method public blacklist smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 7698
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7699
    return-void
.end method

.method public blacklist startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 7707
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 7708
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7709
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 7711
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 7712
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->start(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 7713
    return-void
.end method

.method public blacklist stopIgnoringView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 8399
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8400
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 8401
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 8402
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8403
    return-void
.end method

.method blacklist stopSmoothScroller()V
    .locals 1

    .line 9398
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 9399
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9401
    :cond_0
    return-void
.end method

.method public blacklist supportsPredictiveItemAnimations()Z
    .locals 1

    .line 7264
    const/4 v0, 0x0

    return v0
.end method
