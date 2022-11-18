.class public interface abstract Landroid/view/IWindowLayoutExt;
.super Ljava/lang/Object;
.source "IWindowLayoutExt.java"


# virtual methods
.method public blacklist adjustDisplayCutoutSafeExceptMaybeBars(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "displayCutoutSafeExceptMaybeBars"    # Landroid/graphics/Rect;

    .line 41
    return-void
.end method

.method public blacklist adjustWindowFrame(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowBounds"    # Landroid/graphics/Rect;
    .param p3, "windowingMode"    # I
    .param p4, "outDisplayFrame"    # Landroid/graphics/Rect;
    .param p5, "outParentFrame"    # Landroid/graphics/Rect;

    .line 31
    return-void
.end method

.method public blacklist isCutoutModeShow(I)Z
    .locals 1
    .param p1, "cutoutMode"    # I

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setInsetsHeightForCropping(IIII)V
    .locals 0
    .param p1, "screenHeight"    # I
    .param p2, "imeHeight"    # I
    .param p3, "navBarHeight"    # I
    .param p4, "statusBarHeight"    # I

    .line 34
    return-void
.end method

.method public blacklist setOtherParametersForCropping(FFILandroid/graphics/Rect;Landroid/content/Context;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "scale"    # F
    .param p3, "rotation"    # I
    .param p4, "zoomRect"    # Landroid/graphics/Rect;
    .param p5, "context"    # Landroid/content/Context;

    .line 37
    return-void
.end method
