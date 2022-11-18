.class public Landroid/widget/SplineOverScrollerSocExtImpl;
.super Ljava/lang/Object;
.source "SplineOverScrollerSocExtImpl.java"

# interfaces
.implements Landroid/widget/ISplineOverScrollerSocExt;


# instance fields
.field private blacklist mOverScroller:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SplineOverScrollerSocExtImpl;->mOverScroller:Landroid/widget/OverScroller$SplineOverScroller;

    .line 10
    move-object v0, p1

    check-cast v0, Landroid/widget/OverScroller$SplineOverScroller;

    iput-object v0, p0, Landroid/widget/SplineOverScrollerSocExtImpl;->mOverScroller:Landroid/widget/OverScroller$SplineOverScroller;

    .line 11
    return-void
.end method


# virtual methods
.method public whitelist getCurrentDistance()D
    .locals 2

    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getCurrentVelocity()F
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSplineDuration()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSplineFlingDistance()D
    .locals 2

    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist isSmoothFlingEnabled()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isVariableRefreshRateEnabled()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist perfHintFinish()V
    .locals 0

    .line 23
    return-void
.end method

.method public whitelist perfHintStart(F)V
    .locals 0
    .param p1, "currentVelocity"    # F

    .line 19
    return-void
.end method

.method public whitelist perfHintUpdate(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .line 27
    return-void
.end method

.method public whitelist setFlingFriction(F)V
    .locals 0
    .param p1, "flingFriction"    # F

    .line 15
    return-void
.end method

.method public whitelist setVariableRefreshRateEnable(Z)V
    .locals 0
    .param p1, "isVariableRefreshRateEnabled"    # Z

    .line 61
    return-void
.end method
