.class public Lcom/android/internal/widget/ConversationHeaderLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ConversationHeaderLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private blacklist calculateTotalChildLength()I
    .locals 7

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildCount()I

    move-result v0

    .line 55
    .local v0, "count":I
    const/4 v1, 0x0

    .line 57
    .local v1, "totalLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    nop

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 57
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    return v2
.end method

.method private blacklist remeasureChangedChildren(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "childrenInfo":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    .line 116
    .local v1, "info":Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
    iget v2, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    iget v3, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mStartWidth:I

    if-eq v2, v3, :cond_0

    .line 117
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 117
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 119
    .local v2, "childWidthMeasureSpec":I
    iget-object v4, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mView:Landroid/view/View;

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 119
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 121
    .local v3, "childHeightMeasureSpec":I
    iget-object v4, v1, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mView:Landroid/view/View;

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->measure(II)V

    .line 123
    .end local v1    # "info":Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "childHeightMeasureSpec":I
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method blacklist balanceViewWidths(Ljava/util/List;FI)V
    .locals 9
    .param p2, "weightSum"    # F
    .param p3, "excessContents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;",
            ">;FI)V"
        }
    .end annotation

    .line 132
    .local p1, "viewInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;>;"
    const/4 v0, 0x1

    .line 137
    .local v0, "performAnotherPass":Z
    :goto_0
    if-eqz v0, :cond_5

    if-lez p3, :cond_5

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_5

    .line 138
    const/4 v2, 0x0

    .line 139
    .local v2, "excessRemovedDuringThisPass":I
    const/4 v3, 0x0

    .line 140
    .local v3, "weightSumForNextPass":F
    const/4 v0, 0x0

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    .line 142
    .local v5, "info":Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
    iget v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_0

    .line 143
    goto :goto_1

    .line 145
    :cond_0
    iget v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    if-gtz v6, :cond_1

    .line 146
    goto :goto_1

    .line 148
    :cond_1
    iget v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    int-to-float v6, v6

    int-to-float v7, p3

    iget v8, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    div-float/2addr v8, p2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 149
    .local v6, "newWidth":I
    if-gez v6, :cond_2

    .line 150
    const/4 v6, 0x0

    .line 151
    const/4 v0, 0x1

    .line 153
    :cond_2
    iget v7, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    sub-int/2addr v7, v6

    add-int/2addr v2, v7

    .line 154
    iput v6, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    .line 155
    iget v7, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWidth:I

    if-lez v7, :cond_3

    .line 156
    iget v7, v5, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;->mWeight:F

    add-float/2addr v3, v7

    .line 158
    .end local v5    # "info":Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;
    .end local v6    # "newWidth":I
    :cond_3
    goto :goto_1

    .line 159
    :cond_4
    sub-int/2addr p3, v2

    .line 160
    move p2, v3

    .line 161
    .end local v2    # "excessRemovedDuringThisPass":I
    .end local v3    # "weightSumForNextPass":F
    goto :goto_0

    .line 162
    :cond_5
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 71
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 74
    .local v0, "containerWidth":I
    invoke-direct {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->calculateTotalChildLength()I

    move-result v1

    .line 76
    .local v1, "contentsWidth":I
    sub-int v2, v1, v0

    .line 77
    .local v2, "excessContents":I
    if-gtz v2, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildCount()I

    move-result v3

    .line 82
    .local v3, "count":I
    const/4 v4, 0x0

    .line 83
    .local v4, "remainingWeight":F
    const/4 v5, 0x0

    .line 86
    .local v5, "visibleChildrenToShorten":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_6

    .line 87
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 88
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 89
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 92
    .local v8, "weight":F
    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    if-nez v10, :cond_2

    .line 93
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-nez v10, :cond_3

    .line 96
    goto :goto_1

    .line 98
    :cond_3
    if-nez v5, :cond_4

    .line 99
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    move-object v5, v10

    .line 101
    :cond_4
    new-instance v10, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;

    invoke-direct {v10, v7}, Lcom/android/internal/widget/ConversationHeaderLinearLayout$ViewInfo;-><init>(Landroid/view/View;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float/2addr v4, v9

    .line 86
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "weight":F
    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    .end local v6    # "i":I
    :cond_6
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    .line 107
    :cond_7
    invoke-virtual {p0, v5, v4, v2}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->balanceViewWidths(Ljava/util/List;FI)V

    .line 108
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ConversationHeaderLinearLayout;->remeasureChangedChildren(Ljava/util/List;)V

    .line 109
    return-void

    .line 105
    :cond_8
    :goto_2
    return-void
.end method
