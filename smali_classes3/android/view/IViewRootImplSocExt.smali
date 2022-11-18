.class public interface abstract Landroid/view/IViewRootImplSocExt;
.super Ljava/lang/Object;
.source "IViewRootImplSocExt.java"


# virtual methods
.method public whitelist hookFinishDrawingPerfHint()V
    .locals 0

    .line 37
    return-void
.end method

.method public whitelist hookInputBegin(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 45
    return-void
.end method

.method public whitelist hookMotionEventPerfHint(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 25
    return-void
.end method

.method public whitelist hookOnFrameDrawPerfHint()V
    .locals 0

    .line 41
    return-void
.end method

.method public whitelist hookScrollPerfHint(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    return-void
.end method

.method public whitelist scaleMotionEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 29
    return-void
.end method

.method public blacklist setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .locals 0
    .param p1, "bLASTBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 17
    return-void
.end method

.method public whitelist setHaveMoveEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 11
    return-void
.end method

.method public whitelist setSurfaceCreated(Z)V
    .locals 0
    .param p1, "created"    # Z

    .line 33
    return-void
.end method
