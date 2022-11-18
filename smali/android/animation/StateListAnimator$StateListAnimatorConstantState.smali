.class Landroid/animation/StateListAnimator$StateListAnimatorConstantState;
.super Landroid/content/res/ConstantState;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateListAnimatorConstantState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState<",
        "Landroid/animation/StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final greylist-max-o mAnimator:Landroid/animation/StateListAnimator;

.field greylist-max-o mChangingConf:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/animation/StateListAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/StateListAnimator;

    .line 315
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    .line 316
    iput-object p1, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    .line 317
    invoke-static {p1, p0}, Landroid/animation/StateListAnimator;->-$$Nest$fputmConstantState(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)V

    .line 318
    invoke-virtual {p1}, Landroid/animation/StateListAnimator;->getChangingConfigurations()I

    move-result v0

    iput v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    .line 319
    return-void
.end method


# virtual methods
.method public greylist-max-o getChangingConfigurations()I
    .locals 1

    .line 323
    iget v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mChangingConf:I

    return v0
.end method

.method public greylist-max-o newInstance()Landroid/animation/StateListAnimator;
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->mAnimator:Landroid/animation/StateListAnimator;

    invoke-virtual {v0}, Landroid/animation/StateListAnimator;->clone()Landroid/animation/StateListAnimator;

    move-result-object v0

    .line 329
    .local v0, "clone":Landroid/animation/StateListAnimator;
    invoke-static {v0, p0}, Landroid/animation/StateListAnimator;->-$$Nest$fputmConstantState(Landroid/animation/StateListAnimator;Landroid/animation/StateListAnimator$StateListAnimatorConstantState;)V

    .line 330
    return-object v0
.end method

.method public bridge synthetic blacklist newInstance()Ljava/lang/Object;
    .locals 1

    .line 308
    invoke-virtual {p0}, Landroid/animation/StateListAnimator$StateListAnimatorConstantState;->newInstance()Landroid/animation/StateListAnimator;

    move-result-object v0

    return-object v0
.end method
