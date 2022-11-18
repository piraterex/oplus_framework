.class public interface abstract Landroid/graphics/drawable/IRippleAnimationSessionExt;
.super Ljava/lang/Object;
.source "IRippleAnimationSessionExt.java"


# static fields
.field public static final blacklist ENTER_ANIM_DURATION:I = 0x1c2

.field public static final blacklist EXIT_ANIM_DURATION:I = 0x177

.field public static final blacklist INTERPOLATOR_ENTER_X1:F = 0.4f

.field public static final blacklist INTERPOLATOR_ENTER_X2:F = 0.2f

.field public static final blacklist INTERPOLATOR_ENTER_Y1:F = 0.0f

.field public static final blacklist INTERPOLATOR_ENTER_Y2:F = 1.0f


# virtual methods
.method public blacklist getEnterAnimationDuration()I
    .locals 1

    .line 34
    const/16 v0, 0x1c2

    return v0
.end method

.method public blacklist getEnterAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 5

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method public blacklist getExitAnimationDuration()I
    .locals 1

    .line 38
    const/16 v0, 0x177

    return v0
.end method

.method public blacklist getExitAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 51
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v0
.end method
