.class public interface abstract Landroid/view/InsetsAnimationControlRunner;
.super Ljava/lang/Object;
.source "InsetsAnimationControlRunner.java"


# virtual methods
.method public abstract blacklist cancel()V
.end method

.method public blacklist controlsInternalType(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 69
    invoke-interface {p0}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->toInternalType(I)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
.end method

.method public abstract blacklist getAnimationType()I
.end method

.method public abstract blacklist getControllingTypes()I
.end method

.method public abstract blacklist getTypes()I
.end method

.method public abstract blacklist notifyControlRevoked(I)V
.end method

.method public abstract blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation
.end method
