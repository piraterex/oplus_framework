.class public interface abstract Lcom/android/internal/app/IResolverDrawerLayoutWrapper;
.super Ljava/lang/Object;
.source "IResolverDrawerLayoutWrapper.java"


# virtual methods
.method public blacklist dismiss()V
    .locals 0

    .line 32
    return-void
.end method

.method public blacklist getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isDismissable()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNestedListChildScrolled()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performDrag(F)V
    .locals 0
    .param p1, "dy"    # F

    .line 22
    return-void
.end method

.method public blacklist setDismissOnScrollerFinished(Z)V
    .locals 0
    .param p1, "isFinished"    # Z

    .line 28
    return-void
.end method

.method public blacklist smoothScrollTo(IF)V
    .locals 0
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .line 30
    return-void
.end method
