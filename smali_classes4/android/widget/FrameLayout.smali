.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private greylist mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final greylist-max-o mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 66
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 78
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 95
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 66
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 78
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 101
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 103
    .local v1, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->FrameLayout:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 106
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 110
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    return-void
.end method

.method private greylist-max-o getPaddingBottomWithForeground()I
    .locals 2

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 174
    :goto_0
    return v0
.end method

.method private greylist-max-o getPaddingTopWithForeground()I
    .locals 2

    .line 169
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 169
    :goto_0
    return v0
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 390
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 413
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 415
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    const-string/jumbo v1, "measurement:measureAllChildren"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 416
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    const-string/jumbo v1, "padding:foregroundPaddingLeft"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 417
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    const-string/jumbo v1, "padding:foregroundPaddingTop"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 418
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    const-string/jumbo v1, "padding:foregroundPaddingRight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 419
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    const-string/jumbo v1, "padding:foregroundPaddingBottom"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 420
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 395
    sget-boolean v0, Landroid/widget/FrameLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1

    .line 396
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 398
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 402
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 380
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 407
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public whitelist getMeasureAllChildren()Z
    .locals 1

    .line 375
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method greylist-max-o getPaddingLeftWithForeground()I
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 160
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 159
    :goto_0
    return v0
.end method

.method greylist-max-o getPaddingRightWithForeground()I
    .locals 2

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 165
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 164
    :goto_0
    return v0
.end method

.method greylist-max-o layoutChildren(IIIIZ)V
    .locals 19
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 276
    .local v0, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v1

    .line 277
    .local v1, "parentLeft":I
    sub-int v2, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v3

    sub-int/2addr v2, v3

    .line 279
    .local v2, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v3

    .line 280
    .local v3, "parentTop":I
    sub-int v4, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    .line 282
    .local v4, "parentBottom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 283
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 284
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 285
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 287
    .local v8, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 288
    .local v9, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 293
    .local v10, "height":I
    iget v11, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    .local v11, "gravity":I
    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 295
    const v11, 0x800033

    .line 298
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v12

    .line 299
    .local v12, "layoutDirection":I
    invoke-static {v11, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    .line 300
    .local v13, "absoluteGravity":I
    and-int/lit8 v14, v11, 0x70

    .line 302
    .local v14, "verticalGravity":I
    and-int/lit8 v15, v13, 0x7

    sparse-switch v15, :sswitch_data_0

    move/from16 v16, v0

    .end local v0    # "count":I
    .local v16, "count":I
    goto :goto_1

    .line 308
    .end local v16    # "count":I
    .restart local v0    # "count":I
    :sswitch_0
    if-nez p5, :cond_1

    .line 309
    sub-int v15, v2, v9

    move/from16 v16, v0

    .end local v0    # "count":I
    .restart local v16    # "count":I
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v15, v0

    .line 310
    .local v15, "childLeft":I
    goto :goto_2

    .line 308
    .end local v15    # "childLeft":I
    .end local v16    # "count":I
    .restart local v0    # "count":I
    :cond_1
    move/from16 v16, v0

    .end local v0    # "count":I
    .restart local v16    # "count":I
    goto :goto_1

    .line 304
    .end local v16    # "count":I
    .restart local v0    # "count":I
    :sswitch_1
    move/from16 v16, v0

    .end local v0    # "count":I
    .restart local v16    # "count":I
    sub-int v0, v2, v1

    sub-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v15

    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v15, v0, v15

    .line 306
    .restart local v15    # "childLeft":I
    goto :goto_2

    .line 314
    .end local v15    # "childLeft":I
    :goto_1
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int v15, v1, v0

    .line 317
    .restart local v15    # "childLeft":I
    :goto_2
    sparse-switch v14, :sswitch_data_1

    .line 329
    move/from16 v17, v1

    .end local v1    # "parentLeft":I
    .local v17, "parentLeft":I
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    .local v0, "childTop":I
    goto :goto_3

    .line 326
    .end local v0    # "childTop":I
    .end local v17    # "parentLeft":I
    .restart local v1    # "parentLeft":I
    :sswitch_2
    sub-int v0, v4, v10

    move/from16 v17, v1

    .end local v1    # "parentLeft":I
    .restart local v17    # "parentLeft":I
    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    .line 327
    .restart local v0    # "childTop":I
    goto :goto_3

    .line 319
    .end local v0    # "childTop":I
    .end local v17    # "parentLeft":I
    .restart local v1    # "parentLeft":I
    :sswitch_3
    move/from16 v17, v1

    .end local v1    # "parentLeft":I
    .restart local v17    # "parentLeft":I
    iget v0, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    .line 320
    .restart local v0    # "childTop":I
    goto :goto_3

    .line 322
    .end local v0    # "childTop":I
    .end local v17    # "parentLeft":I
    .restart local v1    # "parentLeft":I
    :sswitch_4
    move/from16 v17, v1

    .end local v1    # "parentLeft":I
    .restart local v17    # "parentLeft":I
    sub-int v0, v4, v3

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v8, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    .line 324
    .restart local v0    # "childTop":I
    nop

    .line 332
    :goto_3
    add-int v1, v15, v9

    move/from16 v18, v2

    .end local v2    # "parentRight":I
    .local v18, "parentRight":I
    add-int v2, v0, v10

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    .line 284
    .end local v8    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "gravity":I
    .end local v12    # "layoutDirection":I
    .end local v13    # "absoluteGravity":I
    .end local v14    # "verticalGravity":I
    .end local v15    # "childLeft":I
    .end local v16    # "count":I
    .end local v17    # "parentLeft":I
    .end local v18    # "parentRight":I
    .local v0, "count":I
    .restart local v1    # "parentLeft":I
    .restart local v2    # "parentRight":I
    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    .line 282
    .end local v0    # "count":I
    .end local v1    # "parentLeft":I
    .end local v2    # "parentRight":I
    .end local v7    # "child":Landroid/view/View;
    .restart local v16    # "count":I
    .restart local v17    # "parentLeft":I
    .restart local v18    # "parentRight":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto/16 :goto_0

    .line 335
    .end local v5    # "i":I
    .end local v16    # "count":I
    .end local v17    # "parentLeft":I
    .end local v18    # "parentRight":I
    .restart local v0    # "count":I
    .restart local v1    # "parentLeft":I
    .restart local v2    # "parentRight":I
    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 270
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 271
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 180
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    .line 182
    .local v9, "count":I
    nop

    .line 183
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v0, v12, :cond_1

    .line 184
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v11

    :goto_1
    move v13, v0

    .line 185
    .local v13, "measureMatchParentChildren":Z
    iget-object v0, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 189
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 191
    .local v2, "childState":I
    const/4 v3, 0x0

    move v14, v0

    move v15, v1

    move v5, v2

    move v4, v3

    .end local v0    # "maxHeight":I
    .end local v1    # "maxWidth":I
    .end local v2    # "childState":I
    .local v4, "i":I
    .local v5, "childState":I
    .local v14, "maxHeight":I
    .local v15, "maxWidth":I
    :goto_2
    const/4 v3, -0x1

    if-ge v4, v9, :cond_7

    .line 192
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, "child":Landroid/view/View;
    iget-boolean v0, v6, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v16, v4

    goto :goto_5

    .line 194
    :cond_3
    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v18, v2

    .end local v2    # "child":Landroid/view/View;
    .local v18, "child":Landroid/view/View;
    move/from16 v2, p1

    move v12, v3

    move/from16 v3, v16

    move/from16 v16, v4

    .end local v4    # "i":I
    .local v16, "i":I
    move/from16 v4, p2

    move v10, v5

    .end local v5    # "childState":I
    .local v10, "childState":I
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 196
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 197
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 196
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 198
    .end local v15    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    nop

    .line 199
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 198
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 200
    .end local v14    # "maxHeight":I
    .local v2, "maxHeight":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v10, v3}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v3

    .line 201
    .end local v10    # "childState":I
    .local v3, "childState":I
    if-eqz v13, :cond_5

    .line 202
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v12, :cond_4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v12, :cond_6

    .line 204
    :cond_4
    iget-object v4, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    move-object/from16 v5, v18

    .end local v18    # "child":Landroid/view/View;
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 201
    .end local v5    # "child":Landroid/view/View;
    .restart local v18    # "child":Landroid/view/View;
    :cond_5
    move-object/from16 v5, v18

    .line 191
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "child":Landroid/view/View;
    :cond_6
    :goto_4
    move v15, v1

    move v14, v2

    move v5, v3

    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v3    # "childState":I
    .local v5, "childState":I
    .restart local v14    # "maxHeight":I
    .restart local v15    # "maxWidth":I
    :goto_5
    add-int/lit8 v4, v16, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    .end local v16    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    :cond_7
    move v12, v3

    move/from16 v16, v4

    move v10, v5

    .line 211
    .end local v4    # "i":I
    .end local v5    # "childState":I
    .restart local v10    # "childState":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 212
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 216
    .end local v14    # "maxHeight":I
    .local v0, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 219
    .end local v15    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 220
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_8

    .line 221
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 222
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 225
    :cond_8
    invoke-static {v1, v7, v10}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v10, 0x10

    .line 226
    invoke-static {v0, v8, v4}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 225
    invoke-virtual {v6, v3, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 229
    iget-object v3, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 230
    .end local v9    # "count":I
    .local v3, "count":I
    if-le v3, v11, :cond_b

    .line 231
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v3, :cond_b

    .line 232
    iget-object v5, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 233
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 236
    .local v9, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v11, v12, :cond_9

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v14

    sub-int/2addr v11, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    sub-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v11, v14

    .line 237
    const/4 v14, 0x0

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 240
    .local v11, "width":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 242
    .local v11, "childWidthMeasureSpec":I
    goto :goto_7

    .line 243
    .end local v11    # "childWidthMeasureSpec":I
    :cond_9
    nop

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 243
    invoke-static {v7, v11, v14}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 250
    .restart local v11    # "childWidthMeasureSpec":I
    :goto_7
    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v14, v12, :cond_a

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    .line 252
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 251
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 254
    .local v14, "height":I
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 256
    .local v14, "childHeightMeasureSpec":I
    goto :goto_8

    .line 257
    .end local v14    # "childHeightMeasureSpec":I
    :cond_a
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v15, 0x0

    .line 258
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v17

    add-int v14, v14, v17

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 257
    invoke-static {v8, v14, v12}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v14

    .line 263
    .restart local v14    # "childHeightMeasureSpec":I
    :goto_8
    invoke-virtual {v5, v11, v14}, Landroid/view/View;->measure(II)V

    .line 231
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "childWidthMeasureSpec":I
    .end local v14    # "childHeightMeasureSpec":I
    add-int/lit8 v4, v4, 0x1

    const/4 v12, -0x1

    goto/16 :goto_6

    .line 266
    .end local v4    # "i":I
    :cond_b
    return-void
.end method

.method public whitelist setForegroundGravity(I)V
    .locals 3
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 131
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 133
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 134
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 135
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 137
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 139
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 140
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 141
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 144
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 146
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method public whitelist setMeasureAllChildren(Z)V
    .locals 0
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 348
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 349
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .locals 1

    .line 385
    const/4 v0, 0x0

    return v0
.end method
