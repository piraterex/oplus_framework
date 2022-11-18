.class public interface abstract Landroid/graphics/IPathExt;
.super Ljava/lang/Object;
.source "IPathExt.java"


# virtual methods
.method public blacklist hookAddRect()V
    .locals 0

    .line 35
    return-void
.end method

.method public blacklist hookAddRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "dir"    # Landroid/graphics/Path$Direction;

    .line 39
    return-void
.end method

.method public blacklist hookAddRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radii"    # [F
    .param p6, "dir"    # Landroid/graphics/Path$Direction;

    .line 43
    return-void
.end method

.method public blacklist hookPath(Landroid/graphics/IPathExt;)V
    .locals 0
    .param p1, "pathExt"    # Landroid/graphics/IPathExt;

    .line 32
    return-void
.end method

.method public blacklist isAddArea()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method
