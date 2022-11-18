.class public Landroid/view/InsetsController$InternalAnimationControlListener;
.super Ljava/lang/Object;
.source "InsetsController.java"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalAnimationControlListener"
.end annotation


# instance fields
.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mBehavior:I

.field private blacklist mController:Landroid/view/WindowInsetsAnimationController;

.field private final blacklist mDisable:Z

.field private final blacklist mDurationMs:J

.field private final blacklist mFloatingImeBottomInset:I

.field private final blacklist mHasAnimationCallbacks:Z

.field public blacklist mInsetsControllerExt:Landroid/view/IInsetsControllerExt;

.field private final blacklist mRequestedTypes:I

.field private final blacklist mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mShow:Z


# direct methods
.method public constructor blacklist <init>(ZZIIZI)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "hasAnimationCallbacks"    # Z
    .param p3, "requestedTypes"    # I
    .param p4, "behavior"    # I
    .param p5, "disable"    # Z
    .param p6, "floatingImeBottomInset"    # I

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    .line 361
    const-class v0, Landroid/view/IInsetsControllerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IInsetsControllerExt;

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInsetsControllerExt:Landroid/view/IInsetsControllerExt;

    .line 367
    iput-boolean p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    .line 368
    iput-boolean p2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    .line 369
    iput p3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 370
    iput p4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    .line 371
    invoke-direct {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->calculateDurationMs()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    .line 372
    iput-boolean p5, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    .line 373
    iput p6, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    .line 374
    return-void
.end method

.method private blacklist calculateDurationMs()J
    .locals 3

    .line 519
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 520
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_0

    .line 521
    const-wide/16 v0, 0x11d

    return-wide v0

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInsetsControllerExt:Landroid/view/IInsetsControllerExt;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Landroid/view/IInsetsControllerExt;->replaceIMEDurationMs(ZI)J

    move-result-wide v0

    return-wide v0

    .line 530
    :cond_1
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 531
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x113

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x154

    :goto_0
    return-wide v0

    .line 533
    :cond_3
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x1f4

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x5dc

    :goto_1
    return-wide v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$2(F)F
    .locals 1
    .param p0, "input"    # F

    .line 485
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$3(F)F
    .locals 2
    .param p0, "input"    # F

    .line 489
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getAlphaInterpolator$4(F)F
    .locals 1
    .param p0, "input"    # F

    .line 495
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method


# virtual methods
.method blacklist getAlphaInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 483
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 484
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda2;-><init>()V

    return-object v0

    .line 486
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda3;-><init>()V

    return-object v0

    .line 491
    :cond_1
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 494
    :cond_2
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 495
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda4;-><init>()V

    return-object v0

    .line 497
    :cond_3
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_4

    .line 498
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_ALPHA_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 500
    :cond_4
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_DIM_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDurationMs()J
    .locals 2

    .line 515
    iget-wide v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    return-wide v0
.end method

.method protected blacklist getInsetsInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    .line 461
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 462
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYNC_IME_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 464
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInsetsControllerExt:Landroid/view/IInsetsControllerExt;

    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetLINEAR_OUT_SLOW_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IInsetsControllerExt;->replaceIMEInterpolator(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 470
    :cond_1
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetFAST_OUT_LINEAR_IN_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 473
    :cond_2
    iget v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 474
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetSYSTEM_BARS_INSETS_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 477
    :cond_3
    new-instance v0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    return-object v0
.end method

.method synthetic blacklist lambda$getInsetsInterpolator$1$android-view-InsetsController$InternalAnimationControlListener(F)F
    .locals 1
    .param p1, "input"    # F

    .line 477
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$onReady$0$android-view-InsetsController$InternalAnimationControlListener(Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "insetsInterpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p3, "start"    # Landroid/graphics/Insets;
    .param p4, "end"    # Landroid/graphics/Insets;
    .param p5, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "animation"    # Landroid/animation/ValueAnimator;

    .line 410
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 411
    .local v0, "rawFraction":F
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_0

    .line 412
    move v1, v0

    goto :goto_0

    .line 413
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    :goto_0
    nop

    .line 414
    .local v1, "alphaFraction":F
    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 415
    .local v2, "insetsFraction":F
    invoke-static {}, Landroid/view/InsetsController;->-$$Nest$sfgetsEvaluator()Landroid/animation/TypeEvaluator;

    move-result-object v3

    .line 416
    invoke-interface {v3, v2, p3, p4}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Insets;

    .line 417
    invoke-interface {p5, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 415
    invoke-interface {p2, v3, v4, v0}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    .line 419
    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default animation setInsetsAndAlpha fraction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InsetsController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_1
    return-void
.end method

.method protected blacklist onAnimationFinish()V
    .locals 2

    .line 507
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    .line 508
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAnimationFinish showOnFinish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    return-void
.end method

.method public whitelist onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 453
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 456
    :cond_0
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalAnimationControlListener onCancelled types:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    return-void
.end method

.method public whitelist onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 2
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;

    .line 444
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInsetsControllerExt:Landroid/view/IInsetsControllerExt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IInsetsControllerExt;->setInsetAnimationTid(I)Z

    .line 446
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalAnimationControlListener onFinished types:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mRequestedTypes:I

    .line 447
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-void
.end method

.method public whitelist onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 12
    .param p1, "controller"    # Landroid/view/WindowInsetsAnimationController;
    .param p2, "types"    # I

    .line 378
    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mController:Landroid/view/WindowInsetsAnimationController;

    .line 379
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default animation onReady types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-boolean v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDisable:Z

    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->onAnimationFinish()V

    .line 383
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mInsetsControllerExt:Landroid/view/IInsetsControllerExt;

    invoke-interface {v0, p2}, Landroid/view/IInsetsControllerExt;->setInsetAnimationTid(I)Z

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    .line 392
    iget-wide v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 393
    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 397
    .local v0, "hiddenInsets":Landroid/graphics/Insets;
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->hasZeroInsetsIme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v4, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mFloatingImeBottomInset:I

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_0

    .line 400
    :cond_2
    move-object v1, v0

    :goto_0
    move-object v0, v1

    .line 401
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_3

    .line 402
    move-object v6, v0

    goto :goto_1

    .line 403
    :cond_3
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v6, v1

    :goto_1
    nop

    .line 404
    .local v6, "start":Landroid/graphics/Insets;
    iget-boolean v1, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mShow:Z

    if-eqz v1, :cond_4

    .line 405
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    .line 406
    :cond_4
    move-object v7, v0

    :goto_2
    nop

    .line 407
    .local v7, "end":Landroid/graphics/Insets;
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getInsetsInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 408
    .local v1, "insetsInterpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p0}, Landroid/view/InsetsController$InternalAnimationControlListener;->getAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 409
    .local v9, "alphaInterpolator":Landroid/view/animation/Interpolator;
    iget-object v10, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 422
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/InsetsController$InternalAnimationControlListener$2;

    invoke-direct {v3, p0}, Landroid/view/InsetsController$InternalAnimationControlListener$2;-><init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    iget-boolean v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mHasAnimationCallbacks:Z

    if-nez v2, :cond_5

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v2, p2

    if-nez v2, :cond_5

    .line 435
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mSfAnimationHandlerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimationHandler;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setAnimationHandler(Landroid/animation/AnimationHandler;)V

    .line 437
    :cond_5
    iget-object v2, p0, Landroid/view/InsetsController$InternalAnimationControlListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 438
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
