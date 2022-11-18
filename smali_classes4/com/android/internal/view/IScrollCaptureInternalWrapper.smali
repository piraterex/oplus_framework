.class public interface abstract Lcom/android/internal/view/IScrollCaptureInternalWrapper;
.super Ljava/lang/Object;
.source "IScrollCaptureInternalWrapper.java"


# virtual methods
.method public blacklist detectScrollingType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtImpl()Lcom/android/internal/view/IScrollCaptureInternalExt;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/internal/view/IScrollCaptureInternalExt;->DEFAULT:Lcom/android/internal/view/IScrollCaptureInternalExt;

    return-object v0
.end method
