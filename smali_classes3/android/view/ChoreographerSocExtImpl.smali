.class public Landroid/view/ChoreographerSocExtImpl;
.super Ljava/lang/Object;
.source "ChoreographerSocExtImpl.java"

# interfaces
.implements Landroid/view/IChoreographerSocExt;


# static fields
.field private static final blacklist MOTION_EVENT_ACTION_CANCEL:I = 0x3

.field private static final blacklist MOTION_EVENT_ACTION_DOWN:I = 0x0

.field private static final blacklist MOTION_EVENT_ACTION_MOVE:I = 0x2

.field private static final blacklist MOTION_EVENT_ACTION_UP:I = 0x1

.field private static final blacklist OPTS_INPUT:Z = true


# instance fields
.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mConsumedDown:Z

.field private blacklist mConsumedMove:Z

.field private blacklist mIsDoFrameProcessing:Z

.field private blacklist mIsVsyncScheduled:Z

.field private blacklist mLastTouchOptTimeNanos:J

.field private blacklist mMotionEventType:I

.field private blacklist mTouchMoveNum:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ChoreographerSocExtImpl;->mTouchMoveNum:I

    .line 18
    iput v0, p0, Landroid/view/ChoreographerSocExtImpl;->mMotionEventType:I

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedMove:Z

    .line 20
    iput-boolean v0, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedDown:Z

    .line 21
    iput-boolean v0, p0, Landroid/view/ChoreographerSocExtImpl;->mIsVsyncScheduled:Z

    .line 22
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ChoreographerSocExtImpl;->mLastTouchOptTimeNanos:J

    .line 23
    iput-boolean v0, p0, Landroid/view/ChoreographerSocExtImpl;->mIsDoFrameProcessing:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ChoreographerSocExtImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/view/Choreographer;

    iput-object v0, p0, Landroid/view/ChoreographerSocExtImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 29
    return-void
.end method


# virtual methods
.method public whitelist getFrameDelay(JJ)J
    .locals 2
    .param p1, "frameDelay"    # J
    .param p3, "lastFrameTimeNanos"    # J

    .line 91
    invoke-static {p1, p2, p3, p4}, Landroid/util/BoostFramework$ScrollOptimizer;->getFrameDelay(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist hookDoCallbackPerfHint(IZ)V
    .locals 0
    .param p1, "callbackType"    # I
    .param p2, "begin"    # Z

    .line 139
    return-void
.end method

.method public whitelist hookDoFramePerfHint(JZ)V
    .locals 0
    .param p1, "vsyncId"    # J
    .param p3, "begin"    # Z

    .line 134
    return-void
.end method

.method public whitelist hookScheduleFrameLocked(ZLandroid/os/Handler;J)Z
    .locals 8
    .param p1, "USE_VSYNC"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mFrameIntervalNanos"    # J

    .line 39
    iget-boolean v0, p0, Landroid/view/ChoreographerSocExtImpl;->mIsVsyncScheduled:Z

    if-nez v0, :cond_2

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 41
    .local v0, "curr":J
    iget-wide v2, p0, Landroid/view/ChoreographerSocExtImpl;->mLastTouchOptTimeNanos:J

    sub-long v2, v0, v2

    cmp-long v2, v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 42
    .local v2, "skipFlag":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduleFrameLocked-mMotionEventType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/ChoreographerSocExtImpl;->mMotionEventType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mTouchMoveNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/ChoreographerSocExtImpl;->mTouchMoveNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConsumedDown:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedDown:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mConsumedMove:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedMove:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsDoFrameProcessing:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/ChoreographerSocExtImpl;->mIsDoFrameProcessing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " skip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " diff:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/view/ChoreographerSocExtImpl;->mLastTouchOptTimeNanos:J

    sub-long v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x8

    invoke-static {v6, v7, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget v5, p0, Landroid/view/ChoreographerSocExtImpl;->mMotionEventType:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 64
    :pswitch_0
    iput-boolean v4, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedDown:Z

    .line 66
    iget-boolean v5, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedMove:Z

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    iget-boolean v5, p0, Landroid/view/ChoreographerSocExtImpl;->mIsDoFrameProcessing:Z

    if-nez v5, :cond_1

    .line 67
    invoke-virtual {p2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 68
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 69
    invoke-virtual {p2, v5}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 70
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/ChoreographerSocExtImpl;->mLastTouchOptTimeNanos:J

    .line 71
    iput-boolean v3, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedMove:Z

    .line 72
    monitor-exit p0

    return v4

    .line 77
    .end local v5    # "msg":Landroid/os/Message;
    :pswitch_1
    iput-boolean v4, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedMove:Z

    .line 78
    iput-boolean v4, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedDown:Z

    .line 79
    goto :goto_1

    .line 53
    :pswitch_2
    iput-boolean v4, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedMove:Z

    .line 54
    iget-boolean v5, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedDown:Z

    if-nez v5, :cond_1

    if-nez v2, :cond_1

    iget-boolean v5, p0, Landroid/view/ChoreographerSocExtImpl;->mIsDoFrameProcessing:Z

    if-nez v5, :cond_1

    .line 55
    invoke-virtual {p2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 56
    .restart local v5    # "msg":Landroid/os/Message;
    invoke-virtual {v5, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 57
    invoke-virtual {p2, v5}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 58
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/ChoreographerSocExtImpl;->mLastTouchOptTimeNanos:J

    .line 59
    iput-boolean v3, p0, Landroid/view/ChoreographerSocExtImpl;->mConsumedDown:Z

    .line 60
    monitor-exit p0

    return v4

    .line 83
    .end local v5    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 86
    .end local v0    # "curr":J
    .end local v2    # "skipFlag":Z
    :cond_2
    :goto_2
    invoke-static {p1}, Landroid/util/BoostFramework$ScrollOptimizer;->shouldUseVsync(Z)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setFrameInterval(J)V
    .locals 0
    .param p1, "frameIntervalNanos"    # J

    .line 33
    invoke-static {p1, p2}, Landroid/util/BoostFramework$ScrollOptimizer;->setFrameInterval(J)V

    .line 34
    return-void
.end method

.method public whitelist setIsDoFrameProcessing(Z)V
    .locals 0
    .param p1, "isDoFrameProcessing"    # Z

    .line 108
    iput-boolean p1, p0, Landroid/view/ChoreographerSocExtImpl;->mIsDoFrameProcessing:Z

    .line 109
    return-void
.end method

.method public whitelist setIsVsyncScheduled(Z)V
    .locals 0
    .param p1, "isVsyncScheduled"    # Z

    .line 123
    iput-boolean p1, p0, Landroid/view/ChoreographerSocExtImpl;->mIsVsyncScheduled:Z

    .line 124
    return-void
.end method

.method public whitelist setMotionEventInfo(II)V
    .locals 2
    .param p1, "motionEventType"    # I
    .param p2, "touchMoveNum"    # I

    .line 99
    iget-object v0, p0, Landroid/view/ChoreographerSocExtImpl;->mChoreographer:Landroid/view/Choreographer;

    monitor-enter v0

    .line 100
    :try_start_0
    iput p2, p0, Landroid/view/ChoreographerSocExtImpl;->mTouchMoveNum:I

    .line 101
    iput p1, p0, Landroid/view/ChoreographerSocExtImpl;->mMotionEventType:I

    .line 102
    invoke-static {p1}, Landroid/util/BoostFramework$ScrollOptimizer;->setMotionType(I)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setScheduleVsync(Z)V
    .locals 0
    .param p1, "isscheduleVsync"    # Z

    .line 128
    iput-boolean p1, p0, Landroid/view/ChoreographerSocExtImpl;->mIsVsyncScheduled:Z

    .line 129
    return-void
.end method

.method public whitelist setUITaskStatus(Z)V
    .locals 0
    .param p1, "isUITask"    # Z

    .line 113
    invoke-static {p1}, Landroid/util/BoostFramework$ScrollOptimizer;->setUITaskStatus(Z)V

    .line 114
    return-void
.end method

.method public whitelist setVsyncTime(J)V
    .locals 0
    .param p1, "timestampNanos"    # J

    .line 118
    invoke-static {p1, p2}, Landroid/util/BoostFramework$ScrollOptimizer;->setVsyncTime(J)V

    .line 119
    return-void
.end method
