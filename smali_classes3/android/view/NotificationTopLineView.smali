.class public Landroid/view/NotificationTopLineView;
.super Landroid/view/ViewGroup;
.source "NotificationTopLineView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationTopLineView$OverflowAdjuster;,
        Landroid/view/NotificationTopLineView$HeaderTouchListener;
    }
.end annotation


# instance fields
.field private blacklist mAppName:Landroid/view/View;

.field private final blacklist mChildHideWidth:I

.field private final blacklist mChildMinWidth:I

.field private blacklist mFeedbackIcon:Landroid/view/View;

.field private blacklist mFeedbackListener:Landroid/view/View$OnClickListener;

.field private final blacklist mGravityY:I

.field private blacklist mHeaderText:Landroid/view/View;

.field private blacklist mHeaderTextDivider:Landroid/view/View;

.field private blacklist mHeaderTextMarginEnd:I

.field private blacklist mMaxAscent:I

.field private blacklist mMaxDescent:I

.field private final blacklist mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

.field private blacklist mSecondaryHeaderText:Landroid/view/View;

.field private blacklist mSecondaryHeaderTextDivider:Landroid/view/View;

.field private blacklist mTitle:Landroid/view/View;

.field private blacklist mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

.field private blacklist mViewsToDisappear:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildHideWidth(Landroid/view/NotificationTopLineView;)I
    .locals 0

    iget p0, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeedbackIcon(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewsToDisappear(Landroid/view/NotificationTopLineView;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFirstChildNotGone(Landroid/view/NotificationTopLineView;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationTopLineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance v0, Landroid/view/NotificationTopLineView$OverflowAdjuster;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/NotificationTopLineView$OverflowAdjuster;-><init>(Landroid/view/NotificationTopLineView;Landroid/view/NotificationTopLineView$OverflowAdjuster-IA;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    .line 51
    new-instance v0, Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-direct {v0, p0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;-><init>(Landroid/view/NotificationTopLineView;)V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    .line 76
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 78
    const v1, 0x10501ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationTopLineView;->mChildHideWidth:I

    .line 82
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100af

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 83
    .local v1, "attrIds":[I
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 84
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 85
    .local v3, "gravity":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    and-int/lit8 v4, v3, 0x50

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 87
    iput v5, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_0

    .line 88
    :cond_0
    and-int/lit8 v4, v3, 0x30

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    .line 89
    iput v5, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    goto :goto_0

    .line 91
    :cond_1
    const/16 v4, 0x10

    iput v4, p0, Landroid/view/NotificationTopLineView;->mGravityY:I

    .line 93
    :goto_0
    return-void
.end method

.method private blacklist getFirstChildNotGone()Landroid/view/View;
    .locals 4

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 367
    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 368
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 369
    return-object v1

    .line 366
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method private blacklist updateTouchListener()V
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->bindTouchRects()V

    .line 247
    return-void
.end method


# virtual methods
.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 237
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getHeaderTextMarginEnd()I
    .locals 1

    .line 276
    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 1

    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInTouchRect(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 384
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    return v0

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$misInside(Landroid/view/NotificationTopLineView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 98
    const v0, 0x10201f0

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    .line 99
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    .line 100
    const v0, 0x1020313

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    .line 101
    const v0, 0x1020314

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    .line 102
    const v0, 0x1020315

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    .line 103
    const v0, 0x1020316

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    .line 104
    const v0, 0x10202c5

    invoke-virtual {p0, v0}, Landroid/view/NotificationTopLineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    .line 105
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 168
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 169
    .local v1, "isRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getWidth()I

    move-result v2

    .line 170
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v3

    .line 171
    .local v3, "start":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v4

    .line 172
    .local v4, "childCount":I
    sub-int v5, p5, p3

    .line 173
    .local v5, "ownHeight":I
    iget v6, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v6, v5, v6

    iget v7, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 177
    .local v6, "childSpace":I
    iget v7, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v8, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    add-int/2addr v9, v8

    sub-int v9, v6, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    add-int/2addr v7, v8

    .line 179
    .local v7, "baselineY":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_9

    .line 180
    invoke-virtual {v0, v8}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 181
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 182
    move/from16 v17, v4

    goto/16 :goto_5

    .line 184
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 185
    .local v10, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 189
    .local v11, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 190
    .local v12, "childBaseline":I
    iget v13, v0, Landroid/view/NotificationTopLineView;->mGravityY:I

    sparse-switch v13, :sswitch_data_0

    .line 219
    move/from16 v17, v4

    .end local v4    # "childCount":I
    .local v17, "childCount":I
    iget v15, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    .local v15, "childTop":I
    goto :goto_2

    .line 211
    .end local v15    # "childTop":I
    .end local v17    # "childCount":I
    .restart local v4    # "childCount":I
    :sswitch_0
    iget v13, v0, Landroid/view/NotificationTopLineView;->mPaddingBottom:I

    sub-int v13, v5, v13

    .line 212
    .local v13, "childBottom":I
    sub-int v15, v13, v10

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v14

    .line 213
    .restart local v15    # "childTop":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_2

    .line 214
    sub-int v14, v10, v12

    .line 215
    .local v14, "descent":I
    move/from16 v17, v4

    .end local v4    # "childCount":I
    .restart local v17    # "childCount":I
    iget v4, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    sub-int/2addr v4, v14

    sub-int/2addr v15, v4

    .line 216
    .end local v14    # "descent":I
    goto :goto_2

    .line 213
    .end local v17    # "childCount":I
    .restart local v4    # "childCount":I
    :cond_2
    move/from16 v17, v4

    .end local v4    # "childCount":I
    .restart local v17    # "childCount":I
    goto :goto_2

    .line 192
    .end local v13    # "childBottom":I
    .end local v15    # "childTop":I
    .end local v17    # "childCount":I
    .restart local v4    # "childCount":I
    :sswitch_1
    move/from16 v17, v4

    .end local v4    # "childCount":I
    .restart local v17    # "childCount":I
    iget v4, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v15, v4, v13

    .line 193
    .restart local v15    # "childTop":I
    const/4 v4, -0x1

    if-eq v12, v4, :cond_5

    .line 194
    iget v4, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    sub-int/2addr v4, v12

    add-int/2addr v15, v4

    goto :goto_2

    .line 198
    .end local v15    # "childTop":I
    .end local v17    # "childCount":I
    .restart local v4    # "childCount":I
    :sswitch_2
    move/from16 v17, v4

    const/4 v4, -0x1

    .end local v4    # "childCount":I
    .restart local v17    # "childCount":I
    if-eq v12, v4, :cond_4

    .line 200
    sub-int v4, v6, v10

    if-lez v4, :cond_3

    .line 201
    sub-int v15, v7, v12

    .restart local v15    # "childTop":I
    goto :goto_2

    .line 203
    .end local v15    # "childTop":I
    :cond_3
    iget v4, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v13, v6, v10

    div-int/lit8 v13, v13, 0x2

    add-int v15, v4, v13

    .restart local v15    # "childTop":I
    goto :goto_2

    .line 206
    .end local v15    # "childTop":I
    :cond_4
    iget v4, v0, Landroid/view/NotificationTopLineView;->mPaddingTop:I

    sub-int v13, v6, v10

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v4, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v13

    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v15, v4, v13

    .line 209
    .restart local v15    # "childTop":I
    nop

    .line 221
    :cond_5
    :goto_2
    iget-object v4, v0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 222
    add-int v4, v15, v10

    invoke-virtual {v9, v3, v15, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 224
    :cond_6
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    add-int/2addr v3, v4

    .line 225
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    .line 226
    .local v4, "end":I
    if-eqz v1, :cond_7

    sub-int v13, v2, v4

    goto :goto_3

    :cond_7
    move v13, v3

    .line 227
    .local v13, "layoutLeft":I
    :goto_3
    if-eqz v1, :cond_8

    sub-int v14, v2, v3

    goto :goto_4

    :cond_8
    move v14, v4

    .line 228
    .local v14, "layoutRight":I
    :goto_4
    invoke-virtual {v11}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v16

    add-int v16, v4, v16

    .line 229
    .end local v3    # "start":I
    .local v16, "start":I
    add-int v3, v15, v10

    invoke-virtual {v9, v13, v15, v14, v3}, Landroid/view/View;->layout(IIII)V

    move/from16 v3, v16

    .line 179
    .end local v4    # "end":I
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childHeight":I
    .end local v11    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v12    # "childBaseline":I
    .end local v13    # "layoutLeft":I
    .end local v14    # "layoutRight":I
    .end local v15    # "childTop":I
    .end local v16    # "start":I
    .restart local v3    # "start":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v17

    goto/16 :goto_1

    .line 232
    .end local v8    # "i":I
    .end local v17    # "childCount":I
    .local v4, "childCount":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    .line 233
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 109
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 110
    .local v1, "givenWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 111
    .local v2, "givenHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 112
    .local v3, "wrapHeight":Z
    :goto_0
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 113
    .local v6, "wrapContentWidthSpec":I
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 114
    .local v4, "heightSpec":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getPaddingStart()I

    move-result v7

    .line 115
    .local v7, "totalWidth":I
    const/4 v8, -0x1

    .line 116
    .local v8, "maxChildHeight":I
    const/4 v9, -0x1

    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    .line 117
    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    .line 118
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 119
    invoke-virtual {v0, v10}, Landroid/view/NotificationTopLineView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 120
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_1

    .line 122
    move/from16 v16, v2

    goto :goto_3

    .line 124
    :cond_1
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 125
    .local v12, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v13, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v6, v13, v14}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v13

    .line 127
    .local v13, "childWidthSpec":I
    iget v14, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v15

    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v14, v15}, Landroid/view/NotificationTopLineView;->getChildMeasureSpec(III)I

    move-result v14

    .line 129
    .local v14, "childHeightSpec":I
    invoke-virtual {v11, v13, v14}, Landroid/view/View;->measure(II)V

    .line 130
    iget v15, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v15, v5

    add-int/2addr v7, v15

    .line 131
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 132
    .local v5, "childBaseline":I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 133
    .local v15, "childHeight":I
    if-eq v5, v9, :cond_2

    .line 134
    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Landroid/view/NotificationTopLineView;->mMaxAscent:I

    .line 135
    iget v9, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    move/from16 v16, v2

    .end local v2    # "givenHeight":I
    .local v16, "givenHeight":I
    sub-int v2, v15, v5

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/view/NotificationTopLineView;->mMaxDescent:I

    goto :goto_2

    .line 133
    .end local v16    # "givenHeight":I
    .restart local v2    # "givenHeight":I
    :cond_2
    move/from16 v16, v2

    .line 137
    .end local v2    # "givenHeight":I
    .restart local v16    # "givenHeight":I
    :goto_2
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    .line 118
    .end local v5    # "childBaseline":I
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v13    # "childWidthSpec":I
    .end local v14    # "childHeightSpec":I
    .end local v15    # "childHeight":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    const/4 v9, -0x1

    goto :goto_1

    .end local v16    # "givenHeight":I
    .restart local v2    # "givenHeight":I
    :cond_3
    move/from16 v16, v2

    .line 140
    .end local v2    # "givenHeight":I
    .end local v10    # "i":I
    .restart local v16    # "givenHeight":I
    iget-object v2, v0, Landroid/view/NotificationTopLineView;->mViewsToDisappear:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 142
    iget v2, v0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 143
    .local v2, "endMargin":I
    sub-int v5, v1, v2

    if-le v7, v5, :cond_4

    .line 144
    sub-int v5, v7, v1

    add-int/2addr v5, v2

    .line 146
    .local v5, "overFlow":I
    iget-object v9, v0, Landroid/view/NotificationTopLineView;->mOverflowAdjuster:Landroid/view/NotificationTopLineView$OverflowAdjuster;

    invoke-virtual {v9, v5, v4}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->resetForOverflow(II)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mAppName:Landroid/view/View;

    iget v11, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 148
    const/4 v12, 0x0

    invoke-virtual {v9, v10, v12, v11}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    iget v13, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 151
    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mSecondaryHeaderTextDivider:Landroid/view/View;

    .line 153
    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    iget v11, v0, Landroid/view/NotificationTopLineView;->mChildMinWidth:I

    .line 155
    invoke-virtual {v9, v10, v12, v11}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mHeaderText:Landroid/view/View;

    iget-object v11, v0, Landroid/view/NotificationTopLineView;->mHeaderTextDivider:Landroid/view/View;

    .line 157
    invoke-virtual {v9, v10, v11, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    iget-object v10, v0, Landroid/view/NotificationTopLineView;->mTitle:Landroid/view/View;

    .line 159
    invoke-virtual {v9, v10, v12, v13}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->adjust(Landroid/view/View;Landroid/view/View;I)Landroid/view/NotificationTopLineView$OverflowAdjuster;

    move-result-object v9

    .line 161
    invoke-virtual {v9}, Landroid/view/NotificationTopLineView$OverflowAdjuster;->finish()V

    .line 163
    .end local v5    # "overFlow":I
    :cond_4
    if-eqz v3, :cond_5

    move v5, v8

    goto :goto_4

    :cond_5
    move/from16 v5, v16

    :goto_4
    invoke-virtual {v0, v1, v5}, Landroid/view/NotificationTopLineView;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method

.method public blacklist onTouchUp(FFFF)Z
    .locals 1
    .param p1, "upX"    # F
    .param p2, "upY"    # F
    .param p3, "downX"    # F
    .param p4, "downY"    # F

    .line 394
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_0
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mTouchListener:Landroid/view/NotificationTopLineView$HeaderTouchListener;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/NotificationTopLineView$HeaderTouchListener;->-$$Nest$monTouchUp(Landroid/view/NotificationTopLineView$HeaderTouchListener;FFFF)Z

    move-result v0

    return v0
.end method

.method public blacklist setFeedbackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .line 253
    iput-object p1, p0, Landroid/view/NotificationTopLineView;->mFeedbackListener:Landroid/view/View$OnClickListener;

    .line 254
    iget-object v0, p0, Landroid/view/NotificationTopLineView;->mFeedbackIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-direct {p0}, Landroid/view/NotificationTopLineView;->updateTouchListener()V

    .line 256
    return-void
.end method

.method public blacklist setHeaderTextMarginEnd(I)V
    .locals 1
    .param p1, "headerTextMarginEnd"    # I

    .line 264
    iget v0, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    if-eq v0, p1, :cond_0

    .line 265
    iput p1, p0, Landroid/view/NotificationTopLineView;->mHeaderTextMarginEnd:I

    .line 266
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->requestLayout()V

    .line 268
    :cond_0
    return-void
.end method

.method public blacklist setPaddingStart(I)V
    .locals 3
    .param p1, "paddingStart"    # I

    .line 283
    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/NotificationTopLineView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/NotificationTopLineView;->setPaddingRelative(IIII)V

    .line 284
    return-void
.end method
