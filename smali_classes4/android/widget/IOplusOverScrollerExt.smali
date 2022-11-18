.class public interface abstract Landroid/widget/IOplusOverScrollerExt;
.super Ljava/lang/Object;
.source "IOplusOverScrollerExt.java"


# virtual methods
.method public blacklist abortAnimation()V
    .locals 0

    .line 130
    return-void
.end method

.method public blacklist computeScrollOffset()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist extendDuration(I)V
    .locals 0
    .param p1, "extend"    # I

    .line 77
    return-void
.end method

.method public blacklist fling(IIIIIIII)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .line 109
    return-void
.end method

.method public blacklist fling(IIIIIIIIII)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .line 114
    return-void
.end method

.method public blacklist forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .line 58
    return-void
.end method

.method public blacklist getCurrVelocity()F
    .locals 1

    .line 62
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public blacklist getCurrX()I
    .locals 1

    .line 30
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCurrY()I
    .locals 1

    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDuration()I
    .locals 1

    .line 73
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getFinalX()I
    .locals 1

    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getFinalY()I
    .locals 1

    .line 42
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getForceUsingSpring()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInterpolator(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 147
    return-object p1
.end method

.method public blacklist getOptHelperEnable()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStartX()I
    .locals 1

    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getStartY()I
    .locals 1

    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist hookAbortAnimation(Landroid/widget/ISplineOverScrollerExt;Landroid/widget/ISplineOverScrollerExt;)Z
    .locals 1
    .param p1, "mSplineOverScrollerExtX"    # Landroid/widget/ISplineOverScrollerExt;
    .param p2, "mSplineOverScrollerExtY"    # Landroid/widget/ISplineOverScrollerExt;

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookCheckFlingFlag()Z
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookOverScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist interpolatorValid()Z
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFinished()Z
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOverScrolled()Z
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isScrollingInDirection(FF)Z
    .locals 1
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyHorizontalEdgeReached(III)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "finalX"    # I
    .param p3, "overX"    # I

    .line 118
    return-void
.end method

.method public blacklist notifyVerticalEdgeReached(III)V
    .locals 0
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .line 122
    return-void
.end method

.method public blacklist prepareScrollOpt(Landroid/widget/ISplineOverScrollerExt;)V
    .locals 0
    .param p1, "splineOverScrollerExtY"    # Landroid/widget/ISplineOverScrollerExt;

    .line 167
    return-void
.end method

.method public blacklist setFinalX(I)V
    .locals 0
    .param p1, "x"    # I

    .line 83
    return-void
.end method

.method public blacklist setFinalY(I)V
    .locals 0
    .param p1, "y"    # I

    .line 87
    return-void
.end method

.method public blacklist setForceUsingSpring(Z)V
    .locals 0
    .param p1, "forceUsingSpring"    # Z

    .line 141
    return-void
.end method

.method public blacklist setFriction(F)V
    .locals 0
    .param p1, "friction"    # F

    .line 23
    return-void
.end method

.method public blacklist setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 151
    return-void
.end method

.method public blacklist setSpringOverScroller(Ljava/lang/Object;)V
    .locals 0
    .param p1, "scroller"    # Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public blacklist setSpringOverScrollerInterpolator(Landroid/view/animation/Interpolator;)Z
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist springBack(IIIIII)Z
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startScroll(IIII)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 95
    return-void
.end method

.method public blacklist startScroll(IIIII)V
    .locals 0
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .line 99
    return-void
.end method

.method public blacklist timePassed()I
    .locals 1

    .line 79
    const/4 v0, -0x1

    return v0
.end method
