.class public interface abstract Landroid/view/IViewGroupExt;
.super Ljava/lang/Object;
.source "IViewGroupExt.java"


# virtual methods
.method public blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 9
    return-void
.end method

.method public blacklist hookdispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/IViewExt;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "viewExt"    # Landroid/view/IViewExt;

    .line 24
    return-void
.end method

.method public blacklist hookdrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isLevelDebug()Z
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLevelVerbose()Z
    .locals 1

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist markDispatchDraw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 27
    return-void
.end method

.method public blacklist markDrawChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 30
    return-void
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 13
    return-void
.end method
