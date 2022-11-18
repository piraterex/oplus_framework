.class public interface abstract Landroid/graphics/IBitmapExt;
.super Ljava/lang/Object;
.source "IBitmapExt.java"


# virtual methods
.method public blacklist checkLM([BZII)Z
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "getHash"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getColorState()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasCalculatedColor()Z
    .locals 1

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAssetSource()Z
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCanvasBaseBitmap()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isViewSrc()Z
    .locals 1

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist osenseClrSceneAction(JII)V
    .locals 0
    .param p1, "request"    # J
    .param p3, "mWidth"    # I
    .param p4, "mHeight"    # I

    .line 69
    return-void
.end method

.method public blacklist osenseSetSceneAction(III)J
    .locals 2
    .param p1, "timeout"    # I
    .param p2, "mWidth"    # I
    .param p3, "mHeight"    # I

    .line 65
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist setColorState(I)V
    .locals 0
    .param p1, "colorState"    # I

    .line 41
    return-void
.end method

.method public blacklist setHasCalculatedColor(Z)V
    .locals 0
    .param p1, "isCalculatedColor"    # Z

    .line 27
    return-void
.end method

.method public blacklist setIsAssetSource(Z)V
    .locals 0
    .param p1, "isAssetSource"    # Z

    .line 34
    return-void
.end method

.method public blacklist setIsCanvasBaseBitmap(Z)V
    .locals 0
    .param p1, "isCanvasBaseBitmap"    # Z

    .line 48
    return-void
.end method

.method public blacklist setIsViewSrc(Z)V
    .locals 0
    .param p1, "isViewSrc"    # Z

    .line 55
    return-void
.end method
