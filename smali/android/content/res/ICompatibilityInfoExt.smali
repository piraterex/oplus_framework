.class interface abstract Landroid/content/res/ICompatibilityInfoExt;
.super Ljava/lang/Object;
.source "ICompatibilityInfoExt.java"


# virtual methods
.method public blacklist applyToConfiguration(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;I)V
    .locals 0
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "compatFlags"    # I

    .line 41
    return-void
.end method

.method public blacklist getCompatDensity(Landroid/content/pm/ApplicationInfo;I)I
    .locals 0
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "defaultDensity"    # I

    .line 26
    return p2
.end method

.method public blacklist hasOverrideScaling(I)Z
    .locals 1
    .param p1, "compatFlags"    # I

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist overrideDisplayMetricsIfNeed(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;I)V
    .locals 0
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "compatFlags"    # I

    .line 37
    return-void
.end method

.method public blacklist updateCompatFlagsIfNeed(Landroid/content/pm/ApplicationInfo;I)I
    .locals 0
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatFlags"    # I

    .line 29
    return p2
.end method
