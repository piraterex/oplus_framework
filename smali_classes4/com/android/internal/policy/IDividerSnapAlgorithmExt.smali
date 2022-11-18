.class public interface abstract Lcom/android/internal/policy/IDividerSnapAlgorithmExt;
.super Ljava/lang/Object;
.source "IDividerSnapAlgorithmExt.java"


# virtual methods
.method public blacklist addMiddleTarget(Ljava/util/ArrayList;ZIII)Z
    .locals 1
    .param p2, "isHorizontalDivision"    # Z
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;ZIII)Z"
        }
    .end annotation

    .line 53
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addMinimizedTarget(Ljava/util/ArrayList;IIILandroid/graphics/Rect;II)Z
    .locals 1
    .param p2, "dockedSide"    # I
    .param p3, "dividerSize"    # I
    .param p4, "taskHeightInMinimized"    # I
    .param p5, "insets"    # Landroid/graphics/Rect;
    .param p6, "displayWidth"    # I
    .param p7, "displayHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;III",
            "Landroid/graphics/Rect;",
            "II)Z"
        }
    .end annotation

    .line 49
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist addRatioTargets(Landroid/content/res/Resources;Ljava/util/ArrayList;IIZLandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p3, "dividerMax"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;IIZ",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 43
    .local p2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFreeSnapMode(Landroid/content/res/Resources;)Z
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSnapMode(Landroid/content/res/Resources;Z)I
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "isMinimizedMode"    # Z

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasLargeScreenFeature()Z
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method
