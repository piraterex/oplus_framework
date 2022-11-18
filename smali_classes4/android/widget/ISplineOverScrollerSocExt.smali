.class public interface abstract Landroid/widget/ISplineOverScrollerSocExt;
.super Ljava/lang/Object;
.source "ISplineOverScrollerSocExt.java"


# virtual methods
.method public whitelist getCurrentDistance()D
    .locals 2

    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getCurrentVelocity()F
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSplineDuration()I
    .locals 1

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSplineFlingDistance()D
    .locals 2

    .line 25
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist isSmoothFlingEnabled()Z
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVariableRefreshRateEnabled()Z
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist perfHintFinish()V
    .locals 0

    .line 14
    return-void
.end method

.method public whitelist perfHintStart(F)V
    .locals 0
    .param p1, "currentVelocity"    # F

    .line 10
    return-void
.end method

.method public whitelist perfHintUpdate(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .line 18
    return-void
.end method

.method public whitelist setFlingFriction(F)V
    .locals 0
    .param p1, "flingFriction"    # F

    .line 6
    return-void
.end method

.method public whitelist setVariableRefreshRateEnable(Z)V
    .locals 0
    .param p1, "isVariableRefreshRateEnabled"    # Z

    .line 46
    return-void
.end method
