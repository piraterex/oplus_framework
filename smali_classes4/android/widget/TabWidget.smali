.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-q mDrawBottomStrips:Z

.field private greylist-max-o mImposedTabWidths:[I

.field private greylist-max-o mImposedTabsHeight:I

.field private greylist-max-o mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mRightStrip:Landroid/graphics/drawable/Drawable;

.field private greylist-max-q mSelectedTab:I

.field private greylist-max-o mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private greylist-max-o mStripMoved:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSelectionChangedListener(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 0

    iget-object p0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 91
    iput v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 109
    sget-object v0, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->TabWidget:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/widget/TabWidget;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 114
    iget-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 119
    nop

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 122
    .local v2, "isTargetSdkDonutOrLower":Z
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    .line 123
    .local v3, "hasExplicitLeft":Z
    if-eqz v3, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 125
    :cond_1
    if-eqz v2, :cond_2

    .line 126
    const v4, 0x10808b6

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 128
    :cond_2
    const v4, 0x10808b5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 131
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    .line 132
    .local v5, "hasExplicitRight":Z
    if-eqz v5, :cond_3

    .line 133
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 134
    :cond_3
    if-eqz v2, :cond_4

    .line 135
    const v4, 0x10808b8

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 137
    :cond_4
    const v4, 0x10808b7

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 140
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 142
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 523
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 525
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 526
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    if-nez v1, :cond_1

    .line 534
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 537
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$TabClickListener-IA;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    return-void
.end method

.method public whitelist childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 372
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 374
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 376
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 377
    return-void
.end method

.method public whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 381
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 384
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-nez v0, :cond_1

    .line 390
    return-void

    .line 393
    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 396
    .local v1, "leftStrip":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 398
    .local v2, "rightStrip":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 401
    :cond_2
    if-eqz v2, :cond_3

    .line 402
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 405
    :cond_3
    iget-boolean v3, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v3, :cond_6

    .line 406
    iget-object v3, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    .line 407
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 409
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v4

    .line 410
    .local v4, "myHeight":I
    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 411
    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 412
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    iget v8, v3, Landroid/graphics/Rect;->left:I

    .line 411
    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 414
    :cond_4
    if-eqz v2, :cond_5

    .line 415
    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    .line 416
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 415
    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    :cond_5
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 422
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "myHeight":I
    :cond_6
    if-eqz v1, :cond_7

    .line 423
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 425
    :cond_7
    if-eqz v2, :cond_8

    .line 426
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 428
    :cond_8
    return-void
.end method

.method public whitelist focusCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .line 498
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 501
    .local v0, "oldTab":I
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 504
    if-eq v0, p1, :cond_0

    .line 505
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 507
    :cond_0
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 472
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 154
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    return p2

    .line 159
    :cond_0
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_1

    .line 160
    return v0

    .line 161
    :cond_1
    if-lt p2, v0, :cond_2

    .line 162
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 164
    :cond_2
    return p2
.end method

.method public whitelist getChildTabViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 239
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLeftStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 308
    iget-object v0, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getRightStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTabCount()I
    .locals 1

    .line 248
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public whitelist isStripEnabled()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 172
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    .line 173
    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 175
    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    .line 179
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 181
    return-void
.end method

.method greylist-max-o measureHorizontal(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 185
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 187
    return-void

    .line 191
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 192
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    .line 194
    .local v3, "unspecifiedWidth":I
    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 195
    move/from16 v4, p2

    invoke-super {v0, v3, v4}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v1

    .line 198
    .local v5, "extraWidth":I
    if-lez v5, :cond_6

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    .line 201
    .local v6, "count":I
    const/4 v7, 0x0

    .line 202
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x8

    if-ge v8, v6, :cond_2

    .line 203
    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 204
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 202
    .end local v10    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 208
    .end local v8    # "i":I
    :cond_2
    if-lez v7, :cond_6

    .line 209
    iget-object v8, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v8, :cond_3

    array-length v8, v8

    if-eq v8, v6, :cond_4

    .line 210
    :cond_3
    new-array v8, v6, [I

    iput-object v8, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    .line 212
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v6, :cond_6

    .line 213
    invoke-virtual {v0, v8}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 214
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_5

    goto :goto_3

    .line 215
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 216
    .local v11, "childWidth":I
    div-int v12, v5, v7

    .line 217
    .local v12, "delta":I
    sub-int v13, v11, v12

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 218
    .local v13, "newWidth":I
    iget-object v14, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v13, v14, v8

    .line 220
    sub-int v14, v11, v13

    sub-int/2addr v5, v14

    .line 221
    add-int/lit8 v7, v7, -0x1

    .line 222
    iget v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    .line 212
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "childWidth":I
    .end local v12    # "delta":I
    .end local v13    # "newWidth":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 229
    .end local v6    # "count":I
    .end local v7    # "childCount":I
    .end local v8    # "i":I
    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    .line 230
    return-void
.end method

.method public whitelist onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 574
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 478
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 479
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 480
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 481
    return-void
.end method

.method public whitelist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 552
    invoke-virtual {p0}, Landroid/widget/TabWidget;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 150
    return-void
.end method

.method public whitelist removeAllViews()V
    .locals 1

    .line 546
    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 548
    return-void
.end method

.method public whitelist setCurrentTab(I)V
    .locals 2
    .param p1, "index"    # I

    .line 458
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 463
    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 465
    :cond_1
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    .line 466
    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 467
    iput-boolean v1, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    .line 468
    return-void

    .line 459
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist setDividerDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 269
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void
.end method

.method public whitelist setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 511
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 513
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    .line 514
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 515
    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 516
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 514
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public whitelist setLeftStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 296
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void
.end method

.method public whitelist setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 281
    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 282
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 283
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 284
    return-void
.end method

.method public whitelist setRightStripDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 335
    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    return-void
.end method

.method public whitelist setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 320
    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    .line 321
    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    .line 322
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 323
    return-void
.end method

.method public whitelist setStripEnabled(Z)V
    .locals 0
    .param p1, "stripEnabled"    # Z

    .line 358
    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    .line 359
    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    .line 360
    return-void
.end method

.method greylist-max-q setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 568
    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    .line 569
    return-void
.end method
