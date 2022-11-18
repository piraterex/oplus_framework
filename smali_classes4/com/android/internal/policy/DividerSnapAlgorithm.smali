.class public Lcom/android/internal/policy/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    }
.end annotation


# static fields
.field private static final blacklist MIN_DISMISS_VELOCITY_DP_PER_SECOND:I = 0x258

.field private static final blacklist MIN_FLING_VELOCITY_DP_PER_SECOND:I = 0x190

.field private static final blacklist SNAP_FIXED_RATIO:I = 0x1

.field private static final blacklist SNAP_MODE_16_9:I = 0x0

.field private static final blacklist SNAP_MODE_MINIMIZED:I = 0x3

.field private static final blacklist SNAP_ONLY_1_1:I = 0x2


# instance fields
.field private final blacklist mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final blacklist mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final blacklist mDisplayHeight:I

.field private final blacklist mDisplayWidth:I

.field private final blacklist mDividerSize:I

.field private blacklist mDividerSnapAlgorithmExt:Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

.field private final blacklist mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final blacklist mFixedRatio:F

.field private final blacklist mFreeSnapMode:Z

.field private final blacklist mInsets:Landroid/graphics/Rect;

.field private blacklist mIsHorizontalDivision:Z

.field private final blacklist mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final blacklist mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final blacklist mMinDismissVelocityPxPerSecond:F

.field private final blacklist mMinFlingVelocityPxPerSecond:F

.field private final blacklist mMinimalSizeResizableTask:I

.field private blacklist mResources:Landroid/content/res/Resources;

.field private final blacklist mSnapMode:I

.field private final blacklist mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskHeightInMinimizedMode:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;

    .line 123
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;
    .param p7, "dockSide"    # I

    .line 129
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V

    .line 131
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;
    .param p7, "dockSide"    # I
    .param p8, "isMinimizedMode"    # Z
    .param p9, "isHomeResizable"    # Z

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 547
    const-class v2, Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    .line 548
    invoke-static {v2}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    iput-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSnapAlgorithmExt:Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    .line 136
    nop

    .line 137
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    .line 138
    nop

    .line 139
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x44160000    # 600.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    .line 140
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 141
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 142
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 143
    iput-boolean p5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 144
    invoke-virtual {v1, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSnapAlgorithmExt:Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    invoke-interface {v1, p1, p8}, Lcom/android/internal/policy/IDividerSnapAlgorithmExt;->getSnapMode(Landroid/content/res/Resources;Z)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSnapAlgorithmExt:Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/IDividerSnapAlgorithmExt;->getFreeSnapMode(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFreeSnapMode:Z

    .line 155
    iput-object p1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mResources:Landroid/content/res/Resources;

    .line 157
    const v1, 0x1130007

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    .line 159
    const v1, 0x105011f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    .line 161
    const/4 v1, 0x0

    if-eqz p9, :cond_0

    const v3, 0x105029d

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 162
    :cond_0
    move v3, v1

    :goto_0
    iput v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    .line 163
    invoke-direct {p0, p5, p7}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateTargets(ZI)V

    .line 164
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 168
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 169
    iput-boolean v2, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->isMiddleTarget:Z

    .line 170
    return-void
.end method

.method private blacklist addFixedDivisionTargets(ZI)V
    .locals 6
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 381
    .local v0, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 382
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_1

    .line 383
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    :goto_1
    nop

    .line 384
    .local v1, "end":I
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    sub-int v3, v1, v0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 385
    .local v2, "size":I
    add-int v4, v0, v2

    .line 386
    .local v4, "topPosition":I
    sub-int v5, v1, v2

    sub-int/2addr v5, v3

    .line 387
    .local v5, "bottomPosition":I
    invoke-direct {p0, p1, v4, v5, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 388
    return-void
.end method

.method private blacklist addMiddleTarget(Z)V
    .locals 4
    .param p1, "isHorizontalDivision"    # Z

    .line 429
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 431
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method private blacklist addMinimizedTarget(ZI)V
    .locals 4
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dockedSide"    # I

    .line 437
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 438
    .local v0, "position":I
    if-nez p1, :cond_1

    .line 439
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 441
    :cond_0
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 442
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v1, v2

    .line 445
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    return-void
.end method

.method private blacklist addNonDismissingTargets(ZIII)V
    .locals 2
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "topPosition"    # I
    .param p3, "bottomPosition"    # I
    .param p4, "dividerMax"    # I

    .line 373
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v0

    sub-int v0, p2, v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 374
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    .line 375
    nop

    .line 376
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getEndInset()I

    move-result v0

    sub-int v0, p4, v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    add-int/2addr v1, p3

    sub-int/2addr v0, v1

    .line 375
    invoke-direct {p0, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 377
    return-void
.end method

.method private blacklist addRatio16_9Targets(ZI)V
    .locals 10
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 392
    .local v0, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 393
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_1

    .line 394
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    :goto_1
    nop

    .line 395
    .local v1, "end":I
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_2
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 396
    .local v2, "startOther":I
    :goto_2
    if-eqz p1, :cond_3

    .line 397
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    goto :goto_3

    .line 398
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    :goto_3
    nop

    .line 399
    .local v3, "endOther":I
    const/high16 v4, 0x3f100000    # 0.5625f

    sub-int v5, v3, v2

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 400
    .local v5, "size":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 401
    .local v4, "sizeInt":I
    add-int v6, v0, v4

    .line 402
    .local v6, "topPosition":I
    sub-int v7, v1, v4

    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v7, v8

    .line 407
    .local v7, "bottomPosition":I
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v8

    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getEndInset()I

    move-result v9

    if-gt v8, v9, :cond_4

    .line 408
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getEndInset()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    add-int/2addr v8, v9

    .end local v6    # "topPosition":I
    .local v8, "topPosition":I
    goto :goto_4

    .line 410
    .end local v8    # "topPosition":I
    .restart local v6    # "topPosition":I
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v8

    iget v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    add-int/2addr v8, v9

    .line 412
    .end local v6    # "topPosition":I
    .restart local v8    # "topPosition":I
    :goto_4
    sub-int v6, p2, v8

    iget v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v6, v9

    .line 415
    .end local v7    # "bottomPosition":I
    .local v6, "bottomPosition":I
    invoke-direct {p0, p1, v8, v6, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 416
    return-void
.end method

.method private blacklist calculateTargets(ZI)V
    .locals 19
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dockedSide"    # I

    .line 311
    move-object/from16 v0, p0

    move/from16 v8, p1

    iget-object v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 312
    if-eqz v8, :cond_0

    .line 313
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    goto :goto_0

    .line 314
    :cond_0
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    :goto_0
    move v9, v1

    .line 315
    .local v9, "dividerMax":I
    iget-object v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    if-eqz v8, :cond_1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_1
    move v10, v1

    .line 316
    .local v10, "navBarSize":I
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v1, v1

    .line 317
    .local v1, "startPos":I
    const/4 v2, 0x3

    move/from16 v7, p2

    if-ne v7, v2, :cond_2

    .line 318
    iget-object v2, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    move v6, v1

    goto :goto_2

    .line 317
    :cond_2
    move v6, v1

    .line 320
    .end local v1    # "startPos":I
    .local v6, "startPos":I
    :goto_2
    iget-object v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x1

    const v5, 0x3eb33333    # 0.35f

    invoke-direct {v2, v6, v6, v3, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    packed-switch v1, :pswitch_data_0

    move v13, v5

    move v11, v6

    .end local v6    # "startPos":I
    .local v11, "startPos":I
    goto/16 :goto_5

    .line 354
    .end local v11    # "startPos":I
    .restart local v6    # "startPos":I
    :pswitch_0
    iget-object v11, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSnapAlgorithmExt:Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    if-eqz v11, :cond_4

    iget-object v12, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget v14, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    iget v15, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    iget-object v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget v3, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 355
    move/from16 v13, p2

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-interface/range {v11 .. v18}, Lcom/android/internal/policy/IDividerSnapAlgorithmExt;->addMinimizedTarget(Ljava/util/ArrayList;IIILandroid/graphics/Rect;II)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move v13, v5

    move v11, v6

    goto :goto_5

    .line 357
    :cond_4
    :goto_3
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMinimizedTarget(ZI)V

    move v13, v5

    move v11, v6

    goto :goto_5

    .line 343
    :pswitch_1
    iget-object v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSnapAlgorithmExt:Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget v11, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget v12, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 344
    move/from16 v3, p1

    move v13, v5

    move v5, v11

    move v11, v6

    .end local v6    # "startPos":I
    .restart local v11    # "startPos":I
    move v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/policy/IDividerSnapAlgorithmExt;->addMiddleTarget(Ljava/util/ArrayList;ZIII)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 343
    .end local v11    # "startPos":I
    .restart local v6    # "startPos":I
    :cond_5
    move v13, v5

    move v11, v6

    .line 345
    .end local v6    # "startPos":I
    .restart local v11    # "startPos":I
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    goto :goto_5

    .line 336
    .end local v11    # "startPos":I
    .restart local v6    # "startPos":I
    :pswitch_2
    move v13, v5

    move v11, v6

    .end local v6    # "startPos":I
    .restart local v11    # "startPos":I
    invoke-direct {v0, v8, v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addFixedDivisionTargets(ZI)V

    .line 337
    goto :goto_5

    .line 328
    .end local v11    # "startPos":I
    .restart local v6    # "startPos":I
    :pswitch_3
    move v13, v5

    move v11, v6

    .end local v6    # "startPos":I
    .restart local v11    # "startPos":I
    iget-object v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSnapAlgorithmExt:Lcom/android/internal/policy/IDividerSnapAlgorithmExt;

    if-eqz v1, :cond_6

    iget-object v2, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mResources:Landroid/content/res/Resources;

    iget-object v3, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    iget-object v12, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 329
    move v4, v9

    move/from16 v6, p1

    move-object v7, v12

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/policy/IDividerSnapAlgorithmExt;->addRatioTargets(Landroid/content/res/Resources;Ljava/util/ArrayList;IIZLandroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 331
    :cond_6
    invoke-direct {v0, v8, v9}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addRatio16_9Targets(ZI)V

    .line 367
    :cond_7
    :goto_5
    iget-object v1, v0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x2

    invoke-direct {v2, v9, v9, v3, v13}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 102
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050132

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 111
    .local v1, "dividerWindowWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v3

    .line 113
    .local v3, "dividerInsets":I
    new-instance v11, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v4, v3, 0x2

    sub-int v8, v1, v4

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    goto :goto_0

    :cond_0
    move v9, v2

    :goto_0
    move-object v4, v11

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 113
    return-object v11
.end method

.method private blacklist getEndInset()I
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private blacklist getStartInset()I
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private blacklist maybeAddTarget(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smallerSize"    # I

    .line 423
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt p2, v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_0
    return-void
.end method

.method private blacklist shouldApplyFreeSnapMode(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 280
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFreeSnapMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 281
    return v1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 284
    :cond_3
    :goto_0
    return v1
.end method

.method private blacklist snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 7
    .param p1, "position"    # I
    .param p2, "hardDismiss"    # Z

    .line 290
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->shouldApplyFreeSnapMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    return-object v0

    .line 293
    :cond_0
    const/4 v0, -0x1

    .line 294
    .local v0, "minIndex":I
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 295
    .local v1, "minDistance":F
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 296
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 297
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 298
    .local v4, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v5, v4, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    .line 299
    .local v5, "distance":F
    if-eqz p2, :cond_1

    .line 300
    invoke-static {v4}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->-$$Nest$fgetdistanceMultiplier(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v6

    div-float/2addr v5, v6

    .line 302
    :cond_1
    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    .line 303
    move v0, v3

    .line 304
    move v1, v5

    .line 296
    .end local v4    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .end local v5    # "distance":F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v3
.end method


# virtual methods
.method public blacklist calculateDismissingFraction(I)F
    .locals 4
    .param p1, "position"    # I

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 225
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 225
    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 231
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 214
    .local v0, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 219
    :cond_1
    return-object v0
.end method

.method public blacklist calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1
    .param p1, "position"    # I
    .param p2, "velocity"    # F

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0
.end method

.method public blacklist calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "hardDismiss"    # Z

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 202
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 203
    invoke-direct {p0, p1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0

    .line 205
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public blacklist cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 4
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p2, "increment"    # I

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 490
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 491
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    .line 491
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 493
    .local v1, "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_1

    .line 496
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    .line 498
    :cond_1
    return-object v1

    .line 501
    .end local v1    # "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    return-object p1
.end method

.method public blacklist getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public blacklist getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public blacklist getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public blacklist getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public blacklist getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public blacklist getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public blacklist getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 454
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 457
    :cond_0
    return-object p1
.end method

.method public blacklist getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 462
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 463
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 465
    :cond_0
    return-object p1
.end method

.method public blacklist isFirstSplitTargetAvailable()Z
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isLastSplitTargetAvailable()Z
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isSplitScreenFeasible()Z
    .locals 6

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 178
    .local v0, "statusBarSize":I
    iget-boolean v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 179
    .local v1, "navBarSize":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v2, :cond_1

    .line 180
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    goto :goto_1

    .line 181
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    :goto_1
    nop

    .line 182
    .local v2, "size":I
    sub-int v3, v2, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v3, v4

    .line 183
    .local v3, "availableSpace":I
    div-int/lit8 v4, v3, 0x2

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4
.end method

.method public blacklist showMiddleSplitTargetForAccessibility()Z
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
