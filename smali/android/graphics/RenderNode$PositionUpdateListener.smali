.class public interface abstract Landroid/graphics/RenderNode$PositionUpdateListener;
.super Ljava/lang/Object;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionUpdateListener"
.end annotation


# direct methods
.method public static blacklist callApplyStretch(Ljava/lang/ref/WeakReference;JFFFFFFFFFF)Z
    .locals 14
    .param p1, "frameNumber"    # J
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "vecX"    # F
    .param p6, "vecY"    # F
    .param p7, "maxStretchX"    # F
    .param p8, "maxStretchY"    # F
    .param p9, "childRelativeLeft"    # F
    .param p10, "childRelativeTop"    # F
    .param p11, "childRelativeRight"    # F
    .param p12, "childRelativeBottom"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JFFFFFFFFFF)Z"
        }
    .end annotation

    .line 315
    .local p0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/RenderNode$PositionUpdateListener;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 316
    .local v0, "listener":Landroid/graphics/RenderNode$PositionUpdateListener;
    if-eqz v0, :cond_0

    .line 317
    move-object v1, v0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Landroid/graphics/RenderNode$PositionUpdateListener;->applyStretch(JFFFFFFFFFF)V

    .line 320
    const/4 v1, 0x1

    return v1

    .line 322
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist callPositionChanged(Ljava/lang/ref/WeakReference;JIIII)Z
    .locals 8
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;JIIII)Z"
        }
    .end annotation

    .line 283
    .local p0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/RenderNode$PositionUpdateListener;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 284
    .local v0, "listener":Landroid/graphics/RenderNode$PositionUpdateListener;
    if-eqz v0, :cond_0

    .line 285
    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionChanged(JIIII)V

    .line 286
    const/4 v1, 0x1

    return v1

    .line 288
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist callPositionLost(Ljava/lang/ref/WeakReference;J)Z
    .locals 2
    .param p1, "frameNumber"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;J)Z"
        }
    .end annotation

    .line 340
    .local p0, "weakListener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/RenderNode$PositionUpdateListener;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 341
    .local v0, "listener":Landroid/graphics/RenderNode$PositionUpdateListener;
    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0, p1, p2}, Landroid/graphics/RenderNode$PositionUpdateListener;->positionLost(J)V

    .line 343
    const/4 v1, 0x1

    return v1

    .line 345
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .locals 0
    .param p1, "frameNumber"    # J
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "vecX"    # F
    .param p6, "vecY"    # F
    .param p7, "maxStretchX"    # F
    .param p8, "maxStretchY"    # F
    .param p9, "childRelativeLeft"    # F
    .param p10, "childRelativeTop"    # F
    .param p11, "childRelativeRight"    # F
    .param p12, "childRelativeBottom"    # F

    .line 304
    return-void
.end method

.method public abstract blacklist positionChanged(JIIII)V
.end method

.method public abstract blacklist positionLost(J)V
.end method
