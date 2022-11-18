.class public Landroid/view/BatchedInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;,
        Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

.field private greylist-max-o mBatchedInputScheduled:Z

.field private blacklist mBatchingEnabled:Z

.field private greylist-max-o mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mConsumeBatchedInputEvents:Ljava/lang/Runnable;

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChoreographer(Landroid/view/BatchedInputEventReceiver;)Landroid/view/Choreographer;
    .locals 0

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public constructor greylist <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "choreographer"    # Landroid/view/Choreographer;

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 32
    new-instance v0, Landroid/view/BatchedInputEventReceiver$1;

    invoke-direct {v0, p0}, Landroid/view/BatchedInputEventReceiver$1;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable-IA;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    .line 43
    iput-object p3, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method private greylist-max-o scheduleBatchedInput()V
    .locals 4

    .line 96
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 98
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method

.method private greylist-max-o unscheduleBatchedInput()V
    .locals 4

    .line 103
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 105
    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    .line 60
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 61
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 62
    return-void
.end method

.method protected greylist-max-o doConsumeBatchedInput(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 82
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    .line 93
    :cond_0
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .locals 2
    .param p1, "source"    # I

    .line 50
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    goto :goto_0

    .line 53
    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 55
    :goto_0
    return-void
.end method

.method public blacklist setBatchingEnabled(Z)V
    .locals 2
    .param p1, "batchingEnabled"    # Z

    .line 69
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-ne v0, p1, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    iput-boolean p1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    .line 74
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    if-nez p1, :cond_1

    .line 76
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    .line 77
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_1
    return-void
.end method
