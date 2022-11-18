.class public final Lcom/android/internal/policy/SystemBarUtils;
.super Ljava/lang/Object;
.source "SystemBarUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getQuickQsOffsetHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 90
    .local v0, "defaultSize":I
    invoke-static {p0}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 92
    .local v1, "statusBarHeight":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/SystemBarUtils;->getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method public static blacklist getStatusBarHeight(Landroid/content/res/Resources;Landroid/view/DisplayCutout;)I
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 46
    const v0, 0x1050292

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 47
    .local v0, "defaultSize":I
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    .line 48
    .local v2, "safeInsetTop":I
    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    .line 51
    .local v1, "waterfallInsetTop":I
    :goto_1
    add-int v3, v0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public static blacklist getStatusBarHeightForRotation(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetRot"    # I

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 60
    .local v0, "rotation":I
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 62
    .local v1, "cutout":Landroid/view/DisplayCutout;
    if-nez v1, :cond_0

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v2

    .line 63
    .local v2, "insets":Landroid/graphics/Insets;
    :goto_0
    if-nez v1, :cond_1

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v3

    .line 65
    .local v3, "waterfallInsets":Landroid/graphics/Insets;
    :goto_1
    if-eq v0, p1, :cond_3

    .line 66
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v2, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    nop

    .line 68
    invoke-static {v0, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    .line 67
    invoke-static {v2, v4}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v2

    .line 70
    :cond_2
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 71
    nop

    .line 72
    invoke-static {v0, p1}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    .line 71
    invoke-static {v3, v4}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v3

    .line 75
    :cond_3
    nop

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050292

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 79
    .local v4, "defaultSize":I
    iget v5, v2, Landroid/graphics/Insets;->top:I

    iget v6, v3, Landroid/graphics/Insets;->top:I

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    return v5
.end method
