.class public Landroid/util/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 41
    const/4 v0, -0x1

    .line 42
    .local v0, "index":I
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    const v1, 0x1070046

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "ids":[Ljava/lang/String;
    array-length v2, v1

    .line 47
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 48
    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    move v0, v3

    .line 50
    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return v0

    .line 43
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "size":I
    :cond_3
    :goto_2
    return v0
.end method

.method public static blacklist getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;
    .locals 6
    .param p0, "modes"    # [Landroid/view/Display$Mode;

    .line 60
    if-eqz p0, :cond_3

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 64
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 65
    .local v1, "target":Landroid/view/Display$Mode;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 66
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-le v5, v0, :cond_1

    .line 67
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    .line 68
    move-object v1, v4

    .line 65
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_2
    return-object v1

    .line 61
    .end local v0    # "maxWidth":I
    .end local v1    # "target":Landroid/view/Display$Mode;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getPhysicalPixelDisplaySizeRatio(IIII)F
    .locals 3
    .param p0, "physicalWidth"    # I
    .param p1, "physicalHeight"    # I
    .param p2, "currentWidth"    # I
    .param p3, "currentHeight"    # I

    .line 79
    if-ne p0, p2, :cond_0

    if-ne p1, p3, :cond_0

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 82
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p0

    div-float/2addr v0, v1

    .line 83
    .local v0, "widthRatio":F
    int-to-float v1, p3

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 84
    .local v1, "heightRatio":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method
