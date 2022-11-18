.class public interface abstract Landroid/view/IChoreographerWrapper;
.super Ljava/lang/Object;
.source "IChoreographerWrapper.java"


# virtual methods
.method public blacklist addCallbackLockedForCallbackQueue(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "callback"    # Ljava/lang/Object;
    .param p2, "dueTime"    # J
    .param p4, "action"    # Ljava/lang/Object;
    .param p5, "token"    # Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public blacklist getCallbackLastConst()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallbackQueues()Ljava/lang/Object;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLock()Ljava/lang/Object;
    .locals 1

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMsgDoFrameConst()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scheduleFrameLocked(J)V
    .locals 0
    .param p1, "now"    # J

    .line 29
    return-void
.end method

.method public blacklist setFrameScheduled(Z)V
    .locals 0
    .param p1, "frameScheduled"    # Z

    .line 31
    return-void
.end method

.method public blacklist setFrameTimeNanosForFrameData(Landroid/view/Choreographer$FrameData;J)V
    .locals 0
    .param p1, "frameData"    # Landroid/view/Choreographer$FrameData;
    .param p2, "frameTimeNanos"    # J

    .line 55
    return-void
.end method
