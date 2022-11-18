.class public Landroid/view/animation/AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "AlphaAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;
    }
.end annotation


# instance fields
.field private blacklist mAlphaAnimationWrapper:Landroid/view/animation/IAlphaAnimationWrapper;

.field private greylist-max-o mFromAlpha:F

.field private greylist-max-o mToAlpha:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFromAlpha(Landroid/view/animation/AlphaAnimation;)F
    .locals 0

    iget p0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToAlpha(Landroid/view/animation/AlphaAnimation;)F
    .locals 0

    iget p0, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFromAlpha(Landroid/view/animation/AlphaAnimation;F)V
    .locals 0

    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    return-void
.end method

.method public constructor whitelist <init>(FF)V
    .locals 2
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F

    .line 62
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 95
    new-instance v0, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;-><init>(Landroid/view/animation/AlphaAnimation;Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper-IA;)V

    iput-object v0, p0, Landroid/view/animation/AlphaAnimation;->mAlphaAnimationWrapper:Landroid/view/animation/IAlphaAnimationWrapper;

    .line 63
    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 64
    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper;-><init>(Landroid/view/animation/AlphaAnimation;Landroid/view/animation/AlphaAnimation$AlphaAnimationWrapper-IA;)V

    iput-object v0, p0, Landroid/view/animation/AlphaAnimation;->mAlphaAnimationWrapper:Landroid/view/animation/IAlphaAnimationWrapper;

    .line 46
    sget-object v0, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 52
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 72
    iget v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 73
    .local v0, "alpha":F
    iget v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 74
    return-void
.end method

.method public blacklist getWrapper()Landroid/view/animation/IAlphaAnimationWrapper;
    .locals 1

    .line 99
    iget-object v0, p0, Landroid/view/animation/AlphaAnimation;->mAlphaAnimationWrapper:Landroid/view/animation/IAlphaAnimationWrapper;

    return-object v0
.end method

.method public greylist-max-o hasAlpha()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist willChangeBounds()Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .locals 1

    .line 78
    const/4 v0, 0x0

    return v0
.end method
