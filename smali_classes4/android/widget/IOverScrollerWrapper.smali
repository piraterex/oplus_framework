.class public interface abstract Landroid/widget/IOverScrollerWrapper;
.super Ljava/lang/Object;
.source "IOverScrollerWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/widget/IOplusOverScrollerExt;
    .locals 1

    .line 6
    new-instance v0, Landroid/widget/IOverScrollerWrapper$1;

    invoke-direct {v0, p0}, Landroid/widget/IOverScrollerWrapper$1;-><init>(Landroid/widget/IOverScrollerWrapper;)V

    return-object v0
.end method

.method public blacklist getMode()I
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method
