.class public interface abstract Landroid/view/IViewRootImplWrapper;
.super Ljava/lang/Object;
.source "IViewRootImplWrapper.java"


# virtual methods
.method public blacklist collectRootScrollCaptureTargets(Landroid/view/ScrollCaptureSearchResults;)V
    .locals 0
    .param p1, "results"    # Landroid/view/ScrollCaptureSearchResults;

    .line 38
    return-void
.end method

.method public blacklist getBasePackageName()Ljava/lang/String;
    .locals 1

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChoreographer()Landroid/view/Choreographer;
    .locals 1

    .line 53
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtImpl()Landroid/view/IViewRootImplExt;
    .locals 1

    .line 45
    new-instance v0, Landroid/view/IViewRootImplWrapper$1;

    invoke-direct {v0, p0}, Landroid/view/IViewRootImplWrapper$1;-><init>(Landroid/view/IViewRootImplWrapper;)V

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public blacklist getInputEventReceiver()Landroid/view/ViewRootImpl$WindowInputEventReceiver;
    .locals 1

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSocExtImpl()Ljava/lang/Object;
    .locals 1

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTraversalBarrier()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTraversalRunnable()Landroid/view/ViewRootImpl$TraversalRunnable;
    .locals 1

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTraversalScheduled()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUnbufferedInputDispatch()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getWindowAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 57
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public blacklist notifyRendererOfFramePending()V
    .locals 0

    .line 91
    return-void
.end method

.method public blacklist pokeDrawLockIfNeeded()V
    .locals 0

    .line 94
    return-void
.end method

.method public blacklist scheduleConsumeBatchedInput()V
    .locals 0

    .line 97
    return-void
.end method

.method public blacklist setTraversalBarrier(I)V
    .locals 0
    .param p1, "traversalBarrier"    # I

    .line 77
    return-void
.end method

.method public blacklist setTraversalScheduled(Z)V
    .locals 0
    .param p1, "traversalScheduled"    # Z

    .line 84
    return-void
.end method
