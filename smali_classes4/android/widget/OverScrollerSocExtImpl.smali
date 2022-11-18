.class public Landroid/widget/OverScrollerSocExtImpl;
.super Ljava/lang/Object;
.source "OverScrollerSocExtImpl.java"

# interfaces
.implements Landroid/widget/IOverScrollerSocExt;


# instance fields
.field private blacklist mOverScroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OverScrollerSocExtImpl;->mOverScroller:Landroid/widget/OverScroller;

    .line 10
    move-object v0, p1

    check-cast v0, Landroid/widget/OverScroller;

    iput-object v0, p0, Landroid/widget/OverScrollerSocExtImpl;->mOverScroller:Landroid/widget/OverScroller;

    .line 11
    return-void
.end method


# virtual methods
.method public whitelist getAdjustedAnimationClock(JJ)J
    .locals 2
    .param p1, "time"    # J
    .param p3, "startTime"    # J

    .line 15
    invoke-static {p1, p2}, Landroid/util/BoostFramework$ScrollOptimizer;->getAdjustedAnimationClock(J)J

    move-result-wide v0

    .line 16
    .local v0, "adjustedTime":J
    return-wide v0
.end method

.method public whitelist hookScrollPerfHint(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "begin"    # Z

    .line 37
    return-void
.end method

.method public whitelist setFlingFlag(ZI)V
    .locals 1
    .param p1, "finished"    # Z
    .param p2, "mode"    # I

    .line 21
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    goto :goto_0

    .line 23
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 24
    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setFlingFlag(I)V

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setPerfHintContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    return-void
.end method
