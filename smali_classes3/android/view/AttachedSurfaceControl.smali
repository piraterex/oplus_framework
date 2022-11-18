.class public interface abstract Landroid/view/AttachedSurfaceControl;
.super Ljava/lang/Object;
.source "AttachedSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;
    }
.end annotation


# virtual methods
.method public whitelist addOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    .line 119
    return-void
.end method

.method public abstract whitelist applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z
.end method

.method public abstract whitelist buildReparentTransaction(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
.end method

.method public whitelist getBufferTransformHint()I
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeOnBufferTransformHintChangedListener(Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/AttachedSurfaceControl$OnBufferTransformHintChangedListener;

    .line 128
    return-void
.end method

.method public whitelist setTouchableRegion(Landroid/graphics/Region;)V
    .locals 0
    .param p1, "r"    # Landroid/graphics/Region;

    .line 140
    return-void
.end method
