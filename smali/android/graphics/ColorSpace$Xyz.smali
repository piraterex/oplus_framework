.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Xyz"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 1916
    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    invoke-direct {p0, p1, v0, p2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    .line 1917
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Xyz-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static greylist-max-o clamp(F)F
    .locals 3
    .param p0, "x"    # F

    .line 1951
    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v1, p0, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist fromXyz([F)[F
    .locals 2
    .param p1, "v"    # [F

    .line 1944
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1945
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1946
    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1947
    return-object p1
.end method

.method public whitelist getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 1931
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public whitelist getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .line 1926
    const/high16 v0, -0x40000000    # -2.0f

    return v0
.end method

.method public whitelist isWideGamut()Z
    .locals 1

    .line 1921
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist toXyz([F)[F
    .locals 2
    .param p1, "v"    # [F

    .line 1936
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1937
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1938
    const/4 v0, 0x2

    aget v1, p1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v1

    aput v1, p1, v0

    .line 1939
    return-object p1
.end method
