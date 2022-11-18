.class public interface abstract Landroid/widget/IAbsListviewExt;
.super Ljava/lang/Object;
.source "IAbsListviewExt.java"


# virtual methods
.method public blacklist calcRealOverScrollDist(II)I
    .locals 0
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I

    .line 81
    return p1
.end method

.method public blacklist calcRealOverScrollDist(III)I
    .locals 0
    .param p1, "dist"    # I
    .param p2, "scrollY"    # I
    .param p3, "range"    # I

    .line 85
    return p1
.end method

.method public blacklist enableEndFlingProtectIfNeeded()Z
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist execEndFlingProtectIfNeeded()V
    .locals 0

    .line 42
    return-void
.end method

.method public blacklist getFastScroller(Landroid/widget/AbsListView;I)Landroid/widget/FastScroller;
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "style"    # I

    .line 112
    new-instance v0, Landroid/widget/FastScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    return-object v0
.end method

.method public blacklist getFlywheelTimeout()I
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOptHelperEnable()Z
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOverFlingDistance(I)I
    .locals 0
    .param p1, "dist"    # I

    .line 96
    return p1
.end method

.method public blacklist getOverScrollDistance(I)I
    .locals 0
    .param p1, "dist"    # I

    .line 92
    return p1
.end method

.method public blacklist getOverScroller(Landroid/content/Context;)Landroid/widget/OverScroller;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist getScaledOverflingDistance(I)I
    .locals 0
    .param p1, "dist"    # I

    .line 77
    return p1
.end method

.method public blacklist getScaledOverscrollDistance(I)I
    .locals 0
    .param p1, "dist"    # I

    .line 73
    return p1
.end method

.method public blacklist getTouchMode()I
    .locals 1

    .line 55
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "absListView"    # Landroid/widget/AbsListView;

    .line 28
    return-void
.end method

.method public blacklist initListHook(ZZ)V
    .locals 0
    .param p1, "optHelperEnable"    # Z
    .param p2, "forceUsingSpring"    # Z

    .line 100
    return-void
.end method

.method public blacklist initViewConfigHelper(Landroid/content/Context;ZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "optHelperEnable"    # Z
    .param p3, "forceUsingSpring"    # Z

    .line 89
    return-void
.end method

.method public blacklist isSupportedStyle()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSystemStyle()Z
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist obtainViewHook()V
    .locals 0

    .line 115
    return-void
.end method

.method public blacklist setFlingFriction(F)V
    .locals 0
    .param p1, "f"    # F

    .line 49
    return-void
.end method

.method public blacklist setFlingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 52
    return-void
.end method

.method public blacklist setFlywheelTimeout(I)V
    .locals 0
    .param p1, "flywheelTimeout"    # I

    .line 35
    return-void
.end method

.method public blacklist setTouchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 59
    return-void
.end method

.method public blacklist startSpringback()V
    .locals 0

    .line 62
    return-void
.end method
