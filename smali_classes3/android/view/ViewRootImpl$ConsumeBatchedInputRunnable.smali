.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 9499
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 9502
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 9503
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9508
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 9510
    :cond_0
    return-void
.end method
