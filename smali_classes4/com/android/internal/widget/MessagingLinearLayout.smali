.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# instance fields
.field private blacklist mMaxDisplayedLines:I

.field private blacklist mSpacing:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 51
    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 56
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 58
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 60
    :pswitch_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 56
    .end local v4    # "attr":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isGone(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 287
    return v1

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 290
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v2, v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_1

    .line 292
    return v1

    .line 294
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected whitelist drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 245
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 246
    .local v0, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_0

    .line 247
    move-object v1, p2

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 248
    .local v1, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    const/4 v2, 0x1

    return v2

    .line 252
    .end local v1    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    .line 272
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public blacklist generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 267
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 278
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 279
    .local v0, "copy":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 280
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 282
    :cond_0
    return-object v0
.end method

.method public whitelist getBaseline()I
    .locals 6

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v0

    .line 326
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 328
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->isGone(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    nop

    .line 326
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 331
    .restart local v2    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 332
    .local v3, "childBaseline":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 333
    return v4

    .line 335
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 336
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v3

    return v5

    .line 338
    .end local v1    # "i":I
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childBaseline":I
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v1

    return v1
.end method

.method public blacklist getMessagingLayout()Lcom/android/internal/widget/IMessagingLayout;
    .locals 3

    .line 306
    move-object v0, p0

    .line 308
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 309
    .local v1, "p":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 310
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 311
    instance-of v2, v0, Lcom/android/internal/widget/IMessagingLayout;

    if-eqz v2, :cond_0

    .line 312
    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/IMessagingLayout;

    return-object v2

    .line 317
    .end local v1    # "p":Landroid/view/ViewParent;
    :cond_0
    goto :goto_0

    .line 315
    .restart local v1    # "p":Landroid/view/ViewParent;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 184
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    .line 189
    .local v1, "paddingLeft":I
    sub-int v2, p4, p2

    .line 190
    .local v2, "width":I
    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v3, v2, v3

    .line 192
    .local v3, "childRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v4

    .line 193
    .local v4, "layoutDirection":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v5

    .line 195
    .local v5, "count":I
    iget v6, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    .line 197
    .local v6, "childTop":I
    const/4 v7, 0x1

    .line 198
    .local v7, "first":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v8

    .line 199
    .local v8, "shown":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v5, :cond_5

    .line 200
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 201
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_0

    .line 202
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_3

    .line 204
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 205
    .local v11, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    move-object v12, v10

    check-cast v12, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 207
    .local v12, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 208
    .local v13, "childWidth":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 211
    .local v14, "childHeight":I
    const/4 v15, 0x1

    if-ne v4, v15, :cond_1

    .line 212
    sub-int v16, v3, v13

    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v16, v16, v15

    move/from16 v15, v16

    .local v16, "childLeft":I
    goto :goto_1

    .line 214
    .end local v16    # "childLeft":I
    :cond_1
    iget v15, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v16, v1, v15

    move/from16 v15, v16

    .line 216
    .local v15, "childLeft":I
    :goto_1
    move/from16 v16, v1

    .end local v1    # "paddingLeft":I
    .local v16, "paddingLeft":I
    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_3

    .line 217
    if-eqz v8, :cond_2

    iget-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v1, :cond_2

    .line 219
    add-int v1, v15, v13

    move/from16 v17, v2

    .end local v2    # "width":I
    .local v17, "width":I
    iget v2, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v2, v6

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 221
    invoke-interface {v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    goto :goto_2

    .line 217
    .end local v17    # "width":I
    .restart local v2    # "width":I
    :cond_2
    move/from16 v17, v2

    .line 223
    .end local v2    # "width":I
    .restart local v17    # "width":I
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 224
    goto :goto_3

    .line 226
    .end local v17    # "width":I
    .restart local v2    # "width":I
    :cond_3
    move/from16 v17, v2

    .end local v2    # "width":I
    .restart local v17    # "width":I
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    .line 227
    iput v14, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    .line 230
    if-nez v7, :cond_4

    .line 231
    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v6, v1

    .line 234
    :cond_4
    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v1

    .line 235
    add-int v1, v15, v13

    add-int v2, v6, v14

    invoke-virtual {v10, v15, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 237
    iget v1, v11, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v14

    add-int/2addr v6, v1

    .line 239
    const/4 v1, 0x0

    move v7, v1

    .line 199
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v12    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v13    # "childWidth":I
    .end local v14    # "childHeight":I
    .end local v15    # "childLeft":I
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0

    .line 241
    .end local v9    # "i":I
    .end local v16    # "paddingLeft":I
    .end local v17    # "width":I
    .restart local v1    # "paddingLeft":I
    .restart local v2    # "width":I
    :cond_5
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 31
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 72
    move-object/from16 v6, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 73
    .local v0, "targetHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v7, v0

    goto :goto_0

    .line 75
    :pswitch_0
    const v0, 0x7fffffff

    move v7, v0

    .line 80
    .end local v0    # "targetHeight":I
    .local v7, "targetHeight":I
    :goto_0
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    .line 81
    .local v0, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v8

    .line 83
    .local v8, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v9, 0x1

    if-ge v1, v8, :cond_1

    .line 84
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 86
    .local v3, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iput-boolean v9, v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 87
    instance-of v4, v2, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v4, :cond_0

    .line 88
    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 90
    .local v4, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v4, v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 83
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v4    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "i":I
    :cond_1
    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    .line 95
    .local v1, "totalHeight":I
    const/4 v2, 0x1

    .line 96
    .local v2, "first":Z
    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 99
    .local v3, "linesRemaining":I
    const/4 v4, 0x0

    .line 100
    .local v4, "previousChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    const/4 v5, 0x0

    .line 101
    .local v5, "previousView":Landroid/view/View;
    const/4 v10, 0x0

    .line 102
    .local v10, "previousChildHeight":I
    const/4 v11, 0x0

    .line 103
    .local v11, "previousTotalHeight":I
    const/4 v12, 0x0

    .line 104
    .local v12, "previousLinesConsumed":I
    add-int/lit8 v13, v8, -0x1

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move v5, v13

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v0    # "measuredWidth":I
    .end local v1    # "totalHeight":I
    .end local v2    # "first":Z
    .end local v3    # "linesRemaining":I
    .end local v4    # "previousChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v5, "i":I
    .local v10, "measuredWidth":I
    .local v11, "totalHeight":I
    .local v12, "first":Z
    .local v13, "linesRemaining":I
    .local v14, "previousChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v15, "previousView":Landroid/view/View;
    .local v16, "previousChildHeight":I
    .local v17, "previousTotalHeight":I
    .local v18, "previousLinesConsumed":I
    :goto_2
    if-ltz v5, :cond_f

    if-ge v11, v7, :cond_f

    .line 105
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 106
    move/from16 v26, v5

    goto/16 :goto_b

    .line 108
    :cond_2
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 109
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v6, v5}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 110
    .local v3, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    const/16 v19, 0x0

    .line 111
    .local v19, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 112
    .local v2, "spacing":I
    const/16 v20, 0x0

    .line 113
    .local v20, "previousChildIncrease":I
    instance-of v0, v4, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 115
    if-eqz v14, :cond_3

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-interface {v14, v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 117
    const/16 v21, 0x0

    sub-int v22, v17, v16

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v24, v2

    .end local v2    # "spacing":I
    .local v24, "spacing":I
    move/from16 v2, p1

    move-object v9, v3

    .end local v3    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .local v9, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    move/from16 v3, v21

    move-object/from16 v21, v4

    .end local v4    # "child":Landroid/view/View;
    .local v21, "child":Landroid/view/View;
    move/from16 v4, p2

    move/from16 v26, v5

    .end local v5    # "i":I
    .local v26, "i":I
    move/from16 v5, v22

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 119
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v0, v16

    .line 120
    .end local v20    # "previousChildIncrease":I
    .local v0, "previousChildIncrease":I
    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v1

    sub-int v1, v1, v18

    sub-int/2addr v13, v1

    move/from16 v20, v0

    goto :goto_3

    .line 115
    .end local v0    # "previousChildIncrease":I
    .end local v9    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v21    # "child":Landroid/view/View;
    .end local v24    # "spacing":I
    .end local v26    # "i":I
    .restart local v2    # "spacing":I
    .restart local v3    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v20    # "previousChildIncrease":I
    :cond_3
    move/from16 v24, v2

    move-object v9, v3

    move-object/from16 v21, v4

    move/from16 v26, v5

    .line 122
    .end local v2    # "spacing":I
    .end local v3    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .restart local v9    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v21    # "child":Landroid/view/View;
    .restart local v24    # "spacing":I
    .restart local v26    # "i":I
    :goto_3
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    .line 123
    .end local v19    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .local v0, "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    invoke-interface {v0, v13}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    .line 124
    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v1

    add-int v2, v24, v1

    move-object/from16 v19, v0

    .end local v24    # "spacing":I
    .restart local v2    # "spacing":I
    goto :goto_4

    .line 113
    .end local v0    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v9    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v21    # "child":Landroid/view/View;
    .end local v26    # "i":I
    .restart local v3    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "i":I
    .restart local v19    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    :cond_4
    move/from16 v24, v2

    move-object v9, v3

    move-object/from16 v21, v4

    move/from16 v26, v5

    .line 126
    .end local v3    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .restart local v9    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v21    # "child":Landroid/view/View;
    .restart local v26    # "i":I
    :goto_4
    if-eqz v12, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    move/from16 v22, v1

    .line 127
    .end local v2    # "spacing":I
    .local v22, "spacing":I
    const/4 v3, 0x0

    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v0, v11, v0

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v0, v1

    add-int v5, v0, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 130
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 131
    .local v24, "childHeight":I
    add-int v0, v11, v24

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int v0, v0, v22

    add-int v0, v0, v20

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 133
    .local v5, "newHeight":I
    const/4 v0, 0x0

    .line 134
    .local v0, "measureType":I
    if-eqz v19, :cond_6

    .line 135
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v0

    move v4, v0

    goto :goto_6

    .line 134
    :cond_6
    move v4, v0

    .line 139
    .end local v0    # "measureType":I
    .local v4, "measureType":I
    :goto_6
    const/4 v0, 0x2

    if-ne v4, v0, :cond_7

    if-nez v12, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    move/from16 v27, v1

    .line 140
    .local v27, "isTooSmall":Z
    const/4 v1, 0x1

    if-eq v4, v1, :cond_9

    if-ne v4, v0, :cond_8

    if-eqz v12, :cond_8

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v1, 0x1

    :goto_9
    move/from16 v28, v1

    .line 142
    .local v28, "isShortened":Z
    if-gt v5, v7, :cond_a

    if-nez v27, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    move/from16 v29, v1

    .line 143
    .local v29, "showView":Z
    if-eqz v29, :cond_d

    .line 144
    if-eqz v19, :cond_b

    .line 145
    invoke-interface/range {v19 .. v19}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v18

    .line 146
    sub-int v13, v13, v18

    .line 147
    move-object/from16 v14, v19

    .line 148
    move-object/from16 v15, v21

    .line 149
    move/from16 v16, v24

    .line 150
    move/from16 v17, v11

    .line 152
    :cond_b
    move v11, v5

    .line 153
    nop

    .line 154
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    .line 153
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 157
    if-nez v28, :cond_10

    if-gtz v13, :cond_c

    .line 158
    goto :goto_c

    .line 173
    :cond_c
    const/4 v0, 0x0

    move v12, v0

    .line 104
    .end local v4    # "measureType":I
    .end local v5    # "newHeight":I
    .end local v9    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v19    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v20    # "previousChildIncrease":I
    .end local v21    # "child":Landroid/view/View;
    .end local v22    # "spacing":I
    .end local v24    # "childHeight":I
    .end local v27    # "isTooSmall":Z
    .end local v28    # "isShortened":Z
    .end local v29    # "showView":Z
    :goto_b
    add-int/lit8 v5, v26, -0x1

    const/4 v9, 0x1

    .end local v26    # "i":I
    .local v5, "i":I
    goto/16 :goto_2

    .line 163
    .restart local v4    # "measureType":I
    .local v5, "newHeight":I
    .restart local v9    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .restart local v19    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .restart local v20    # "previousChildIncrease":I
    .restart local v21    # "child":Landroid/view/View;
    .restart local v22    # "spacing":I
    .restart local v24    # "childHeight":I
    .restart local v26    # "i":I
    .restart local v27    # "isTooSmall":Z
    .restart local v28    # "isShortened":Z
    .restart local v29    # "showView":Z
    :cond_d
    if-eqz v14, :cond_e

    invoke-interface {v14}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hasDifferentHeightWhenFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 164
    const/4 v0, 0x1

    invoke-interface {v14, v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setIsFirstInLayout(Z)V

    .line 166
    const/4 v3, 0x0

    sub-int v23, v17, v16

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v25, v4

    .end local v4    # "measureType":I
    .local v25, "measureType":I
    move/from16 v4, p2

    move/from16 v30, v5

    .end local v5    # "newHeight":I
    .local v30, "newHeight":I
    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_c

    .line 163
    .end local v25    # "measureType":I
    .end local v30    # "newHeight":I
    .restart local v4    # "measureType":I
    .restart local v5    # "newHeight":I
    :cond_e
    move/from16 v25, v4

    move/from16 v30, v5

    .end local v4    # "measureType":I
    .end local v5    # "newHeight":I
    .restart local v25    # "measureType":I
    .restart local v30    # "newHeight":I
    goto :goto_c

    .line 104
    .end local v9    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v19    # "messagingChild":Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    .end local v20    # "previousChildIncrease":I
    .end local v21    # "child":Landroid/view/View;
    .end local v22    # "spacing":I
    .end local v24    # "childHeight":I
    .end local v25    # "measureType":I
    .end local v26    # "i":I
    .end local v27    # "isTooSmall":Z
    .end local v28    # "isShortened":Z
    .end local v29    # "showView":Z
    .end local v30    # "newHeight":I
    .local v5, "i":I
    :cond_f
    move/from16 v26, v5

    .line 176
    .end local v5    # "i":I
    :cond_10
    :goto_c
    nop

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v0

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 176
    invoke-virtual {v6, v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    .line 180
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setMaxDisplayedLines(I)V
    .locals 0
    .param p1, "numberLines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 302
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    .line 303
    return-void
.end method

.method public blacklist setSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .line 259
    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    if-eq v0, p1, :cond_0

    .line 260
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    .line 261
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->requestLayout()V

    .line 263
    :cond_0
    return-void
.end method
