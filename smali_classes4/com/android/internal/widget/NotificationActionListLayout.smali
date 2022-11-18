.class public Lcom/android/internal/widget/NotificationActionListLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationActionListLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    }
.end annotation


# static fields
.field public static final blacklist MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCollapsibleIndentDimen:I

.field private blacklist mDefaultPaddingBottom:I

.field private blacklist mDefaultPaddingTop:I

.field private blacklist mEmphasizedHeight:I

.field private blacklist mEmphasizedMode:Z

.field private blacklist mExtraStartPadding:I

.field private final blacklist mGravity:I

.field private blacklist mMeasureOrderOther:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMeasureOrderTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mNumNotGoneChildren:I

.field blacklist mNumPriorityChildren:I

.field private blacklist mRegularHeight:I

.field private blacklist mTotalWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisPriority(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 403
    new-instance v0, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/NotificationActionListLayout$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationActionListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 47
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 62
    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    .line 76
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100af

    aput v2, v1, v0

    .line 77
    .local v1, "attrIds":[I
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 78
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    .line 79
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method

.method private blacklist clearMeasureOrder()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    return-void
.end method

.method private blacklist countAndRebuildMeasureOrder()V
    .locals 7

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 89
    .local v0, "numChildren":I
    const/4 v1, 0x0

    .line 90
    .local v1, "textViews":I
    const/4 v2, 0x0

    .line 91
    .local v2, "otherViews":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    .line 92
    iput v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    .line 94
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 96
    .local v4, "c":Landroid/view/View;
    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 101
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 102
    iget v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    .line 103
    invoke-static {v4}, Lcom/android/internal/widget/NotificationActionListLayout;->isPriority(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    iget v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    .line 94
    .end local v4    # "c":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 112
    .local v3, "needRebuild":Z
    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_4

    .line 114
    :cond_3
    const/4 v3, 0x1

    .line 116
    :cond_4
    if-nez v3, :cond_6

    .line 117
    iget-object v4, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 118
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_6

    .line 119
    iget-object v6, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    invoke-virtual {v6}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->needsRebuild()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    const/4 v3, 0x1

    .line 121
    goto :goto_3

    .line 118
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 126
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 127
    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->rebuildMeasureOrder(II)V

    .line 129
    :cond_7
    return-void
.end method

.method private static blacklist isPriority(Landroid/view/View;)Z
    .locals 1
    .param p0, "actionView"    # Landroid/view/View;

    .line 83
    instance-of v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/widget/EmphasizedNotificationButton;

    .line 84
    invoke-virtual {v0}, Lcom/android/internal/widget/EmphasizedNotificationButton;->isPriority()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;)I
    .locals 3
    .param p0, "a"    # Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    .param p1, "b"    # Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    .line 404
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    iget-boolean v1, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    neg-int v0, v0

    .line 405
    .local v0, "priorityComparison":I
    if-eqz v0, :cond_0

    .line 406
    move v1, v0

    goto :goto_0

    .line 407
    :cond_0
    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    iget v2, p1, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextLength:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    .line 405
    :goto_0
    return v1
.end method

.method private blacklist measureAndGetUsedWidth(IIIZ)I
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "innerWidth"    # I
    .param p4, "collapsePriorityActions"    # Z

    .line 133
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v7

    .line 134
    .local v7, "numChildren":I
    nop

    .line 135
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 136
    .local v9, "constrained":Z
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 137
    .local v10, "otherSize":I
    const/4 v0, 0x0

    .line 139
    .local v0, "usedWidth":I
    const/4 v1, 0x0

    .line 140
    .local v1, "maxPriorityWidth":I
    const/4 v2, 0x0

    .line 141
    .local v2, "measuredChildren":I
    const/4 v3, 0x0

    .line 142
    .local v3, "measuredPriorityChildren":I
    const/4 v4, 0x0

    move v11, v0

    move v12, v2

    move v13, v3

    move v14, v4

    .end local v0    # "usedWidth":I
    .end local v2    # "measuredChildren":I
    .end local v3    # "measuredPriorityChildren":I
    .local v11, "usedWidth":I
    .local v12, "measuredChildren":I
    .local v13, "measuredPriorityChildren":I
    .local v14, "i":I
    :goto_1
    if-ge v14, v7, :cond_8

    .line 147
    if-ge v14, v10, :cond_1

    .line 148
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 149
    .local v0, "c":Landroid/view/View;
    const/4 v2, 0x0

    move-object v15, v0

    move/from16 v16, v2

    .local v2, "isPriority":Z
    goto :goto_2

    .line 151
    .end local v0    # "c":Landroid/view/View;
    .end local v2    # "isPriority":Z
    :cond_1
    iget-object v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sub-int v2, v14, v10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    .line 152
    .local v0, "info":Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    iget-object v2, v0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mTextView:Landroid/widget/TextView;

    .line 153
    .local v2, "c":Landroid/view/View;
    iget-boolean v3, v0, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;->mIsPriority:Z

    move-object v15, v2

    move/from16 v16, v3

    .line 155
    .end local v0    # "info":Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;
    .end local v2    # "c":Landroid/view/View;
    .local v15, "c":Landroid/view/View;
    .local v16, "isPriority":Z
    :goto_2
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    .line 156
    move/from16 v19, v7

    goto/16 :goto_6

    .line 158
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 160
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move v0, v11

    .line 161
    .local v0, "usedWidthForChild":I
    if-eqz v9, :cond_6

    .line 166
    sub-int v2, p3, v11

    .line 167
    .local v2, "availableWidth":I
    iget v3, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mNumNotGoneChildren:I

    sub-int/2addr v3, v12

    .line 168
    .local v3, "unmeasuredChildren":I
    div-int v4, v2, v3

    .line 169
    .local v4, "maxWidthForChild":I
    if-eqz v16, :cond_4

    if-eqz p4, :cond_4

    .line 171
    if-nez v1, :cond_3

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v17, v0

    .end local v0    # "usedWidthForChild":I
    .local v17, "usedWidthForChild":I
    const v0, 0x10501dd

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_3

    .line 171
    .end local v17    # "usedWidthForChild":I
    .restart local v0    # "usedWidthForChild":I
    :cond_3
    move/from16 v17, v0

    .line 175
    .end local v0    # "usedWidthForChild":I
    .restart local v17    # "usedWidthForChild":I
    :goto_3
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v4, v0, v8

    goto :goto_4

    .line 169
    .end local v17    # "usedWidthForChild":I
    .restart local v0    # "usedWidthForChild":I
    :cond_4
    move/from16 v17, v0

    .line 176
    .end local v0    # "usedWidthForChild":I
    .restart local v17    # "usedWidthForChild":I
    if-eqz v16, :cond_5

    .line 179
    iget v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    sub-int/2addr v0, v13

    .line 181
    .local v0, "unmeasuredPriorityChildren":I
    sub-int v8, v3, v0

    .line 182
    .local v8, "unmeasuredOtherChildren":I
    mul-int v18, p3, v8

    div-int/lit8 v18, v18, 0x4

    .line 184
    .local v18, "widthReservedForOtherChildren":I
    sub-int v19, v2, v18

    .line 185
    .local v19, "widthAvailableForPriority":I
    div-int v4, v19, v0

    .line 188
    .end local v0    # "unmeasuredPriorityChildren":I
    .end local v8    # "unmeasuredOtherChildren":I
    .end local v18    # "widthReservedForOtherChildren":I
    .end local v19    # "widthAvailableForPriority":I
    :cond_5
    :goto_4
    sub-int v0, p3, v4

    move/from16 v17, v0

    move v8, v1

    .end local v17    # "usedWidthForChild":I
    .local v0, "usedWidthForChild":I
    goto :goto_5

    .line 161
    .end local v2    # "availableWidth":I
    .end local v3    # "unmeasuredChildren":I
    .end local v4    # "maxWidthForChild":I
    :cond_6
    move/from16 v17, v0

    .end local v0    # "usedWidthForChild":I
    .restart local v17    # "usedWidthForChild":I
    move v8, v1

    .line 191
    .end local v1    # "maxPriorityWidth":I
    .local v8, "maxPriorityWidth":I
    :goto_5
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move/from16 v3, v17

    move/from16 v4, p2

    move/from16 v19, v7

    move-object v7, v5

    .end local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v7, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v19, "numChildren":I
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/NotificationActionListLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 194
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    .line 195
    add-int/lit8 v12, v12, 0x1

    .line 196
    if-eqz v16, :cond_7

    .line 197
    add-int/lit8 v13, v13, 0x1

    move v1, v8

    goto :goto_6

    .line 196
    :cond_7
    move v1, v8

    .line 142
    .end local v7    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "maxPriorityWidth":I
    .end local v15    # "c":Landroid/view/View;
    .end local v16    # "isPriority":Z
    .end local v17    # "usedWidthForChild":I
    .restart local v1    # "maxPriorityWidth":I
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v19

    goto/16 :goto_1

    .end local v19    # "numChildren":I
    .local v7, "numChildren":I
    :cond_8
    move/from16 v19, v7

    .line 201
    .end local v7    # "numChildren":I
    .end local v14    # "i":I
    .restart local v19    # "numChildren":I
    iget v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_7

    .line 202
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_7
    nop

    .line 203
    .local v0, "collapsibleIndent":I
    sub-int v2, p3, v11

    if-le v2, v0, :cond_a

    .line 204
    iput v0, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    goto :goto_8

    .line 206
    :cond_a
    const/4 v2, 0x0

    iput v2, v6, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    .line 208
    :goto_8
    return v11
.end method

.method private blacklist rebuildMeasureOrder(II)V
    .locals 6
    .param p1, "capacityText"    # I
    .param p2, "capacityOther"    # I

    .line 228
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 232
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 234
    .local v2, "c":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 235
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/NotificationActionListLayout$TextViewInfo;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderOther:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v2    # "c":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mMeasureOrderTextViews:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/NotificationActionListLayout;->MEASURE_ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 241
    return-void
.end method

.method private blacklist updateHeights()V
    .locals 5

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 341
    .local v0, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 343
    .local v1, "paddingBottom":I
    add-int v2, v1, v0

    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10501d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10501da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .line 347
    return-void
.end method


# virtual methods
.method public blacklist getExtraMeasureHeight()I
    .locals 2

    .line 397
    iget-boolean v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    if-eqz v0, :cond_0

    .line 398
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    sub-int/2addr v0, v1

    return v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 331
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 334
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->updateHeights()V

    .line 335
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 267
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->isLayoutRtl()Z

    move-result v1

    .line 268
    .local v1, "isLayoutRtl":Z
    iget v2, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingTop:I

    .line 269
    .local v2, "paddingTop":I
    iget v3, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mGravity:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 273
    .local v3, "centerAligned":Z
    if-eqz v3, :cond_1

    .line 274
    iget v4, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int v4, v4, p2

    sub-int v5, p4, p2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    .local v4, "childLeft":I
    goto :goto_1

    .line 276
    .end local v4    # "childLeft":I
    :cond_1
    iget v4, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    .line 277
    .restart local v4    # "childLeft":I
    const v5, 0x800003

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 278
    .local v5, "absoluteGravity":I
    const/4 v6, 0x5

    if-ne v5, v6, :cond_2

    .line 279
    sub-int v6, p4, p2

    iget v7, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    sub-int/2addr v6, v7

    add-int/2addr v4, v6

    goto :goto_1

    .line 282
    :cond_2
    iget v6, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v4, v6

    .line 288
    .end local v5    # "absoluteGravity":I
    :goto_1
    sub-int v5, p5, p3

    .line 291
    .local v5, "height":I
    sub-int v6, v5, v2

    iget v7, v0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    .line 293
    .local v6, "innerHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v7

    .line 295
    .local v7, "count":I
    const/4 v8, 0x0

    .line 296
    .local v8, "start":I
    const/4 v9, 0x1

    .line 298
    .local v9, "dir":I
    if-eqz v1, :cond_3

    .line 299
    add-int/lit8 v8, v7, -0x1

    .line 300
    const/4 v9, -0x1

    .line 303
    :cond_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v7, :cond_5

    .line 304
    mul-int v11, v9, v10

    add-int/2addr v11, v8

    .line 305
    .local v11, "childIndex":I
    invoke-virtual {v0, v11}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 306
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_4

    .line 307
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 308
    .local v13, "childWidth":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 310
    .local v14, "childHeight":I
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 319
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v2

    .line 322
    .local v0, "childTop":I
    move/from16 v16, v1

    .end local v1    # "isLayoutRtl":Z
    .local v16, "isLayoutRtl":Z
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v1

    .line 323
    add-int v1, v4, v13

    move/from16 v17, v2

    .end local v2    # "paddingTop":I
    .local v17, "paddingTop":I
    add-int v2, v0, v14

    invoke-virtual {v12, v4, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 324
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v13

    add-int/2addr v4, v1

    goto :goto_3

    .line 306
    .end local v0    # "childTop":I
    .end local v13    # "childWidth":I
    .end local v14    # "childHeight":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "paddingTop":I
    .restart local v1    # "isLayoutRtl":Z
    .restart local v2    # "paddingTop":I
    :cond_4
    move/from16 v16, v1

    move/from16 v17, v2

    .line 303
    .end local v1    # "isLayoutRtl":Z
    .end local v2    # "paddingTop":I
    .end local v11    # "childIndex":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "isLayoutRtl":Z
    .restart local v17    # "paddingTop":I
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_2

    .line 327
    .end local v10    # "i":I
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "paddingTop":I
    .restart local v1    # "isLayoutRtl":Z
    .restart local v2    # "paddingTop":I
    :cond_5
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 213
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->countAndRebuildMeasureOrder()V

    .line 214
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 215
    .local v0, "innerWidth":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v1

    .line 217
    .local v1, "usedWidth":I
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mNumPriorityChildren:I

    if-eqz v2, :cond_0

    if-lt v1, v0, :cond_0

    .line 218
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/internal/widget/NotificationActionListLayout;->measureAndGetUsedWidth(IIIZ)I

    move-result v1

    .line 222
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingRight:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mExtraStartPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mTotalWidth:I

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v2

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v3, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->resolveSize(II)I

    move-result v3

    .line 223
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setMeasuredDimension(II)V

    .line 225
    return-void
.end method

.method public whitelist onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 250
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 251
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public whitelist onViewRemoved(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 261
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 262
    invoke-direct {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->clearMeasureOrder()V

    .line 263
    return-void
.end method

.method public blacklist setCollapsibleIndentDimen(I)V
    .locals 1
    .param p1, "collapsibleIndentDimen"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 356
    iget v0, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    if-eq v0, p1, :cond_0

    .line 357
    iput p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mCollapsibleIndentDimen:I

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->requestLayout()V

    .line 360
    :cond_0
    return-void
.end method

.method public blacklist setEmphasizedMode(Z)V
    .locals 8
    .param p1, "emphasizedMode"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 369
    iput-boolean p1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedMode:Z

    .line 371
    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 375
    .local v0, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 377
    .local v1, "paddingBottom":I
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mEmphasizedHeight:I

    .line 378
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 380
    .local v3, "buttonPaddingInternal":I
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v4

    sub-int v5, v0, v3

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v6

    sub-int v7, v1, v3

    .line 380
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 384
    .end local v0    # "paddingTop":I
    .end local v1    # "paddingBottom":I
    .end local v3    # "buttonPaddingInternal":I
    goto :goto_0

    .line 385
    .end local v2    # "height":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingTop:I

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getPaddingEnd()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mDefaultPaddingBottom:I

    .line 385
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/NotificationActionListLayout;->setPaddingRelative(IIII)V

    .line 389
    iget v2, p0, Lcom/android/internal/widget/NotificationActionListLayout;->mRegularHeight:I

    .line 391
    .restart local v2    # "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/NotificationActionListLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 392
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NotificationActionListLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    return-void
.end method
