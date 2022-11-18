.class Landroid/view/ViewRootImpl$ViewRootImplWrapper;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/IViewRootImplWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewRootImplWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 11493
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$ViewRootImplWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootImplWrapper;-><init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist collectRootScrollCaptureTargets(Landroid/view/ScrollCaptureSearchResults;)V
    .locals 1
    .param p1, "results"    # Landroid/view/ScrollCaptureSearchResults;

    .line 11497
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mcollectRootScrollCaptureTargets(Landroid/view/ViewRootImpl;Landroid/view/ScrollCaptureSearchResults;)V

    .line 11498
    return-void
.end method

.method public blacklist getBasePackageName()Ljava/lang/String;
    .locals 1

    .line 11527
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChoreographer()Landroid/view/Choreographer;
    .locals 1

    .line 11517
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method public blacklist getExtImpl()Landroid/view/IViewRootImplExt;
    .locals 1

    .line 11507
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 11512
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    return-object v0
.end method

.method public blacklist getInputEventReceiver()Landroid/view/ViewRootImpl$WindowInputEventReceiver;
    .locals 1

    .line 11537
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    return-object v0
.end method

.method public blacklist getSocExtImpl()Ljava/lang/Object;
    .locals 1

    .line 11502
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmViewRootImplSocExt(Landroid/view/ViewRootImpl;)Landroid/view/IViewRootImplSocExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTraversalBarrier()I
    .locals 1

    .line 11542
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget v0, v0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    return v0
.end method

.method public blacklist getTraversalRunnable()Landroid/view/ViewRootImpl$TraversalRunnable;
    .locals 1

    .line 11532
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    return-object v0
.end method

.method public blacklist getTraversalScheduled()Z
    .locals 1

    .line 11552
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    return v0
.end method

.method public blacklist getUnbufferedInputDispatch()Z
    .locals 1

    .line 11562
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    return v0
.end method

.method public blacklist getWindowAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 11522
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public blacklist notifyRendererOfFramePending()V
    .locals 1

    .line 11567
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 11568
    return-void
.end method

.method public blacklist pokeDrawLockIfNeeded()V
    .locals 1

    .line 11572
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 11573
    return-void
.end method

.method public blacklist scheduleConsumeBatchedInput()V
    .locals 1

    .line 11577
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 11578
    return-void
.end method

.method public blacklist setTraversalBarrier(I)V
    .locals 1
    .param p1, "traversalBarrier"    # I

    .line 11547
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iput p1, v0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 11548
    return-void
.end method

.method public blacklist setTraversalScheduled(Z)V
    .locals 1
    .param p1, "traversalScheduled"    # Z

    .line 11557
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootImplWrapper;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean p1, v0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 11558
    return-void
.end method
