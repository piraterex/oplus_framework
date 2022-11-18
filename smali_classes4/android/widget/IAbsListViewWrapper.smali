.class public interface abstract Landroid/widget/IAbsListViewWrapper;
.super Ljava/lang/Object;
.source "IAbsListViewWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/widget/IAbsListviewExt;
    .locals 1

    .line 5
    new-instance v0, Landroid/widget/IAbsListViewWrapper$1;

    invoke-direct {v0, p0}, Landroid/widget/IAbsListViewWrapper$1;-><init>(Landroid/widget/IAbsListViewWrapper;)V

    return-object v0
.end method

.method public blacklist getFlingRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOverScroller()Landroid/widget/OverScroller;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setFlingRunnable()V
    .locals 0

    .line 14
    return-void
.end method

.method public blacklist startSpringback()V
    .locals 0

    .line 18
    return-void
.end method
