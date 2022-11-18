.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static greylist DECELERATION_RATE:F = 0.0f

.field private static final greylist-max-o DEFAULT_DURATION:I = 0xfa

.field private static final greylist-max-o END_TENSION:F = 1.0f

.field private static final greylist-max-o FLING_MODE:I = 0x1

.field private static final greylist INFLEXION:F = 0.35f

.field private static final greylist-max-o NB_SAMPLES:I = 0x64

.field private static final greylist-max-o P1:F = 0.175f

.field private static final greylist-max-o P2:F = 0.35000002f

.field private static final greylist-max-o SCROLL_MODE:I = 0x0

.field private static final greylist-max-o SPLINE_POSITION:[F

.field private static final greylist-max-o SPLINE_TIME:[F

.field private static final greylist-max-o START_TENSION:F = 0.5f


# instance fields
.field private greylist-max-o mCurrVelocity:F

.field private greylist-max-o mCurrX:I

.field private greylist-max-o mCurrY:I

.field private greylist mDeceleration:F

.field private greylist-max-o mDeltaX:F

.field private greylist-max-o mDeltaY:F

.field private greylist-max-o mDistance:I

.field private greylist mDuration:I

.field private greylist-max-o mDurationReciprocal:F

.field private greylist-max-o mFinalX:I

.field private greylist-max-o mFinalY:I

.field private greylist-max-o mFinished:Z

.field private greylist-max-o mFlingFriction:F

.field private greylist-max-o mFlywheel:Z

.field private final greylist mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mMaxX:I

.field private greylist-max-o mMaxY:I

.field private greylist-max-o mMinX:I

.field private greylist-max-o mMinY:I

.field private greylist-max-o mMode:I

.field private greylist mPhysicalCoeff:F

.field private final greylist-max-o mPpi:F

.field public blacklist mSocExt:Landroid/widget/IScrollerSocExt;

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mStartX:I

.field private greylist-max-o mStartY:I

.field private greylist-max-o mVelocity:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 21

    .line 100
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 109
    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    .line 110
    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Scroller;->SPLINE_TIME:[F

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "x_min":F
    const/4 v1, 0x0

    .line 129
    .local v1, "y_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    .line 130
    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    .line 132
    .local v5, "alpha":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 135
    .local v3, "x_max":F
    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    .line 136
    .local v6, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    .line 137
    .local v9, "coef":F
    sub-float v10, v4, v6

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334    # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    .line 138
    .local v10, "tx":F
    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 142
    sget-object v13, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    .line 144
    const/high16 v13, 0x3f800000    # 1.0f

    .line 147
    .local v13, "y_max":F
    :goto_2
    sub-float v14, v13, v1

    div-float/2addr v14, v7

    add-float/2addr v14, v1

    .line 148
    .local v14, "y":F
    mul-float v18, v14, v8

    sub-float v19, v4, v14

    mul-float v9, v18, v19

    .line 149
    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v9

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    .line 150
    .local v18, "dy":F
    sub-float v19, v18, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v20, v9

    .end local v9    # "coef":F
    .local v20, "coef":F
    float-to-double v8, v7

    cmpg-double v7, v8, v15

    if-gez v7, :cond_0

    .line 154
    sget-object v7, Landroid/widget/Scroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float v9, v20, v4

    mul-float v4, v14, v14

    mul-float/2addr v4, v14

    add-float/2addr v9, v4

    aput v9, v7, v2

    .line 129
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v10    # "tx":F
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 151
    .restart local v3    # "x_max":F
    .restart local v5    # "alpha":F
    .restart local v6    # "x":F
    .restart local v10    # "tx":F
    .restart local v13    # "y_max":F
    .restart local v14    # "y":F
    .restart local v18    # "dy":F
    .restart local v20    # "coef":F
    :cond_0
    cmpl-float v7, v18, v5

    if-lez v7, :cond_1

    move v13, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 152
    :cond_1
    move v1, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    .line 139
    .end local v13    # "y_max":F
    .end local v14    # "y":F
    .end local v18    # "dy":F
    .end local v20    # "coef":F
    .restart local v9    # "coef":F
    :cond_2
    cmpl-float v7, v10, v5

    if-lez v7, :cond_3

    move v3, v6

    goto/16 :goto_1

    .line 140
    :cond_3
    move v0, v6

    goto/16 :goto_1

    .line 156
    .end local v2    # "i":I
    .end local v3    # "x_max":F
    .end local v5    # "alpha":F
    .end local v6    # "x":F
    .end local v9    # "coef":F
    .end local v10    # "tx":F
    :cond_4
    sget-object v2, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    sget-object v5, Landroid/widget/Scroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    .line 157
    .end local v0    # "x_min":F
    .end local v1    # "y_min":F
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 164
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 172
    nop

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 174
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 123
    const-class v0, Landroid/widget/IScrollerSocExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/IScrollerSocExt;

    iput-object v0, p0, Landroid/widget/Scroller;->mSocExt:Landroid/widget/IScrollerSocExt;

    .line 184
    invoke-interface {v0, p1}, Landroid/widget/IScrollerSocExt;->setPerfHintContext(Landroid/content/Context;)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 187
    if-nez p2, :cond_0

    .line 188
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 190
    :cond_0
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 192
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 194
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 196
    const v0, 0x3f570a3d    # 0.84f

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    .line 197
    return-void
.end method

.method private greylist-max-o computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .line 212
    iget v0, p0, Landroid/widget/Scroller;->mPpi:F

    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private greylist-max-o getSplineDeceleration(F)D
    .locals 3
    .param p1, "velocity"    # F

    .line 495
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private greylist-max-o getSplineFlingDistance(F)D
    .locals 9
    .param p1, "velocity"    # F

    .line 505
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 506
    .local v0, "l":D
    sget v2, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    .line 507
    .local v3, "decelMinusOne":D
    iget v5, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v6, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    return-wide v5
.end method

.method private greylist-max-o getSplineFlingDuration(F)I
    .locals 8
    .param p1, "velocity"    # F

    .line 499
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 500
    .local v0, "l":D
    sget v2, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 501
    .local v2, "decelMinusOne":D
    div-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method


# virtual methods
.method public whitelist abortAnimation()V
    .locals 1

    .line 518
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 519
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 521
    return-void
.end method

.method public whitelist computeScrollOffset()Z
    .locals 13

    .line 316
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 322
    .local v0, "timePassed":I
    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 323
    iget v3, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 330
    :pswitch_0
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 331
    .local v3, "t":F
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v5, v3, v4

    float-to-int v5, v5

    .line 332
    .local v5, "index":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 333
    .local v6, "distanceCoef":F
    const/4 v7, 0x0

    .line 334
    .local v7, "velocityCoef":F
    const/16 v8, 0x64

    if-ge v5, v8, :cond_1

    .line 335
    int-to-float v8, v5

    div-float/2addr v8, v4

    .line 336
    .local v8, "t_inf":F
    add-int/lit8 v9, v5, 0x1

    int-to-float v9, v9

    div-float/2addr v9, v4

    .line 337
    .local v9, "t_sup":F
    sget-object v4, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v10, v4, v5

    .line 338
    .local v10, "d_inf":F
    add-int/lit8 v11, v5, 0x1

    aget v4, v4, v11

    .line 339
    .local v4, "d_sup":F
    sub-float v11, v4, v10

    sub-float v12, v9, v8

    div-float v7, v11, v12

    .line 340
    sub-float v11, v3, v8

    mul-float/2addr v11, v7

    add-float v6, v10, v11

    .line 343
    .end local v4    # "d_sup":F
    .end local v8    # "t_inf":F
    .end local v9    # "t_sup":F
    .end local v10    # "d_inf":F
    :cond_1
    iget v4, p0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    int-to-float v1, v1

    div-float/2addr v4, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v1

    iput v4, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 345
    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    iget v4, p0, Landroid/widget/Scroller;->mFinalX:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 347
    iget v4, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 348
    iget v4, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 350
    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    iget v4, p0, Landroid/widget/Scroller;->mFinalY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 352
    iget v4, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 353
    iget v4, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 355
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v8, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v4, v8, :cond_2

    iget v4, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v1, v4, :cond_2

    .line 356
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    goto :goto_0

    .line 325
    .end local v3    # "t":F
    .end local v5    # "index":I
    .end local v6    # "distanceCoef":F
    .end local v7    # "velocityCoef":F
    :pswitch_1
    iget-object v1, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v3, v0

    iget v4, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 326
    .local v1, "x":F
    iget v3, p0, Landroid/widget/Scroller;->mStartX:I

    iget v4, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 327
    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    iget v4, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 328
    nop

    .line 359
    .end local v1    # "x":F
    :cond_2
    :goto_0
    goto :goto_1

    .line 363
    :cond_3
    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v1, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 364
    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v1, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 365
    iput-boolean v2, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 367
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .line 532
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 533
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 534
    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iput v2, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 535
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 536
    return-void
.end method

.method public whitelist fling(IIIIIIII)V
    .locals 16
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-boolean v5, v0, Landroid/widget/Scroller;->mFlywheel:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v5, :cond_0

    .line 443
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v5

    .line 445
    .local v5, "oldVel":F
    iget v6, v0, Landroid/widget/Scroller;->mFinalX:I

    iget v7, v0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 446
    .local v6, "dx":F
    iget v7, v0, Landroid/widget/Scroller;->mFinalY:I

    iget v8, v0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 447
    .local v7, "dy":F
    float-to-double v8, v6

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 449
    .local v8, "hyp":F
    div-float v9, v6, v8

    .line 450
    .local v9, "ndx":F
    div-float v10, v7, v8

    .line 452
    .local v10, "ndy":F
    mul-float v11, v9, v5

    .line 453
    .local v11, "oldVelocityX":F
    mul-float v12, v10, v5

    .line 454
    .local v12, "oldVelocityY":F
    int-to-float v13, v3

    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    int-to-float v13, v4

    .line 455
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    move-result v13

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    .line 456
    int-to-float v13, v3

    add-float/2addr v13, v11

    float-to-int v3, v13

    .line 457
    .end local p3    # "velocityX":I
    .local v3, "velocityX":I
    int-to-float v13, v4

    add-float/2addr v13, v12

    float-to-int v4, v13

    .line 461
    .end local v5    # "oldVel":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v10    # "ndy":F
    .end local v11    # "oldVelocityX":F
    .end local v12    # "oldVelocityY":F
    .end local p4    # "velocityY":I
    .local v4, "velocityY":I
    :cond_0
    const/4 v5, 0x1

    iput v5, v0, Landroid/widget/Scroller;->mMode:I

    .line 462
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/widget/Scroller;->mFinished:Z

    .line 464
    int-to-double v5, v3

    int-to-double v7, v4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    .line 466
    .local v5, "velocity":F
    iput v5, v0, Landroid/widget/Scroller;->mVelocity:F

    .line 467
    invoke-direct {v0, v5}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v6

    iput v6, v0, Landroid/widget/Scroller;->mDuration:I

    .line 468
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/widget/Scroller;->mStartTime:J

    .line 469
    iput v1, v0, Landroid/widget/Scroller;->mStartX:I

    .line 470
    iput v2, v0, Landroid/widget/Scroller;->mStartY:I

    .line 472
    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    div-float/2addr v7, v5

    .line 473
    .local v7, "coeffX":F
    :goto_0
    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    int-to-float v6, v4

    div-float v8, v6, v5

    :goto_1
    move v6, v8

    .line 475
    .local v6, "coeffY":F
    invoke-direct {v0, v5}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v8

    .line 476
    .local v8, "totalDistance":D
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    float-to-double v10, v10

    mul-double/2addr v10, v8

    double-to-int v10, v10

    iput v10, v0, Landroid/widget/Scroller;->mDistance:I

    .line 478
    move/from16 v10, p5

    iput v10, v0, Landroid/widget/Scroller;->mMinX:I

    .line 479
    move/from16 v11, p6

    iput v11, v0, Landroid/widget/Scroller;->mMaxX:I

    .line 480
    move/from16 v12, p7

    iput v12, v0, Landroid/widget/Scroller;->mMinY:I

    .line 481
    move/from16 v13, p8

    iput v13, v0, Landroid/widget/Scroller;->mMaxY:I

    .line 483
    float-to-double v14, v7

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v1

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 485
    iget v15, v0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 486
    iget v15, v0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 488
    float-to-double v14, v6

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int/2addr v14, v2

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 490
    iget v15, v0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 491
    iget v15, v0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 492
    return-void
.end method

.method public final whitelist forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .line 234
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 235
    return-void
.end method

.method public whitelist getCurrVelocity()F
    .locals 3

    .line 271
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 271
    :goto_0
    return v0
.end method

.method public final whitelist getCurrX()I
    .locals 1

    .line 252
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final whitelist getCurrY()I
    .locals 1

    .line 261
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final whitelist getDuration()I
    .locals 1

    .line 243
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final whitelist getFinalX()I
    .locals 1

    .line 299
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final whitelist getFinalY()I
    .locals 1

    .line 308
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final whitelist getStartX()I
    .locals 1

    .line 281
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final whitelist getStartY()I
    .locals 1

    .line 290
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final whitelist isFinished()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public greylist-max-o isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 577
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 578
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v2, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 577
    :goto_0
    return v0
.end method

.method public whitelist setFinalX(I)V
    .locals 1
    .param p1, "newX"    # I

    .line 555
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 556
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 558
    return-void
.end method

.method public whitelist setFinalY(I)V
    .locals 1
    .param p1, "newY"    # I

    .line 568
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 569
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 571
    return-void
.end method

.method public final whitelist setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .line 207
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 208
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 209
    return-void
.end method

.method public whitelist startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 385
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 386
    return-void
.end method

.method public whitelist startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 404
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 405
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 406
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 407
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 408
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 409
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 410
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 411
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 412
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 413
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 416
    iget-object v0, p0, Landroid/widget/Scroller;->mSocExt:Landroid/widget/IScrollerSocExt;

    invoke-interface {v0, p5}, Landroid/widget/IScrollerSocExt;->hookScrollHorizontalPerfHint(I)V

    .line 418
    return-void
.end method

.method public whitelist timePassed()I
    .locals 4

    .line 544
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
