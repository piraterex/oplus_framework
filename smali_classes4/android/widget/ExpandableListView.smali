.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final whitelist CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final greylist-max-o CHILD_LAST_STATE_SET:[I

.field private static final greylist-max-o EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final greylist-max-o GROUP_EXPANDED_STATE_SET:[I

.field private static final greylist GROUP_STATE_SETS:[[I

.field private static final greylist-max-o INDICATOR_UNDEFINED:I = -0x2

.field private static final greylist-max-o PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final greylist-max-o PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final greylist-max-o PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final greylist-max-o PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final greylist-max-o PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final greylist-max-o PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final greylist-max-o PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final whitelist PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final whitelist PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final whitelist PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final whitelist PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private greylist-max-o mAdapter:Landroid/widget/ExpandableListAdapter;

.field private greylist mChildDivider:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mChildIndicatorEnd:I

.field private greylist-max-o mChildIndicatorLeft:I

.field private greylist-max-o mChildIndicatorRight:I

.field private greylist-max-o mChildIndicatorStart:I

.field private greylist mConnector:Landroid/widget/ExpandableListConnector;

.field private greylist mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mIndicatorEnd:I

.field private greylist mIndicatorLeft:I

.field private final greylist-max-o mIndicatorRect:Landroid/graphics/Rect;

.field private greylist mIndicatorRight:I

.field private greylist-max-o mIndicatorStart:I

.field private greylist mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private greylist mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private greylist mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private greylist mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 193
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 196
    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a8

    aput v4, v3, v0

    sput-object v3, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 200
    new-array v4, v2, [I

    const v5, 0x10100a9

    aput v5, v4, v0

    sput-object v4, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 204
    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    sput-object v6, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 209
    const/4 v7, 0x4

    new-array v7, v7, [[I

    aput-object v1, v7, v0

    aput-object v3, v7, v2

    aput-object v4, v7, v5

    const/4 v1, 0x3

    aput-object v6, v7, v1

    sput-object v7, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 217
    new-array v1, v2, [I

    const v2, 0x10100a6

    aput v2, v1, v0

    sput-object v1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 232
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 237
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 241
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 243
    sget-object v0, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 245
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/ExpandableListView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 250
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 252
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 254
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 256
    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 257
    iget v2, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 259
    :cond_0
    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 262
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 265
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 268
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    const/4 v1, 0x7

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 272
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 276
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 279
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 284
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    return-void
.end method

.method private greylist-max-o getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 649
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private greylist-max-o getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .line 1156
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1157
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    .line 1159
    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .line 638
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private greylist-max-o getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pos"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .line 488
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 489
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 491
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 495
    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 499
    .local v2, "isEmpty":Z
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    .line 500
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    or-int/2addr v1, v4

    .line 501
    .local v1, "stateSetIndex":I
    sget-object v3, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 502
    .end local v1    # "stateSetIndex":I
    .end local v2    # "isEmpty":Z
    goto :goto_4

    .line 504
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 506
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 508
    iget-object v1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v2, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v1, v2, :cond_4

    .line 509
    sget-object v1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_3

    .line 510
    :cond_4
    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    :goto_3
    nop

    .line 511
    .local v1, "stateSet":[I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 515
    .end local v1    # "stateSet":[I
    :cond_5
    :goto_4
    return-object v0
.end method

.method public static whitelist getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .line 1084
    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 1087
    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    .line 1089
    :cond_1
    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .line 1109
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .line 1124
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist getPackedPositionGroup(J)I
    .locals 3
    .param p0, "packedPosition"    # J

    .line 1065
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1067
    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .line 1045
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1046
    const/4 v0, 0x2

    return v0

    .line 1049
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long v2, p0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1050
    const/4 v0, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    const/4 v0, 0x0

    .line 1049
    :goto_0
    return v0
.end method

.method private greylist-max-o hasRtlSupport()Z
    .locals 1

    .line 300
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isHeaderOrFooterPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 626
    iget v0, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 627
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private greylist-max-o isRtlCompatibilityMode()Z
    .locals 2

    .line 292
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 293
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private greylist-max-o resolveChildIndicator()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 340
    .local v0, "isLayoutRtl":Z
    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 341
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_0

    .line 342
    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 344
    :cond_0
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 345
    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    goto :goto_0

    .line 348
    :cond_1
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v2, v1, :cond_2

    .line 349
    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 351
    :cond_2
    iget v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v2, v1, :cond_3

    .line 352
    iput v2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 355
    :cond_3
    :goto_0
    return-void
.end method

.method private greylist-max-o resolveIndicator()V
    .locals 3

    .line 313
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    .line 314
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_1

    .line 315
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 316
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 318
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 319
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_0

    .line 322
    :cond_1
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_2

    .line 323
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 325
    :cond_2
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_3

    .line 326
    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 329
    :cond_3
    :goto_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 330
    iget v2, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 332
    :cond_4
    return-void
.end method


# virtual methods
.method public whitelist collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .line 785
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 787
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 788
    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 791
    :cond_0
    return v0
.end method

.method greylist-max-o createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .line 1130
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    new-instance v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v2, v9, v1, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v2

    .line 1135
    :cond_0
    move-object/from16 v9, p1

    move-wide/from16 v3, p3

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v2

    .line 1136
    .local v2, "adjustedPosition":I
    iget-object v5, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 1137
    .local v10, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v11, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1139
    .local v11, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {v0, v11}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v12

    .line 1140
    .end local p3    # "id":J
    .local v12, "id":J
    invoke-virtual {v11}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v14

    .line 1142
    .local v14, "packedPosition":J
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1144
    new-instance v16, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move-wide v5, v14

    move-wide v7, v12

    invoke-direct/range {v3 .. v8}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v16
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 363
    iget-object v2, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 364
    return-void

    .line 367
    :cond_0
    const/4 v2, 0x0

    .line 368
    .local v2, "saveCount":I
    iget v3, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    const/16 v4, 0x22

    and-int/2addr v3, v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 369
    .local v3, "clipToPadding":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 371
    iget v4, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    .line 372
    .local v4, "scrollX":I
    iget v6, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    .line 373
    .local v6, "scrollY":I
    iget v7, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v7, v4

    iget v8, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    add-int/2addr v8, v6

    iget v9, v0, Landroid/widget/ExpandableListView;->mRight:I

    add-int/2addr v9, v4

    iget v10, v0, Landroid/widget/ExpandableListView;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mBottom:I

    add-int/2addr v10, v6

    iget v11, v0, Landroid/widget/ExpandableListView;->mTop:I

    sub-int/2addr v10, v11

    iget v11, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 378
    .end local v4    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v4

    .line 380
    .local v4, "headerViewsCount":I
    iget v6, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    sub-int/2addr v6, v5

    .line 382
    .local v6, "lastChildFlPos":I
    iget v7, v0, Landroid/widget/ExpandableListView;->mBottom:I

    .line 390
    .local v7, "myB":I
    const/4 v8, -0x4

    .line 392
    .local v8, "lastItemType":I
    iget-object v9, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 397
    .local v9, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v10

    .line 398
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    iget v12, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    sub-int/2addr v12, v4

    .local v12, "childFlPos":I
    :goto_1
    if-ge v11, v10, :cond_e

    .line 401
    if-gez v12, :cond_3

    .line 403
    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_8

    .line 404
    :cond_3
    if-le v12, v6, :cond_4

    .line 406
    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_9

    .line 409
    :cond_4
    invoke-virtual {v0, v11}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 410
    .local v13, "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    .line 411
    .local v14, "t":I
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v15

    .line 414
    .local v15, "b":I
    if-ltz v15, :cond_d

    if-le v14, v7, :cond_5

    move/from16 v18, v4

    move/from16 v19, v6

    goto/16 :goto_8

    .line 417
    :cond_5
    iget-object v5, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v12}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v5

    .line 419
    .local v5, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v16

    .line 420
    .local v16, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v17

    .line 424
    .local v17, "width":I
    move/from16 v18, v4

    .end local v4    # "headerViewsCount":I
    .local v18, "headerViewsCount":I
    iget-object v4, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v4, v8, :cond_a

    .line 425
    iget-object v4, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v19, v6

    const/4 v6, 0x1

    .end local v6    # "lastChildFlPos":I
    .local v19, "lastChildFlPos":I
    if-ne v4, v6, :cond_8

    .line 426
    iget v4, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 427
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_2

    :cond_6
    nop

    :goto_2
    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 428
    iget v4, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    if-ne v4, v6, :cond_7

    .line 429
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_3

    :cond_7
    nop

    :goto_3
    iput v4, v9, Landroid/graphics/Rect;->right:I

    goto :goto_4

    .line 431
    :cond_8
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 432
    iget v4, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 435
    :goto_4
    if-eqz v16, :cond_9

    .line 436
    iget v4, v9, Landroid/graphics/Rect;->left:I

    .line 437
    .local v4, "temp":I
    iget v6, v9, Landroid/graphics/Rect;->right:I

    sub-int v6, v17, v6

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 438
    sub-int v6, v17, v4

    iput v6, v9, Landroid/graphics/Rect;->right:I

    .line 440
    iget v6, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v4

    .end local v4    # "temp":I
    .local v20, "temp":I
    iget v4, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v6, v4

    iput v6, v9, Landroid/graphics/Rect;->left:I

    .line 441
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 442
    .end local v20    # "temp":I
    goto :goto_5

    .line 443
    :cond_9
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 444
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v4, v6

    iput v4, v9, Landroid/graphics/Rect;->right:I

    .line 447
    :goto_5
    iget-object v4, v5, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v4, Landroid/widget/ExpandableListPosition;->type:I

    goto :goto_6

    .line 424
    .end local v19    # "lastChildFlPos":I
    .restart local v6    # "lastChildFlPos":I
    :cond_a
    move/from16 v19, v6

    .line 450
    .end local v6    # "lastChildFlPos":I
    .restart local v19    # "lastChildFlPos":I
    :goto_6
    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v6, v9, Landroid/graphics/Rect;->right:I

    if-eq v4, v6, :cond_c

    .line 452
    iget-boolean v4, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    if-eqz v4, :cond_b

    .line 454
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 455
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 457
    :cond_b
    iput v14, v9, Landroid/graphics/Rect;->top:I

    .line 458
    iput v15, v9, Landroid/graphics/Rect;->bottom:I

    .line 462
    :goto_7
    invoke-direct {v0, v5}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 463
    .local v4, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_c

    .line 465
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 466
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    .end local v4    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_c
    invoke-virtual {v5}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_8

    .line 414
    .end local v5    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .end local v16    # "isLayoutRtl":Z
    .end local v17    # "width":I
    .end local v18    # "headerViewsCount":I
    .end local v19    # "lastChildFlPos":I
    .local v4, "headerViewsCount":I
    .restart local v6    # "lastChildFlPos":I
    :cond_d
    move/from16 v18, v4

    move/from16 v19, v6

    .line 399
    .end local v4    # "headerViewsCount":I
    .end local v6    # "lastChildFlPos":I
    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "t":I
    .end local v15    # "b":I
    .restart local v18    # "headerViewsCount":I
    .restart local v19    # "lastChildFlPos":I
    :goto_8
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v18

    move/from16 v6, v19

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 398
    .end local v18    # "headerViewsCount":I
    .end local v19    # "lastChildFlPos":I
    .restart local v4    # "headerViewsCount":I
    .restart local v6    # "lastChildFlPos":I
    :cond_e
    move/from16 v18, v4

    move/from16 v19, v6

    .line 472
    .end local v4    # "headerViewsCount":I
    .end local v6    # "lastChildFlPos":I
    .end local v11    # "i":I
    .end local v12    # "childFlPos":I
    .restart local v18    # "headerViewsCount":I
    .restart local v19    # "lastChildFlPos":I
    :goto_9
    if-eqz v3, :cond_f

    .line 473
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 475
    :cond_f
    return-void
.end method

.method greylist-max-o drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .line 531
    iget v0, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int/2addr v0, p3

    .line 535
    .local v0, "flatListPosition":I
    if-ltz v0, :cond_2

    .line 536
    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v1

    .line 537
    .local v1, "adjustedPosition":I
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 539
    .local v2, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v4, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_1

    .line 542
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 543
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 544
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 545
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 546
    return-void

    .line 552
    .end local v1    # "adjustedPosition":I
    .end local v2    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    .end local v3    # "divider":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, v0}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 553
    return-void
.end method

.method public whitelist expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .line 743
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist expandGroup(IZ)Z
    .locals 6
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .line 755
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 757
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 758
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 759
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v2

    .line 761
    .local v2, "retValue":Z
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v3, :cond_0

    .line 762
    invoke-interface {v3, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 765
    :cond_0
    if-eqz p2, :cond_1

    .line 766
    iget-object v3, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 768
    .local v3, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    .line 769
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 772
    .end local v3    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 774
    return v2
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1357
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 578
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .line 618
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public whitelist getExpandableListPosition(I)J
    .locals 4
    .param p1, "flatListPosition"    # I

    .line 901
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    const-wide v0, 0xffffffffL

    return-wide v0

    .line 905
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 906
    .local v0, "adjustedPosition":I
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 907
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v2}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 908
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 909
    return-wide v2
.end method

.method public whitelist getFlatListPosition(J)I
    .locals 4
    .param p1, "packedPosition"    # J

    .line 924
    nop

    .line 925
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 926
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 927
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 928
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 929
    .local v2, "flatListPosition":I
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 930
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public whitelist getSelectedId()J
    .locals 5

    .line 956
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    .line 957
    .local v0, "packedPos":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    .line 959
    :cond_0
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 961
    .local v2, "groupPos":I
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 963
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    return-wide v3

    .line 966
    :cond_1
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    return-wide v3
.end method

.method public whitelist getSelectedPosition()J
    .locals 3

    .line 942
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 945
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method greylist-max-o handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 674
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 676
    .local v0, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v1}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 679
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v8, 0x0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 683
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v2, :cond_0

    .line 684
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 687
    const/4 v1, 0x1

    return v1

    .line 691
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 693
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 695
    invoke-virtual {p0, v8}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 697
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_3

    .line 698
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    goto :goto_0

    .line 702
    :cond_1
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 704
    invoke-virtual {p0, v8}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 706
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v1, :cond_2

    .line 707
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v1, v2}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 710
    :cond_2
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 711
    .local v1, "groupPos":I
    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 713
    .local v2, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v3

    add-int/2addr v3, v2

    .line 714
    .local v3, "shiftedGroupPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 718
    .end local v1    # "groupPos":I
    .end local v2    # "groupFlatPos":I
    .end local v3    # "shiftedGroupPosition":I
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .local v1, "returnValue":Z
    goto :goto_1

    .line 721
    .end local v1    # "returnValue":Z
    :cond_4
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v1, :cond_5

    .line 722
    invoke-virtual {p0, v8}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 723
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v6, v1, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v3, p0

    move-object v4, p1

    move-wide v7, p3

    invoke-interface/range {v2 .. v8}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v1

    return v1

    .line 727
    :cond_5
    const/4 v1, 0x0

    .line 730
    .restart local v1    # "returnValue":Z
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 732
    return v1
.end method

.method public whitelist isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .line 1032
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1342
    instance-of v0, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v0, :cond_0

    .line 1343
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1344
    return-void

    .line 1347
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    .line 1348
    .local v0, "ss":Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1350
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1351
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    .line 1353
    :cond_1
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 304
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 305
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 306
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1335
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1336
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    .line 1337
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1336
    return-object v1
.end method

.method public whitelist performItemClick(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .line 655
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0

    .line 661
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 662
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic whitelist setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 85
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .line 600
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 602
    if-eqz p1, :cond_0

    .line 604
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_0

    .line 606
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 610
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 611
    return-void
.end method

.method public whitelist setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 563
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .line 526
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 527
    return-void
.end method

.method public whitelist setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1171
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1172
    return-void
.end method

.method public whitelist setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1186
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1187
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1188
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1189
    return-void
.end method

.method public whitelist setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1203
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 1204
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 1205
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1206
    return-void
.end method

.method public whitelist setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .line 1217
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1218
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1219
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1221
    :cond_0
    return-void
.end method

.method public whitelist setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 1235
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1236
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1237
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1238
    return-void
.end method

.method public whitelist setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1252
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 1253
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 1254
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1255
    return-void
.end method

.method public whitelist setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 883
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 884
    return-void
.end method

.method public whitelist setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 855
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 856
    return-void
.end method

.method public whitelist setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 810
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 811
    return-void
.end method

.method public whitelist setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 829
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 830
    return-void
.end method

.method public whitelist setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 591
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 592
    return-void
.end method

.method public whitelist setSelectedChild(IIZ)Z
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .line 996
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 998
    .local v0, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 1000
    .local v1, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v1, :cond_2

    .line 1004
    if-nez p3, :cond_0

    const/4 v2, 0x0

    return v2

    .line 1006
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1008
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 1011
    if-eqz v1, :cond_1

    goto :goto_0

    .line 1012
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1016
    :cond_2
    :goto_0
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 1017
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 1019
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1020
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1022
    const/4 v3, 0x1

    return v3
.end method

.method public whitelist setSelectedGroup(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .line 975
    nop

    .line 976
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 977
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 978
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 979
    iget-object v2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v2, v2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    .line 980
    .local v2, "absoluteFlatPosition":I
    invoke-super {p0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 981
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 982
    return-void
.end method
