.class public interface abstract Landroid/view/IChoreographerSocExt;
.super Ljava/lang/Object;
.source "IChoreographerSocExt.java"


# virtual methods
.method public whitelist getFrameDelay(JJ)J
    .locals 0
    .param p1, "frameDelay"    # J
    .param p3, "lastFrameTimeNanos"    # J

    .line 16
    return-wide p1
.end method

.method public whitelist hookDoCallbackPerfHint(IZ)V
    .locals 0
    .param p1, "callbackType"    # I
    .param p2, "begin"    # Z

    .line 49
    return-void
.end method

.method public whitelist hookDoFramePerfHint(JZ)V
    .locals 0
    .param p1, "vsyncId"    # J
    .param p3, "begin"    # Z

    .line 45
    return-void
.end method

.method public whitelist hookScheduleFrameLocked(ZLandroid/os/Handler;J)Z
    .locals 0
    .param p1, "USE_VSYNC"    # Z
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mFrameIntervalNanos"    # J

    .line 12
    return p1
.end method

.method public whitelist setFrameInterval(J)V
    .locals 0
    .param p1, "mFrameIntervalNanos"    # J

    .line 9
    return-void
.end method

.method public whitelist setIsDoFrameProcessing(Z)V
    .locals 0
    .param p1, "isDoFrameProcessing"    # Z

    .line 25
    return-void
.end method

.method public whitelist setIsVsyncScheduled(Z)V
    .locals 0
    .param p1, "isVsyncScheduled"    # Z

    .line 37
    return-void
.end method

.method public whitelist setMotionEventInfo(II)V
    .locals 0
    .param p1, "motionEventType"    # I
    .param p2, "touchMoveNum"    # I

    .line 21
    return-void
.end method

.method public whitelist setScheduleVsync(Z)V
    .locals 0
    .param p1, "isscheduleVsync"    # Z

    .line 41
    return-void
.end method

.method public whitelist setUITaskStatus(Z)V
    .locals 0
    .param p1, "isUITask"    # Z

    .line 29
    return-void
.end method

.method public whitelist setVsyncTime(J)V
    .locals 0
    .param p1, "timestampNanos"    # J

    .line 33
    return-void
.end method
