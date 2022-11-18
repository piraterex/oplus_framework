.class public Lcom/android/internal/app/SimpleIconFactory;
.super Ljava/lang/Object;
.source "SimpleIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;,
        Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist AMBIENT_SHADOW_ALPHA:I = 0x7

.field private static final blacklist BLUR_FACTOR:F = 0.03125f

.field private static final blacklist CIRCLE_AREA_BY_RECT:F = 0.7853982f

.field private static final blacklist DEFAULT_WRAPPER_BACKGROUND:I = -0x1

.field private static final blacklist KEY_SHADOW_ALPHA:I = 0xa

.field private static final blacklist KEY_SHADOW_DISTANCE:F = 0.020833334f

.field private static final blacklist LINEAR_SCALE_SLOPE:F = 0.040449437f

.field private static final blacklist MAX_CIRCLE_AREA_FACTOR:F = 0.6597222f

.field private static final blacklist MAX_SQUARE_AREA_FACTOR:F = 0.6510417f

.field private static final blacklist MIN_VISIBLE_ALPHA:I = 0x28

.field private static final blacklist SCALE_NOT_INITIALIZED:F

.field private static final blacklist sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/internal/app/SimpleIconFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAdaptiveIconBounds:Landroid/graphics/Rect;

.field private blacklist mAdaptiveIconScale:F

.field private blacklist mBadgeBitmapSize:I

.field private final blacklist mBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBlurPaint:Landroid/graphics/Paint;

.field private final blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCanvas:Landroid/graphics/Canvas;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private blacklist mDrawPaint:Landroid/graphics/Paint;

.field private blacklist mFillResIconDpi:I

.field private blacklist mIconBitmapSize:I

.field private final blacklist mLeftBorder:[F

.field private final blacklist mMaxSize:I

.field private final blacklist mOldBounds:Landroid/graphics/Rect;

.field private final blacklist mPixels:[B

.field private blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mRightBorder:[F

.field private final blacklist mScaleCheckCanvas:Landroid/graphics/Canvas;

.field private blacklist mWrapperBackgroundColor:I

.field private blacklist mWrapperIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 71
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 70
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;III)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fillResIconDpi"    # I
    .param p3, "iconBitmapSize"    # I
    .param p4, "badgeBitmapSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    .line 656
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    .line 657
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    .line 149
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 150
    iput p3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    .line 151
    iput p4, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    .line 152
    iput p2, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    .line 154
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 155
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 159
    mul-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    .line 160
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    .line 161
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    .line 162
    mul-int v1, v0, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    .line 163
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    .line 164
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    .line 165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    .line 170
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    int-to-float v1, p3

    const/high16 v2, 0x3d000000    # 0.03125f

    mul-float/2addr v1, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 172
    return-void
.end method

.method private static blacklist convertToConvexArray([FIII)V
    .locals 12
    .param p0, "xCoordinates"    # [F
    .param p1, "direction"    # I
    .param p2, "topY"    # I
    .param p3, "bottomY"    # I

    .line 606
    array-length v0, p0

    .line 608
    .local v0, "total":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    .line 610
    .local v1, "angles":[F
    move v2, p2

    .line 611
    .local v2, "first":I
    const/4 v3, -0x1

    .line 613
    .local v3, "last":I
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 615
    .local v4, "lastAngle":F
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_0
    if-gt v5, p3, :cond_6

    .line 616
    aget v6, p0, v5

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 617
    goto :goto_3

    .line 621
    :cond_0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v6, v4, v6

    if-nez v6, :cond_1

    .line 622
    move v6, v2

    .local v6, "start":I
    goto :goto_1

    .line 624
    .end local v6    # "start":I
    :cond_1
    aget v6, p0, v5

    aget v7, p0, v3

    sub-float/2addr v6, v7

    sub-int v7, v5, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 625
    .local v6, "currentAngle":F
    move v7, v3

    .line 628
    .local v7, "start":I
    sub-float v8, v6, v4

    int-to-float v9, p1

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    move v11, v7

    move v7, v6

    move v6, v11

    .line 629
    .local v6, "start":I
    .local v7, "currentAngle":F
    :cond_2
    if-le v6, v2, :cond_4

    .line 630
    add-int/lit8 v6, v6, -0x1

    .line 631
    aget v8, p0, v5

    aget v10, p0, v6

    sub-float/2addr v8, v10

    sub-int v10, v5, v6

    int-to-float v10, v10

    div-float v7, v8, v10

    .line 632
    aget v8, v1, v6

    sub-float v8, v7, v8

    int-to-float v10, p1

    mul-float/2addr v8, v10

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 633
    goto :goto_1

    .line 628
    .local v6, "currentAngle":F
    .local v7, "start":I
    :cond_3
    move v6, v7

    .line 640
    .end local v7    # "start":I
    .local v6, "start":I
    :cond_4
    :goto_1
    aget v7, p0, v5

    aget v8, p0, v6

    sub-float/2addr v7, v8

    sub-int v8, v5, v6

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 642
    .end local v4    # "lastAngle":F
    .local v7, "lastAngle":F
    move v4, v6

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 643
    aput v7, v1, v4

    .line 644
    aget v8, p0, v6

    sub-int v9, v4, v6

    int-to-float v9, v9

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    aput v8, p0, v4

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 646
    .end local v4    # "j":I
    :cond_5
    move v3, v5

    move v4, v7

    .line 615
    .end local v6    # "start":I
    .end local v7    # "lastAngle":F
    .local v4, "lastAngle":F
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 648
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method private blacklist createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F

    .line 316
    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F
    .param p3, "size"    # I
    .param p4, "insetAdiForShadow"    # Z
    .param p5, "ignoreAdiMask"    # Z

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 333
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    instance-of v5, v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v5, :cond_2

    .line 337
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 342
    .local v5, "adi":Landroid/graphics/drawable/AdaptiveIconDrawable;
    int-to-float v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v2

    mul-float/2addr v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 343
    .local v6, "offset":I
    if-eqz p4, :cond_0

    .line 344
    const/high16 v9, 0x3d000000    # 0.03125f

    int-to-float v10, v3

    mul-float/2addr v10, v9

    float-to-double v9, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 346
    :cond_0
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v3, v6

    sub-int v11, v3, v6

    invoke-direct {v9, v6, v6, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    .local v9, "bounds":Landroid/graphics/Rect;
    if-eqz p5, :cond_1

    .line 351
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    .line 352
    .local v10, "cX":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    .line 353
    .local v11, "cY":I
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v12

    mul-float/2addr v12, v8

    add-float/2addr v12, v7

    div-float/2addr v7, v12

    .line 354
    .local v7, "portScale":F
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    mul-float v13, v7, v8

    div-float/2addr v12, v13

    float-to-int v12, v12

    .line 355
    .local v12, "insetWidth":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v8, v7

    div-float/2addr v13, v8

    float-to-int v8, v13

    .line 357
    .local v8, "insetHeight":I
    new-instance v13, Landroid/graphics/Rect;

    sub-int v14, v10, v12

    sub-int v15, v11, v8

    move/from16 v16, v6

    .end local v6    # "offset":I
    .local v16, "offset":I
    add-int v6, v10, v12

    move/from16 v17, v7

    .end local v7    # "portScale":F
    .local v17, "portScale":F
    add-int v7, v11, v8

    invoke-direct {v13, v14, v15, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v13

    .line 359
    .local v6, "childRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v13, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda0;

    invoke-direct {v13, v0, v6}, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v13}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 363
    invoke-virtual {v5}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v13, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0, v6}, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v13}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 367
    .end local v6    # "childRect":Landroid/graphics/Rect;
    .end local v8    # "insetHeight":I
    .end local v10    # "cX":I
    .end local v11    # "cY":I
    .end local v12    # "insetWidth":I
    .end local v17    # "portScale":F
    goto :goto_0

    .line 368
    .end local v16    # "offset":I
    .local v6, "offset":I
    :cond_1
    move/from16 v16, v6

    .end local v6    # "offset":I
    .restart local v16    # "offset":I
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 369
    iget-object v6, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 371
    .end local v5    # "adi":Landroid/graphics/drawable/AdaptiveIconDrawable;
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v16    # "offset":I
    :goto_0
    goto :goto_2

    .line 372
    :cond_2
    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    .line 373
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 374
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 375
    .local v6, "b":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-nez v7, :cond_3

    .line 376
    iget-object v7, v0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 379
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "b":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v5, p3

    .line 380
    .local v5, "width":I
    move/from16 v6, p3

    .line 382
    .local v6, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 383
    .local v7, "intrinsicWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 384
    .local v8, "intrinsicHeight":I
    if-lez v7, :cond_5

    if-lez v8, :cond_5

    .line 386
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    .line 387
    .local v9, "ratio":F
    if-le v7, v8, :cond_4

    .line 388
    int-to-float v10, v5

    div-float/2addr v10, v9

    float-to-int v6, v10

    goto :goto_1

    .line 389
    :cond_4
    if-le v8, v7, :cond_5

    .line 390
    int-to-float v10, v6

    mul-float/2addr v10, v9

    float-to-int v5, v10

    .line 393
    .end local v9    # "ratio":F
    :cond_5
    :goto_1
    sub-int v9, v3, v5

    div-int/lit8 v9, v9, 0x2

    .line 394
    .local v9, "left":I
    sub-int v10, v3, v6

    div-int/lit8 v10, v10, 0x2

    .line 395
    .local v10, "top":I
    add-int v11, v9, v5

    add-int v12, v10, v6

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 396
    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 397
    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    div-int/lit8 v12, v3, 0x2

    int-to-float v12, v12

    div-int/lit8 v13, v3, 0x2

    int-to-float v13, v13

    invoke-virtual {v11, v2, v2, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 398
    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 399
    iget-object v11, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->restore()V

    .line 403
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "intrinsicWidth":I
    .end local v8    # "intrinsicHeight":I
    .end local v9    # "left":I
    .end local v10    # "top":I
    :goto_2
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 404
    iget-object v5, v0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    return-object v4
.end method

.method private blacklist createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scale"    # F

    .line 320
    iget v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "attrId"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 112
    .local v1, "outVal":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    .line 113
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist getBadgeSizeFromContext(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 125
    const v0, 0x1120061

    const-string v1, "Expected theme to define iconfactoryBadgeSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "iconDpi"    # I

    .line 311
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getIconSizeFromContext(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 119
    const v0, 0x1120062

    const-string v1, "Expected theme to define iconfactoryIconSize."

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/SimpleIconFactory;->getAttrDimFromContext(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized blacklist getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F
    .locals 22
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 476
    :try_start_0
    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 477
    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 478
    if-eqz v2, :cond_0

    .line 479
    iget-object v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 481
    .end local p0    # "this":Lcom/android/internal/app/SimpleIconFactory;
    :cond_0
    iget v3, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    .line 484
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 485
    .local v3, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 486
    .local v5, "height":I
    if-lez v3, :cond_4

    if-gtz v5, :cond_2

    goto :goto_0

    .line 489
    :cond_2
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-gt v3, v6, :cond_3

    if-le v5, v6, :cond_9

    .line 490
    :cond_3
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 491
    .local v6, "max":I
    iget v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    mul-int v8, v7, v3

    div-int/2addr v8, v6

    move v3, v8

    .line 492
    mul-int/2addr v7, v5

    div-int/2addr v7, v6

    move v5, v7

    goto :goto_5

    .line 487
    .end local v6    # "max":I
    :cond_4
    :goto_0
    if-lez v3, :cond_6

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v3, v6, :cond_5

    goto :goto_1

    :cond_5
    move v6, v3

    goto :goto_2

    :cond_6
    :goto_1
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    :goto_2
    move v3, v6

    .line 488
    if-lez v5, :cond_8

    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    if-le v5, v6, :cond_7

    goto :goto_3

    :cond_7
    move v6, v5

    goto :goto_4

    :cond_8
    :goto_3
    iget v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    :goto_4
    move v5, v6

    .line 495
    :cond_9
    :goto_5
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 496
    invoke-virtual {v0, v7, v7, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 497
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mScaleCheckCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 500
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 501
    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 504
    const/4 v7, -0x1

    .line 505
    .local v7, "topY":I
    const/4 v8, -0x1

    .line 506
    .local v8, "bottomY":I
    iget v9, v1, Lcom/android/internal/app/SimpleIconFactory;->mMaxSize:I

    add-int/lit8 v10, v9, 0x1

    .line 507
    .local v10, "leftX":I
    const/4 v11, -0x1

    .line 514
    .local v11, "rightX":I
    const/4 v12, 0x0

    .line 516
    .local v12, "index":I
    sub-int/2addr v9, v3

    .line 520
    .local v9, "rowSizeDiff":I
    const/4 v13, 0x0

    .local v13, "y":I
    :goto_6
    const/4 v14, -0x1

    if-ge v13, v5, :cond_f

    .line 521
    move v15, v14

    .local v15, "lastX":I
    move/from16 v16, v14

    .line 522
    .local v16, "firstX":I
    const/16 v17, 0x0

    move/from16 v4, v16

    move/from16 v14, v17

    .end local v16    # "firstX":I
    .local v4, "firstX":I
    .local v14, "x":I
    :goto_7
    if-ge v14, v3, :cond_c

    .line 523
    move-object/from16 v18, v6

    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .local v18, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mPixels:[B

    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    const/16 v0, 0x28

    if-le v6, v0, :cond_b

    .line 524
    const/4 v0, -0x1

    if-ne v4, v0, :cond_a

    .line 525
    move v4, v14

    .line 527
    :cond_a
    move v0, v14

    move v15, v0

    .line 529
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 522
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v18

    goto :goto_7

    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_c
    move-object/from16 v18, v6

    .line 531
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v14    # "x":I
    .restart local v18    # "buffer":Ljava/nio/ByteBuffer;
    add-int/2addr v12, v9

    .line 533
    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    int-to-float v6, v4

    aput v6, v0, v13

    .line 534
    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    int-to-float v6, v15

    aput v6, v0, v13

    .line 537
    const/4 v0, -0x1

    if-eq v4, v0, :cond_e

    .line 538
    move v6, v13

    .line 539
    .end local v8    # "bottomY":I
    .local v6, "bottomY":I
    if-ne v7, v0, :cond_d

    .line 540
    move v7, v13

    .line 543
    :cond_d
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 544
    .end local v10    # "leftX":I
    .local v0, "leftX":I
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v10, v0

    move v11, v8

    move v8, v6

    .line 520
    .end local v0    # "leftX":I
    .end local v6    # "bottomY":I
    .restart local v8    # "bottomY":I
    .restart local v10    # "leftX":I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v18

    const/4 v4, 0x0

    goto :goto_6

    .end local v4    # "firstX":I
    .end local v15    # "lastX":I
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :cond_f
    move-object/from16 v18, v6

    .line 548
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v13    # "y":I
    .restart local v18    # "buffer":Ljava/nio/ByteBuffer;
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    if-eq v7, v4, :cond_17

    if-ne v11, v4, :cond_10

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, p1

    goto/16 :goto_d

    .line 553
    :cond_10
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    const/4 v6, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    .line 554
    iget-object v4, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    const/4 v6, -0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/app/SimpleIconFactory;->convertToConvexArray([FIII)V

    .line 557
    const/4 v4, 0x0

    .line 558
    .local v4, "area":F
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_8
    if-ge v6, v5, :cond_12

    .line 559
    iget-object v13, v1, Lcom/android/internal/app/SimpleIconFactory;->mLeftBorder:[F

    aget v13, v13, v6

    const/high16 v14, -0x40800000    # -1.0f

    cmpg-float v14, v13, v14

    if-gtz v14, :cond_11

    .line 560
    goto :goto_9

    .line 562
    :cond_11
    iget-object v14, v1, Lcom/android/internal/app/SimpleIconFactory;->mRightBorder:[F

    aget v14, v14, v6

    sub-float/2addr v14, v13

    add-float/2addr v14, v0

    add-float/2addr v4, v14

    .line 558
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 566
    .end local v6    # "y":I
    :cond_12
    add-int/lit8 v6, v8, 0x1

    sub-int/2addr v6, v7

    add-int/lit8 v13, v11, 0x1

    sub-int/2addr v13, v10

    mul-int/2addr v6, v13

    int-to-float v6, v6

    .line 567
    .local v6, "rectArea":F
    div-float v13, v4, v6

    .line 570
    .local v13, "hullByRect":F
    const v14, 0x3f490fdb

    cmpg-float v14, v13, v14

    if-gez v14, :cond_13

    .line 571
    const v14, 0x3f28e38e

    .local v14, "scaleRequired":F
    goto :goto_a

    .line 573
    .end local v14    # "scaleRequired":F
    :cond_13
    const v14, 0x3f26aaab

    const v15, 0x3d25ae4f

    sub-float v17, v0, v13

    mul-float v17, v17, v15

    add-float v17, v17, v14

    move/from16 v14, v17

    .line 575
    .restart local v14    # "scaleRequired":F
    :goto_a
    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v10, v15, Landroid/graphics/Rect;->left:I

    .line 576
    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v11, v15, Landroid/graphics/Rect;->right:I

    .line 578
    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v7, v15, Landroid/graphics/Rect;->top:I

    .line 579
    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iput v8, v15, Landroid/graphics/Rect;->bottom:I

    .line 581
    if-eqz v2, :cond_14

    .line 582
    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    int-to-float v0, v3

    div-float/2addr v15, v0

    iget-object v0, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    move/from16 v19, v6

    .end local v6    # "rectArea":F
    .local v19, "rectArea":F
    int-to-float v6, v5

    div-float/2addr v0, v6

    iget-object v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move/from16 v20, v7

    .end local v7    # "topY":I
    .local v20, "topY":I
    int-to-float v7, v3

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    iget-object v7, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move/from16 v21, v8

    .end local v8    # "bottomY":I
    .local v21, "bottomY":I
    int-to-float v8, v5

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    invoke-virtual {v2, v15, v0, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_b

    .line 581
    .end local v19    # "rectArea":F
    .end local v20    # "topY":I
    .end local v21    # "bottomY":I
    .restart local v6    # "rectArea":F
    .restart local v7    # "topY":I
    .restart local v8    # "bottomY":I
    :cond_14
    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    .line 586
    .end local v6    # "rectArea":F
    .end local v7    # "topY":I
    .end local v8    # "bottomY":I
    .restart local v19    # "rectArea":F
    .restart local v20    # "topY":I
    .restart local v21    # "bottomY":I
    :goto_b
    mul-int v0, v3, v5

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 588
    .local v0, "areaScale":F
    cmpl-float v6, v0, v14

    if-lez v6, :cond_15

    div-float v6, v14, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move/from16 v17, v6

    goto :goto_c

    :cond_15
    const/high16 v17, 0x3f800000    # 1.0f

    :goto_c
    move/from16 v6, v17

    .line 589
    .local v6, "scale":F
    move-object/from16 v7, p1

    instance-of v8, v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v8, :cond_16

    iget v8, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    const/4 v15, 0x0

    cmpl-float v8, v8, v15

    if-nez v8, :cond_16

    .line 590
    iput v6, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconScale:F

    .line 591
    iget-object v8, v1, Lcom/android/internal/app/SimpleIconFactory;->mAdaptiveIconBounds:Landroid/graphics/Rect;

    iget-object v15, v1, Lcom/android/internal/app/SimpleIconFactory;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    :cond_16
    monitor-exit p0

    return v6

    .line 548
    .end local v0    # "areaScale":F
    .end local v4    # "area":F
    .end local v6    # "scale":F
    .end local v13    # "hullByRect":F
    .end local v14    # "scaleRequired":F
    .end local v19    # "rectArea":F
    .end local v20    # "topY":I
    .end local v21    # "bottomY":I
    .restart local v7    # "topY":I
    .restart local v8    # "bottomY":I
    :cond_17
    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v7, p1

    .line 550
    .end local v7    # "topY":I
    .end local v8    # "bottomY":I
    .restart local v20    # "topY":I
    .restart local v21    # "bottomY":I
    :goto_d
    monitor-exit p0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 475
    .end local v3    # "width":I
    .end local v5    # "height":I
    .end local v9    # "rowSizeDiff":I
    .end local v10    # "leftX":I
    .end local v11    # "rightX":I
    .end local v12    # "index":I
    .end local v18    # "buffer":Ljava/nio/ByteBuffer;
    .end local v20    # "topY":I
    .end local v21    # "bottomY":I
    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    .end local p2    # "outBounds":Landroid/graphics/RectF;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 284
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 284
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    .local v0, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 287
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 291
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 292
    .local v3, "size":I
    int-to-float v4, v3

    const/high16 v5, 0x3d000000    # 0.03125f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 295
    .local v4, "offset":I
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v7

    int-to-float v7, v4

    sub-float/2addr v9, v7

    .line 297
    invoke-virtual {v1, v6, v8, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 303
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 304
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v5, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v6

    .line 305
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 307
    return-object v0
.end method

.method private blacklist normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "outIconBounds"    # Landroid/graphics/RectF;
    .param p3, "outScale"    # [F

    .line 410
    const/high16 v0, 0x3f800000    # 1.0f

    .line 412
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    const v2, 0x1080589

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperIcon:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 418
    .local v1, "dr":Landroid/graphics/drawable/AdaptiveIconDrawable;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 419
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    .line 420
    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-nez v3, :cond_1

    .line 421
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;

    .line 422
    .local v3, "fsd":Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    invoke-virtual {v3, p1}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    invoke-virtual {v3, v0}, Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;->setScale(F)V

    .line 424
    move-object p1, v1

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v0

    .line 427
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 430
    .end local v3    # "fsd":Lcom/android/internal/app/SimpleIconFactory$FixedScaleDrawable;
    :cond_1
    aput v0, p3, v2

    .line 431
    return-object p1
.end method

.method public static blacklist obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/SimpleIconFactory;

    .line 96
    .local v0, "instance":Lcom/android/internal/app/SimpleIconFactory;
    if-nez v0, :cond_1

    .line 97
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 98
    .local v1, "am":Landroid/app/ActivityManager;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    .line 100
    .local v2, "iconDpi":I
    :goto_0
    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getIconSizeFromContext(Landroid/content/Context;)I

    move-result v3

    .line 101
    .local v3, "iconSize":I
    invoke-static {p0}, Lcom/android/internal/app/SimpleIconFactory;->getBadgeSizeFromContext(Landroid/content/Context;)I

    move-result v4

    .line 102
    .local v4, "badgeSize":I
    new-instance v5, Lcom/android/internal/app/SimpleIconFactory;

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;-><init>(Landroid/content/Context;III)V

    move-object v0, v5

    .line 103
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    .line 106
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "iconDpi":I
    .end local v3    # "iconSize":I
    .end local v4    # "badgeSize":I
    :cond_1
    return-object v0
.end method

.method private declared-synchronized blacklist recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "blurMaskFilter"    # Landroid/graphics/BlurMaskFilter;
    .param p3, "ambientAlpha"    # I
    .param p4, "keyAlpha"    # I
    .param p5, "out"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 666
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    .line 667
    .local v0, "offset":[I
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 668
    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 671
    .local v1, "shadow":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 672
    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 675
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 676
    aget v2, v0, v2

    int-to-float v2, v2

    aget v3, v0, v4

    int-to-float v3, v3

    const v4, 0x3caaaaab

    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 680
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 681
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p5, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    monitor-exit p0

    return-void

    .line 665
    .end local v0    # "offset":[I
    .end local v1    # "shadow":Landroid/graphics/Bitmap;
    .end local p0    # "this":Lcom/android/internal/app/SimpleIconFactory;
    .end local p1    # "icon":Landroid/graphics/Bitmap;
    .end local p2    # "blurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local p3    # "ambientAlpha":I
    .end local p4    # "keyAlpha":I
    .end local p5    # "out":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized blacklist recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "out"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/SimpleIconFactory;->mDefaultBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    const/4 v3, 0x7

    const/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/BlurMaskFilter;IILandroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 660
    .end local p0    # "this":Lcom/android/internal/app/SimpleIconFactory;
    .end local p1    # "icon":Landroid/graphics/Bitmap;
    .end local p2    # "out":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public blacklist createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "renderedAppIcon"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    if-nez p1, :cond_0

    .line 244
    iget v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {v0}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 250
    .local v0, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 251
    .local v1, "h":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 252
    .local v2, "scale":F
    if-le v1, v0, :cond_1

    if-lez v0, :cond_1

    .line 253
    int-to-float v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    goto :goto_0

    .line 254
    :cond_1
    if-le v0, v1, :cond_2

    if-lez v1, :cond_2

    .line 255
    int-to-float v3, v0

    int-to-float v4, v1

    div-float v2, v3, v4

    .line 257
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmapNoInsetOrMask(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 258
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v3}, Lcom/android/internal/app/SimpleIconFactory;->maskBitmapToCircle(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 259
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v4

    .line 262
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/android/internal/app/SimpleIconFactory;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result v2

    .line 263
    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 265
    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v5, v6}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 268
    if-eqz p2, :cond_3

    .line 270
    iget v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    const/4 v6, 0x0

    invoke-static {p2, v5, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 274
    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/android/internal/app/SimpleIconFactory;->mIconBitmapSize:I

    iget v7, p0, Lcom/android/internal/app/SimpleIconFactory;->mBadgeBitmapSize:I

    sub-int v8, v6, v7

    int-to-float v8, v8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, p2, v8, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    return-object v3
.end method

.method blacklist createUserBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 201
    .local v0, "scale":[F
    if-nez p1, :cond_0

    .line 202
    iget v1, p0, Lcom/android/internal/app/SimpleIconFactory;->mFillResIconDpi:I

    invoke-static {v1}, Lcom/android/internal/app/SimpleIconFactory;->getFullResDefaultActivityIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 204
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/app/SimpleIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 205
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 206
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;->recreateIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 209
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 213
    :cond_1
    if-eqz p2, :cond_3

    .line 214
    new-instance v1, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {v1, v2}, Lcom/android/internal/app/SimpleIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 215
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/internal/app/SimpleIconFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 216
    .local v3, "badged":Landroid/graphics/drawable/Drawable;
    instance-of v4, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 217
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 219
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4}, Lcom/android/internal/app/SimpleIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 221
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "badged":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :goto_0
    goto :goto_1

    .line 222
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :cond_3
    move-object v4, v2

    .line 225
    .restart local v4    # "result":Landroid/graphics/Bitmap;
    :goto_1
    return-object v4
.end method

.method synthetic blacklist lambda$createIconBitmap$0$com-android-internal-app-SimpleIconFactory(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    return-void
.end method

.method synthetic blacklist lambda$createIconBitmap$1$com-android-internal-app-SimpleIconFactory(Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 366
    return-void
.end method

.method public blacklist recycle()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/SimpleIconFactory;->setWrapperBackgroundColor(I)V

    .line 139
    sget-object v0, Lcom/android/internal/app/SimpleIconFactory;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method blacklist setWrapperBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/SimpleIconFactory;->mWrapperBackgroundColor:I

    .line 182
    return-void
.end method
