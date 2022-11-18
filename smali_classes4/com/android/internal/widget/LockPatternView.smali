.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final blacklist ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final blacklist ASPECT_LOCK_WIDTH:I = 0x1

.field private static final blacklist ASPECT_SQUARE:I = 0x0

.field public static final blacklist DEBUG_A11Y:Z = false

.field private static final blacklist DOT_ACTIVATION_DURATION_MILLIS:I = 0x32

.field private static final blacklist DOT_RADIUS_DECREASE_DURATION_MILLIS:I = 0xc0

.field private static final blacklist DOT_RADIUS_INCREASE_DURATION_MILLIS:I = 0x60

.field private static final blacklist DRAG_THRESHHOLD:F = 0.0f

.field private static final blacklist LINE_END_ANIMATION_DURATION_MILLIS:I = 0x32

.field private static final blacklist MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final blacklist MIN_DOT_HIT_FACTOR:F = 0.2f

.field private static final blacklist PROFILE_DRAWING:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "LockPatternView"

.field public static final blacklist VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field private blacklist mAnimatingPeriodStart:J

.field private blacklist mAspect:I

.field private final blacklist mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field private final blacklist mCurrentPath:Landroid/graphics/Path;

.field private blacklist mDotActivatedColor:I

.field private blacklist mDotColor:I

.field private final blacklist mDotHitFactor:F

.field private blacklist mDotHitRadius:F

.field private final blacklist mDotSize:I

.field private final blacklist mDotSizeActivated:I

.field private blacklist mDrawingProfilingStarted:Z

.field private blacklist mErrorColor:I

.field private final blacklist mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private final blacklist mFadeOutGradientShader:Landroid/graphics/LinearGradient;

.field private blacklist mFadePattern:Z

.field private final blacklist mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mInProgressX:F

.field private blacklist mInProgressY:F

.field private greylist mInStealthMode:Z

.field private blacklist mInputEnabled:Z

.field private final blacklist mInvalidate:Landroid/graphics/Rect;

.field private final blacklist mLineFadeOutAnimationDelayMs:I

.field private final blacklist mLineFadeOutAnimationDurationMs:I

.field private blacklist mLineFadeStart:[J

.field private final blacklist mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final greylist mPaint:Landroid/graphics/Paint;

.field private final greylist mPathPaint:Landroid/graphics/Paint;

.field private final blacklist mPathWidth:I

.field private final greylist mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private final blacklist mPatternDrawLookup:[[Z

.field private greylist mPatternInProgress:Z

.field private blacklist mRegularColor:I

.field private blacklist mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist mSquareHeight:F

.field private greylist mSquareWidth:F

.field private blacklist mSuccessColor:I

.field private final blacklist mTmpInvalidateRect:Landroid/graphics/Rect;

.field private blacklist mUseLockPatternDrawable:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDotHitRadius(Lcom/android/internal/widget/LockPatternView;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDotSize(Lcom/android/internal/widget/LockPatternView;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPatternDrawLookup(Lcom/android/internal/widget/LockPatternView;)[[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPatternInProgress(Lcom/android/internal/widget/LockPatternView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdetectCellHit(Lcom/android/internal/widget/LockPatternView;FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCenterXForColumn(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCenterYForRow(Lcom/android/internal/widget/LockPatternView;I)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 306
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 95
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 97
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 126
    const/4 v5, 0x2

    new-array v7, v5, [I

    fill-array-data v7, :array_0

    const-class v8, Z

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    iput-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 133
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 134
    iput v7, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 137
    new-array v6, v6, [J

    iput-object v6, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    .line 139
    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v6, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 141
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 142
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 144
    iput-boolean v2, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 146
    iput-boolean v6, v0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 155
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 156
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 157
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 312
    sget-object v7, Lcom/android/internal/R$styleable;->LockPatternView:[I

    const v8, 0x112007e

    const v9, 0x10304d8

    move-object/from16 v10, p2

    invoke-virtual {v1, v10, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 315
    .local v7, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 317
    .local v8, "aspect":Ljava/lang/String;
    const-string/jumbo v9, "square"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 318
    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .line 319
    :cond_0
    const-string/jumbo v9, "lock_width"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 320
    iput v6, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .line 321
    :cond_1
    const-string/jumbo v9, "lock_height"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 322
    iput v5, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .line 324
    :cond_2
    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 327
    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    .line 330
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 331
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 333
    const/4 v9, 0x5

    invoke-virtual {v7, v9, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 334
    const/4 v9, 0x3

    invoke-virtual {v7, v9, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, v0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 335
    const/4 v11, 0x6

    invoke-virtual {v7, v11, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 336
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v7, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    .line 337
    invoke-virtual {v7, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    .line 339
    const/4 v2, 0x4

    iget v11, v0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    invoke-virtual {v7, v2, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 340
    .local v2, "pathColor":I
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 344
    sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10501ba

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    .line 347
    int-to-float v11, v11

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 349
    nop

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x10e0122

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    .line 351
    nop

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x10e0121

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x10501bb

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x10501bc

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    .line 357
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 358
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10501b9

    invoke-virtual {v11, v12, v4, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 359
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    const v12, 0x3e4ccccd    # 0.2f

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iput v11, v0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x111021e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, v0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    .line 362
    if-eqz v11, :cond_3

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x108061a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080618

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 367
    :cond_3
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 368
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 370
    new-array v3, v5, [I

    fill-array-data v3, :array_1

    const-class v6, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 371
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v9, :cond_5

    .line 372
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    if-ge v6, v9, :cond_4

    .line 373
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v3

    new-instance v12, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v12}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v12, v11, v6

    .line 374
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v3

    aget-object v11, v11, v6

    iget v12, v0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/2addr v12, v5

    int-to-float v12, v12

    iput v12, v11, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 375
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v3

    aget-object v11, v11, v6

    iput v3, v11, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 376
    iget-object v11, v0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v11, v11, v3

    aget-object v11, v11, v6

    iput v6, v11, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    .line 372
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 371
    .end local v6    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 380
    .end local v3    # "i":I
    :cond_5
    const v3, 0x10c000d

    .line 381
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 382
    const v3, 0x10c000e

    .line 383
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 384
    new-instance v3, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v3, v0, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 385
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10501bd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 390
    .local v3, "fadeAwayGradientWidth":I
    new-instance v5, Landroid/graphics/LinearGradient;

    neg-int v6, v3

    int-to-float v6, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float v13, v6, v9

    const/4 v14, 0x0

    int-to-float v6, v3

    div-float v15, v6, v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v5

    move/from16 v18, v2

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v5, v0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    .line 394
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 395
    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method private blacklist addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 783
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 784
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    .line 786
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyCellAdded()V

    .line 789
    return-void
.end method

.method private blacklist calculateLastSegmentAlpha(FFFF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .line 1337
    sub-float v0, p1, p3

    .line 1338
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 1339
    .local v1, "diffY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1340
    .local v2, "dist":F
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float v3, v2, v3

    .line 1341
    .local v3, "frac":F
    const v4, 0x3e99999a    # 0.3f

    sub-float v4, v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private blacklist cancelLineAnimations()V
    .locals 6

    .line 1075
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 1076
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1077
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v0

    aget-object v3, v3, v2

    .line 1078
    .local v3, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 1079
    iget-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1080
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 1081
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 1082
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 1083
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1084
    iput v4, v3, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 1076
    .end local v3    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1075
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1088
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private blacklist checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 903
    .local v0, "cellHit":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    .line 904
    return-object v0

    .line 906
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist clearPatternDrawLookup()V
    .locals 7

    .line 655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 656
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 657
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aput-boolean v4, v3, v2

    .line 658
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v0

    const-wide/16 v5, 0x0

    aput-wide v5, v3, v4

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 655
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;)Landroid/animation/Animator;
    .locals 7
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;

    .line 821
    new-instance v0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 827
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 828
    .local v2, "activateAnimator":Landroid/animation/ValueAnimator;
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 829
    .local v1, "deactivateAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 830
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 831
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 832
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 835
    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 836
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 837
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 838
    .local v3, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x64

    int-to-long v5, v5

    .line 839
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 841
    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 842
    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;)Landroid/animation/Animator;
    .locals 10
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;

    .line 876
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 877
    .local v0, "defaultRadius":F
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 879
    .local v2, "activatedRadius":F
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    .line 885
    .local v1, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v2, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 886
    .local v4, "activationAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 887
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 888
    const-wide/16 v7, 0x60

    invoke-virtual {v4, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 890
    new-array v7, v3, [F

    aput v2, v7, v5

    aput v0, v7, v6

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 891
    .local v7, "deactivationAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 892
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 893
    const-wide/16 v8, 0xc0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 895
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 896
    .local v8, "set":Landroid/animation/AnimatorSet;
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v4, v3, v5

    aput-object v7, v3, v6

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 897
    return-object v8
.end method

.method private blacklist createLineDisappearingAnimation()Landroid/animation/Animator;
    .locals 3

    .line 868
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 869
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/LockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 871
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 872
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;
    .locals 9
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .line 851
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 852
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v8, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 858
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 859
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 860
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 746
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_6

    .line 749
    const/4 v1, 0x0

    .line 750
    .local v1, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 751
    .local v2, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 752
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 753
    .local v3, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v6, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int/2addr v5, v6

    .line 754
    .local v5, "dRow":I
    iget v6, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int/2addr v6, v7

    .line 756
    .local v6, "dColumn":I
    iget v7, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 757
    .local v7, "fillInRow":I
    iget v8, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 759
    .local v8, "fillInColumn":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, -0x1

    const/4 v11, 0x2

    if-ne v9, v11, :cond_1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_1

    .line 760
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v5, :cond_0

    move v12, v4

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    add-int v7, v9, v12

    .line 763
    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ne v9, v11, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-eq v9, v4, :cond_3

    .line 764
    iget v9, v3, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v6, :cond_2

    move v10, v4

    :cond_2
    add-int v8, v9, v10

    .line 767
    :cond_3
    invoke-static {v7, v8}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 770
    .end local v3    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "dRow":I
    .end local v6    # "dColumn":I
    .end local v7    # "fillInRow":I
    .end local v8    # "fillInColumn":I
    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v3, v3, v5

    iget v5, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v3, v3, v5

    if-nez v3, :cond_5

    .line 772
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 774
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 775
    invoke-virtual {p0, v4, v4}, Lcom/android/internal/widget/LockPatternView;->performHapticFeedback(II)Z

    .line 777
    return-object v0

    .line 779
    .end local v1    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v2    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist detectCellHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 912
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    mul-float/2addr v0, v0

    .line 913
    .local v0, "hitRadiusSquared":F
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 914
    const/4 v3, 0x0

    .local v3, "column":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 915
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 916
    .local v4, "centerY":F
    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    .line 917
    .local v5, "centerX":F
    sub-float v6, p1, v5

    sub-float v7, p1, v5

    mul-float/2addr v6, v7

    sub-float v7, p2, v4

    sub-float v8, p2, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, v6, v0

    if-gez v6, :cond_0

    .line 919
    invoke-static {v1, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    return-object v2

    .line 914
    .end local v4    # "centerY":F
    .end local v5    # "centerX":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 913
    .end local v3    # "column":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "row":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z

    .line 1391
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v2, v2

    int-to-float v3, p2

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v3, v3

    add-int/lit8 v4, p3, 0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v4, v4

    add-int/lit8 v5, p2, 0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1396
    .local v0, "dst":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v1, p4, v1

    .line 1399
    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1400
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1401
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1402
    if-eqz p5, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 1405
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1403
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1407
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1408
    return-void
.end method

.method private blacklist drawCircle(Landroid/graphics/Canvas;FFFZFF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z
    .param p6, "alpha"    # F
    .param p7, "activationAnimationProgress"    # F

    .line 1375
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    .line 1376
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    invoke-static {v0, v1, p7}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 1378
    .local v0, "resultColor":I
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1379
    .end local v0    # "resultColor":I
    goto :goto_0

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->getDotColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1382
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1383
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1384
    return-void
.end method

.method private blacklist drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "fadeAwayProgress"    # F

    .line 1303
    move-object v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p6

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1307
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternView;->mFadeOutGradientShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1308
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1311
    mul-float v1, p4, p6

    sub-float v3, v2, p6

    mul-float v3, v3, p2

    add-float v8, v1, v3

    .line 1312
    .local v8, "gradientMidX":F
    mul-float v1, p5, p6

    sub-float v3, v2, p6

    mul-float v3, v3, p3

    add-float v9, v1, v3

    .line 1313
    .local v9, "gradientMidY":F
    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1316
    sub-float v1, p5, p3

    sub-float v3, p4, p2

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    .line 1317
    .local v10, "segmentAngleRad":D
    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 1318
    .local v1, "segmentAngleDegrees":F
    sub-float v3, p4, p2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1321
    const/high16 v3, 0x43340000    # 180.0f

    add-float/2addr v1, v3

    move v12, v1

    goto :goto_0

    .line 1318
    :cond_0
    move v12, v1

    .line 1323
    .end local v1    # "segmentAngleDegrees":F
    .local v12, "segmentAngleDegrees":F
    :goto_0
    invoke-virtual {v7, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1326
    sub-float v1, p4, p2

    float-to-double v3, v1

    sub-float v1, p5, p3

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v13, v3

    .line 1329
    .local v13, "segmentLength":F
    neg-float v1, v13

    mul-float v3, v1, p6

    const/4 v4, 0x0

    sub-float v2, v2, p6

    mul-float v5, v13, v2

    const/4 v6, 0x0

    iget-object v14, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1332
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1333
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1334
    return-void
.end method

.method private blacklist drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "endX"    # F
    .param p5, "endY"    # F
    .param p6, "lineFadeStart"    # J
    .param p8, "elapsedRealtime"    # J

    .line 1284
    move-object v7, p0

    iget-boolean v0, v7, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_1

    .line 1285
    sub-long v0, p8, p6

    iget v2, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDelayMs:I

    iget v3, v7, Lcom/android/internal/widget/LockPatternView;->mLineFadeOutAnimationDurationMs:I

    add-int v4, v2, v3

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 1288
    return-void

    .line 1291
    :cond_0
    sub-long v0, p8, p6

    int-to-long v4, v2

    sub-long/2addr v0, v4

    long-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1294
    .local v8, "fadeAwayProgress":F
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView;->drawFadingAwayLineSegment(Landroid/graphics/Canvas;FFFFF)V

    goto :goto_0

    .line 1296
    .end local v8    # "fadeAwayProgress":F
    :cond_1
    iget-object v0, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1297
    iget-object v13, v7, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1299
    :goto_0
    return-void
.end method

.method private blacklist getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .line 1137
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private blacklist getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .line 1141
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private blacklist getCurrentColor(Z)I
    .locals 3
    .param p1, "partOfPattern"    # Z

    .line 1356
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_1

    .line 1361
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    .line 1362
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 1366
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    return v0

    .line 1358
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    return v0
.end method

.method private blacklist getDotColor()I
    .locals 2

    .line 1345
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v0, :cond_0

    .line 1347
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_1

    .line 1350
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    return v0

    .line 1352
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    return v0
.end method

.method private blacklist handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1090
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 1091
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1092
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1093
    .local v1, "y":F
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    .line 1094
    .local v2, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v2, :cond_0

    .line 1095
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1096
    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1097
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    goto :goto_0

    .line 1098
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v3, :cond_1

    .line 1099
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1100
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 1102
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1103
    iget v3, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    .line 1104
    .local v3, "startX":F
    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v4

    .line 1106
    .local v4, "startY":F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 1107
    .local v5, "widthOffset":F
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    div-float/2addr v7, v6

    .line 1109
    .local v7, "heightOffset":F
    sub-float v6, v3, v5

    float-to-int v6, v6

    sub-float v8, v4, v7

    float-to-int v8, v8

    add-float v9, v3, v5

    float-to-int v9, v9

    add-float v10, v4, v7

    float-to-int v10, v10

    invoke-virtual {p0, v6, v8, v9, v10}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    .line 1112
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v5    # "widthOffset":F
    .end local v7    # "heightOffset":F
    :cond_2
    iput v0, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1113
    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1120
    return-void
.end method

.method private blacklist handleActionMove(Landroid/view/MotionEvent;)V
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 988
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mPathWidth:I

    int-to-float v2, v2

    .line 989
    .local v2, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    .line 990
    .local v3, "historySize":I
    iget-object v4, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 991
    const/4 v4, 0x0

    .line 992
    .local v4, "invalidateNow":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v3, 0x1

    if-ge v5, v6, :cond_7

    .line 993
    if-ge v5, v3, :cond_0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 994
    .local v6, "x":F
    :goto_1
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    goto :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 995
    .local v7, "y":F
    :goto_2
    invoke-direct {v0, v6, v7}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 996
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v9, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 997
    .local v9, "patternSize":I
    if-eqz v8, :cond_2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 998
    invoke-direct {v0, v10}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 999
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternStarted()V

    .line 1002
    :cond_2
    iget v10, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1003
    .local v10, "dx":F
    iget v11, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    sub-float v11, v7, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1004
    .local v11, "dy":F
    const/4 v12, 0x0

    cmpl-float v13, v10, v12

    if-gtz v13, :cond_3

    cmpl-float v12, v11, v12

    if-lez v12, :cond_4

    .line 1005
    :cond_3
    const/4 v4, 0x1

    .line 1008
    :cond_4
    iget-boolean v12, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v12, :cond_6

    if-lez v9, :cond_6

    .line 1009
    iget-object v12, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1010
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v13, v9, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1011
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v14, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v14}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 1012
    .local v14, "lastCellCenterX":F
    iget v15, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 1015
    .local v15, "lastCellCenterY":F
    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v16

    sub-float v1, v16, v2

    .line 1016
    .local v1, "left":F
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v17, v3

    .end local v3    # "historySize":I
    .local v17, "historySize":I
    add-float v3, v16, v2

    .line 1017
    .local v3, "right":F
    invoke-static {v15, v7}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v18, v4

    .end local v4    # "invalidateNow":Z
    .local v18, "invalidateNow":Z
    sub-float v4, v16, v2

    .line 1018
    .local v4, "top":F
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v19, v6

    .end local v6    # "x":F
    .local v19, "x":F
    add-float v6, v16, v2

    .line 1021
    .local v6, "bottom":F
    if-eqz v8, :cond_5

    .line 1022
    move/from16 v16, v2

    .end local v2    # "radius":F
    .local v16, "radius":F
    iget v2, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v2, v2, v20

    .line 1023
    .local v2, "width":F
    move/from16 v21, v7

    .end local v7    # "y":F
    .local v21, "y":F
    iget v7, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float v7, v7, v20

    .line 1024
    .local v7, "height":F
    move/from16 v20, v9

    .end local v9    # "patternSize":I
    .local v20, "patternSize":I
    iget v9, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v0, v9}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 1025
    .local v9, "hitCellCenterX":F
    move/from16 v22, v10

    .end local v10    # "dx":F
    .local v22, "dx":F
    iget v10, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v0, v10}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 1027
    .local v10, "hitCellCenterY":F
    move-object/from16 v23, v8

    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v23, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    sub-float v8, v9, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1028
    add-float v8, v9, v2

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1029
    sub-float v8, v10, v7

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1030
    add-float v8, v10, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto :goto_3

    .line 1021
    .end local v16    # "radius":F
    .end local v20    # "patternSize":I
    .end local v21    # "y":F
    .end local v22    # "dx":F
    .end local v23    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v2, "radius":F
    .local v7, "y":F
    .restart local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v9, "patternSize":I
    .local v10, "dx":F
    :cond_5
    move/from16 v16, v2

    move/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v22, v10

    .line 1034
    .end local v2    # "radius":F
    .end local v7    # "y":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v9    # "patternSize":I
    .end local v10    # "dx":F
    .restart local v16    # "radius":F
    .restart local v20    # "patternSize":I
    .restart local v21    # "y":F
    .restart local v22    # "dx":F
    .restart local v23    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :goto_3
    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 1035
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 1034
    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_4

    .line 1008
    .end local v1    # "left":F
    .end local v12    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "radius":F
    .end local v17    # "historySize":I
    .end local v18    # "invalidateNow":Z
    .end local v19    # "x":F
    .end local v20    # "patternSize":I
    .end local v21    # "y":F
    .end local v22    # "dx":F
    .end local v23    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v2    # "radius":F
    .local v3, "historySize":I
    .local v4, "invalidateNow":Z
    .local v6, "x":F
    .restart local v7    # "y":F
    .restart local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v9    # "patternSize":I
    .restart local v10    # "dx":F
    :cond_6
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v21, v7

    move-object/from16 v23, v8

    move/from16 v20, v9

    move/from16 v22, v10

    .line 992
    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .end local v4    # "invalidateNow":Z
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v9    # "patternSize":I
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    .restart local v16    # "radius":F
    .restart local v17    # "historySize":I
    .restart local v18    # "invalidateNow":Z
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_0

    .end local v16    # "radius":F
    .end local v17    # "historySize":I
    .end local v18    # "invalidateNow":Z
    .restart local v2    # "radius":F
    .restart local v3    # "historySize":I
    .restart local v4    # "invalidateNow":Z
    :cond_7
    move/from16 v16, v2

    move/from16 v17, v3

    .line 1038
    .end local v2    # "radius":F
    .end local v3    # "historySize":I
    .end local v5    # "i":I
    .restart local v16    # "radius":F
    .restart local v17    # "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 1042
    if-eqz v4, :cond_8

    .line 1043
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1044
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 1045
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1047
    :cond_8
    return-void
.end method

.method private blacklist handleActionUp()V
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 1057
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->cancelLineAnimations()V

    .line 1058
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternDetected()V

    .line 1060
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    if-eqz v0, :cond_0

    .line 1061
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 1062
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1064
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1072
    :cond_1
    return-void
.end method

.method private blacklist notifyCellAdded()V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 592
    return-void
.end method

.method private blacklist notifyPatternCleared()V
    .locals 1

    .line 610
    const v0, 0x10404f6

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 611
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 614
    :cond_0
    return-void
.end method

.method private greylist notifyPatternDetected()V
    .locals 2

    .line 603
    const v0, 0x10404f7

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 604
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 607
    :cond_0
    return-void
.end method

.method private blacklist notifyPatternStarted()V
    .locals 1

    .line 595
    const v0, 0x10404f8

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->sendAccessEvent(I)V

    .line 596
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 597
    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 599
    :cond_0
    return-void
.end method

.method private blacklist resetPattern()V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 638
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 639
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 641
    return-void
.end method

.method private blacklist resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 701
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 710
    move v0, v1

    goto :goto_0

    .line 703
    :sswitch_0
    move v0, p2

    .line 704
    goto :goto_0

    .line 706
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 707
    nop

    .line 712
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1050
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1051
    return-void
.end method

.method private blacklist setPatternInProgress(Z)V
    .locals 1
    .param p1, "progress"    # Z

    .line 981
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 982
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 983
    return-void
.end method

.method private blacklist startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 9
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .line 792
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v0, v0, v1

    .line 794
    .local v0, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 797
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 798
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    nop

    .line 799
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->createLineDisappearingAnimation()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 801
    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v7

    .line 800
    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/LockPatternView;->createLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 802
    .local v2, "animatorSetBuilder":Landroid/animation/AnimatorSet$Builder;
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mDotSizeActivated:I

    if-eq v3, v4, :cond_1

    .line 803
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->createDotRadiusAnimation(Lcom/android/internal/widget/LockPatternView$CellState;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 805
    :cond_1
    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotColor:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mDotActivatedColor:I

    if-eq v3, v4, :cond_2

    .line 806
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->createDotActivationColorAnimation(Lcom/android/internal/widget/LockPatternView$CellState;)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 809
    :cond_2
    new-instance v3, Lcom/android/internal/widget/LockPatternView$4;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 816
    iput-object v1, v0, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 817
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 818
    return-void
.end method

.method private blacklist startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .line 531
    move-object v9, p0

    move-object v10, p1

    move/from16 v11, p5

    move/from16 v12, p3

    iput v12, v10, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 532
    iput v11, v10, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 533
    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p7

    iput v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 535
    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 536
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    add-float v0, v0, p4

    .line 535
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 537
    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 538
    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v0, v0, p6

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 539
    iget-object v0, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->getDotColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    iget-object v0, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 541
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, v9, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 543
    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 544
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v0

    add-float v2, v0, v11

    .line 543
    move-object v0, p0

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 545
    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float v2, v0, p7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 547
    new-instance v8, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v13, p13

    invoke-direct {v8, p0, p1, v13}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move-object v1, p1

    move/from16 v2, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView;->startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 558
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 559
    return-void
.end method

.method private blacklist startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 16
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .line 498
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    iput v11, v10, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 499
    move/from16 v12, p4

    iput v12, v10, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 500
    iget v0, v9, Lcom/android/internal/widget/LockPatternView;->mDotSize:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p6

    iput v0, v10, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 501
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 502
    .local v13, "animator":Landroid/animation/ValueAnimator;
    move-wide/from16 v14, p10

    invoke-virtual {v13, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 503
    move-wide/from16 v7, p8

    invoke-virtual {v13, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 504
    move-object/from16 v6, p12

    invoke-virtual {v13, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 505
    new-instance v5, Lcom/android/internal/widget/LockPatternView$1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v10, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v13, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 515
    new-instance v0, Lcom/android/internal/widget/LockPatternView$2;

    move-object/from16 v1, p13

    invoke-direct {v0, v9, v1}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 523
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    .line 524
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blacklist startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "endAlpha"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 564
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 566
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 567
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 568
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 570
    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 572
    return-void
.end method

.method private blacklist startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .locals 1
    .param p2, "endValue"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .line 576
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 577
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 578
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 579
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 581
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 582
    return-void
.end method


# virtual methods
.method public greylist clearPattern()V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 622
    return-void
.end method

.method public greylist disableInput()V
    .locals 1

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 670
    return-void
.end method

.method protected whitelist dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 628
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 629
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 630
    return v0
.end method

.method public greylist enableInput()V
    .locals 1

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 678
    return-void
.end method

.method public greylist getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method public blacklist isEmpty()Z
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist isInStealthMode()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method synthetic blacklist lambda$createDotActivationColorAnimation$0$com-android-internal-widget-LockPatternView(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 823
    nop

    .line 824
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    .line 825
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 826
    return-void
.end method

.method synthetic blacklist lambda$createDotRadiusAnimation$3$com-android-internal-widget-LockPatternView(Lcom/android/internal/widget/LockPatternView$CellState;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 881
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 883
    return-void
.end method

.method synthetic blacklist lambda$createLineDisappearingAnimation$2$com-android-internal-widget-LockPatternView(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 869
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method synthetic blacklist lambda$createLineEndAnimation$1$com-android-internal-widget-LockPatternView(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "targetX"    # F
    .param p4, "startY"    # F
    .param p5, "targetY"    # F
    .param p6, "animation"    # Landroid/animation/ValueAnimator;

    .line 853
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 854
    .local v0, "t":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    mul-float/2addr v2, p2

    mul-float v3, v0, p3

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 855
    sub-float/2addr v1, v0

    mul-float/2addr v1, p4

    mul-float v2, v0, p5

    add-float/2addr v1, v2

    iput v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 856
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 857
    return-void
.end method

.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1146
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v12, v10, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 1147
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1148
    .local v13, "count":I
    iget-object v14, v10, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 1150
    .local v14, "drawLookup":[[Z
    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 1155
    add-int/lit8 v0, v13, 0x1

    mul-int/lit16 v0, v0, 0x2bc

    .line 1156
    .local v0, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v10, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    rem-int/2addr v1, v0

    .line 1158
    .local v1, "spotInCycle":I
    div-int/lit16 v3, v1, 0x2bc

    .line 1160
    .local v3, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 1161
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1162
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1163
    .local v5, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v6

    aget-object v6, v14, v6

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    aput-boolean v2, v6, v7

    .line 1161
    .end local v5    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1168
    .end local v4    # "i":I
    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v13, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1171
    .local v4, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v4, :cond_2

    .line 1172
    rem-int/lit16 v5, v1, 0x2bc

    int-to-float v5, v5

    const/high16 v6, 0x442f0000    # 700.0f

    div-float/2addr v5, v6

    .line 1176
    .local v5, "percentageOfNextCircle":F
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1177
    .local v6, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v7, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v10, v7}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v7

    .line 1178
    .local v7, "centerX":F
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v10, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v8

    .line 1180
    .local v8, "centerY":F
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1181
    .local v9, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v15, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 1182
    invoke-direct {v10, v15}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v15

    sub-float/2addr v15, v7

    mul-float/2addr v15, v5

    .line 1183
    .local v15, "dx":F
    iget v2, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 1184
    invoke-direct {v10, v2}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float/2addr v2, v8

    mul-float/2addr v2, v5

    .line 1185
    .local v2, "dy":F
    move/from16 v17, v0

    .end local v0    # "oneCycle":I
    .local v17, "oneCycle":I
    add-float v0, v7, v15

    iput v0, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 1186
    add-float v0, v8, v2

    iput v0, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    goto :goto_2

    .line 1171
    .end local v2    # "dy":F
    .end local v5    # "percentageOfNextCircle":F
    .end local v6    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "centerX":F
    .end local v8    # "centerY":F
    .end local v9    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v15    # "dx":F
    .end local v17    # "oneCycle":I
    .restart local v0    # "oneCycle":I
    :cond_2
    move/from16 v17, v0

    .line 1189
    .end local v0    # "oneCycle":I
    .restart local v17    # "oneCycle":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1192
    .end local v1    # "spotInCycle":I
    .end local v3    # "numCircles":I
    .end local v4    # "needToUpdateInProgressPoint":Z
    .end local v17    # "oneCycle":I
    :cond_3
    iget-object v15, v10, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 1193
    .local v15, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    .line 1198
    iget-boolean v0, v10, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v16, v0

    .line 1200
    .local v16, "drawPath":Z
    if-eqz v16, :cond_a

    .line 1201
    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-direct {v10, v1}, Lcom/android/internal/widget/LockPatternView;->getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1203
    const/4 v0, 0x0

    .line 1204
    .local v0, "anyCircles":Z
    const/4 v1, 0x0

    .line 1205
    .local v1, "lastX":F
    const/4 v2, 0x0

    .line 1206
    .local v2, "lastY":F
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    .line 1207
    .local v17, "elapsedRealtime":J
    const/4 v3, 0x0

    move v8, v1

    move v9, v2

    move v6, v3

    .end local v1    # "lastX":F
    .end local v2    # "lastY":F
    .local v6, "i":I
    .local v8, "lastX":F
    .local v9, "lastY":F
    :goto_3
    if-ge v6, v13, :cond_8

    .line 1208
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1213
    .local v7, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v1, v14, v1

    iget v2, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4

    .line 1214
    move-object/from16 v24, v12

    move/from16 v25, v13

    move v12, v8

    move v13, v9

    goto/16 :goto_6

    .line 1216
    :cond_4
    const/16 v19, 0x1

    .line 1218
    .end local v0    # "anyCircles":Z
    .local v19, "anyCircles":Z
    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v1, v0, v6

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 1219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    aput-wide v1, v0, v6

    .line 1222
    :cond_5
    iget v0, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-direct {v10, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 1223
    .local v20, "centerX":F
    iget v0, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-direct {v10, v0}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 1224
    .local v21, "centerY":F
    if-eqz v6, :cond_7

    .line 1225
    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, v7, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v5, v0, v1

    .line 1226
    .local v5, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    .line 1229
    iget v0, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget v0, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 1230
    iget v0, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1231
    .local v0, "endX":F
    iget v1, v5, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    move/from16 v22, v0

    move/from16 v23, v1

    .local v1, "endY":F
    goto :goto_4

    .line 1233
    .end local v0    # "endX":F
    .end local v1    # "endY":F
    :cond_6
    move/from16 v0, v20

    .line 1234
    .restart local v0    # "endX":F
    move/from16 v1, v21

    move/from16 v22, v0

    move/from16 v23, v1

    .line 1236
    .end local v0    # "endX":F
    .local v22, "endX":F
    .local v23, "endY":F
    :goto_4
    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mLineFadeStart:[J

    aget-wide v24, v0, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move/from16 v4, v22

    move-object/from16 v26, v5

    .end local v5    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .local v26, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    move/from16 v5, v23

    move/from16 v27, v6

    move-object/from16 v28, v7

    .end local v6    # "i":I
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .local v27, "i":I
    .local v28, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-wide/from16 v6, v24

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v12, v8

    move v13, v9

    .end local v8    # "lastX":F
    .end local v9    # "lastY":F
    .local v12, "lastX":F
    .local v13, "lastY":F
    .local v24, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local v25, "count":I
    move-wide/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/widget/LockPatternView;->drawLineSegment(Landroid/graphics/Canvas;FFFFJJ)V

    goto :goto_5

    .line 1224
    .end local v22    # "endX":F
    .end local v23    # "endY":F
    .end local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v25    # "count":I
    .end local v26    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v27    # "i":I
    .end local v28    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v6    # "i":I
    .restart local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v8    # "lastX":F
    .restart local v9    # "lastY":F
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local v13, "count":I
    :cond_7
    move/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v12, v8

    move v13, v9

    .line 1239
    .end local v6    # "i":I
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v8    # "lastX":F
    .end local v9    # "lastY":F
    .local v12, "lastX":F
    .local v13, "lastY":F
    .restart local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v25    # "count":I
    .restart local v27    # "i":I
    .restart local v28    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :goto_5
    move/from16 v8, v20

    .line 1240
    .end local v12    # "lastX":F
    .restart local v8    # "lastX":F
    move/from16 v9, v21

    .line 1207
    .end local v13    # "lastY":F
    .end local v20    # "centerX":F
    .end local v21    # "centerY":F
    .end local v28    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v9    # "lastY":F
    add-int/lit8 v6, v27, 0x1

    move/from16 v0, v19

    move-object/from16 v12, v24

    move/from16 v13, v25

    .end local v27    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_3

    .end local v19    # "anyCircles":Z
    .end local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v25    # "count":I
    .local v0, "anyCircles":Z
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local v13, "count":I
    :cond_8
    move/from16 v27, v6

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v12, v8

    move v13, v9

    .line 1244
    .end local v6    # "i":I
    .end local v8    # "lastX":F
    .end local v9    # "lastY":F
    .local v12, "lastX":F
    .local v13, "lastY":F
    .restart local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v25    # "count":I
    :goto_6
    iget-boolean v1, v10, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v1, :cond_9

    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_b

    :cond_9
    if-eqz v0, :cond_b

    .line 1246
    invoke-virtual {v15}, Landroid/graphics/Path;->rewind()V

    .line 1247
    invoke-virtual {v15, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1248
    iget v1, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v2, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v15, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1250
    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v2, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    iget v3, v10, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    invoke-direct {v10, v2, v3, v12, v13}, Lcom/android/internal/widget/LockPatternView;->calculateLastSegmentAlpha(FFFF)F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1252
    iget-object v1, v10, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v15, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 1200
    .end local v0    # "anyCircles":Z
    .end local v17    # "elapsedRealtime":J
    .end local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v25    # "count":I
    .local v12, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .local v13, "count":I
    :cond_a
    move-object/from16 v24, v12

    move/from16 v25, v13

    .line 1257
    .end local v12    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v13    # "count":I
    .restart local v24    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v25    # "count":I
    :cond_b
    :goto_7
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_8
    const/4 v9, 0x3

    if-ge v8, v9, :cond_f

    .line 1258
    invoke-direct {v10, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v12

    .line 1259
    .local v12, "centerY":F
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_9
    if-ge v13, v9, :cond_e

    .line 1260
    iget-object v0, v10, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v0, v0, v8

    aget-object v7, v0, v13

    .line 1261
    .local v7, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-direct {v10, v13}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v6

    .line 1262
    .local v6, "centerX":F
    iget v5, v7, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 1264
    .local v5, "translationY":F
    iget-boolean v0, v10, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v0, :cond_c

    .line 1265
    iget v4, v7, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v0, v14, v8

    aget-boolean v17, v0, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v13

    move/from16 v18, v5

    .end local v5    # "translationY":F
    .local v18, "translationY":F
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternView;->drawCellDrawable(Landroid/graphics/Canvas;IIFZ)V

    goto :goto_a

    .line 1267
    .end local v18    # "translationY":F
    .restart local v5    # "translationY":F
    :cond_c
    move/from16 v18, v5

    .end local v5    # "translationY":F
    .restart local v18    # "translationY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, v7, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    if-eqz v0, :cond_d

    .line 1268
    move-object v0, v11

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 1269
    .local v0, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v1, v7, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v2, v7, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v3, v7, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v4, v7, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 1271
    .end local v0    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    goto :goto_a

    .line 1272
    :cond_d
    float-to-int v0, v6

    int-to-float v2, v0

    float-to-int v0, v12

    int-to-float v0, v0

    add-float v3, v0, v18

    iget v4, v7, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v0, v14, v8

    aget-boolean v5, v0, v13

    iget v1, v7, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    iget v0, v7, Lcom/android/internal/widget/LockPatternView$CellState;->activationAnimationProgress:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move/from16 v20, v6

    .end local v6    # "centerX":F
    .restart local v20    # "centerX":F
    move/from16 v6, v19

    move-object/from16 v19, v7

    .end local v7    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .local v19, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;FFFZFF)V

    .line 1259
    .end local v18    # "translationY":F
    .end local v19    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v20    # "centerX":F
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 1257
    .end local v12    # "centerY":F
    .end local v13    # "j":I
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 1279
    .end local v8    # "i":I
    :cond_f
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 928
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 930
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 938
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 932
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 933
    goto :goto_0

    .line 935
    :pswitch_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 936
    nop

    .line 941
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 942
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 944
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v0

    .line 718
    .local v0, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 719
    .local v1, "minimumHeight":I
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 720
    .local v2, "viewWidth":I
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 722
    .local v3, "viewHeight":I
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 730
    :pswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 727
    :pswitch_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 728
    goto :goto_0

    .line 724
    :pswitch_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    move v2, v4

    .line 725
    nop

    .line 734
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    .line 735
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1423
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 1424
    .local v0, "ss":Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1425
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1427
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v2

    .line 1425
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1428
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1429
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 1430
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 1431
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .line 1412
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v7

    .line 1413
    .local v7, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    move-result-object v8

    .line 1414
    .local v8, "patternBytes":[B
    if-eqz v8, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    .line 1415
    .local v2, "patternString":Ljava/lang/String;
    new-instance v9, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1417
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZLcom/android/internal/widget/LockPatternView$SavedState-IA;)V

    .line 1415
    return-object v9
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 682
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 683
    .local v0, "width":I
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 686
    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    sub-int v1, p2, v1

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    sub-int/2addr v1, v3

    .line 687
    .local v1, "height":I
    int-to-float v3, v1

    div-float/2addr v3, v2

    iput v3, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 688
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 689
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    div-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitFactor:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDotHitRadius:F

    .line 691
    iget-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mUseLockPatternDrawable:Z

    if-eqz v2, :cond_0

    .line 692
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mNotSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 693
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 695
    :cond_0
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 949
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 953
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 977
    return v1

    .line 964
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_1

    .line 965
    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->setPatternInProgress(Z)V

    .line 966
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 967
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->notifyPatternCleared()V

    .line 975
    :cond_1
    return v2

    .line 961
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 962
    return v2

    .line 958
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->handleActionUp()V

    .line 959
    return v2

    .line 955
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 956
    return v2

    .line 950
    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setColors(III)V
    .locals 1
    .param p1, "regularColor"    # I
    .param p2, "successColor"    # I
    .param p3, "errorColor"    # I

    .line 1129
    iput p1, p0, Lcom/android/internal/widget/LockPatternView;->mRegularColor:I

    .line 1130
    iput p3, p0, Lcom/android/internal/widget/LockPatternView;->mErrorColor:I

    .line 1131
    iput p2, p0, Lcom/android/internal/widget/LockPatternView;->mSuccessColor:I

    .line 1132
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1133
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 1134
    return-void
.end method

.method public greylist setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 2
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 463
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 464
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 470
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 471
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 473
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    goto :goto_0

    .line 466
    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 476
    return-void
.end method

.method public blacklist setFadePattern(Z)V
    .locals 0
    .param p1, "fadePattern"    # Z

    .line 425
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mFadePattern:Z

    .line 426
    return-void
.end method

.method public greylist setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .line 417
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 418
    return-void
.end method

.method public greylist setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 435
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 436
    return-void
.end method

.method public blacklist setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 445
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 446
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 447
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 448
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 449
    .local v1, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 450
    .end local v1    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 453
    return-void
.end method

.method public blacklist startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 487
    :cond_0
    invoke-direct/range {p0 .. p13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 491
    :goto_0
    return-void
.end method
