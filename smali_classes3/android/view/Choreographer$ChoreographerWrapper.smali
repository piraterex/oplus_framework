.class Landroid/view/Choreographer$ChoreographerWrapper;
.super Ljava/lang/Object;
.source "Choreographer.java"

# interfaces
.implements Landroid/view/IChoreographerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoreographerWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor blacklist <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 1544
    iput-object p1, p0, Landroid/view/Choreographer$ChoreographerWrapper;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$ChoreographerWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/Choreographer$ChoreographerWrapper;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public blacklist addCallbackLockedForCallbackQueue(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Object;
    .param p2, "dueTime"    # J
    .param p4, "action"    # Ljava/lang/Object;
    .param p5, "token"    # Ljava/lang/Object;

    .line 1584
    instance-of v0, p1, Landroid/view/Choreographer$CallbackQueue;

    if-eqz v0, :cond_0

    .line 1585
    move-object v0, p1

    check-cast v0, Landroid/view/Choreographer$CallbackQueue;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 1587
    :cond_0
    return-void
.end method

.method public blacklist getCallbackLastConst()I
    .locals 1

    .line 1572
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getCallbackQueues()Ljava/lang/Object;
    .locals 1

    .line 1567
    iget-object v0, p0, Landroid/view/Choreographer$ChoreographerWrapper;->this$0:Landroid/view/Choreographer;

    invoke-static {v0}, Landroid/view/Choreographer;->-$$Nest$fgetmCallbackQueues(Landroid/view/Choreographer;)[Landroid/view/Choreographer$CallbackQueue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 1557
    iget-object v0, p0, Landroid/view/Choreographer$ChoreographerWrapper;->this$0:Landroid/view/Choreographer;

    invoke-static {v0}, Landroid/view/Choreographer;->-$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLock()Ljava/lang/Object;
    .locals 1

    .line 1562
    iget-object v0, p0, Landroid/view/Choreographer$ChoreographerWrapper;->this$0:Landroid/view/Choreographer;

    invoke-static {v0}, Landroid/view/Choreographer;->-$$Nest$fgetmLock(Landroid/view/Choreographer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMsgDoFrameConst()I
    .locals 1

    .line 1577
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scheduleFrameLocked(J)V
    .locals 1
    .param p1, "now"    # J

    .line 1547
    iget-object v0, p0, Landroid/view/Choreographer$ChoreographerWrapper;->this$0:Landroid/view/Choreographer;

    invoke-static {v0, p1, p2}, Landroid/view/Choreographer;->-$$Nest$mscheduleFrameLocked(Landroid/view/Choreographer;J)V

    .line 1548
    return-void
.end method

.method public blacklist setFrameScheduled(Z)V
    .locals 1
    .param p1, "frameScheduled"    # Z

    .line 1552
    iget-object v0, p0, Landroid/view/Choreographer$ChoreographerWrapper;->this$0:Landroid/view/Choreographer;

    invoke-static {v0, p1}, Landroid/view/Choreographer;->-$$Nest$fputmFrameScheduled(Landroid/view/Choreographer;Z)V

    .line 1553
    return-void
.end method

.method public blacklist setFrameTimeNanosForFrameData(Landroid/view/Choreographer$FrameData;J)V
    .locals 0
    .param p1, "frameData"    # Landroid/view/Choreographer$FrameData;
    .param p2, "frameTimeNanos"    # J

    .line 1593
    invoke-static {p1, p2, p3}, Landroid/view/Choreographer$FrameData;->-$$Nest$fputmFrameTimeNanos(Landroid/view/Choreographer$FrameData;J)V

    .line 1594
    return-void
.end method
