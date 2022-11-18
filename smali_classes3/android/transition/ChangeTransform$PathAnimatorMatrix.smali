.class Landroid/transition/ChangeTransform$PathAnimatorMatrix;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathAnimatorMatrix"
.end annotation


# instance fields
.field private final greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mTranslationX:F

.field private greylist-max-o mTranslationY:F

.field private final greylist-max-o mValues:[F

.field private final greylist-max-o mView:Landroid/view/View;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;[F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "values"    # [F

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 514
    iput-object p1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    .line 515
    invoke-virtual {p2}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    .line 516
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 517
    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 518
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 519
    return-void
.end method

.method private greylist-max-o setAnimationMatrix()V
    .locals 3

    .line 533
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    iget v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 534
    iget v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 535
    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 536
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 537
    return-void
.end method


# virtual methods
.method public greylist-max-o getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 540
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public greylist-max-o setTranslation(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "translation"    # Landroid/graphics/PointF;

    .line 527
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationX:F

    .line 528
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mTranslationY:F

    .line 529
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 530
    return-void
.end method

.method public greylist-max-o setValues([F)V
    .locals 3
    .param p1, "values"    # [F

    .line 522
    iget-object v0, p0, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->mValues:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    invoke-direct {p0}, Landroid/transition/ChangeTransform$PathAnimatorMatrix;->setAnimationMatrix()V

    .line 524
    return-void
.end method
