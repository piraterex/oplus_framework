.class Landroid/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeTransform;->createTransformAnimator(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mIsCanceled:Z

.field private blacklist mTempMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist this$0:Landroid/transition/ChangeTransform;

.field final synthetic blacklist val$finalEndMatrix:Landroid/graphics/Matrix;

.field final synthetic blacklist val$handleParentChange:Z

.field final synthetic blacklist val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

.field final synthetic blacklist val$transforms:Landroid/transition/ChangeTransform$Transforms;

.field final synthetic blacklist val$view:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroid/transition/ChangeTransform$Transforms;Landroid/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 0
    .param p1, "this$0"    # Landroid/transition/ChangeTransform;

    .line 309
    iput-object p1, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    iput-boolean p2, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    iput-object p3, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iput-object p5, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iput-object p6, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 311
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private blacklist setCurrentMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "currentMatrix"    # Landroid/graphics/Matrix;

    .line 344
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 345
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    const v2, 0x102054c

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 346
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 347
    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 316
    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 320
    iget-boolean v0, p0, Landroid/transition/ChangeTransform$3;->mIsCanceled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 321
    iget-boolean v0, p0, Landroid/transition/ChangeTransform$3;->val$handleParentChange:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->this$0:Landroid/transition/ChangeTransform;

    invoke-static {v0}, Landroid/transition/ChangeTransform;->-$$Nest$fgetmUseOverlay(Landroid/transition/ChangeTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v2, 0x102054c

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 325
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    const v2, 0x1020418

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 328
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 329
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$transforms:Landroid/transition/ChangeTransform$Transforms;

    iget-object v1, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/transition/ChangeTransform$Transforms;->restore(Landroid/view/View;)V

    .line 330
    return-void
.end method

.method public whitelist onAnimationPause(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 334
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroid/transition/ChangeTransform$PathAnimatorMatrix;

    invoke-virtual {v0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 335
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    invoke-direct {p0, v0}, Landroid/transition/ChangeTransform$3;->setCurrentMatrix(Landroid/graphics/Matrix;)V

    .line 336
    return-void
.end method

.method public whitelist onAnimationResume(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 340
    iget-object v0, p0, Landroid/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    invoke-static {v0}, Landroid/transition/ChangeTransform;->-$$Nest$smsetIdentityTransforms(Landroid/view/View;)V

    .line 341
    return-void
.end method
