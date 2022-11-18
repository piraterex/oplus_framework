.class public Lcom/android/internal/policy/ScreenDecorationsUtils;
.super Ljava/lang/Object;
.source "ScreenDecorationsUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getWindowCornerRadius(Landroid/content/Context;)F
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 41
    return v2

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "displayUniqueId":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v3

    .line 47
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 49
    .local v3, "defaultRadius":F
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    .line 50
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 51
    .local v4, "topRadius":F
    cmpl-float v5, v4, v2

    if-nez v5, :cond_1

    .line 52
    move v4, v3

    .line 54
    :cond_1
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v5

    .line 55
    invoke-static {v0, v1}, Landroid/view/RoundedCorners;->getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 56
    .local v5, "bottomRadius":F
    cmpl-float v2, v5, v2

    if-nez v2, :cond_2

    .line 57
    move v5, v3

    .line 62
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method public static blacklist supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 69
    const v0, 0x11101d4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
