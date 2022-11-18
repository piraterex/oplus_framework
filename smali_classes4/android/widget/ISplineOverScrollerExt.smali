.class public interface abstract Landroid/widget/ISplineOverScrollerExt;
.super Ljava/lang/Object;
.source "ISplineOverScrollerExt.java"


# virtual methods
.method public blacklist hookEndFling(Landroid/content/Context;IF)Landroid/util/Pair;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "velocity"    # I
    .param p3, "flingFriction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IF)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist hookResetVeloAccuCount()V
    .locals 0

    .line 27
    return-void
.end method

.method public blacklist hookSaveCurrVeloAccuCount()V
    .locals 0

    .line 21
    return-void
.end method

.method public blacklist hookSetAbortTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 24
    return-void
.end method

.method public blacklist hookStartFling(JFIZ)V
    .locals 0
    .param p1, "now"    # J
    .param p3, "currVelo"    # F
    .param p4, "velo"    # I
    .param p5, "finished"    # Z

    .line 30
    return-void
.end method

.method public blacklist prepareScrollOpt()V
    .locals 0

    .line 39
    return-void
.end method

.method public blacklist updateScrollerStateToEnd(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "displacement"    # I

    .line 48
    return-void
.end method

.method public blacklist updateScrollerStateToFling(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "splineOverScroller"    # Ljava/lang/Object;
    .param p2, "currentTime"    # J

    .line 45
    return-void
.end method

.method public blacklist updateScrollerStateToIdle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "splineOverScroller"    # Ljava/lang/Object;

    .line 42
    return-void
.end method
