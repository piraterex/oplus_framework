.class public interface abstract Landroid/widget/IOverScrollerSocExt;
.super Ljava/lang/Object;
.source "IOverScrollerSocExt.java"


# static fields
.field public static final whitelist FLING_MODE_SOC_EXT:I = 0x1

.field public static final whitelist SCROLL_MODE_SOC_EXT:I


# virtual methods
.method public whitelist getAdjustedAnimationClock(JJ)J
    .locals 0
    .param p1, "time"    # J
    .param p3, "startTime"    # J

    .line 14
    return-wide p1
.end method

.method public whitelist hookScrollPerfHint(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "begin"    # Z

    .line 23
    return-void
.end method

.method public whitelist setFlingFlag(ZI)V
    .locals 0
    .param p1, "isFinished"    # Z
    .param p2, "mode"    # I

    .line 11
    return-void
.end method

.method public whitelist setPerfHintContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    return-void
.end method
