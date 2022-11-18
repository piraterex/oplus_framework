.class public interface abstract Landroid/widget/IScrollViewWrapper;
.super Ljava/lang/Object;
.source "IScrollViewWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/widget/IOplusScrollViewExt;
    .locals 1

    .line 5
    new-instance v0, Landroid/widget/IScrollViewWrapper$1;

    invoke-direct {v0, p0}, Landroid/widget/IScrollViewWrapper$1;-><init>(Landroid/widget/IScrollViewWrapper;)V

    return-object v0
.end method

.method public blacklist getOverScroller()Landroid/widget/OverScroller;
    .locals 1

    .line 9
    const/4 v0, 0x0

    return-object v0
.end method
