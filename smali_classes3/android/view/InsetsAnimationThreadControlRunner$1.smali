.class Landroid/view/InsetsAnimationThreadControlRunner$1;
.super Ljava/lang/Object;
.source "InsetsAnimationThreadControlRunner.java"

# interfaces
.implements Landroid/view/InsetsAnimationControlCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsAnimationThreadControlRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mTmpFloat9:[F

.field final synthetic blacklist this$0:Landroid/view/InsetsAnimationThreadControlRunner;


# direct methods
.method constructor blacklist <init>(Landroid/view/InsetsAnimationThreadControlRunner;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/InsetsAnimationThreadControlRunner;

    .line 51
    iput-object p1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->mTmpFloat9:[F

    return-void
.end method


# virtual methods
.method public varargs blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4
    .param p1, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 85
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsAnimThreadRunner"

    const-string v1, "applySurfaceParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 87
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 88
    aget-object v2, p1, v1

    .line 89
    .local v2, "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    iget-object v3, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 87
    .end local v2    # "surfaceParams":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_1
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setFrameTimelineVsync(J)Landroid/view/SurfaceControl$Transaction;

    .line 92
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 93
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 94
    return-void
.end method

.method synthetic blacklist lambda$notifyFinished$0$android-view-InsetsAnimationThreadControlRunner$1(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .line 80
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-interface {v0, v1, p1}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    return-void
.end method

.method synthetic blacklist lambda$reportPerceptible$1$android-view-InsetsAnimationThreadControlRunner$1(IZ)V
    .locals 1
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 105
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmOuterCallbacks(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/InsetsAnimationControlCallbacks;->reportPerceptible(IZ)V

    return-void
.end method

.method public blacklist notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V
    .locals 4
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;
    .param p2, "shown"    # Z

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsAsyncAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-interface {p1}, Landroid/view/InsetsAnimationControlRunner;->getTypes()I

    move-result v1

    .line 75
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 78
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsAnimationControlImpl;->getControls()Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$mreleaseControls(Landroid/view/InsetsAnimationThreadControlRunner;Landroid/util/SparseArray;)V

    .line 79
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/InsetsAnimationThreadControlRunner$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public blacklist releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "sc"    # Landroid/view/SurfaceControl;

    .line 98
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InsetsAnimThreadRunner"

    const-string/jumbo v1, "releaseSurfaceControlFromRt"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 101
    return-void
.end method

.method public blacklist reportPerceptible(IZ)V
    .locals 2
    .param p1, "types"    # I
    .param p2, "perceptible"    # Z

    .line 105
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmMainThreadHandler(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/InsetsAnimationThreadControlRunner$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationThreadControlRunner$1;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public blacklist scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V
    .locals 3
    .param p1, "runner"    # Landroid/view/InsetsAnimationControlRunner;

    .line 65
    iget-object v0, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v0}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    iget-object v1, p0, Landroid/view/InsetsAnimationThreadControlRunner$1;->this$0:Landroid/view/InsetsAnimationThreadControlRunner;

    invoke-static {v1}, Landroid/view/InsetsAnimationThreadControlRunner;->-$$Nest$fgetmControl(Landroid/view/InsetsAnimationThreadControlRunner;)Landroid/view/InsetsAnimationControlImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V
    .locals 0
    .param p2, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p3, "types"    # I
    .param p4, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p5, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/InsetsAnimationControlRunner;",
            ":",
            "Landroid/view/InternalInsetsAnimationController;",
            ">(TT;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/WindowInsetsAnimation;",
            "Landroid/view/WindowInsetsAnimation$Bounds;",
            ")V"
        }
    .end annotation

    .line 61
    .local p1, "runner":Landroid/view/InsetsAnimationControlRunner;, "TT;"
    return-void
.end method
