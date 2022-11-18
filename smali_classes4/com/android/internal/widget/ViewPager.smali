.class public Lcom/android/internal/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewPager$ViewPositionComparator;,
        Lcom/android/internal/widget/ViewPager$LayoutParams;,
        Lcom/android/internal/widget/ViewPager$PagerObserver;,
        Lcom/android/internal/widget/ViewPager$SavedState;,
        Lcom/android/internal/widget/ViewPager$Decor;,
        Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;,
        Lcom/android/internal/widget/ViewPager$PageTransformer;,
        Lcom/android/internal/widget/ViewPager$SimpleOnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$OnPageChangeListener;,
        Lcom/android/internal/widget/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final blacklist CLOSE_ENOUGH:I = 0x2

.field private static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final blacklist DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final blacklist DRAW_ORDER_DEFAULT:I = 0x0

.field private static final blacklist DRAW_ORDER_FORWARD:I = 0x1

.field private static final blacklist DRAW_ORDER_REVERSE:I = 0x2

.field private static final blacklist INVALID_POINTER:I = -0x1

.field private static final blacklist LAYOUT_ATTRS:[I

.field private static final blacklist MAX_SCROLL_X:I = 0x1000000

.field private static final blacklist MAX_SETTLE_DURATION:I = 0x258

.field private static final blacklist MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final blacklist MIN_FLING_VELOCITY:I = 0x190

.field public static final blacklist SCROLL_STATE_DRAGGING:I = 0x1

.field public static final blacklist SCROLL_STATE_IDLE:I = 0x0

.field public static final blacklist SCROLL_STATE_SETTLING:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "ViewPager"

.field private static final blacklist USE_CACHE:Z = false

.field private static final blacklist sInterpolator:Landroid/view/animation/Interpolator;

.field private static final blacklist sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mAdapter:Lcom/android/internal/widget/PagerAdapter;

.field private blacklist mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

.field private blacklist mBottomPageBounds:I

.field private blacklist mCalledSuper:Z

.field private blacklist mChildHeightMeasureSpec:I

.field private blacklist mChildWidthMeasureSpec:I

.field private final blacklist mCloseEnough:I

.field private blacklist mCurItem:I

.field private blacklist mDecorChildCount:I

.field private final blacklist mDefaultGutterSize:I

.field private blacklist mDrawingOrder:I

.field private blacklist mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEndScrollRunnable:Ljava/lang/Runnable;

.field private blacklist mExpectedAdapterCount:I

.field private blacklist mFirstLayout:Z

.field private blacklist mFirstOffset:F

.field private final blacklist mFlingDistance:I

.field private blacklist mGutterSize:I

.field private blacklist mInLayout:Z

.field private blacklist mInitialMotionX:F

.field private blacklist mInitialMotionY:F

.field private blacklist mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private blacklist mIsBeingDragged:Z

.field private blacklist mIsUnableToDrag:Z

.field private final blacklist mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastMotionX:F

.field private blacklist mLastMotionY:F

.field private blacklist mLastOffset:F

.field private final blacklist mLeftEdge:Landroid/widget/EdgeEffect;

.field private blacklist mLeftIncr:I

.field private blacklist mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mMaximumVelocity:I

.field private final blacklist mMinimumVelocity:I

.field private blacklist mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

.field private blacklist mOffscreenPageLimit:I

.field private blacklist mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private blacklist mPageMargin:I

.field private blacklist mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

.field private blacklist mPopulatePending:Z

.field private blacklist mRestoredAdapterState:Landroid/os/Parcelable;

.field private blacklist mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private blacklist mRestoredCurItem:I

.field private final blacklist mRightEdge:Landroid/widget/EdgeEffect;

.field private blacklist mScrollState:I

.field private final blacklist mScroller:Landroid/widget/Scroller;

.field private blacklist mScrollingCacheEnabled:Z

.field private final blacklist mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTopPageBounds:I

.field private final blacklist mTouchSlop:I

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetScrollState(Lcom/android/internal/widget/ViewPager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLAYOUT_ATTRS()[I
    .locals 1

    sget-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/ViewPager;->LAYOUT_ATTRS:[I

    .line 100
    new-instance v0, Lcom/android/internal/widget/ViewPager$1;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 107
    new-instance v0, Lcom/android/internal/widget/ViewPager$2;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$2;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    new-instance v0, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 332
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 336
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 340
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 343
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 123
    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 136
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 141
    const v1, -0x800001

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 142
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 151
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 169
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 193
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 225
    new-instance v0, Lcom/android/internal/widget/ViewPager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ViewPager$3;-><init>(Lcom/android/internal/widget/ViewPager;)V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 346
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setDescendantFocusability(I)V

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setFocusable(Z)V

    .line 349
    new-instance v0, Landroid/widget/Scroller;

    sget-object v2, Lcom/android/internal/widget/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 350
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 351
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 353
    .local v2, "density":F
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    .line 354
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    .line 355
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    .line 356
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 357
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, p1, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 359
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    .line 360
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    .line 361
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->setImportantForAccessibility(I)V

    .line 366
    :cond_0
    return-void
.end method

.method private blacklist calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V
    .locals 11
    .param p1, "curItem"    # Lcom/android/internal/widget/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1114
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 1115
    .local v0, "N":I
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 1116
    .local v1, "width":I
    if-lez v1, :cond_0

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1119
    .local v2, "marginOffset":F
    :goto_0
    if-eqz p3, :cond_6

    .line 1120
    iget v3, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1123
    .local v3, "oldCurPosition":I
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_3

    .line 1124
    const/4 v4, 0x0

    .line 1125
    .local v4, "itemIndex":I
    iget v5, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v6, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v6

    add-float/2addr v5, v2

    .line 1126
    .local v5, "offset":F
    add-int/lit8 v6, v3, 0x1

    .local v6, "pos":I
    :goto_1
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-gt v6, v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 1127
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1128
    .local v7, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_2
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_1

    .line 1129
    add-int/lit8 v4, v4, 0x1

    .line 1130
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_2

    .line 1133
    :cond_1
    :goto_3
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_2

    .line 1136
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1137
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1140
    :cond_2
    iput v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1141
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v5, v8

    .line 1126
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1143
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_3
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_6

    .line 1144
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1145
    .restart local v4    # "itemIndex":I
    iget v5, p3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1146
    .restart local v5    # "offset":F
    add-int/lit8 v6, v3, -0x1

    .restart local v6    # "pos":I
    :goto_4
    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-lt v6, v7, :cond_6

    if-ltz v4, :cond_6

    .line 1147
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1148
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_5
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v6, v8, :cond_4

    if-lez v4, :cond_4

    .line 1149
    add-int/lit8 v4, v4, -0x1

    .line 1150
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_5

    .line 1153
    :cond_4
    :goto_6
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v6, v8, :cond_5

    .line 1156
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1157
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 1160
    :cond_5
    iget v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v5, v8

    .line 1161
    iput v5, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1146
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1167
    .end local v3    # "oldCurPosition":I
    .end local v4    # "itemIndex":I
    .end local v5    # "offset":F
    .end local v6    # "pos":I
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1168
    .local v3, "itemCount":I
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1169
    .local v4, "offset":F
    iget v5, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1170
    .local v5, "pos":I
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_7

    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    goto :goto_7

    :cond_7
    const v6, -0x800001

    :goto_7
    iput v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1171
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_8

    .line 1172
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_8

    :cond_8
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    iput v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1175
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_9
    if-ltz v6, :cond_b

    .line 1176
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1177
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_a
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_9

    .line 1178
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .end local v5    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v9, v5}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    move v5, v10

    goto :goto_a

    .line 1180
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_9
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1181
    iput v4, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1182
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_a

    iput v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    .line 1175
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_a
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 1185
    .end local v6    # "i":I
    :cond_b
    iget v6, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1186
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1189
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_b
    if-ge v5, v3, :cond_e

    .line 1190
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1191
    .restart local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_c
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_c

    .line 1192
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v6, v4

    move v4, v10

    goto :goto_c

    .line 1194
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_c
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_d

    .line 1195
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    .line 1197
    :cond_d
    iput v6, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 1198
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1189
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1200
    .end local v5    # "i":I
    :cond_e
    return-void
.end method

.method private blacklist canScroll()Z
    .locals 2

    .line 2802
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist completeScroll(Z)V
    .locals 6
    .param p1, "postEvents"    # Z

    .line 1763
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1764
    .local v0, "needPopulate":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1766
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1767
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 1769
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v3

    .line 1770
    .local v3, "oldY":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1771
    .local v4, "x":I
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    .line 1772
    .local v5, "y":I
    if-ne v2, v4, :cond_1

    if-eq v3, v5, :cond_2

    .line 1773
    :cond_1
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1776
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1777
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1778
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1779
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-boolean v4, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_3

    .line 1780
    const/4 v0, 0x1

    .line 1781
    iput-boolean v1, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 1777
    .end local v3    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1784
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_6

    .line 1785
    if-eqz p1, :cond_5

    .line 1786
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1788
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1791
    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist determineTargetPage(IFII)I
    .locals 5
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2273
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mFlingDistance:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2274
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2275
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2276
    if-gez p3, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sub-int v0, p1, v0

    .local v0, "targetPage":I
    goto :goto_2

    .line 2278
    .end local v0    # "targetPage":I
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_2

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_2
    const v0, 0x3f19999a    # 0.6f

    .line 2279
    .local v0, "truncator":F
    :goto_1
    int-to-float v1, p1

    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    int-to-float v3, v3

    add-float v4, p2, v0

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    move v0, v1

    .line 2282
    .local v0, "targetPage":I
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 2283
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2284
    .local v1, "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2287
    .local v2, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    .line 2290
    .end local v1    # "firstItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_3
    return v0
.end method

.method private blacklist enableLayers(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1799
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1800
    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1801
    .local v2, "layerType":I
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1799
    .end local v2    # "layerType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1803
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist endDrag()V
    .locals 1

    .line 2406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2407
    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 2409
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2413
    :cond_0
    return-void
.end method

.method private blacklist getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2582
    if-nez p1, :cond_0

    .line 2583
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2585
    :cond_0
    if-nez p2, :cond_1

    .line 2586
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2587
    return-object p1

    .line 2589
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2590
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2591
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2592
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2594
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2595
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eq v0, p0, :cond_2

    .line 2596
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2597
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2598
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2599
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2600
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2602
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2603
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_0

    .line 2604
    :cond_2
    return-object p1
.end method

.method private blacklist getLeftEdgeForItem(I)I
    .locals 6
    .param p1, "position"    # I

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 571
    .local v0, "info":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    .line 572
    const/4 v1, 0x0

    return v1

    .line 575
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v1

    .line 576
    .local v1, "width":I
    int-to-float v2, v1

    iget v3, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 579
    .local v2, "scaledOffset":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    int-to-float v3, v1

    iget v4, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 581
    .local v3, "itemWidth":I
    const/high16 v4, 0x1000000

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    return v4

    .line 583
    .end local v3    # "itemWidth":I
    :cond_1
    return v2
.end method

.method private blacklist getPaddedWidth()I
    .locals 2

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private blacklist getScrollStart()I
    .locals 2

    .line 2257
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2258
    const/high16 v0, 0x1000000

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 2260
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    return v0
.end method

.method private blacklist infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 17

    .line 2210
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v1

    .line 2211
    .local v1, "startOffset":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    .line 2212
    .local v2, "width":I
    const/4 v3, 0x0

    if-lez v2, :cond_0

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2213
    .local v4, "scrollOffset":F
    :goto_0
    if-lez v2, :cond_1

    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v5, v2

    div-float/2addr v3, v5

    .line 2215
    .local v3, "marginOffset":F
    :cond_1
    const/4 v5, -0x1

    .line 2216
    .local v5, "lastPos":I
    const/4 v6, 0x0

    .line 2217
    .local v6, "lastOffset":F
    const/4 v7, 0x0

    .line 2218
    .local v7, "lastWidth":F
    const/4 v8, 0x1

    .line 2219
    .local v8, "first":Z
    const/4 v9, 0x0

    .line 2221
    .local v9, "lastItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v10, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2222
    .local v10, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_7

    .line 2223
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2226
    .local v12, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v8, :cond_2

    iget v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    add-int/lit8 v14, v5, 0x1

    if-eq v13, v14, :cond_2

    .line 2228
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mTempItem:Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2229
    add-float v13, v6, v7

    add-float/2addr v13, v3

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2230
    add-int/lit8 v13, v5, 0x1

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2231
    iget-object v13, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v14, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v13

    iput v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2232
    add-int/lit8 v11, v11, -0x1

    .line 2235
    :cond_2
    iget v13, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2236
    .local v13, "offset":F
    move v14, v13

    .line 2237
    .local v14, "startBound":F
    if-nez v8, :cond_4

    cmpl-float v15, v4, v14

    if-ltz v15, :cond_3

    goto :goto_2

    .line 2243
    :cond_3
    return-object v9

    .line 2238
    :cond_4
    :goto_2
    iget v15, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v15, v13

    add-float/2addr v15, v3

    .line 2239
    .local v15, "endBound":F
    cmpg-float v16, v4, v15

    if-ltz v16, :cond_6

    move/from16 v16, v1

    .end local v1    # "startOffset":I
    .local v16, "startOffset":I
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v11, v1, :cond_5

    goto :goto_3

    .line 2242
    .end local v15    # "endBound":F
    :cond_5
    nop

    .line 2246
    const/4 v8, 0x0

    .line 2247
    iget v5, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2248
    move v6, v13

    .line 2249
    iget v7, v12, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 2250
    move-object v9, v12

    .line 2222
    .end local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    goto :goto_1

    .line 2239
    .end local v16    # "startOffset":I
    .restart local v1    # "startOffset":I
    .restart local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v13    # "offset":F
    .restart local v14    # "startBound":F
    .restart local v15    # "endBound":F
    :cond_6
    move/from16 v16, v1

    .line 2240
    .end local v1    # "startOffset":I
    .restart local v16    # "startOffset":I
    :goto_3
    return-object v12

    .line 2253
    .end local v11    # "i":I
    .end local v12    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v13    # "offset":F
    .end local v14    # "startBound":F
    .end local v15    # "endBound":F
    .end local v16    # "startOffset":I
    .restart local v1    # "startOffset":I
    :cond_7
    return-object v9
.end method

.method private blacklist isGutterDrag(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 1794
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2391
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2392
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2393
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 2396
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2397
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2398
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2399
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 2400
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2403
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private blacklist pageScrolled(I)Z
    .locals 10
    .param p1, "scrollX"    # I

    .line 1649
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1650
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1651
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1652
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_0

    .line 1656
    return v2

    .line 1653
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1661
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1662
    const/high16 v0, 0x1000000

    sub-int/2addr v0, p1

    .local v0, "scrollStart":I
    goto :goto_0

    .line 1664
    .end local v0    # "scrollStart":I
    :cond_2
    move v0, p1

    .line 1667
    .restart local v0    # "scrollStart":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v3

    .line 1668
    .local v3, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v4

    .line 1669
    .local v4, "width":I
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    add-int v6, v4, v5

    .line 1670
    .local v6, "widthWithMargin":I
    int-to-float v5, v5

    int-to-float v7, v4

    div-float/2addr v5, v7

    .line 1671
    .local v5, "marginOffset":F
    iget v7, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 1672
    .local v7, "currentPage":I
    int-to-float v8, v0

    int-to-float v9, v4

    div-float/2addr v8, v9

    iget v9, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v8, v9

    iget v9, v3, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v5

    div-float/2addr v8, v9

    .line 1674
    .local v8, "pageOffset":F
    int-to-float v9, v6

    mul-float/2addr v9, v8

    float-to-int v9, v9

    .line 1676
    .local v9, "offsetPixels":I
    iput-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1677
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/widget/ViewPager;->onPageScrolled(IFI)V

    .line 1678
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_3

    .line 1682
    const/4 v1, 0x1

    return v1

    .line 1679
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist performDrag(FF)Z
    .locals 22
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2118
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 2120
    .local v3, "needsInvalidate":Z
    iget v4, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float/2addr v4, v1

    .line 2121
    .local v4, "dX":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v5

    .line 2122
    .local v5, "width":I
    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2123
    invoke-direct {v0, v4, v2}, Lcom/android/internal/widget/ViewPager;->releaseHorizontalGlow(FF)F

    move-result v6

    .line 2124
    .local v6, "releaseConsumed":F
    sub-float v7, v4, v6

    .line 2125
    .local v7, "deltaX":F
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_0

    .line 2126
    const/4 v3, 0x1

    .line 2128
    :cond_0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x38d1b717    # 1.0E-4f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 2129
    return v3

    .line 2134
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2135
    iget-object v8, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2136
    .local v8, "startEdge":Landroid/widget/EdgeEffect;
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .local v9, "endEdge":Landroid/widget/EdgeEffect;
    goto :goto_0

    .line 2138
    .end local v8    # "startEdge":Landroid/widget/EdgeEffect;
    .end local v9    # "endEdge":Landroid/widget/EdgeEffect;
    :cond_2
    iget-object v8, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 2139
    .restart local v8    # "startEdge":Landroid/widget/EdgeEffect;
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 2143
    .restart local v9    # "endEdge":Landroid/widget/EdgeEffect;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    .line 2145
    .local v10, "nextScrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v11

    const/high16 v12, 0x4b800000    # 1.6777216E7f

    if-eqz v11, :cond_3

    .line 2146
    sub-float v11, v12, v10

    .local v11, "scrollStart":F
    goto :goto_1

    .line 2148
    .end local v11    # "scrollStart":F
    :cond_3
    move v11, v10

    .line 2152
    .restart local v11    # "scrollStart":F
    :goto_1
    iget-object v13, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2153
    .local v13, "startItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v15, v13, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    const/16 v16, 0x1

    if-nez v15, :cond_4

    move/from16 v15, v16

    goto :goto_2

    :cond_4
    move v15, v14

    .line 2154
    .local v15, "startAbsolute":Z
    :goto_2
    if-eqz v15, :cond_5

    .line 2155
    iget v14, v13, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v12, v5

    mul-float/2addr v14, v12

    .local v14, "startBound":F
    goto :goto_3

    .line 2157
    .end local v14    # "startBound":F
    :cond_5
    int-to-float v12, v5

    iget v14, v0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v14, v12

    .line 2161
    .restart local v14    # "startBound":F
    :goto_3
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v1, v19, -0x1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2162
    .local v1, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v12, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    move/from16 v19, v3

    .end local v3    # "needsInvalidate":Z
    .local v19, "needsInvalidate":Z
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v12, v3, :cond_6

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    :goto_4
    move/from16 v3, v16

    .line 2163
    .local v3, "endAbsolute":Z
    if-eqz v3, :cond_7

    .line 2164
    iget v12, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    move-object/from16 v16, v1

    .end local v1    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v16, "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    int-to-float v1, v5

    mul-float/2addr v12, v1

    .local v12, "endBound":F
    goto :goto_5

    .line 2166
    .end local v12    # "endBound":F
    .end local v16    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v1    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_7
    move-object/from16 v16, v1

    .end local v1    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v16    # "endItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    int-to-float v1, v5

    iget v12, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v12, v1

    .line 2170
    .restart local v12    # "endBound":F
    :goto_5
    cmpg-float v1, v11, v14

    if-gez v1, :cond_9

    .line 2171
    if-eqz v15, :cond_8

    .line 2172
    sub-float v1, v14, v11

    .line 2173
    .local v1, "over":F
    move/from16 v17, v4

    .end local v4    # "dX":F
    .local v17, "dX":F
    int-to-float v4, v5

    div-float v4, v1, v4

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v21, v1

    .end local v1    # "over":F
    .local v21, "over":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    sub-float v1, v20, v1

    invoke-virtual {v8, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2174
    const/4 v1, 0x1

    .end local v19    # "needsInvalidate":Z
    .local v1, "needsInvalidate":Z
    goto :goto_6

    .line 2171
    .end local v1    # "needsInvalidate":Z
    .end local v17    # "dX":F
    .end local v21    # "over":F
    .restart local v4    # "dX":F
    .restart local v19    # "needsInvalidate":Z
    :cond_8
    move/from16 v17, v4

    .end local v4    # "dX":F
    .restart local v17    # "dX":F
    move/from16 v1, v19

    .line 2176
    .end local v19    # "needsInvalidate":Z
    .restart local v1    # "needsInvalidate":Z
    :goto_6
    move v4, v14

    .local v4, "clampedScrollStart":F
    goto :goto_8

    .line 2177
    .end local v1    # "needsInvalidate":Z
    .end local v17    # "dX":F
    .local v4, "dX":F
    .restart local v19    # "needsInvalidate":Z
    :cond_9
    move/from16 v17, v4

    .end local v4    # "dX":F
    .restart local v17    # "dX":F
    cmpl-float v1, v11, v12

    if-lez v1, :cond_b

    .line 2178
    if-eqz v3, :cond_a

    .line 2179
    sub-float v1, v11, v12

    .line 2180
    .local v1, "over":F
    int-to-float v4, v5

    div-float v4, v1, v4

    move/from16 v20, v1

    .end local v1    # "over":F
    .local v20, "over":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    invoke-virtual {v9, v4, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 2181
    const/4 v1, 0x1

    .end local v19    # "needsInvalidate":Z
    .local v1, "needsInvalidate":Z
    goto :goto_7

    .line 2178
    .end local v1    # "needsInvalidate":Z
    .end local v20    # "over":F
    .restart local v19    # "needsInvalidate":Z
    :cond_a
    move/from16 v1, v19

    .line 2183
    .end local v19    # "needsInvalidate":Z
    .restart local v1    # "needsInvalidate":Z
    :goto_7
    move v4, v12

    .local v4, "clampedScrollStart":F
    goto :goto_8

    .line 2185
    .end local v1    # "needsInvalidate":Z
    .end local v4    # "clampedScrollStart":F
    .restart local v19    # "needsInvalidate":Z
    :cond_b
    move v4, v11

    move/from16 v1, v19

    .line 2190
    .end local v19    # "needsInvalidate":Z
    .restart local v1    # "needsInvalidate":Z
    .restart local v4    # "clampedScrollStart":F
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 2191
    const/high16 v18, 0x4b800000    # 1.6777216E7f

    sub-float v18, v18, v4

    move/from16 v2, v18

    .local v18, "targetScrollX":F
    goto :goto_9

    .line 2193
    .end local v18    # "targetScrollX":F
    :cond_c
    move/from16 v18, v4

    move/from16 v2, v18

    .line 2197
    .local v2, "targetScrollX":F
    :goto_9
    move/from16 v18, v3

    .end local v3    # "endAbsolute":Z
    .local v18, "endAbsolute":Z
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    move/from16 v19, v4

    .end local v4    # "clampedScrollStart":F
    .local v19, "clampedScrollStart":F
    float-to-int v4, v2

    int-to-float v4, v4

    sub-float v4, v2, v4

    add-float/2addr v3, v4

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2199
    float-to-int v3, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 2200
    float-to-int v3, v2

    invoke-direct {v0, v3}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 2202
    return v1
.end method

.method private blacklist recomputeScrollPosition(IIII)V
    .locals 15
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .line 1472
    move-object v0, p0

    move/from16 v1, p1

    if-lez p2, :cond_1

    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1473
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    .line 1474
    .local v2, "widthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v3, v3, p4

    .line 1476
    .local v3, "oldWidthWithMargin":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v4

    .line 1477
    .local v4, "xpos":I
    int-to-float v5, v4

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 1478
    .local v5, "pageOffset":F
    int-to-float v6, v2

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 1480
    .local v6, "newOffsetPixels":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1481
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1483
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getDuration()I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->timePassed()I

    move-result v8

    sub-int v13, v7, v8

    .line 1484
    .local v13, "newDuration":I
    iget v7, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v14

    .line 1485
    .local v14, "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v9, 0x0

    iget v8, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    int-to-float v10, v1

    mul-float/2addr v8, v10

    float-to-int v10, v8

    const/4 v11, 0x0

    move v8, v6

    move v12, v13

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1488
    .end local v2    # "widthWithMargin":I
    .end local v3    # "oldWidthWithMargin":I
    .end local v4    # "xpos":I
    .end local v5    # "pageOffset":F
    .end local v6    # "newOffsetPixels":I
    .end local v13    # "newDuration":I
    .end local v14    # "targetInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    goto :goto_1

    .line 1489
    :cond_1
    iget v2, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 1490
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    iget v4, v0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1491
    .local v3, "scrollOffset":F
    :goto_0
    nop

    .line 1492
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1493
    .local v4, "scrollPos":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1494
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1498
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v3    # "scrollOffset":F
    .end local v4    # "scrollPos":I
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist releaseHorizontalGlow(FF)F
    .locals 6
    .param p1, "deltaX"    # F
    .param p2, "y"    # F

    .line 2106
    const/4 v0, 0x0

    .line 2107
    .local v0, "consumed":F
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    .line 2108
    .local v1, "displacement":F
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p1, v2

    .line 2109
    .local v2, "pullDistance":F
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 2110
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    neg-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v3

    neg-float v0, v3

    goto :goto_0

    .line 2111
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v3

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 2112
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, v2, v1}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    .line 2114
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    return v3
.end method

.method private blacklist removeNonDecorViews()V
    .locals 4

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 443
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 444
    .local v2, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v3, v2, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeViewAt(I)V

    .line 446
    add-int/lit8 v0, v0, -0x1

    .line 441
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist requestParentDisallowInterceptTouchEvent(Z)V
    .locals 1
    .param p1, "disallowIntercept"    # Z

    .line 2088
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2089
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2090
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2092
    :cond_0
    return-void
.end method

.method private blacklist scrollToItem(IZIZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 544
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ViewPager;->getLeftEdgeForItem(I)I

    move-result v0

    .line 546
    .local v0, "destX":I
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 547
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 549
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_0

    .line 550
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 552
    :cond_0
    if-eqz p4, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v1, :cond_4

    .line 553
    invoke-interface {v1, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 556
    :cond_1
    if-eqz p4, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_2

    .line 557
    invoke-interface {v2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 559
    :cond_2
    if-eqz p4, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_3

    .line 560
    invoke-interface {v2, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 563
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 564
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 565
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    .line 567
    :cond_4
    :goto_0
    return-void
.end method

.method private blacklist setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 375
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    .line 380
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_2

    .line 382
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->enableLayers(Z)V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 385
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 387
    :cond_3
    return-void
.end method

.method private blacklist setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2416
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2417
    iput-boolean p1, p0, Lcom/android/internal/widget/ViewPager;->mScrollingCacheEnabled:Z

    .line 2428
    :cond_0
    return-void
.end method

.method private blacklist sortChildDrawingOrder()V
    .locals 4

    .line 1098
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 1102
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1104
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 1105
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1106
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1107
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1109
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/ViewPager;->sPositionComparator:Lcom/android/internal/widget/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1111
    .end local v0    # "childCount":I
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2631
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2633
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2635
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_1

    .line 2636
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2637
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2638
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2639
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v4

    .line 2640
    .local v4, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 2641
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2636
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2651
    .end local v2    # "i":I
    :cond_1
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_2

    .line 2654
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 2657
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2658
    return-void

    .line 2660
    :cond_3
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2661
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2662
    return-void

    .line 2664
    :cond_4
    if-eqz p1, :cond_5

    .line 2665
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    :cond_5
    return-void
.end method

.method blacklist addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 813
    new-instance v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$ItemInfo;-><init>()V

    .line 814
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iput p1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 815
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/android/internal/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 816
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 817
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 818
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :goto_1
    return-object v0
.end method

.method public whitelist addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2678
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2679
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2680
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2681
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v2

    .line 2682
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 2683
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2678
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2687
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public whitelist addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1291
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1294
    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1295
    .local v0, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Lcom/android/internal/widget/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 1296
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_3

    .line 1297
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 1298
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1300
    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1301
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    .line 1303
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    :goto_1
    return-void
.end method

.method public blacklist arrowScroll(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2516
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2517
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_0

    .line 2518
    const/4 v0, 0x0

    goto :goto_3

    .line 2519
    :cond_0
    if-eqz v0, :cond_4

    .line 2520
    const/4 v1, 0x0

    .line 2521
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2523
    if-ne v2, p0, :cond_1

    .line 2524
    const/4 v1, 0x1

    .line 2525
    goto :goto_1

    .line 2522
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 2528
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 2530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2531
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 2534
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    .line 2536
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2536
    const-string v4, "ViewPager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    const/4 v0, 0x0

    .line 2542
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .line 2544
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2546
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_9

    if-eq v2, v0, :cond_9

    .line 2547
    if-ne p1, v4, :cond_7

    .line 2550
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2551
    .local v3, "nextLeft":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2552
    .local v4, "currLeft":I
    if-eqz v0, :cond_5

    if-lt v3, v4, :cond_5

    .line 2553
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_4

    .line 2555
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2557
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :cond_6
    :goto_4
    goto :goto_7

    :cond_7
    if-ne p1, v3, :cond_6

    .line 2560
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2561
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/widget/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2562
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_8

    if-gt v3, v4, :cond_8

    .line 2563
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_5

    .line 2565
    :cond_8
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2567
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_5
    goto :goto_7

    .line 2568
    :cond_9
    if-eq p1, v4, :cond_c

    const/4 v4, 0x1

    if-ne p1, v4, :cond_a

    goto :goto_6

    .line 2571
    :cond_a
    if-eq p1, v3, :cond_b

    const/4 v3, 0x2

    if-ne p1, v3, :cond_d

    .line 2573
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_7

    .line 2570
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->pageLeft()Z

    move-result v1

    .line 2575
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 2576
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ViewPager;->playSoundEffect(I)V

    .line 2578
    :cond_e
    return v1
.end method

.method protected blacklist canScroll(Landroid/view/View;ZIII)Z
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 2458
    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2459
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2460
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2461
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2462
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2464
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 2466
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2467
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v7, p5, v4

    .line 2468
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 2469
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 2470
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 2469
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2471
    return v2

    .line 2464
    .end local v13    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2476
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_2
    move/from16 v1, p3

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public whitelist canScrollHorizontally(I)Z
    .locals 6
    .param p1, "direction"    # I

    .line 2431
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2432
    return v1

    .line 2435
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v0

    .line 2436
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v2

    .line 2437
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_2

    .line 2438
    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 2439
    :cond_2
    if-lez p1, :cond_4

    .line 2440
    int-to-float v4, v0

    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 2442
    :cond_4
    return v1
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2734
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist computeScroll()V
    .locals 5

    .line 1624
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1625
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1626
    .local v0, "oldX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v1

    .line 1627
    .local v1, "oldY":I
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1628
    .local v2, "x":I
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1630
    .local v3, "y":I
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1631
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1633
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1634
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1635
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 1640
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 1641
    return-void

    .line 1645
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1646
    return-void
.end method

.method blacklist dataSetChanged()V
    .locals 12

    .line 828
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 829
    .local v0, "adapterCount":I
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 830
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 831
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 832
    .local v1, "needPopulate":Z
    :goto_0
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 834
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 835
    .local v5, "isUpdating":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 836
    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 837
    .local v7, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v8, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 839
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 840
    goto :goto_2

    .line 843
    :cond_1
    const/4 v9, -0x2

    if-ne v8, v9, :cond_3

    .line 844
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 845
    add-int/lit8 v6, v6, -0x1

    .line 847
    if-nez v5, :cond_2

    .line 848
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v9, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 849
    const/4 v5, 0x1

    .line 852
    :cond_2
    iget-object v9, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 853
    const/4 v1, 0x1

    .line 855
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v10, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_5

    .line 857
    iget v9, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 858
    const/4 v1, 0x1

    goto :goto_2

    .line 863
    :cond_3
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_5

    .line 864
    iget v9, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v10, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_4

    .line 866
    move v2, v8

    .line 869
    :cond_4
    iput v8, v7, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 870
    const/4 v1, 0x1

    .line 835
    .end local v7    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_5
    :goto_2
    add-int/2addr v6, v3

    goto :goto_1

    .line 874
    .end local v6    # "i":I
    :cond_6
    if-eqz v5, :cond_7

    .line 875
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v6, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 878
    :cond_7
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/internal/widget/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 880
    if-eqz v1, :cond_a

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v6

    .line 883
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v6, :cond_9

    .line 884
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 885
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 886
    .local v9, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_8

    .line 887
    const/4 v10, 0x0

    iput v10, v9, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 883
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 891
    .end local v7    # "i":I
    :cond_9
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 892
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 894
    .end local v6    # "childCount":I
    :cond_a
    return-void
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2482
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method blacklist distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 749
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 750
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 751
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2295
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2296
    const/4 v0, 0x0

    .line 2298
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2299
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v3, :cond_0

    .line 2301
    invoke-virtual {v3}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_0

    goto :goto_0

    .line 2325
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2326
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    .line 2302
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2304
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2305
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v4

    .line 2307
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2308
    neg-int v5, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2309
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2310
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2311
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2313
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2315
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    .line 2316
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2318
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2319
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2320
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2321
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2322
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2329
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 2331
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2333
    :cond_4
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .locals 2

    .line 736
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 738
    .local v0, "marginDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    :cond_0
    return-void
.end method

.method public blacklist executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2494
    const/4 v0, 0x0

    .line 2495
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 2496
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 2504
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2505
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2506
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2507
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 2501
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2502
    goto :goto_0

    .line 2498
    :sswitch_2
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2512
    :cond_1
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2724
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2739
    new-instance v0, Lcom/android/internal/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2729
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAdapter()Lcom/android/internal/widget/PagerAdapter;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    return-object v0
.end method

.method protected whitelist getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 624
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    .line 625
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$LayoutParams;

    iget v1, v1, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 626
    .local v1, "result":I
    return v1
.end method

.method public blacklist getCurrent()Ljava/lang/Object;
    .locals 2

    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1317
    .local v0, "itemInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_0
    return-object v1
.end method

.method public greylist getCurrentItem()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    return v0
.end method

.method public blacklist getOffscreenPageLimit()I
    .locals 1

    .line 649
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public blacklist getPageMargin()I
    .locals 1

    .line 705
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    return v0
.end method

.method blacklist infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 1341
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 1342
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1345
    :cond_0
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1343
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 1347
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method blacklist infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 1330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1332
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v3, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    return-object v1

    .line 1330
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1336
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .line 1351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 1353
    .local v1, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v1, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_0

    .line 1354
    return-object v1

    .line 1351
    .end local v1    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1357
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 1

    .line 1362
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1364
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 371
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 372
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2337
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2340
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_6

    .line 2341
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 2342
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v2

    .line 2344
    .local v2, "width":I
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2345
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2346
    .local v4, "itemIndex":I
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 2347
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2349
    .local v6, "offset":F
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2350
    .local v7, "itemCount":I
    iget v8, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2351
    .local v8, "firstPos":I
    iget-object v9, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iget v9, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2352
    .local v9, "lastPos":I
    move v10, v8

    .local v10, "pos":I
    :goto_0
    if-ge v10, v9, :cond_5

    .line 2353
    :goto_1
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-le v10, v11, :cond_0

    if-ge v4, v7, :cond_0

    .line 2354
    iget-object v11, v0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_1

    .line 2359
    :cond_0
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_1

    .line 2360
    iget v11, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    .line 2361
    .local v11, "itemOffset":F
    iget v12, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .local v12, "widthFactor":F
    goto :goto_2

    .line 2363
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    :cond_1
    move v11, v6

    .line 2364
    .restart local v11    # "itemOffset":F
    iget-object v12, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v12, v10}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v12

    .line 2368
    .restart local v12    # "widthFactor":F
    :goto_2
    int-to-float v13, v2

    mul-float/2addr v13, v11

    .line 2369
    .local v13, "scaledOffset":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2370
    const/high16 v14, 0x4b800000    # 1.6777216E7f

    sub-float/2addr v14, v13

    .local v14, "left":F
    goto :goto_3

    .line 2372
    .end local v14    # "left":F
    :cond_2
    int-to-float v14, v2

    mul-float/2addr v14, v12

    add-float/2addr v14, v13

    .line 2375
    .restart local v14    # "left":F
    :goto_3
    add-float v15, v11, v12

    add-float v6, v15, v3

    .line 2377
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    int-to-float v3, v15

    add-float/2addr v3, v14

    move/from16 v17, v4

    .end local v4    # "itemIndex":I
    .local v17, "itemIndex":I
    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 2378
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v14

    move-object/from16 v18, v5

    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v18, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    int-to-float v15, v15

    add-float/2addr v15, v14

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v15, v15, v19

    float-to-int v15, v15

    move/from16 v19, v6

    .end local v6    # "offset":F
    .local v19, "offset":F
    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v3, v4, v5, v15, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2380
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v15, p1

    invoke-virtual {v3, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 2377
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v19    # "offset":F
    .restart local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v6    # "offset":F
    :cond_3
    move-object/from16 v15, p1

    move-object/from16 v18, v5

    move/from16 v19, v6

    .line 2383
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .restart local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v19    # "offset":F
    :goto_4
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v14, v3

    if-lez v3, :cond_4

    .line 2384
    goto :goto_5

    .line 2352
    .end local v11    # "itemOffset":F
    .end local v12    # "widthFactor":F
    .end local v13    # "scaledOffset":F
    .end local v14    # "left":F
    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    goto :goto_0

    .end local v16    # "marginOffset":F
    .end local v17    # "itemIndex":I
    .end local v18    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v19    # "offset":F
    .restart local v3    # "marginOffset":F
    .restart local v4    # "itemIndex":I
    .restart local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v6    # "offset":F
    :cond_5
    move-object/from16 v15, p1

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    goto :goto_5

    .line 2340
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "itemCount":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "pos":I
    .end local v16    # "marginOffset":F
    :cond_6
    move-object/from16 v15, p1

    .line 2388
    :goto_5
    return-void
.end method

.method public whitelist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2745
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2747
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2748
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2750
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v0, :cond_0

    .line 2751
    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2752
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2753
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2755
    :cond_0
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2759
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2761
    const-class v0, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2762
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->canScroll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2764
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2765
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2766
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_RIGHT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2769
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2770
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2771
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_LEFT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2773
    :cond_1
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1813
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 1816
    .local v8, "action":I
    const/4 v0, -0x1

    const/4 v9, 0x0

    const/4 v1, 0x3

    if-eq v8, v1, :cond_f

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    goto/16 :goto_4

    .line 1831
    :cond_0
    if-eqz v8, :cond_2

    .line 1832
    iget-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    .line 1834
    return v10

    .line 1836
    :cond_1
    iget-boolean v1, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_2

    .line 1838
    return v9

    .line 1842
    :cond_2
    const/4 v11, 0x0

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_3

    .line 1944
    :sswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 1853
    :sswitch_1
    iget v12, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1854
    .local v12, "activePointerId":I
    if-ne v12, v0, :cond_3

    .line 1856
    goto/16 :goto_3

    .line 1859
    :cond_3
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 1860
    .local v13, "pointerIndex":I
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 1861
    .local v14, "x":F
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v15, v14, v0

    .line 1862
    .local v15, "dx":F
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1863
    .local v16, "xDiff":F
    invoke-virtual {v7, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1864
    .local v5, "y":F
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 1867
    .local v17, "yDiff":F
    cmpl-float v0, v15, v11

    if-eqz v0, :cond_4

    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v15}, Lcom/android/internal/widget/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v2, 0x0

    float-to-int v3, v15

    float-to-int v4, v14

    float-to-int v1, v5

    .line 1868
    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p0

    move v11, v5

    .end local v5    # "y":F
    .local v11, "y":F
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1870
    iput v14, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1871
    iput v11, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1872
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1873
    return v9

    .line 1867
    .end local v11    # "y":F
    .restart local v5    # "y":F
    :cond_4
    move v11, v5

    .line 1875
    .end local v5    # "y":F
    .restart local v11    # "y":F
    :cond_5
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v0

    cmpl-float v1, v16, v1

    if-lez v1, :cond_7

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, v16

    cmpl-float v1, v1, v17

    if-lez v1, :cond_7

    .line 1877
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1878
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1879
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1880
    const/4 v0, 0x0

    cmpl-float v0, v15, v0

    if-lez v0, :cond_6

    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    .line 1881
    :cond_6
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1882
    iput v11, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1883
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 1884
    :cond_7
    int-to-float v0, v0

    cmpl-float v0, v17, v0

    if-lez v0, :cond_8

    .line 1890
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1892
    :cond_8
    :goto_1
    iget-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_d

    .line 1894
    invoke-direct {v6, v14, v11}, Lcom/android/internal/widget/ViewPager;->performDrag(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1895
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    goto/16 :goto_3

    .line 1906
    .end local v11    # "y":F
    .end local v12    # "activePointerId":I
    .end local v13    # "pointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "dx":F
    .end local v16    # "xDiff":F
    .end local v17    # "yDiff":F
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1907
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1908
    invoke-virtual {v7, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1909
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1911
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1912
    iget v0, v6, Lcom/android/internal/widget/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1913
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/android/internal/widget/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_9

    .line 1915
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1916
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1917
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1918
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1919
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 1920
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    goto :goto_3

    .line 1921
    :cond_9
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 1922
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    goto :goto_2

    .line 1933
    :cond_a
    invoke-direct {v6, v9}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 1934
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1940
    goto :goto_3

    .line 1924
    :cond_b
    :goto_2
    iput-boolean v10, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1925
    invoke-direct {v6, v10}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 1926
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    .line 1927
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1929
    :cond_c
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    .line 1930
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    iget v2, v6, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    .line 1948
    :cond_d
    :goto_3
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    .line 1949
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1951
    :cond_e
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1957
    iget-boolean v0, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1819
    :cond_f
    :goto_4
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 1820
    iput-boolean v9, v6, Lcom/android/internal/widget/ViewPager;->mIsUnableToDrag:Z

    .line 1821
    iput v0, v6, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1822
    iget-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 1823
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1824
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1826
    :cond_10
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1502
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1503
    .local v1, "count":I
    sub-int v2, p4, p2

    .line 1504
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 1505
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1506
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1507
    .local v5, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1508
    .local v6, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1509
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v8

    .line 1511
    .local v8, "scrollX":I
    const/4 v9, 0x0

    .line 1515
    .local v9, "decorCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v11, 0x8

    if-ge v10, v1, :cond_2

    .line 1516
    invoke-virtual {v0, v10}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1517
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_1

    .line 1518
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1519
    .local v11, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    const/4 v13, 0x0

    .line 1520
    .local v13, "childLeft":I
    const/4 v14, 0x0

    .line 1521
    .local v14, "childTop":I
    iget-boolean v15, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_0

    .line 1522
    iget v15, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    .line 1523
    .local v15, "hgrav":I
    move/from16 v16, v13

    .end local v13    # "childLeft":I
    .local v16, "childLeft":I
    iget v13, v11, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1524
    .local v13, "vgrav":I
    packed-switch v15, :pswitch_data_0

    .line 1526
    :pswitch_0
    move-object/from16 v18, v11

    .end local v11    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .local v18, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    move/from16 v17, v4

    .line 1527
    .end local v16    # "childLeft":I
    .local v17, "childLeft":I
    goto :goto_1

    .line 1537
    .end local v17    # "childLeft":I
    .end local v18    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v11    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v16    # "childLeft":I
    :pswitch_1
    sub-int v17, v2, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    .line 1538
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v6, v6, v16

    move-object/from16 v18, v11

    goto :goto_1

    .line 1529
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_2
    move/from16 v17, v4

    .line 1530
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v4, v4, v16

    .line 1531
    move-object/from16 v18, v11

    goto :goto_1

    .line 1533
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v2, v17

    move-object/from16 v18, v11

    .end local v11    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .restart local v18    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    div-int/lit8 v11, v17, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1535
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    nop

    .line 1541
    :goto_1
    sparse-switch v13, :sswitch_data_0

    .line 1543
    move v11, v5

    .line 1544
    .end local v14    # "childTop":I
    .local v11, "childTop":I
    goto :goto_2

    .line 1554
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_0
    sub-int v11, v3, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v11, v11, v16

    .line 1555
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v7, v14

    goto :goto_2

    .line 1546
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_1
    move v11, v5

    .line 1547
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v5, v14

    .line 1548
    goto :goto_2

    .line 1550
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v3, v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1552
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    nop

    .line 1558
    :goto_2
    add-int v14, v17, v8

    .line 1559
    .end local v17    # "childLeft":I
    .local v14, "childLeft":I
    nop

    .line 1560
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v4

    .end local v4    # "paddingLeft":I
    .local v17, "paddingLeft":I
    add-int v4, v14, v16

    .line 1561
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v19, v5

    .end local v5    # "paddingTop":I
    .local v19, "paddingTop":I
    add-int v5, v11, v16

    .line 1559
    invoke-virtual {v12, v14, v11, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1562
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    move/from16 v5, v19

    goto :goto_3

    .line 1521
    .end local v15    # "hgrav":I
    .end local v17    # "paddingLeft":I
    .end local v18    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v19    # "paddingTop":I
    .restart local v4    # "paddingLeft":I
    .restart local v5    # "paddingTop":I
    .local v11, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .local v13, "childLeft":I
    .local v14, "childTop":I
    :cond_0
    move-object/from16 v18, v11

    move/from16 v16, v13

    .line 1515
    .end local v11    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    :cond_1
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1567
    .end local v10    # "i":I
    :cond_2
    sub-int v10, v2, v4

    sub-int/2addr v10, v6

    .line 1569
    .local v10, "childWidth":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v1, :cond_8

    .line 1570
    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1571
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-ne v15, v11, :cond_3

    .line 1572
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v23, v4

    goto/16 :goto_7

    .line 1575
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1576
    .local v15, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v11, v15, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v11, :cond_4

    .line 1577
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v23, v4

    goto :goto_7

    .line 1580
    :cond_4
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1581
    .local v11, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-nez v11, :cond_5

    .line 1582
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v23, v4

    goto :goto_7

    .line 1585
    :cond_5
    iget-boolean v13, v15, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v13, :cond_6

    .line 1588
    const/4 v13, 0x0

    iput-boolean v13, v15, Lcom/android/internal/widget/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1589
    int-to-float v13, v10

    move/from16 v18, v1

    .end local v1    # "count":I
    .local v18, "count":I
    iget v1, v15, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v1

    float-to-int v1, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1592
    .local v1, "widthSpec":I
    sub-int v17, v3, v5

    move/from16 v19, v2

    .end local v2    # "width":I
    .local v19, "width":I
    sub-int v2, v17, v7

    invoke-static {v2, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1595
    .local v2, "heightSpec":I
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_5

    .line 1585
    .end local v18    # "count":I
    .end local v19    # "width":I
    .local v1, "count":I
    .local v2, "width":I
    :cond_6
    move/from16 v18, v1

    move/from16 v19, v2

    .line 1598
    .end local v1    # "count":I
    .end local v2    # "width":I
    .restart local v18    # "count":I
    .restart local v19    # "width":I
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1599
    .local v1, "childMeasuredWidth":I
    int-to-float v2, v10

    iget v13, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v13

    float-to-int v2, v2

    .line 1601
    .local v2, "startOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1602
    const/high16 v13, 0x1000000

    sub-int/2addr v13, v6

    sub-int/2addr v13, v2

    sub-int/2addr v13, v1

    .restart local v13    # "childLeft":I
    goto :goto_6

    .line 1604
    .end local v13    # "childLeft":I
    :cond_7
    add-int v13, v4, v2

    .line 1607
    .restart local v13    # "childLeft":I
    :goto_6
    move/from16 v17, v5

    .line 1608
    .local v17, "childTop":I
    move/from16 v20, v2

    .end local v2    # "startOffset":I
    .local v20, "startOffset":I
    add-int v2, v13, v1

    .line 1609
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v22, v1

    move/from16 v23, v4

    move/from16 v1, v17

    .end local v4    # "paddingLeft":I
    .end local v17    # "childTop":I
    .local v1, "childTop":I
    .local v22, "childMeasuredWidth":I
    .local v23, "paddingLeft":I
    add-int v4, v1, v21

    .line 1608
    invoke-virtual {v14, v13, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 1569
    .end local v1    # "childTop":I
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v13    # "childLeft":I
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v20    # "startOffset":I
    .end local v22    # "childMeasuredWidth":I
    :goto_7
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v4, v23

    const/16 v11, 0x8

    goto/16 :goto_4

    .end local v18    # "count":I
    .end local v19    # "width":I
    .end local v23    # "paddingLeft":I
    .local v1, "count":I
    .local v2, "width":I
    .restart local v4    # "paddingLeft":I
    :cond_8
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v23, v4

    .line 1612
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v12    # "i":I
    .restart local v18    # "count":I
    .restart local v19    # "width":I
    .restart local v23    # "paddingLeft":I
    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mTopPageBounds:I

    .line 1613
    sub-int v1, v3, v7

    iput v1, v0, Lcom/android/internal/widget/ViewPager;->mBottomPageBounds:I

    .line 1614
    iput v9, v0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    .line 1616
    iget-boolean v1, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_9

    .line 1617
    iget v1, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_8

    .line 1616
    :cond_9
    const/4 v2, 0x0

    .line 1619
    :goto_8
    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 1620
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1373
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1374
    move/from16 v4, p2

    invoke-static {v1, v4}, Lcom/android/internal/widget/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1373
    invoke-virtual {v0, v3, v5}, Lcom/android/internal/widget/ViewPager;->setMeasuredDimension(II)V

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1377
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1378
    .local v5, "maxGutterSize":I
    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mGutterSize:I

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1382
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1389
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v8

    .line 1390
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v10, 0x8

    if-ge v9, v8, :cond_e

    .line 1391
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1392
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_c

    .line 1393
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1394
    .local v10, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v10, :cond_b

    iget-boolean v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_b

    .line 1395
    iget v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1396
    .local v13, "hgrav":I
    iget v14, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1397
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1398
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1399
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_1

    const/16 v1, 0x50

    if-ne v14, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 1400
    .local v1, "consumeVertical":Z
    :goto_2
    const/4 v11, 0x3

    if-eq v13, v11, :cond_3

    const/4 v11, 0x5

    if-ne v13, v11, :cond_2

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v11, 0x1

    .line 1402
    .local v11, "consumeHorizontal":Z
    :goto_4
    if-eqz v1, :cond_4

    .line 1403
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_5

    .line 1404
    :cond_4
    if-eqz v11, :cond_5

    .line 1405
    const/high16 v16, 0x40000000    # 2.0f

    .line 1408
    :cond_5
    :goto_5
    move/from16 v17, v6

    .line 1409
    .local v17, "widthSize":I
    move/from16 v18, v7

    .line 1410
    .local v18, "heightSize":I
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_7

    .line 1411
    const/high16 v15, 0x40000000    # 2.0f

    .line 1412
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1413
    iget v2, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_6

    .line 1412
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_6
    move/from16 v2, v17

    goto :goto_6

    .line 1410
    :cond_7
    move/from16 v2, v17

    .line 1416
    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_6
    iget v3, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_9

    .line 1417
    const/high16 v16, 0x40000000    # 2.0f

    .line 1418
    iget v3, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 1419
    iget v3, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    move v4, v3

    move/from16 v3, v16

    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_7

    .line 1418
    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_8
    move/from16 v3, v16

    move/from16 v4, v18

    goto :goto_7

    .line 1416
    :cond_9
    move/from16 v3, v16

    move/from16 v4, v18

    .line 1422
    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .local v3, "heightMode":I
    .local v4, "heightSize":I
    :goto_7
    move/from16 v16, v5

    .end local v5    # "maxGutterSize":I
    .local v16, "maxGutterSize":I
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1423
    .local v5, "widthSpec":I
    move/from16 v17, v2

    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1424
    .local v2, "heightSpec":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1426
    if-eqz v1, :cond_a

    .line 1427
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v7, v7, v18

    goto :goto_8

    .line 1428
    :cond_a
    if-eqz v11, :cond_d

    .line 1429
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v6, v6, v18

    goto :goto_8

    .line 1394
    .end local v1    # "consumeVertical":Z
    .end local v2    # "heightSpec":I
    .end local v4    # "heightSize":I
    .end local v11    # "consumeHorizontal":Z
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v16    # "maxGutterSize":I
    .end local v17    # "widthSize":I
    .end local v19    # "measuredWidth":I
    .local v3, "measuredWidth":I
    .local v5, "maxGutterSize":I
    :cond_b
    move/from16 v19, v3

    move/from16 v16, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    goto :goto_8

    .line 1392
    .end local v10    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_c
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1390
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    :cond_d
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    move/from16 v3, v19

    const/4 v1, 0x0

    goto/16 :goto_0

    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_e
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1435
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v9    # "i":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ViewPager;->mChildWidthMeasureSpec:I

    .line 1436
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    .line 1439
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1441
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1445
    .end local v8    # "size":I
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v2, :cond_11

    .line 1446
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1447
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_10

    .line 1451
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1452
    .local v5, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    if-eqz v5, :cond_f

    iget-boolean v8, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_10

    .line 1453
    :cond_f
    int-to-float v8, v6

    iget v9, v5, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1455
    .local v8, "widthSpec":I
    iget v9, v0, Lcom/android/internal/widget/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1445
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v8    # "widthSpec":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1459
    .end local v3    # "i":I
    :cond_11
    return-void
.end method

.method protected blacklist onPageScrolled(IFI)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1699
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_2

    .line 1700
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1701
    .local v0, "scrollX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1702
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1703
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v3

    .line 1704
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v4

    .line 1705
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 1706
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1707
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1708
    .local v7, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v8, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_0

    goto :goto_2

    .line 1710
    :cond_0
    iget v8, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    .line 1711
    .local v8, "hgrav":I
    const/4 v9, 0x0

    .line 1712
    .local v9, "childLeft":I
    packed-switch v8, :pswitch_data_0

    .line 1714
    :pswitch_0
    move v10, v1

    .line 1715
    .end local v9    # "childLeft":I
    .local v10, "childLeft":I
    goto :goto_1

    .line 1725
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_1
    sub-int v10, v3, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1726
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    goto :goto_1

    .line 1717
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_2
    move v10, v1

    .line 1718
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v1, v9

    .line 1719
    goto :goto_1

    .line 1721
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_3
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v3, v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1723
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    nop

    .line 1729
    :goto_1
    add-int/2addr v10, v0

    .line 1731
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v10, v9

    .line 1732
    .local v9, "childOffset":I
    if-eqz v9, :cond_1

    .line 1733
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1705
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v8    # "hgrav":I
    .end local v9    # "childOffset":I
    .end local v10    # "childLeft":I
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1738
    .end local v0    # "scrollX":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "width":I
    .end local v4    # "childCount":I
    .end local v5    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_3

    .line 1739
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1741
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_4

    .line 1742
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1745
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_6

    .line 1746
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v0

    .line 1747
    .restart local v0    # "scrollX":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    .line 1748
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_6

    .line 1749
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1750
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1752
    .local v4, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget-boolean v5, v4, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_5

    goto :goto_4

    .line 1754
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1755
    .local v5, "transformPos":F
    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    invoke-interface {v6, v3, v5}, Lcom/android/internal/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1748
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    .end local v5    # "transformPos":F
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1759
    .end local v0    # "scrollX":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mCalledSuper:Z

    .line 1760
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2698
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v0

    .line 2699
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 2700
    const/4 v1, 0x0

    .line 2701
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2702
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_0

    .line 2704
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 2705
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2706
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2708
    .restart local v3    # "end":I
    :goto_0
    move v4, v1

    .local v4, "i":I
    :goto_1
    if-eq v4, v3, :cond_2

    .line 2709
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2710
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2711
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 2712
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 2713
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2714
    const/4 v7, 0x1

    return v7

    .line 2708
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1
    add-int/2addr v4, v2

    goto :goto_1

    .line 2719
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1271
    instance-of v0, p1, Lcom/android/internal/widget/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1272
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1273
    return-void

    .line 1276
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ViewPager$SavedState;

    .line 1277
    .local v0, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1279
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v1, :cond_1

    .line 1280
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1281
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    goto :goto_0

    .line 1283
    :cond_1
    iget v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 1284
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1285
    iget-object v1, v0, Lcom/android/internal/widget/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1287
    :goto_0
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 2617
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2619
    if-nez p1, :cond_0

    .line 2620
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    goto :goto_0

    .line 2622
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    .line 2624
    :goto_0
    return-void
.end method

.method public whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1260
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1261
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/internal/widget/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1262
    .local v1, "ss":Lcom/android/internal/widget/ViewPager$SavedState;
    iget v2, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iput v2, v1, Lcom/android/internal/widget/ViewPager$SavedState;->position:I

    .line 1263
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_0

    .line 1264
    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/widget/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1266
    :cond_0
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1463
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1466
    if-eq p1, p3, :cond_0

    .line 1467
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1469
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1962
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1965
    return v3

    .line 1968
    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1973
    :cond_1
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2

    .line 1974
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1976
    :cond_2
    iget-object v2, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1978
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 1979
    .local v2, "action":I
    const/4 v4, 0x0

    .line 1981
    .local v4, "needsInvalidate":Z
    and-int/lit16 v5, v2, 0xff

    const/4 v6, -0x1

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 2077
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2078
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    goto/16 :goto_2

    .line 2070
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 2071
    .local v3, "index":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 2072
    .local v5, "x":F
    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2073
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2074
    goto/16 :goto_2

    .line 2060
    .end local v3    # "index":I
    .end local v5    # "x":F
    :pswitch_3
    iget-boolean v5, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v5, :cond_6

    .line 2061
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-direct {v0, v5, v7, v3, v3}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 2062
    iput v6, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2063
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2064
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2065
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2066
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1994
    :pswitch_4
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-nez v3, :cond_4

    .line 1995
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1996
    .local v3, "pointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 1997
    .restart local v5    # "x":F
    iget v6, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1998
    .local v6, "xDiff":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1999
    .local v8, "y":F
    iget v9, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2001
    .local v9, "yDiff":F
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v6, v10

    if-lez v10, :cond_4

    cmpl-float v10, v6, v9

    if-lez v10, :cond_4

    .line 2003
    iput-boolean v7, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    .line 2004
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2005
    iget v10, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float v11, v5, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_0

    .line 2006
    :cond_3
    iget v11, v0, Lcom/android/internal/widget/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_0
    iput v10, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 2007
    iput v8, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 2008
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 2009
    invoke-direct {v0, v7}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2012
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 2013
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_4

    .line 2014
    invoke-interface {v10, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2019
    .end local v3    # "pointerIndex":I
    .end local v5    # "x":F
    .end local v6    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_4
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_6

    .line 2021
    iget v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 2022
    .local v3, "activePointerIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 2023
    .restart local v5    # "x":F
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {v0, v5, v6}, Lcom/android/internal/widget/ViewPager;->performDrag(FF)Z

    move-result v6

    or-int/2addr v4, v6

    .line 2024
    .end local v3    # "activePointerIndex":I
    .end local v5    # "x":F
    goto/16 :goto_2

    .line 2027
    :pswitch_5
    iget-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mIsBeingDragged:Z

    if-eqz v3, :cond_6

    .line 2028
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2029
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v8, v0, Lcom/android/internal/widget/ViewPager;->mMaximumVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v5, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2030
    iget v5, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    float-to-int v5, v5

    .line 2032
    .local v5, "initialVelocity":I
    iput-boolean v7, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 2034
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollStart()I

    move-result v8

    int-to-float v8, v8

    .line 2035
    .local v8, "scrollStart":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v8, v9

    .line 2036
    .local v9, "scrolledPages":F
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->infoForFirstVisiblePage()Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v10

    .line 2037
    .local v10, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v11, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    .line 2039
    .local v11, "currentPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2040
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v9

    iget v13, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .local v12, "nextPageOffset":F
    goto :goto_1

    .line 2042
    .end local v12    # "nextPageOffset":F
    :cond_5
    iget v12, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->offset:F

    sub-float v12, v9, v12

    iget v13, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v12, v13

    .line 2045
    .restart local v12    # "nextPageOffset":F
    :goto_1
    iget v13, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2046
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2047
    .local v14, "x":F
    iget v15, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2048
    .local v15, "totalDelta":I
    invoke-direct {v0, v11, v12, v5, v15}, Lcom/android/internal/widget/ViewPager;->determineTargetPage(IFII)I

    move-result v6

    .line 2050
    .local v6, "nextPage":I
    invoke-virtual {v0, v6, v7, v7, v5}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    .line 2052
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 2053
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->endDrag()V

    .line 2054
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2055
    iget-object v7, v0, Lcom/android/internal/widget/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2056
    const/4 v4, 0x1

    .line 2057
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "initialVelocity":I
    .end local v6    # "nextPage":I
    .end local v8    # "scrollStart":F
    .end local v9    # "scrolledPages":F
    .end local v10    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v11    # "currentPage":I
    .end local v12    # "nextPageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_2

    .line 1983
    :pswitch_6
    iget-object v5, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1984
    iput-boolean v3, v0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 1988
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionX:F

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionX:F

    .line 1989
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mInitialMotionY:F

    iput v5, v0, Lcom/android/internal/widget/ViewPager;->mLastMotionY:F

    .line 1990
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/ViewPager;->mActivePointerId:I

    .line 1991
    nop

    .line 2081
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 2082
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 2084
    :cond_7
    const/4 v3, 0x1

    return v3

    .line 1970
    .end local v2    # "action":I
    .end local v4    # "needsInvalidate":Z
    :cond_8
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method blacklist pageLeft()Z
    .locals 3

    .line 2608
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method blacklist pageRight()Z
    .locals 3

    .line 2612
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    iget v1, p0, Lcom/android/internal/widget/ViewPager;->mLeftIncr:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public whitelist performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 2777
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2778
    return v1

    .line 2781
    :cond_0
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 2798
    return v0

    .line 2791
    :sswitch_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2792
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2793
    return v1

    .line 2795
    :cond_1
    return v0

    .line 2784
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2785
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    .line 2786
    return v1

    .line 2788
    :cond_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
        0x1020039 -> :sswitch_0
        0x102003b -> :sswitch_1
    .end sparse-switch
.end method

.method public blacklist populate()V
    .locals 1

    .line 897
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 898
    return-void
.end method

.method blacklist populate(I)V
    .locals 20
    .param p1, "newCurrentItem"    # I

    .line 901
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 902
    .local v0, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v3, 0x2

    .line 903
    .local v3, "focusDirection":I
    iget v4, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v4, v2, :cond_1

    .line 904
    if-ge v4, v2, :cond_0

    const/16 v5, 0x42

    goto :goto_0

    :cond_0
    const/16 v5, 0x11

    :goto_0
    move v3, v5

    .line 905
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/ViewPager;->infoForPosition(I)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 906
    iput v2, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    move v4, v3

    move-object v3, v0

    goto :goto_1

    .line 903
    :cond_1
    move v4, v3

    move-object v3, v0

    .line 909
    .end local v0    # "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v4, "focusDirection":I
    :goto_1
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    if-nez v0, :cond_2

    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 911
    return-void

    .line 918
    :cond_2
    iget-boolean v0, v1, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_3

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 921
    return-void

    .line 927
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_4

    .line 928
    return-void

    .line 931
    :cond_4
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 933
    iget v5, v1, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 934
    .local v5, "pageLimit":I
    const/4 v0, 0x0

    iget v6, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    sub-int/2addr v6, v5

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 935
    .local v6, "startPos":I
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v7

    .line 936
    .local v7, "N":I
    add-int/lit8 v0, v7, -0x1

    iget v8, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/2addr v8, v5

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 938
    .local v8, "endPos":I
    iget v0, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    if-ne v7, v0, :cond_27

    .line 954
    const/4 v0, -0x1

    .line 955
    .local v0, "curIndex":I
    const/4 v9, 0x0

    .line 956
    .local v9, "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_2
    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_6

    .line 957
    iget-object v10, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 958
    .local v10, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v11, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v12, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-lt v11, v12, :cond_5

    .line 959
    iget v11, v10, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v12, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_6

    move-object v9, v10

    goto :goto_3

    .line 956
    .end local v10    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 964
    :cond_6
    :goto_3
    if-nez v9, :cond_7

    if-lez v7, :cond_7

    .line 965
    iget v10, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v1, v10, v0}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v9

    .line 971
    :cond_7
    if-eqz v9, :cond_1d

    .line 972
    const/4 v12, 0x0

    .line 973
    .local v12, "extraWidthLeft":F
    add-int/lit8 v13, v0, -0x1

    .line 974
    .local v13, "itemIndex":I
    if-ltz v13, :cond_8

    iget-object v14, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    .line 975
    .local v14, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v15

    .line 976
    .local v15, "clientWidth":I
    const/high16 v16, 0x40000000    # 2.0f

    if-gtz v15, :cond_9

    move/from16 v17, v0

    const/4 v11, 0x0

    goto :goto_5

    .line 977
    :cond_9
    iget v11, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    sub-float v11, v16, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    move/from16 v17, v0

    .end local v0    # "curIndex":I
    .local v17, "curIndex":I
    int-to-float v0, v15

    div-float/2addr v10, v0

    add-float/2addr v11, v10

    :goto_5
    move v0, v11

    .line 978
    .local v0, "leftWidthNeeded":F
    iget v10, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v10, v10, -0x1

    move v11, v10

    move/from16 v10, v17

    .end local v17    # "curIndex":I
    .local v10, "curIndex":I
    .local v11, "pos":I
    :goto_6
    if-ltz v11, :cond_11

    .line 979
    cmpl-float v17, v12, v0

    if-ltz v17, :cond_c

    if-ge v11, v6, :cond_c

    .line 980
    if-nez v14, :cond_a

    .line 981
    move/from16 v18, v0

    goto/16 :goto_b

    .line 983
    :cond_a
    move/from16 v18, v0

    .end local v0    # "leftWidthNeeded":F
    .local v18, "leftWidthNeeded":F
    iget v0, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v0, :cond_10

    iget-boolean v0, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v0, :cond_10

    .line 984
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 985
    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v2, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 990
    add-int/lit8 v13, v13, -0x1

    .line 991
    add-int/lit8 v10, v10, -0x1

    .line 992
    if-ltz v13, :cond_b

    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    :goto_7
    move-object v14, v0

    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_a

    .line 979
    .end local v18    # "leftWidthNeeded":F
    .local v0, "leftWidthNeeded":F
    .restart local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_c
    move/from16 v18, v0

    .line 994
    .end local v0    # "leftWidthNeeded":F
    .restart local v18    # "leftWidthNeeded":F
    if-eqz v14, :cond_e

    iget v0, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v11, v0, :cond_e

    .line 995
    iget v0, v14, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v0

    .line 996
    add-int/lit8 v13, v13, -0x1

    .line 997
    if-ltz v13, :cond_d

    iget-object v0, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    move-object v14, v0

    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v0, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    goto :goto_a

    .line 999
    .end local v0    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_e
    add-int/lit8 v0, v13, 0x1

    invoke-virtual {v1, v11, v0}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v0

    .line 1000
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v0    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget v2, v0, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v2

    .line 1001
    add-int/lit8 v10, v10, 0x1

    .line 1002
    if-ltz v13, :cond_f

    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_9
    move-object v0, v2

    move-object v14, v0

    .line 978
    .end local v0    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_10
    :goto_a
    add-int/lit8 v11, v11, -0x1

    move/from16 v2, p1

    move/from16 v0, v18

    goto :goto_6

    .end local v18    # "leftWidthNeeded":F
    .local v0, "leftWidthNeeded":F
    :cond_11
    move/from16 v18, v0

    .line 1006
    .end local v0    # "leftWidthNeeded":F
    .end local v11    # "pos":I
    .restart local v18    # "leftWidthNeeded":F
    :goto_b
    iget v0, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    .line 1007
    .local v0, "extraWidthRight":F
    add-int/lit8 v2, v10, 0x1

    .line 1008
    .end local v13    # "itemIndex":I
    .local v2, "itemIndex":I
    cmpg-float v11, v0, v16

    if-gez v11, :cond_1c

    .line 1009
    iget-object v11, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_12

    iget-object v11, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    .line 1010
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v11, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_c
    if-gtz v15, :cond_13

    const/4 v13, 0x0

    goto :goto_d

    .line 1011
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    int-to-float v14, v15

    div-float/2addr v13, v14

    add-float v13, v13, v16

    :goto_d
    nop

    .line 1012
    .local v13, "rightWidthNeeded":F
    iget v14, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int/lit8 v14, v14, 0x1

    .local v14, "pos":I
    :goto_e
    if-ge v14, v7, :cond_1b

    .line 1013
    cmpl-float v16, v0, v13

    if-ltz v16, :cond_17

    if-le v14, v8, :cond_17

    .line 1014
    if-nez v11, :cond_14

    .line 1015
    move/from16 v16, v5

    move/from16 v19, v6

    goto/16 :goto_13

    .line 1017
    :cond_14
    move/from16 v16, v5

    .end local v5    # "pageLimit":I
    .local v16, "pageLimit":I
    iget v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v14, v5, :cond_16

    iget-boolean v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_16

    .line 1018
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1019
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    move/from16 v19, v6

    .end local v6    # "startPos":I
    .local v19, "startPos":I
    iget-object v6, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v1, v14, v6}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1024
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_15

    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_f

    :cond_15
    const/4 v5, 0x0

    :goto_f
    move-object v11, v5

    goto :goto_12

    .line 1017
    .end local v19    # "startPos":I
    .restart local v6    # "startPos":I
    :cond_16
    move/from16 v19, v6

    .end local v6    # "startPos":I
    .restart local v19    # "startPos":I
    goto :goto_12

    .line 1013
    .end local v16    # "pageLimit":I
    .end local v19    # "startPos":I
    .restart local v5    # "pageLimit":I
    .restart local v6    # "startPos":I
    :cond_17
    move/from16 v16, v5

    move/from16 v19, v6

    .line 1026
    .end local v5    # "pageLimit":I
    .end local v6    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v19    # "startPos":I
    if-eqz v11, :cond_19

    iget v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    if-ne v14, v5, :cond_19

    .line 1027
    iget v5, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v5

    .line 1028
    add-int/lit8 v2, v2, 0x1

    .line 1029
    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_18

    iget-object v5, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_10

    :cond_18
    const/4 v5, 0x0

    :goto_10
    move-object v11, v5

    goto :goto_12

    .line 1031
    :cond_19
    invoke-virtual {v1, v14, v2}, Lcom/android/internal/widget/ViewPager;->addNewItem(II)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v5

    .line 1032
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .local v5, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v2, v2, 0x1

    .line 1033
    iget v6, v5, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v6

    .line 1034
    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1a

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ViewPager$ItemInfo;

    goto :goto_11

    :cond_1a
    const/4 v6, 0x0

    :goto_11
    move-object v11, v6

    .line 1012
    .end local v5    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .restart local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :goto_12
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v6, v19

    goto/16 :goto_e

    .end local v16    # "pageLimit":I
    .end local v19    # "startPos":I
    .local v5, "pageLimit":I
    .restart local v6    # "startPos":I
    :cond_1b
    move/from16 v16, v5

    move/from16 v19, v6

    .line 1039
    .end local v5    # "pageLimit":I
    .end local v6    # "startPos":I
    .end local v13    # "rightWidthNeeded":F
    .end local v14    # "pos":I
    .restart local v16    # "pageLimit":I
    .restart local v19    # "startPos":I
    :goto_13
    move-object v14, v11

    goto :goto_14

    .line 1008
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v19    # "startPos":I
    .restart local v5    # "pageLimit":I
    .restart local v6    # "startPos":I
    .local v14, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1c
    move/from16 v16, v5

    move/from16 v19, v6

    .line 1039
    .end local v5    # "pageLimit":I
    .end local v6    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v19    # "startPos":I
    :goto_14
    invoke-direct {v1, v9, v10, v3}, Lcom/android/internal/widget/ViewPager;->calculatePageOffsets(Lcom/android/internal/widget/ViewPager$ItemInfo;ILcom/android/internal/widget/ViewPager$ItemInfo;)V

    move v0, v10

    goto :goto_15

    .line 971
    .end local v2    # "itemIndex":I
    .end local v10    # "curIndex":I
    .end local v12    # "extraWidthLeft":F
    .end local v14    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v15    # "clientWidth":I
    .end local v16    # "pageLimit":I
    .end local v18    # "leftWidthNeeded":F
    .end local v19    # "startPos":I
    .local v0, "curIndex":I
    .restart local v5    # "pageLimit":I
    .restart local v6    # "startPos":I
    :cond_1d
    move/from16 v17, v0

    move/from16 v16, v5

    move/from16 v19, v6

    .line 1049
    .end local v5    # "pageLimit":I
    .end local v6    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v19    # "startPos":I
    :goto_15
    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v5, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eqz v9, :cond_1e

    iget-object v6, v9, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_16

    :cond_1e
    const/4 v6, 0x0

    :goto_16
    invoke-virtual {v2, v1, v5, v6}, Lcom/android/internal/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1051
    iget-object v2, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v2

    .line 1056
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v2, :cond_21

    .line 1057
    invoke-virtual {v1, v5}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1058
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 1059
    .local v10, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iput v5, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->childIndex:I

    .line 1060
    iget-boolean v11, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_1f

    iget v11, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_20

    .line 1062
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    .line 1063
    .restart local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v11, :cond_20

    .line 1064
    iget v13, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->widthFactor:F

    iput v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->widthFactor:F

    .line 1065
    iget v13, v11, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iput v13, v10, Lcom/android/internal/widget/ViewPager$LayoutParams;->position:I

    goto :goto_18

    .line 1060
    .end local v11    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    :cond_1f
    const/4 v12, 0x0

    .line 1056
    .end local v6    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_20
    :goto_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 1069
    .end local v5    # "i":I
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->sortChildDrawingOrder()V

    .line 1071
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v5

    .line 1073
    .local v5, "currentFocused":Landroid/view/View;
    if-eqz v5, :cond_22

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/ViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v11

    goto :goto_19

    :cond_22
    const/4 v11, 0x0

    :goto_19
    move-object v6, v11

    .line 1074
    .local v6, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    if-eqz v6, :cond_23

    iget v10, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v11, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v10, v11, :cond_26

    .line 1075
    :cond_23
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v11

    if-ge v10, v11, :cond_26

    .line 1076
    invoke-virtual {v1, v10}, Lcom/android/internal/widget/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1077
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v1, v11}, Lcom/android/internal/widget/ViewPager;->infoForChild(Landroid/view/View;)Lcom/android/internal/widget/ViewPager$ItemInfo;

    move-result-object v6

    .line 1078
    if-eqz v6, :cond_25

    iget v12, v6, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget v13, v1, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v12, v13, :cond_25

    .line 1080
    if-nez v5, :cond_24

    .line 1081
    const/4 v12, 0x0

    .local v12, "focusRect":Landroid/graphics/Rect;
    goto :goto_1b

    .line 1083
    .end local v12    # "focusRect":Landroid/graphics/Rect;
    :cond_24
    iget-object v12, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 1084
    .restart local v12    # "focusRect":Landroid/graphics/Rect;
    iget-object v13, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v13}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1085
    iget-object v13, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v13}, Lcom/android/internal/widget/ViewPager;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1086
    iget-object v13, v1, Lcom/android/internal/widget/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11, v13}, Lcom/android/internal/widget/ViewPager;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1088
    :goto_1b
    invoke-virtual {v11, v4, v12}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 1089
    goto :goto_1c

    .line 1075
    .end local v11    # "child":Landroid/view/View;
    .end local v12    # "focusRect":Landroid/graphics/Rect;
    :cond_25
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    .line 1095
    .end local v5    # "currentFocused":Landroid/view/View;
    .end local v6    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v10    # "i":I
    :cond_26
    :goto_1c
    return-void

    .line 941
    .end local v0    # "curIndex":I
    .end local v2    # "childCount":I
    .end local v9    # "curItem":Lcom/android/internal/widget/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v19    # "startPos":I
    .local v5, "pageLimit":I
    .local v6, "startPos":I
    :cond_27
    move/from16 v16, v5

    move/from16 v19, v6

    .end local v5    # "pageLimit":I
    .end local v6    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v19    # "startPos":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .local v0, "resName":Ljava/lang/String;
    goto :goto_1d

    .line 942
    .end local v0    # "resName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 943
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 945
    .local v0, "resName":Ljava/lang/String;
    :goto_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pager id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pager class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 949
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Problematic adapter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 950
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1322
    iget-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    .line 1325
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1327
    :goto_0
    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/widget/PagerAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/android/internal/widget/PagerAdapter;

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 396
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 397
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager$ItemInfo;

    .line 400
    .local v2, "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v4, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->position:I

    iget-object v5, v2, Lcom/android/internal/widget/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 398
    .end local v2    # "ii":Lcom/android/internal/widget/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 403
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/widget/ViewPager;->removeNonDecorViews()V

    .line 405
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 406
    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/ViewPager;->scrollTo(II)V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 410
    .local v0, "oldAdapter":Lcom/android/internal/widget/PagerAdapter;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    .line 411
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 413
    if-eqz p1, :cond_5

    .line 414
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 415
    new-instance v2, Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/widget/ViewPager$PagerObserver;-><init>(Lcom/android/internal/widget/ViewPager;Lcom/android/internal/widget/ViewPager$PagerObserver-IA;)V

    iput-object v2, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mObserver:Lcom/android/internal/widget/ViewPager$PagerObserver;

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 418
    iput-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 419
    iget-boolean v2, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 420
    .local v2, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    .line 421
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v5}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/ViewPager;->mExpectedAdapterCount:I

    .line 422
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_3

    .line 423
    iget-object v5, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget-object v6, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 424
    iget v5, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v1, v4}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 425
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mRestoredCurItem:I

    .line 426
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 427
    iput-object v3, p0, Lcom/android/internal/widget/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 428
    :cond_3
    if-nez v2, :cond_4

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    goto :goto_1

    .line 431
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 435
    .end local v2    # "wasFirstLayout":Z
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_6

    if-eq v0, p1, :cond_6

    .line 436
    invoke-interface {v1, v0, p1}, Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Lcom/android/internal/widget/PagerAdapter;Lcom/android/internal/widget/PagerAdapter;)V

    .line 438
    :cond_6
    return-void
.end method

.method public blacklist setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 477
    iget-boolean v1, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 478
    return-void
.end method

.method public blacklist setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ViewPager;->mPopulatePending:Z

    .line 488
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZ)Z

    .line 489
    return-void
.end method

.method blacklist setCurrentItemInternal(IZZ)Z
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 497
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ViewPager;->setCurrentItemInternal(IZZI)Z

    move-result v0

    return v0
.end method

.method blacklist setCurrentItemInternal(IZZI)Z
    .locals 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 507
    if-nez p3, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 509
    return v1

    .line 512
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 513
    .local v0, "pageLimit":I
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    add-int v4, v3, v0

    if-gt p1, v4, :cond_2

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_3

    .line 517
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 518
    iget-object v4, p0, Lcom/android/internal/widget/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ViewPager$ItemInfo;

    iput-boolean v2, v4, Lcom/android/internal/widget/ViewPager$ItemInfo;->scrolling:Z

    .line 517
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 522
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_4

    move v1, v2

    .line 523
    .local v1, "dispatchSelected":Z
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/widget/ViewPager;->mFirstLayout:Z

    if-eqz v3, :cond_7

    .line 526
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    .line 527
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_5

    .line 528
    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 530
    :cond_5
    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    if-eqz v3, :cond_6

    .line 531
    invoke-interface {v3, p1}, Lcom/android/internal/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 533
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    goto :goto_1

    .line 535
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewPager;->populate(I)V

    .line 536
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/android/internal/widget/ViewPager;->scrollToItem(IZIZ)V

    .line 539
    :goto_1
    return v2

    .line 502
    .end local v0    # "pageLimit":I
    .end local v1    # "dispatchSelected":Z
    :cond_8
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 503
    return v1
.end method

.method blacklist setInternalPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 637
    .local v0, "oldListener":Lcom/android/internal/widget/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mInternalPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 638
    return-object v0
.end method

.method public blacklist setOffscreenPageLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .line 670
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 p1, 0x1

    .line 675
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 676
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mOffscreenPageLimit:I

    .line 677
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 679
    :cond_1
    return-void
.end method

.method blacklist setOnAdapterChangeListener(Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 461
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mAdapterChangeListener:Lcom/android/internal/widget/ViewPager$OnAdapterChangeListener;

    .line 462
    return-void
.end method

.method public blacklist setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 594
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    .line 595
    return-void
.end method

.method public blacklist setPageMargin(I)V
    .locals 2
    .param p1, "marginPixels"    # I

    .line 690
    iget v0, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 691
    .local v0, "oldMargin":I
    iput p1, p0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    .line 693
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getWidth()I

    move-result v1

    .line 694
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/android/internal/widget/ViewPager;->recomputeScrollPosition(IIII)V

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->requestLayout()V

    .line 697
    return-void
.end method

.method public blacklist setPageMarginDrawable(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 726
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 727
    return-void
.end method

.method public blacklist setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 714
    iput-object p1, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 715
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->refreshDrawableState()V

    .line 716
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ViewPager;->setWillNotDraw(Z)V

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->invalidate()V

    .line 718
    return-void
.end method

.method public blacklist setPageTransformer(ZLcom/android/internal/widget/ViewPager$PageTransformer;)V
    .locals 4
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 610
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 611
    .local v2, "hasTransformer":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eq v2, v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    .line 612
    .local v3, "needsPopulate":Z
    :goto_2
    iput-object p2, p0, Lcom/android/internal/widget/ViewPager;->mPageTransformer:Lcom/android/internal/widget/ViewPager$PageTransformer;

    .line 613
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 614
    if-eqz v2, :cond_4

    .line 615
    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :cond_3
    iput v0, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    goto :goto_3

    .line 617
    :cond_4
    iput v1, p0, Lcom/android/internal/widget/ViewPager;->mDrawingOrder:I

    .line 619
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 620
    :cond_5
    return-void
.end method

.method blacklist smoothScrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 761
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/ViewPager;->smoothScrollTo(III)V

    .line 762
    return-void
.end method

.method blacklist smoothScrollTo(III)V
    .locals 17
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .line 772
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 774
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 775
    return-void

    .line 777
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollX()I

    move-result v1

    .line 778
    .local v1, "sx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getScrollY()I

    move-result v9

    .line 779
    .local v9, "sy":I
    sub-int v10, p1, v1

    .line 780
    .local v10, "dx":I
    sub-int v11, p2, v9

    .line 781
    .local v11, "dy":I
    if-nez v10, :cond_1

    if-nez v11, :cond_1

    .line 782
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->completeScroll(Z)V

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->populate()V

    .line 784
    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 785
    return-void

    .line 788
    :cond_1
    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 789
    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/ViewPager;->setScrollState(I)V

    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->getPaddedWidth()I

    move-result v2

    .line 792
    .local v2, "width":I
    div-int/lit8 v12, v2, 0x2

    .line 793
    .local v12, "halfWidth":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v5, v2

    div-float/2addr v3, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 794
    .local v13, "distanceRatio":F
    int-to-float v3, v12

    int-to-float v5, v12

    .line 795
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v14, v3, v5

    .line 797
    .local v14, "distance":F
    const/4 v3, 0x0

    .line 798
    .local v3, "duration":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 799
    .end local p3    # "velocity":I
    .local v15, "velocity":I
    if-lez v15, :cond_2

    .line 800
    const/high16 v4, 0x447a0000    # 1000.0f

    int-to-float v5, v15

    div-float v5, v14, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    .end local v3    # "duration":I
    .local v4, "duration":I
    goto :goto_0

    .line 802
    .end local v4    # "duration":I
    .restart local v3    # "duration":I
    :cond_2
    int-to-float v5, v2

    iget-object v6, v0, Lcom/android/internal/widget/ViewPager;->mAdapter:Lcom/android/internal/widget/PagerAdapter;

    iget v7, v0, Lcom/android/internal/widget/ViewPager;->mCurItem:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PagerAdapter;->getPageWidth(I)F

    move-result v6

    mul-float/2addr v5, v6

    .line 803
    .local v5, "pageWidth":F
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/android/internal/widget/ViewPager;->mPageMargin:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    div-float/2addr v6, v7

    .line 804
    .local v6, "pageDelta":F
    add-float/2addr v4, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    .line 806
    .end local v3    # "duration":I
    .end local v5    # "pageWidth":F
    .end local v6    # "pageDelta":F
    .restart local v4    # "duration":I
    :goto_0
    const/16 v3, 0x258

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 808
    .end local v4    # "duration":I
    .local v16, "duration":I
    iget-object v3, v0, Lcom/android/internal/widget/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v4, v1

    move v5, v9

    move v6, v10

    move v7, v11

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ViewPager;->postInvalidateOnAnimation()V

    .line 810
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 731
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
