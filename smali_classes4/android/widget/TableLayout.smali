.class public Landroid/widget/TableLayout;
.super Landroid/widget/LinearLayout;
.source "TableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;,
        Landroid/widget/TableLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private greylist-max-o mCollapsedColumns:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mInitialized:Z

.field private greylist-max-o mMaxWidths:[I

.field private greylist-max-o mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

.field private greylist-max-o mShrinkAllColumns:Z

.field private greylist-max-o mShrinkableColumns:Landroid/util/SparseBooleanArray;

.field private greylist-max-o mStretchAllColumns:Z

.field private greylist-max-o mStretchableColumns:Landroid/util/SparseBooleanArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtrackCollapsedColumns(Landroid/widget/TableLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->trackCollapsedColumns(Landroid/view/View;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 93
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    sget-object v0, Lcom/android/internal/R$styleable;->TableLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "stretchedColumns":Ljava/lang/String;
    const/16 v3, 0x2a

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_0

    .line 110
    iput-boolean v4, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {v2}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "shrinkedColumns":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 119
    iput-boolean v4, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {v5}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 125
    :cond_3
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "collapsedColumns":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 127
    invoke-static {v1}, Landroid/widget/TableLayout;->parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 130
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    invoke-direct {p0}, Landroid/widget/TableLayout;->initTableLayout()V

    .line 132
    return-void
.end method

.method private greylist-max-o findLargestCells(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 484
    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 493
    .local v1, "firstRow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v2

    .line 494
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 495
    invoke-virtual {v0, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 496
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 497
    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v16, v1

    goto :goto_3

    .line 500
    :cond_0
    instance-of v5, v4, Landroid/widget/TableRow;

    if-eqz v5, :cond_5

    .line 501
    move-object v5, v4

    check-cast v5, Landroid/widget/TableRow;

    .line 503
    .local v5, "row":Landroid/widget/TableRow;
    invoke-virtual {v5}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 504
    .local v6, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 506
    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual {v5, v7, v8}, Landroid/widget/TableRow;->getColumnsWidths(II)[I

    move-result-object v9

    .line 507
    .local v9, "widths":[I
    array-length v10, v9

    .line 509
    .local v10, "newLength":I
    const/4 v11, 0x0

    if-eqz v1, :cond_3

    .line 510
    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-eqz v12, :cond_1

    array-length v12, v12

    if-eq v12, v10, :cond_2

    .line 511
    :cond_1
    new-array v12, v10, [I

    iput-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 513
    :cond_2
    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-static {v9, v11, v12, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    const/4 v1, 0x0

    goto :goto_4

    .line 516
    :cond_3
    iget-object v12, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v12, v12

    .line 517
    .local v12, "length":I
    sub-int v13, v10, v12

    .line 520
    .local v13, "difference":I
    if-lez v13, :cond_4

    .line 521
    iget-object v14, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 522
    .local v14, "oldMaxWidths":[I
    new-array v15, v10, [I

    iput-object v15, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 523
    move/from16 v16, v1

    .end local v1    # "firstRow":Z
    .local v16, "firstRow":Z
    array-length v1, v14

    invoke-static {v14, v11, v15, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    array-length v1, v14

    iget-object v11, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    array-length v15, v14

    invoke-static {v9, v1, v11, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 520
    .end local v14    # "oldMaxWidths":[I
    .end local v16    # "firstRow":Z
    .restart local v1    # "firstRow":Z
    :cond_4
    move/from16 v16, v1

    .line 533
    .end local v1    # "firstRow":Z
    .restart local v16    # "firstRow":Z
    :goto_1
    iget-object v1, v0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 534
    .local v1, "maxWidths":[I
    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 535
    .end local v12    # "length":I
    .local v11, "length":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_2
    if-ge v12, v11, :cond_6

    .line 536
    aget v14, v1, v12

    aget v15, v9, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v1, v12

    .line 535
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 500
    .end local v5    # "row":Landroid/widget/TableRow;
    .end local v6    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "widths":[I
    .end local v10    # "newLength":I
    .end local v11    # "length":I
    .end local v12    # "j":I
    .end local v13    # "difference":I
    .end local v16    # "firstRow":Z
    .local v1, "firstRow":Z
    :cond_5
    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v16, v1

    .line 494
    .end local v1    # "firstRow":Z
    .end local v4    # "child":Landroid/view/View;
    .restart local v16    # "firstRow":Z
    :cond_6
    :goto_3
    move/from16 v1, v16

    .end local v16    # "firstRow":Z
    .restart local v1    # "firstRow":Z
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    .end local v3    # "i":I
    :cond_7
    return-void
.end method

.method private greylist-max-o initTableLayout()V
    .locals 3

    .line 175
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    .line 181
    :cond_1
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    .line 187
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setOrientation(I)V

    .line 189
    new-instance v1, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/TableLayout;Landroid/widget/TableLayout$PassThroughHierarchyChangeListener-IA;)V

    iput-object v1, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    .line 192
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 194
    iput-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    .line 195
    return-void
.end method

.method private greylist-max-o mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V
    .locals 10
    .param p1, "columns"    # Landroid/util/SparseBooleanArray;
    .param p2, "allColumns"    # Z
    .param p3, "size"    # I
    .param p4, "totalWidth"    # I

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "skipped":I
    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    .line 582
    .local v1, "maxWidths":[I
    array-length v2, v1

    .line 583
    .local v2, "length":I
    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 584
    .local v3, "count":I
    :goto_0
    sub-int v4, p3, p4

    .line 585
    .local v4, "totalExtraSpace":I
    div-int v5, v4, v3

    .line 589
    .local v5, "extraSpace":I
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v6

    .line 590
    .local v6, "nbChildren":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 591
    invoke-virtual {p0, v7}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 592
    .local v8, "child":Landroid/view/View;
    instance-of v9, v8, Landroid/widget/TableRow;

    if-eqz v9, :cond_1

    .line 593
    invoke-virtual {v8}, Landroid/view/View;->forceLayout()V

    .line 590
    .end local v8    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 597
    .end local v7    # "i":I
    :cond_2
    if-nez p2, :cond_9

    .line 598
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v3, :cond_5

    .line 599
    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 600
    .local v8, "column":I
    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 601
    if-ge v8, v2, :cond_3

    .line 602
    aget v9, v1, v8

    add-int/2addr v9, v5

    aput v9, v1, v8

    goto :goto_3

    .line 604
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 598
    .end local v8    # "column":I
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 617
    .end local v7    # "i":I
    :cond_5
    if-lez v0, :cond_8

    if-ge v0, v3, :cond_8

    .line 619
    mul-int v7, v0, v5

    sub-int v8, v3, v0

    div-int v5, v7, v8

    .line 620
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v3, :cond_8

    .line 621
    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 622
    .restart local v8    # "column":I
    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_7

    if-ge v8, v2, :cond_7

    .line 623
    aget v9, v1, v8

    if-le v5, v9, :cond_6

    .line 624
    const/4 v9, 0x0

    aput v9, v1, v8

    goto :goto_5

    .line 626
    :cond_6
    aget v9, v1, v8

    add-int/2addr v9, v5

    aput v9, v1, v8

    .line 620
    .end local v8    # "column":I
    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 631
    .end local v7    # "i":I
    :cond_8
    return-void

    .line 609
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_6
    if-ge v7, v3, :cond_a

    .line 610
    aget v8, v1, v7

    add-int/2addr v8, v5

    aput v8, v1, v7

    .line 609
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 614
    .end local v7    # "i":I
    :cond_a
    return-void
.end method

.method private static greylist-max-o parseColumns(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 8
    .param p0, "sequence"    # Ljava/lang/String;

    .line 149
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 150
    .local v0, "columns":Landroid/util/SparseBooleanArray;
    const-string v1, "\\s*,\\s*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 151
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "columnDefs":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 155
    .local v5, "columnIdentifier":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 157
    .local v6, "columnIndex":I
    if-ltz v6, :cond_0

    .line 160
    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v6    # "columnIndex":I
    :cond_0
    goto :goto_1

    .line 162
    :catch_0
    move-exception v6

    .line 153
    .end local v5    # "columnIdentifier":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    :cond_1
    return-object v0
.end method

.method private greylist-max-o requestRowsLayout()V
    .locals 3

    .line 208
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 210
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private greylist-max-o shrinkAndStretchColumns(I)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I

    .line 555
    iget-object v0, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    if-nez v0, :cond_0

    .line 556
    return-void

    .line 560
    :cond_0
    const/4 v1, 0x0

    .line 561
    .local v1, "totalWidth":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 562
    .local v4, "width":I
    add-int/2addr v1, v4

    .line 561
    .end local v4    # "width":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Landroid/widget/TableLayout;->mPaddingLeft:I

    sub-int/2addr v0, v2

    iget v2, p0, Landroid/widget/TableLayout;->mPaddingRight:I

    sub-int/2addr v0, v2

    .line 567
    .local v0, "size":I
    if-le v1, v0, :cond_3

    iget-boolean v2, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 570
    :cond_2
    iget-object v2, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v3, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    goto :goto_1

    .line 571
    :cond_3
    if-ge v1, v0, :cond_5

    iget-boolean v2, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 574
    :cond_4
    iget-object v2, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    iget-boolean v3, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/TableLayout;->mutateColumnsWidth(Landroid/util/SparseBooleanArray;ZII)V

    .line 576
    :cond_5
    :goto_1
    return-void
.end method

.method private greylist-max-o trackCollapsedColumns(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .line 378
    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_1

    .line 379
    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    .line 380
    .local v0, "row":Landroid/widget/TableRow;
    iget-object v1, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    .line 381
    .local v1, "collapsedColumns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 382
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 383
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 384
    .local v4, "columnIndex":I
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    .line 388
    .local v5, "isCollapsed":Z
    if-eqz v5, :cond_0

    .line 389
    invoke-virtual {v0, v4, v5}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 382
    .end local v4    # "columnIndex":I
    .end local v5    # "isCollapsed":Z
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "row":Landroid/widget/TableRow;
    .end local v1    # "collapsedColumns":Landroid/util/SparseBooleanArray;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 400
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 402
    return-void
.end method

.method public whitelist addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 409
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 410
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 411
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 427
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 429
    return-void
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 418
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 420
    return-void
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 656
    instance-of v0, p1, Landroid/widget/TableLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 648
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 664
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 638
    new-instance v0, Landroid/widget/TableLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/TableLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 669
    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isColumnCollapsed(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 310
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isColumnShrinkable(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 364
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method public whitelist isColumnStretchable(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .line 337
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

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

.method public whitelist isShrinkAllColumns()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    return v0
.end method

.method public whitelist isStretchAllColumns()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    return v0
.end method

.method greylist-max-o measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 458
    instance-of v0, p1, Landroid/widget/TableRow;

    if-eqz v0, :cond_0

    .line 459
    move-object v0, p1

    check-cast v0, Landroid/widget/TableRow;

    iget-object v1, p0, Landroid/widget/TableLayout;->mMaxWidths:[I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setColumnsWidthConstraints([I)V

    .line 462
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 464
    return-void
.end method

.method greylist-max-o measureVertical(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 471
    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;->findLargestCells(II)V

    .line 472
    invoke-direct {p0, p1}, Landroid/widget/TableLayout;->shrinkAndStretchColumns(I)V

    .line 474
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 475
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 446
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/TableLayout;->layoutVertical(IIII)V

    .line 447
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 437
    invoke-virtual {p0, p1, p2}, Landroid/widget/TableLayout;->measureVertical(II)V

    .line 438
    return-void
.end method

.method public whitelist requestLayout()V
    .locals 3

    .line 221
    iget-boolean v0, p0, Landroid/widget/TableLayout;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 223
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 224
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 229
    return-void
.end method

.method public whitelist setColumnCollapsed(IZ)V
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "isCollapsed"    # Z

    .line 290
    iget-object v0, p0, Landroid/widget/TableLayout;->mCollapsedColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 292
    invoke-virtual {p0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    .line 293
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 294
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 295
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TableRow;

    if-eqz v3, :cond_0

    .line 296
    move-object v3, v2

    check-cast v3, Landroid/widget/TableRow;

    invoke-virtual {v3, p1, p2}, Landroid/widget/TableRow;->setColumnCollapsed(IZ)V

    .line 293
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 301
    return-void
.end method

.method public whitelist setColumnShrinkable(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "isShrinkable"    # Z

    .line 353
    iget-object v0, p0, Landroid/widget/TableLayout;->mShrinkableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 354
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 355
    return-void
.end method

.method public whitelist setColumnStretchable(IZ)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "isStretchable"    # Z

    .line 326
    iget-object v0, p0, Landroid/widget/TableLayout;->mStretchableColumns:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 327
    invoke-direct {p0}, Landroid/widget/TableLayout;->requestRowsLayout()V

    .line 328
    return-void
.end method

.method public whitelist setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 204
    iget-object v0, p0, Landroid/widget/TableLayout;->mPassThroughListener:Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;->-$$Nest$fputmOnHierarchyChangeListener(Landroid/widget/TableLayout$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 205
    return-void
.end method

.method public whitelist setShrinkAllColumns(Z)V
    .locals 0
    .param p1, "shrinkAllColumns"    # Z

    .line 250
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mShrinkAllColumns:Z

    .line 251
    return-void
.end method

.method public whitelist setStretchAllColumns(Z)V
    .locals 0
    .param p1, "stretchAllColumns"    # Z

    .line 272
    iput-boolean p1, p0, Landroid/widget/TableLayout;->mStretchAllColumns:Z

    .line 273
    return-void
.end method
