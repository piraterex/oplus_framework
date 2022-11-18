.class public interface abstract Landroid/view/IInsetsControllerExt;
.super Ljava/lang/Object;
.source "IInsetsControllerExt.java"


# virtual methods
.method public blacklist replaceIMEDurationMs(ZI)J
    .locals 2
    .param p1, "show"    # Z
    .param p2, "time"    # I

    .line 24
    int-to-long v0, p2

    return-wide v0
.end method

.method public blacklist replaceIMEInterpolator(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 0
    .param p1, "ip"    # Landroid/view/animation/Interpolator;

    .line 20
    return-object p1
.end method

.method public blacklist setInsetAnimationTid(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 28
    const/4 v0, 0x0

    return v0
.end method
