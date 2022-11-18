.class public Lcom/android/internal/widget/ResolverDrawerLayout;
.super Landroid/view/ViewGroup;
.source "ResolverDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;,
        Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;,
        Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;,
        Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverDrawerLayout"


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mAlwaysShowHeight:I

.field private blacklist mCollapseOffset:F

.field private blacklist mCollapsibleHeight:I

.field private blacklist mCollapsibleHeightReserved:I

.field private blacklist mDismissLocked:Z

.field private blacklist mDismissOnScrollerFinished:Z

.field private blacklist mDragRemainder:F

.field private blacklist mIResolverDrawerLayoutExt:Lcom/android/internal/widget/IResolverDrawerLayoutExt;

.field private blacklist mInitialTouchX:F

.field private blacklist mInitialTouchY:F

.field private blacklist mIsDragging:Z

.field private final blacklist mIsMaxCollapsedHeightSmallExplicit:Z

.field private blacklist mLastTouchY:F

.field private blacklist mMaxCollapsedHeight:I

.field private blacklist mMaxCollapsedHeightSmall:I

.field private blacklist mMaxWidth:I

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final blacklist mMinFlingVelocity:F

.field private blacklist mNestedListChild:Landroid/widget/AbsListView;

.field private blacklist mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

.field private blacklist mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

.field private blacklist mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

.field private blacklist mOpenOnClick:Z

.field private blacklist mOpenOnLayout:Z

.field private blacklist mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

.field private blacklist mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

.field private blacklist mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private final blacklist mScroller:Landroid/widget/OverScroller;

.field private blacklist mShowAtTop:Z

.field private blacklist mSmallCollapsed:Z

.field private final blacklist mTempRect:Landroid/graphics/Rect;

.field private blacklist mTopOffset:I

.field private final blacklist mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

.field private final blacklist mTouchSlop:I

.field private blacklist mUncollapsibleHeight:I

.field private final blacklist mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIResolverDrawerLayoutExt(Lcom/android/internal/widget/ResolverDrawerLayout;)Lcom/android/internal/widget/IResolverDrawerLayoutExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIResolverDrawerLayoutExt:Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDismissOnScrollerFinished(Lcom/android/internal/widget/ResolverDrawerLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdismiss(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misDescendantClipped(Lcom/android/internal/widget/ResolverDrawerLayout;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDismissable(Lcom/android/internal/widget/ResolverDrawerLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misNestedListChildScrolled(Lcom/android/internal/widget/ResolverDrawerLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mperformDrag(Lcom/android/internal/widget/ResolverDrawerLayout;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msmoothScrollTo(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 145
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 148
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    .line 129
    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$1;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 1264
    new-instance v1, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    .line 1266
    const-class v1, Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    invoke-static {v1}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    iput-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIResolverDrawerLayoutExt:Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    .line 150
    sget-object v1, Lcom/android/internal/R$styleable;->ResolverDrawerLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 152
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    .line 153
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 155
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 158
    nop

    .line 159
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsMaxCollapsedHeightSmallExplicit:Z

    .line 160
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    .line 161
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 163
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mContext:Landroid/content/Context;

    const v3, 0x10807ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 165
    new-instance v2, Landroid/widget/OverScroller;

    const v3, 0x10c0005

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    .line 167
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 169
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 170
    .local v2, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    .line 171
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setImportantForAccessibility(I)V

    .line 174
    return-void
.end method

.method private blacklist abortAnimation()V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 577
    return-void
.end method

.method private blacklist dismiss()V
    .locals 2

    .line 555
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 556
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void
.end method

.method private blacklist distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .line 679
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 680
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 681
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private blacklist findChildUnder(FF)Landroid/view/View;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 689
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 693
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 694
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 695
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 696
    .local v2, "child":Landroid/view/View;
    invoke-static {v2, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isChildUnder(Landroid/view/View;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    return-object v2

    .line 694
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 700
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist findListChildUnder(FF)Landroid/view/View;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 704
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 705
    .local v0, "v":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_2

    .line 706
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 707
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    sub-float/2addr p2, v1

    .line 708
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 710
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 712
    :cond_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 714
    :cond_2
    return-object v0
.end method

.method private blacklist getMaxCollapsedHeight()I
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isSmallCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    :goto_0
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    .line 1258
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static blacklist isChildUnder(Landroid/view/View;FF)Z
    .locals 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 756
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    .line 757
    .local v0, "left":F
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    .line 758
    .local v1, "top":F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 759
    .local v2, "right":F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 760
    .local v3, "bottom":F
    cmpl-float v4, p1, v0

    if-ltz v4, :cond_0

    cmpl-float v4, p2, v1

    if-ltz v4, :cond_0

    cmpg-float v4, p1, v2

    if-gez v4, :cond_0

    cmpg-float v4, p2, v3

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private blacklist isDescendantClipped(Landroid/view/View;)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 727
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 730
    move-object v0, p1

    .local v0, "directChild":Landroid/view/View;
    goto :goto_1

    .line 732
    .end local v0    # "directChild":Landroid/view/View;
    :cond_0
    move-object v0, p1

    .line 733
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 734
    .local v1, "p":Landroid/view/ViewParent;
    :goto_0
    if-eq v1, p0, :cond_1

    .line 735
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 736
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 738
    :cond_1
    move-object v2, v0

    .line 743
    .end local v1    # "p":Landroid/view/ViewParent;
    .local v0, "directChild":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 744
    .local v1, "clipEdge":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v2

    .line 745
    .local v2, "childCount":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 746
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 747
    .local v6, "nextChild":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 748
    goto :goto_3

    .line 750
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 745
    .end local v6    # "nextChild":Landroid/view/View;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 752
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_4

    move v3, v5

    :cond_4
    return v3
.end method

.method private blacklist isDismissable()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isDragging()Z
    .locals 2

    .line 250
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method private blacklist isListChildUnderClipped(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 721
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findListChildUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 722
    .local v0, "listChild":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isMoving()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private blacklist isNestedListChildScrolled()Z
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 356
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 357
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 354
    :goto_0
    return v1
.end method

.method private blacklist isNestedRecyclerChildScrolled()Z
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    .line 363
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 364
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 366
    .end local v0    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    return v1
.end method

.method private blacklist onCollapsedChanged(Z)V
    .locals 1
    .param p1, "isCollapsed"    # Z

    .line 624
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 628
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    if-eqz v0, :cond_1

    .line 632
    invoke-interface {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;->onCollapsedChanged(Z)V

    .line 634
    :cond_1
    return-void
.end method

.method private blacklist onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 531
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 532
    .local v1, "pointerId":I
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    .line 535
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 536
    .local v2, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 537
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 538
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 540
    .end local v2    # "newPointerIndex":I
    :cond_1
    return-void
.end method

.method private blacklist performAccessibilityActionCommon(I)Z
    .locals 6
    .param p1, "action"    # I

    .line 880
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 896
    :sswitch_0
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 897
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 898
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 899
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    .line 900
    return v1

    .line 890
    :sswitch_1
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 891
    invoke-direct {p0, v4, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 892
    return v1

    .line 884
    :sswitch_2
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_0

    .line 885
    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 886
    return v1

    .line 905
    :cond_0
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_2
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_1
        0x100000 -> :sswitch_0
        0x102003a -> :sswitch_2
    .end sparse-switch
.end method

.method private blacklist performDrag(F)F
    .locals 9
    .param p1, "dy"    # F

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 581
    return v1

    .line 584
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    add-float/2addr v0, p1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 586
    .local v0, "newPos":F
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_9

    .line 587
    sub-float p1, v0, v2

    .line 589
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    float-to-int v3, p1

    int-to-float v3, v3

    sub-float v3, p1, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 590
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_1

    .line 591
    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 592
    add-float/2addr p1, v3

    goto :goto_0

    .line 593
    :cond_1
    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    .line 594
    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDragRemainder:F

    .line 595
    sub-float/2addr p1, v3

    .line 598
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v2

    .line 599
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 600
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 601
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 602
    .local v5, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v6, v5, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-nez v6, :cond_3

    .line 603
    float-to-int v6, p1

    invoke-virtual {v4, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 599
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 606
    .end local v3    # "i":I
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v3, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v5

    .line 607
    .local v3, "isCollapsedOld":Z
    :goto_2
    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 608
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 609
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    move v1, v5

    .line 610
    .local v1, "isCollapsedNew":Z
    :goto_3
    if-eq v3, v1, :cond_8

    .line 611
    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 612
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v6

    new-instance v7, Landroid/metrics/LogMaker;

    const/16 v8, 0x673

    invoke-direct {v7, v8}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 614
    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 612
    invoke-virtual {v6, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 616
    :cond_8
    float-to-int v4, v0

    sub-float v6, v0, p1

    float-to-int v6, v6

    invoke-virtual {p0, v5, v4, v5, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->onScrollChanged(IIII)V

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 618
    return p1

    .line 620
    .end local v1    # "isCollapsedNew":Z
    .end local v2    # "childCount":I
    .end local v3    # "isCollapsedOld":Z
    :cond_9
    return v1
.end method

.method private blacklist resetTouch()V
    .locals 1

    .line 543
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 545
    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 547
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 550
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->hookresetTouch()V

    .line 552
    return-void
.end method

.method private blacklist smoothScrollTo(IF)V
    .locals 13
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .line 647
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 648
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v0, v0

    .line 649
    .local v0, "sy":I
    sub-int v7, p1, v0

    .line 650
    .local v7, "dy":I
    if-nez v7, :cond_0

    .line 653
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->hooksmoothScrollTo(ZLcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 655
    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getHeight()I

    move-result v8

    .line 659
    .local v8, "height":I
    div-int/lit8 v9, v8, 0x2

    .line 660
    .local v9, "halfHeight":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, v8

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 661
    .local v10, "distanceRatio":F
    int-to-float v1, v9

    int-to-float v3, v9

    .line 662
    invoke-direct {p0, v10}, Lcom/android/internal/widget/ResolverDrawerLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-float v11, v1, v3

    .line 664
    .local v11, "distance":F
    const/4 v1, 0x0

    .line 665
    .local v1, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 666
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    .line 667
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v3, v11, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    .end local v1    # "duration":I
    .local v2, "duration":I
    goto :goto_0

    .line 669
    .end local v2    # "duration":I
    .restart local v1    # "duration":I
    :cond_1
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v8

    div-float/2addr v3, v4

    .line 670
    .local v3, "pageDelta":F
    add-float/2addr v2, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    .line 672
    .end local v1    # "duration":I
    .end local v3    # "pageDelta":F
    .restart local v2    # "duration":I
    :goto_0
    const/16 v1, 0x12c

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 674
    .end local v2    # "duration":I
    .local v12, "duration":I
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, v0

    move v5, v7

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 675
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    .line 676
    return-void
.end method

.method private blacklist updateCollapseOffset(IZ)Z
    .locals 7
    .param p1, "oldCollapsibleHeight"    # I
    .param p2, "remainClosed"    # Z

    .line 254
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 255
    return v1

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 260
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 261
    return v1

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 265
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    .line 266
    .local v4, "isCollapsedOld":Z
    :goto_0
    if-eqz p2, :cond_3

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-ge p1, v5, :cond_3

    int-to-float v6, p1

    cmpl-float v6, v0, v6

    if-nez v6, :cond_3

    .line 269
    int-to-float v0, v5

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    goto :goto_1

    .line 271
    :cond_3
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 273
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    move v0, v1

    .line 274
    .local v0, "isCollapsedNew":Z
    if-eq v4, v0, :cond_5

    .line 275
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->onCollapsedChanged(Z)V

    .line 277
    .end local v0    # "isCollapsedNew":Z
    .end local v4    # "isCollapsedOld":Z
    :cond_5
    goto :goto_3

    .line 279
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v2, v0

    :goto_2
    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    .line 281
    :goto_3
    return v3
.end method


# virtual methods
.method public whitelist computeScroll()V
    .locals 3

    .line 561
    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    .line 562
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 564
    .local v0, "keepGoing":Z
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 565
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 567
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v1, :cond_1

    .line 568
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    .line 571
    .end local v0    # "keepGoing":Z
    :cond_1
    :goto_0
    return-void
.end method

.method blacklist dispatchOnDismissed()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;->onDismissed()V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mRunOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;

    .line 644
    :cond_1
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1128
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1113
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1118
    instance-of v0, p1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1119
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;)V

    return-object v0

    .line 1120
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1121
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1123
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 922
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAlwaysShowHeight()I
    .locals 1

    .line 1055
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    return v0
.end method

.method public blacklist getShowAtTop()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    return v0
.end method

.method public blacklist getWrapper()Lcom/android/internal/app/IResolverDrawerLayoutWrapper;
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    return-object v0
.end method

.method public blacklist isCollapsed()Z
    .locals 2

    .line 201
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSmallCollapsed()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    return v0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 2

    .line 773
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 774
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 775
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    .line 779
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 780
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchModeChangeListener:Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 781
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 782
    return-void
.end method

.method public whitelist onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 970
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 974
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 975
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 927
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 929
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 930
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 931
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 932
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 933
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 934
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 936
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 937
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 939
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 941
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 942
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 944
    :cond_3
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 945
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 951
    :cond_4
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 952
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 305
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 311
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 336
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 338
    goto :goto_1

    .line 322
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 323
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 324
    .local v4, "y":F
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v5, v4, v5

    .line 325
    .local v5, "dy":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getNestedScrollAxes()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1

    .line 327
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 328
    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 329
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v8, v7

    sub-float v8, v6, v8

    add-float v9, v6, v5

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 330
    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 329
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 333
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "dy":F
    :cond_1
    goto :goto_1

    .line 342
    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    goto :goto_1

    .line 313
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 314
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 315
    .restart local v4    # "y":F
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 316
    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 317
    invoke-direct {p0, v3, v4}, Lcom/android/internal/widget/ResolverDrawerLayout;->isListChildUnderClipped(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    .line 319
    .end local v3    # "x":F
    .end local v4    # "y":F
    nop

    .line 347
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v3, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 350
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 17
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1060
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getWidth()I

    move-result v1

    .line 1062
    .local v1, "width":I
    const/4 v2, 0x0

    .line 1064
    .local v2, "indicatorHost":Landroid/view/View;
    iget v3, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 1065
    .local v3, "ypos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v4

    .line 1066
    .local v4, "leftEdge":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 1067
    .local v5, "rightEdge":I
    sub-int v6, v5, v4

    .line 1069
    .local v6, "widthAvailable":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v7

    .line 1070
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_3

    .line 1071
    invoke-virtual {v0, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1072
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1073
    .local v10, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v11, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->hasNestedScrollIndicator:Z

    if-eqz v11, :cond_0

    .line 1074
    move-object v2, v9

    .line 1077
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_1

    .line 1078
    move/from16 v16, v1

    goto :goto_1

    .line 1081
    :cond_1
    iget v11, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 1082
    .local v11, "top":I
    iget-boolean v12, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->ignoreOffset:Z

    if-eqz v12, :cond_2

    .line 1083
    int-to-float v12, v11

    iget v13, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    sub-float/2addr v12, v13

    float-to-int v11, v12

    .line 1085
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    .line 1087
    .local v12, "bottom":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 1088
    .local v13, "childWidth":I
    sub-int v14, v6, v13

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v4

    .line 1089
    .local v14, "left":I
    add-int v15, v14, v13

    .line 1091
    .local v15, "right":I
    invoke-virtual {v9, v14, v11, v15, v12}, Landroid/view/View;->layout(IIII)V

    .line 1093
    move/from16 v16, v1

    .end local v1    # "width":I
    .local v16, "width":I
    iget v1, v10, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v12

    move v3, v1

    .line 1070
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v11    # "top":I
    .end local v12    # "bottom":I
    .end local v13    # "childWidth":I
    .end local v14    # "left":I
    .end local v15    # "right":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v16

    goto :goto_0

    .end local v16    # "width":I
    .restart local v1    # "width":I
    :cond_3
    move/from16 v16, v1

    .line 1096
    .end local v1    # "width":I
    .end local v8    # "i":I
    .restart local v16    # "width":I
    iget-object v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 1097
    const/4 v1, 0x1

    if-eqz v2, :cond_4

    .line 1098
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1099
    .local v8, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1100
    .local v9, "right":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    .line 1101
    .local v10, "bottom":I
    iget-object v11, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    sub-int v11, v10, v11

    .line 1102
    .restart local v11    # "top":I
    iget-object v12, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v8, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v12

    xor-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 1104
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v10    # "bottom":I
    .end local v11    # "top":I
    goto :goto_2

    .line 1105
    :cond_4
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScrollIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1106
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setWillNotDraw(Z)V

    .line 1109
    :cond_5
    :goto_2
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 979
    move-object/from16 v6, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 980
    .local v7, "sourceWidth":I
    move v0, v7

    .line 981
    .local v0, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 985
    .local v8, "heightSize":I
    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxWidth:I

    if-ltz v1, :cond_0

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v9, v0

    goto :goto_0

    .line 985
    :cond_0
    move v9, v0

    .line 989
    .end local v0    # "widthSize":I
    .local v9, "widthSize":I
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 990
    .local v10, "widthSpec":I
    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 995
    .local v11, "heightSpec":I
    const/4 v0, 0x0

    .line 998
    .local v0, "heightUsed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildCount()I

    move-result v12

    .line 999
    .local v12, "childCount":I
    const/4 v1, 0x0

    move v13, v0

    move v14, v1

    .end local v0    # "heightUsed":I
    .local v13, "heightUsed":I
    .local v14, "i":I
    :goto_1
    const/high16 v15, -0x80000000

    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-ge v14, v12, :cond_4

    .line 1000
    invoke-virtual {v6, v14}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1001
    .local v16, "child":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1002
    .local v2, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-eqz v0, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 1003
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-eq v0, v5, :cond_2

    .line 1004
    sub-int v5, v8, v13

    .line 1005
    .local v5, "remainingHeight":I
    const/4 v4, 0x0

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    .line 1006
    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 1007
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-le v0, v5, :cond_1

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    sub-int/2addr v0, v5

    move/from16 v17, v0

    goto :goto_2

    :cond_1
    move/from16 v17, v3

    .line 1005
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v18, v2

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v18, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    move v2, v10

    move v3, v4

    move v4, v15

    move v15, v5

    .end local v5    # "remainingHeight":I
    .local v15, "remainingHeight":I
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1008
    .end local v15    # "remainingHeight":I
    goto :goto_3

    .line 1009
    .end local v18    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_2
    move-object/from16 v18, v2

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v18    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v10

    move v4, v11

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1011
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v13, v0

    goto :goto_4

    .line 1002
    .end local v18    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_3
    move-object/from16 v18, v2

    .line 999
    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v16    # "child":Landroid/view/View;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1015
    .end local v14    # "i":I
    :cond_4
    iput v13, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    .line 1018
    const/4 v0, 0x0

    move v14, v13

    move v13, v0

    .local v13, "i":I
    .local v14, "heightUsed":I
    :goto_5
    if-ge v13, v12, :cond_8

    .line 1019
    invoke-virtual {v6, v13}, Lcom/android/internal/widget/ResolverDrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1021
    .restart local v16    # "child":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;

    .line 1022
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    iget-boolean v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->alwaysShow:Z

    if-nez v0, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 1023
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-eq v0, v5, :cond_6

    .line 1024
    sub-int v1, v8, v14

    .line 1025
    .local v1, "remainingHeight":I
    const/16 v17, 0x0

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    .line 1026
    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    .line 1027
    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    if-le v0, v1, :cond_5

    iget v0, v2, Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;->maxHeight:I

    sub-int/2addr v0, v1

    move/from16 v19, v0

    goto :goto_6

    :cond_5
    move/from16 v19, v3

    .line 1025
    :goto_6
    move-object/from16 v0, p0

    move/from16 v20, v1

    .end local v1    # "remainingHeight":I
    .local v20, "remainingHeight":I
    move-object/from16 v1, v16

    move-object/from16 v21, v2

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .local v21, "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    move v2, v10

    move v15, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1028
    .end local v20    # "remainingHeight":I
    goto :goto_7

    .line 1029
    .end local v21    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_6
    move-object/from16 v21, v2

    move v15, v3

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v21    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v10

    move v4, v11

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ResolverDrawerLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1031
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v14, v0

    goto :goto_8

    .line 1022
    .end local v21    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .restart local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    :cond_7
    move-object/from16 v21, v2

    move v15, v3

    move/from16 v17, v4

    move/from16 v18, v5

    .line 1018
    .end local v2    # "lp":Lcom/android/internal/widget/ResolverDrawerLayout$LayoutParams;
    .end local v16    # "child":Landroid/view/View;
    :goto_8
    add-int/lit8 v13, v13, 0x1

    move v3, v15

    move/from16 v4, v17

    move/from16 v5, v18

    const/high16 v15, -0x80000000

    goto :goto_5

    :cond_8
    move v15, v3

    .line 1035
    .end local v13    # "i":I
    iget v0, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 1036
    .local v0, "oldCollapsibleHeight":I
    iget v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mAlwaysShowHeight:I

    sub-int v1, v14, v1

    .line 1037
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1036
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 1038
    sub-int v1, v14, v1

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    .line 1040
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v6, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1043
    iput v15, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    goto :goto_9

    .line 1045
    :cond_9
    sub-int v1, v8, v14

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v6, Lcom/android/internal/widget/ResolverDrawerLayout;->mTopOffset:I

    .line 1048
    :goto_9
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/ResolverDrawerLayout;->setMeasuredDimension(II)V

    .line 1049
    return-void
.end method

.method public whitelist onNestedFling(Landroid/view/View;FFZ)Z
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 849
    const/4 v0, 0x0

    if-nez p4, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 850
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 851
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_0

    cmpl-float v1, p3, v3

    if-lez v1, :cond_0

    .line 852
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 853
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto :goto_1

    .line 855
    :cond_0
    cmpg-float v1, p3, v3

    if-gez v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_1

    .line 858
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v1

    if-eqz v1, :cond_3

    cmpg-float v1, p3, v3

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v5, v4

    cmpl-float v1, v1, v5

    if-lez v1, :cond_3

    .line 860
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v4, v0

    invoke-direct {p0, v4, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 861
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_1

    .line 865
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v1}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->shouldHookonNestedScroll()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 867
    cmpl-float v1, p3, v3

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_1

    .line 870
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    invoke-interface {v0, p3, v1, v3}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->customOnNestedScroll(FII)V

    .line 874
    :goto_1
    return v2

    .line 876
    :cond_6
    return v0
.end method

.method public whitelist onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 840
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 841
    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 842
    const/4 v0, 0x1

    return v0

    .line 844
    :cond_0
    return v1
.end method

.method public whitelist onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 910
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    const/4 v0, 0x1

    return v0

    .line 914
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performAccessibilityActionCommon(I)Z

    move-result v0

    return v0
.end method

.method public whitelist onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 833
    if-lez p3, :cond_0

    .line 834
    const/4 v0, 0x1

    neg-int v1, p3

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    aput v1, p4, v0

    .line 836
    :cond_0
    return-void
.end method

.method public whitelist onNestedScroll(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 826
    if-gez p5, :cond_0

    .line 827
    neg-int v0, p5

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    .line 829
    :cond_0
    return-void
.end method

.method public whitelist onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .line 804
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 805
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1141
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    .line 1142
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1143
    iget-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    iput-boolean v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    .line 1144
    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->-$$Nest$fgetmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 1145
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1133
    new-instance v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1134
    .local v0, "ss":Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->open:Z

    .line 1135
    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;->-$$Nest$fputmCollapsibleHeightReserved(Lcom/android/internal/widget/ResolverDrawerLayout$SavedState;I)V

    .line 1136
    return-object v0
.end method

.method public whitelist onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 786
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_2

    .line 787
    instance-of v0, p2, Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 788
    move-object v0, p2

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    .line 790
    :cond_0
    instance-of v0, p2, Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 791
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->hookonStartNestedScroll(Landroid/view/View;)V

    .line 797
    const/4 v0, 0x1

    return v0

    .line 799
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onStopNestedScroll(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .line 809
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onStopNestedScroll(Landroid/view/View;)V

    .line 810
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->shouldHookonStopNestedScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->customOnStopNestedScroll(FII)V

    .line 821
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 371
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 373
    .local v0, "action":I
    iget-object v1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "handled":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 441
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 443
    goto/16 :goto_a

    .line 432
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 433
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 434
    .local v3, "pointerId":I
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 435
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 436
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 438
    .end local v2    # "pointerIndex":I
    .end local v3    # "pointerId":I
    goto/16 :goto_a

    .line 506
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v5, :cond_1

    .line 507
    nop

    .line 508
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    .line 507
    :goto_0
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 510
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 511
    return v2

    .line 391
    :pswitch_4
    iget v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 392
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad pointer id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resetting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ResolverDrawerLayout"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v5, 0x0

    .line 395
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 399
    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 400
    .local v6, "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 401
    .local v7, "y":F
    iget-boolean v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-nez v8, :cond_3

    .line 402
    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float v8, v7, v8

    .line 403
    .local v8, "dy":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 404
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    move v1, v2

    .line 405
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v10, v9

    sub-float v10, v2, v10

    add-float v11, v2, v8

    int-to-float v9, v9

    add-float/2addr v2, v9

    .line 406
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 405
    invoke-static {v10, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 409
    .end local v8    # "dy":F
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v2, :cond_7

    .line 410
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    sub-float v2, v7, v2

    .line 413
    .local v2, "dy":F
    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v8}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->shouldHookOnTouchEventMove()Z

    move-result v8

    if-nez v8, :cond_6

    .line 415
    cmpl-float v8, v2, v3

    if-lez v8, :cond_4

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 416
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    neg-float v8, v2

    float-to-int v8, v8

    invoke-virtual {v3, v8, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1

    .line 417
    :cond_4
    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 418
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    neg-float v8, v2

    float-to-int v8, v8

    invoke-virtual {v3, v4, v8}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 420
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->performDrag(F)F

    goto :goto_1

    .line 424
    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v3}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    iget-object v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    iget v9, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    invoke-interface {v3, v2, v4, v8, v9}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->customOnTouchEventMove(FLandroid/widget/AbsListView;Lcom/android/internal/widget/RecyclerView;F)V

    .line 427
    .end local v2    # "dy":F
    :cond_7
    :goto_1
    iput v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 429
    .end local v5    # "index":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    goto/16 :goto_a

    .line 446
    :pswitch_5
    iget-boolean v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 447
    .local v5, "wasDragging":Z
    iput-boolean v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 448
    if-nez v5, :cond_8

    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_8

    .line 449
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_8

    .line 450
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 451
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 452
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 453
    return v2

    .line 456
    :cond_8
    iget-boolean v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnClick:Z

    if-eqz v6, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 458
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 459
    return v2

    .line 461
    :cond_9
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 462
    iget-object v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 463
    .local v6, "yvel":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMinFlingVelocity:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    .line 464
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getShowAtTop()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 465
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v2

    if-eqz v2, :cond_a

    cmpg-float v2, v6, v3

    if-gez v2, :cond_a

    .line 466
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 467
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dismiss()V

    goto/16 :goto_5

    .line 469
    :cond_a
    cmpg-float v2, v6, v3

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_2
    invoke-direct {p0, v4, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto/16 :goto_5

    .line 474
    :cond_c
    iget-object v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v7}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->shouldHookOnTouchEventUpFling()Z

    move-result v7

    if-nez v7, :cond_f

    .line 476
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-eqz v7, :cond_d

    cmpl-float v7, v6, v3

    if-lez v7, :cond_d

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v8, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    int-to-float v9, v8

    cmpl-float v7, v7, v9

    if-lez v7, :cond_d

    .line 478
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    add-int/2addr v8, v3

    invoke-direct {p0, v8, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 479
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissOnScrollerFinished:Z

    goto :goto_5

    .line 481
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->scrollNestedScrollableChildBackToTop()V

    .line 482
    cmpg-float v2, v6, v3

    if-gez v2, :cond_e

    goto :goto_3

    :cond_e
    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    :goto_3
    invoke-direct {p0, v4, v6}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_5

    .line 486
    :cond_f
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v2}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    invoke-interface {v2, v6, v3, v4, v7}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->customOnTouchEventUpFling(FFII)V

    goto :goto_5

    .line 492
    :cond_10
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v2}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->shouldHookOnTouchEventUpScrollBack()Z

    move-result v2

    if-nez v2, :cond_12

    .line 494
    nop

    .line 495
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    cmpg-float v2, v2, v8

    if-gez v2, :cond_11

    goto :goto_4

    :cond_11
    move v4, v7

    .line 494
    :goto_4
    invoke-direct {p0, v4, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    goto :goto_5

    .line 498
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mResolverDrawerLayoutWrapper:Lcom/android/internal/app/IResolverDrawerLayoutWrapper;

    invoke-interface {v2}, Lcom/android/internal/app/IResolverDrawerLayoutWrapper;->getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapseOffset:F

    iget v4, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mUncollapsibleHeight:I

    invoke-interface {v2, v3, v4, v7}, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->customOnTouchEventUpScrollBack(FII)V

    .line 501
    :goto_5
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->resetTouch()V

    .line 503
    .end local v5    # "wasDragging":Z
    .end local v6    # "yvel":F
    goto :goto_a

    .line 378
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 379
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 380
    .local v5, "y":F
    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    .line 381
    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    iput v5, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    .line 382
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mActivePointerId:I

    .line 383
    iget v6, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchX:F

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mInitialTouchY:F

    invoke-direct {p0, v6, v7}, Lcom/android/internal/widget/ResolverDrawerLayout;->findChildUnder(FF)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_13

    move v6, v2

    goto :goto_6

    :cond_13
    move v6, v4

    .line 384
    .local v6, "hitView":Z
    :goto_6
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDismissable()Z

    move-result v7

    if-nez v7, :cond_15

    iget v7, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    if-lez v7, :cond_14

    goto :goto_7

    :cond_14
    move v7, v4

    goto :goto_8

    :cond_15
    :goto_7
    move v7, v2

    :goto_8
    move v1, v7

    .line 385
    if-eqz v6, :cond_16

    if-eqz v1, :cond_16

    goto :goto_9

    :cond_16
    move v2, v4

    :goto_9
    iput-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    .line 386
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->abortAnimation()V

    .line 388
    .end local v3    # "x":F
    .end local v5    # "y":F
    .end local v6    # "hitView":Z
    nop

    .line 515
    :goto_a
    return v1

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

.method public blacklist performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 956
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 958
    const/4 v0, 0x0

    return v0

    .line 961
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    const/4 v0, 0x1

    return v0

    .line 965
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->performAccessibilityActionCommon(I)Z

    move-result v0

    return v0
.end method

.method public whitelist requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 765
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDescendantClipped(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 769
    :cond_0
    return-void
.end method

.method public blacklist scrollNestedScrollableChildBackToTop()V
    .locals 2

    .line 522
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedListChildScrolled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedListChild:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isNestedRecyclerChildScrolled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mNestedRecyclerChild:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 527
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setCollapsed(Z)V
    .locals 2
    .param p1, "collapsed"    # Z

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOpenOnLayout:Z

    goto :goto_1

    .line 218
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->smoothScrollTo(IF)V

    .line 220
    :goto_1
    return-void
.end method

.method public blacklist setCollapsibleHeightReserved(I)V
    .locals 5
    .param p1, "heightPixels"    # I

    .line 223
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 224
    .local v0, "oldReserved":I
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeightReserved:I

    .line 226
    sub-int v1, p1, v0

    .line 227
    .local v1, "dReserved":I
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsDragging:Z

    if-eqz v2, :cond_0

    .line 228
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mLastTouchY:F

    .line 231
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 232
    .local v2, "oldCollapsibleHeight":I
    iget v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->getMaxCollapsedHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mCollapsibleHeight:I

    .line 234
    invoke-direct {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->isDragging()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->updateCollapseOffset(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    .line 239
    return-void
.end method

.method public blacklist setDismissLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .line 242
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mDismissLocked:Z

    .line 243
    return-void
.end method

.method public blacklist setMaxCollapsedHeight(I)V
    .locals 1
    .param p1, "heightInPixels"    # I

    .line 181
    iget v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    if-ne p1, v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeight:I

    .line 185
    iget-boolean v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mIsMaxCollapsedHeightSmallExplicit:Z

    if-nez v0, :cond_1

    .line 186
    iput p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mMaxCollapsedHeightSmall:I

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 189
    return-void
.end method

.method public blacklist setOnCollapsedChangedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    .line 298
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnCollapsedChangedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;

    .line 299
    return-void
.end method

.method public blacklist setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 290
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mOnDismissedListener:Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;

    .line 291
    return-void
.end method

.method public blacklist setShowAtTop(Z)V
    .locals 0
    .param p1, "showOnTop"    # Z

    .line 205
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mShowAtTop:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->invalidate()V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 208
    return-void
.end method

.method public blacklist setSmallCollapsed(Z)V
    .locals 0
    .param p1, "smallCollapsed"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout;->mSmallCollapsed:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/ResolverDrawerLayout;->requestLayout()V

    .line 194
    return-void
.end method
