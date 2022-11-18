.class public interface abstract Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
.super Ljava/lang/Object;
.source "IAdaptiveIconDrawableExt.java"


# virtual methods
.method public blacklist buildAdaptiveIconDrawable(Landroid/content/res/Resources;IILandroid/graphics/Path;ZZ)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "customIconSize"    # I
    .param p3, "customIconFgSize"    # I
    .param p4, "customMask"    # Landroid/graphics/Path;
    .param p5, "isPlatformDrawable"    # Z
    .param p6, "isAdaptiveIconDrawable"    # Z

    .line 59
    return-void
.end method

.method public blacklist getAdaptiveIconDrawable()Landroid/graphics/drawable/AdaptiveIconDrawable;
    .locals 1

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getForegroundScalePercent()F
    .locals 1

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist hookDraw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookGetIconMask()Landroid/graphics/Path;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookGetIntrinsicHeight()Z
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookGetIntrinsicWidth()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookOnBoundsChange(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init()V
    .locals 0

    .line 28
    return-void
.end method

.method public blacklist shouldHookGetConstantState()Z
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method
