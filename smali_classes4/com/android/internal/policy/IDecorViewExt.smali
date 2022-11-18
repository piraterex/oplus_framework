.class public interface abstract Lcom/android/internal/policy/IDecorViewExt;
.super Ljava/lang/Object;
.source "IDecorViewExt.java"


# virtual methods
.method public blacklist calculateNavigationBarColor(ZI)I
    .locals 0
    .param p1, "isImeWindow"    # Z
    .param p2, "defaultColor"    # I

    .line 50
    return p2
.end method

.method public blacklist draw(Landroid/graphics/Canvas;II)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 75
    return-void
.end method

.method public blacklist getBottomInset(ZILandroid/view/WindowInsets;)I
    .locals 0
    .param p1, "isImeWindow"    # Z
    .param p2, "normalBottomInset"    # I
    .param p3, "insets"    # Landroid/view/WindowInsets;

    .line 46
    return p2
.end method

.method public blacklist getLegacyNavBarBackgroundColor()I
    .locals 1

    .line 66
    const/high16 v0, -0x1000000

    return v0
.end method

.method public blacklist hookDecorView(Landroid/content/Context;Z)Z
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultForceWindowDrawsBarBackgrounds"    # Z

    .line 32
    return p2
.end method

.method public blacklist hookOnDestroyActionMode(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "fadeAnim"    # Landroid/animation/ObjectAnimator;

    .line 39
    return-void
.end method

.method public blacklist hookSetHandledPrimaryActionMode(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "fadeAnim"    # Landroid/animation/ObjectAnimator;

    .line 36
    return-void
.end method

.method public blacklist initDarkModeBackgroundColor()V
    .locals 0

    .line 93
    return-void
.end method

.method public blacklist inputLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .line 63
    return-void
.end method

.method public blacklist isClosedSuperFirewall()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDebugSystemBar()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 57
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;

    .line 83
    return-void
.end method

.method public blacklist relayoutZoomView()V
    .locals 0

    .line 71
    return-void
.end method

.method public blacklist remeasureZoomView(II)Z
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestLayoutForDarkModeBackgroundView()V
    .locals 0

    .line 96
    return-void
.end method

.method public blacklist setWindow(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 79
    return-void
.end method

.method public blacklist updateColorNavigationGuardColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 54
    return-void
.end method

.method public blacklist updateInputMethodNavigationGuardColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 100
    return-void
.end method

.method public blacklist updatePhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "window"    # Lcom/android/internal/policy/PhoneWindow;

    .line 60
    return-void
.end method
