.class public Landroid/view/ViewRootImplSocExtImpl;
.super Ljava/lang/Object;
.source "ViewRootImplSocExtImpl.java"

# interfaces
.implements Landroid/view/IViewRootImplSocExt;


# instance fields
.field private blacklist mHaveMoveEvent:Z

.field private blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImplSocExtImpl;->mHaveMoveEvent:Z

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImplSocExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl;

    iput-object v0, p0, Landroid/view/ViewRootImplSocExtImpl;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist hookFinishDrawingPerfHint()V
    .locals 0

    .line 59
    return-void
.end method

.method public whitelist hookMotionEventPerfHint(Landroid/view/MotionEvent;Landroid/content/Context;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    return-void
.end method

.method public whitelist hookOnFrameDrawPerfHint()V
    .locals 0

    .line 64
    return-void
.end method

.method public whitelist hookScrollPerfHint(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    return-void
.end method

.method public whitelist scaleMotionEvent(Landroid/view/InputEvent;)V
    .locals 0
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 49
    return-void
.end method

.method public blacklist setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .locals 0
    .param p1, "bLASTBufferQueue"    # Landroid/graphics/BLASTBufferQueue;

    .line 23
    invoke-static {p1}, Landroid/util/BoostFramework$ScrollOptimizer;->setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    .line 24
    return-void
.end method

.method public whitelist setHaveMoveEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 29
    .local v0, "action":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 30
    iput-boolean v1, p0, Landroid/view/ViewRootImplSocExtImpl;->mHaveMoveEvent:Z

    goto :goto_0

    .line 31
    :cond_0
    if-ne v0, v1, :cond_1

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImplSocExtImpl;->mHaveMoveEvent:Z

    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setSurfaceCreated(Z)V
    .locals 0
    .param p1, "created"    # Z

    .line 54
    return-void
.end method
