.class public interface abstract Landroid/view/IDisplayExt;
.super Ljava/lang/Object;
.source "IDisplayExt.java"


# virtual methods
.method public blacklist getCompactWindowDisplayAdjustment(Landroid/content/res/Resources;)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompactWindowRotation(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDisplayAdjustmentForCompactWindow(Landroid/content/res/Resources;Landroid/view/DisplayAdjustments;)Landroid/view/DisplayAdjustments;
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "originAdjustments"    # Landroid/view/DisplayAdjustments;

    .line 46
    return-object p2
.end method

.method public blacklist supportDisplayCompat()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateCompatRealSize(Landroid/view/DisplayInfo;Landroid/content/res/CompatibilityInfo;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "outSize"    # Landroid/graphics/Point;

    .line 33
    return-void
.end method
