.class Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectShareViewHolder"
.end annotation


# instance fields
.field private blacklist mCellCountPerRow:I

.field private final blacklist mCellVisibility:[Z

.field private blacklist mDirectShareCurrHeight:I

.field private blacklist mDirectShareMaxHeight:I

.field private blacklist mDirectShareMinHeight:I

.field private blacklist mHideDirectShareExpansion:Z

.field private final blacklist mListAdapterSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/app/ChooserListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mParent:Landroid/view/ViewGroup;

.field private final blacklist mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewGroup;Ljava/util/List;IILjava/util/function/Supplier;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p3, "cellCountPerRow"    # I
    .param p4, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;II",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/app/ChooserListAdapter;",
            ">;)V"
        }
    .end annotation

    .line 3801
    .local p2, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/view/ViewGroup;>;"
    .local p5, "listAdapterSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/app/ChooserListAdapter;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-direct {p0, v0, p1, p4}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;-><init>(ILandroid/view/View;I)V

    .line 3790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 3791
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 3792
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3793
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 3803
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    .line 3804
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    .line 3805
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    .line 3806
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    .line 3807
    iput-object p5, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mListAdapterSupplier:Ljava/util/function/Supplier;

    .line 3808
    return-void
.end method

.method private blacklist updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 10
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "yDiff"    # I
    .param p3, "newHeight"    # I

    .line 3910
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 3915
    :cond_0
    const/4 v0, 0x0

    .line 3916
    .local v0, "foundExpansion":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3917
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3919
    .local v2, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3920
    invoke-virtual {v2, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 3922
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v3, :cond_2

    .line 3923
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 3925
    .local v3, "widthSpec":I
    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3927
    .local v4, "heightSpec":I
    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 3928
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3929
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 3930
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 3929
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 3932
    const/4 v0, 0x1

    .line 3916
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3937
    .end local v1    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 3938
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3940
    :cond_4
    return-void

    .line 3911
    .end local v0    # "foundExpansion":Z
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 3811
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 3812
    .local v0, "row":Landroid/view/ViewGroup;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3813
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v1, p1

    .line 3815
    return-object v0
.end method

.method blacklist collapse(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 3905
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 3907
    return-void
.end method

.method blacklist expand(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 3900
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 3902
    return-void
.end method

.method public blacklist getMeasuredRowHeight()I
    .locals 1

    .line 3842
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    return v0
.end method

.method public blacklist getMinRowHeight()I
    .locals 1

    .line 3846
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    return v0
.end method

.method public blacklist getRow(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "rowNumber"    # I

    .line 3827
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getRowByIndex(I)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "index"    # I

    .line 3823
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 3819
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public blacklist handleScroll(Lcom/android/internal/widget/RecyclerView;III)V
    .locals 5
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "y"    # I
    .param p3, "oldy"    # I
    .param p4, "maxTargetsPerRow"    # I

    .line 3873
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3874
    .local v0, "notExpanded":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 3875
    iget-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    if-eqz v1, :cond_1

    .line 3876
    return-void

    .line 3881
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mListAdapterSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserListAdapter;

    .line 3882
    .local v1, "adapter":Lcom/android/internal/app/ChooserListAdapter;
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v3

    .line 3883
    .local v3, "validTargets":I
    if-gt v3, p4, :cond_2

    .line 3884
    iput-boolean v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    .line 3885
    return-void

    .line 3889
    .end local v1    # "adapter":Lcom/android/internal/app/ChooserListAdapter;
    .end local v3    # "validTargets":I
    :cond_2
    sub-int v1, p3, p2

    int-to-float v1, v1

    const v2, 0x3f47ae14    # 0.78f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3891
    .local v1, "yDiff":I
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3892
    .local v2, "prevHeight":I
    add-int v3, v2, v1

    iget v4, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3893
    .local v3, "newHeight":I
    iget v4, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3894
    sub-int v1, v3, v2

    .line 3896
    invoke-direct {p0, p1, v1, v3}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->updateDirectShareRowHeight(Lcom/android/internal/widget/RecyclerView;II)V

    .line 3897
    return-void
.end method

.method public blacklist measure()V
    .locals 3

    .line 3831
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3832
    .local v1, "spec":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 3833
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 3835
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    .line 3836
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    if-lez v2, :cond_0

    .line 3837
    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    .line 3838
    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    .line 3839
    return-void
.end method

.method public blacklist setViewVisibility(II)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "visibility"    # I

    .line 3850
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 3851
    .local v0, "v":Landroid/view/View;
    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    .line 3852
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 3853
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3854
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 3855
    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    aget-boolean v3, v2, p1

    if-eqz v3, :cond_1

    .line 3856
    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 3858
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 3859
    .local v2, "fadeAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3860
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3861
    new-instance v1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3866
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 3868
    .end local v2    # "fadeAnim":Landroid/animation/ValueAnimator;
    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
