.class public interface abstract Landroid/view/IChoreographerExt;
.super Ljava/lang/Object;
.source "IChoreographerExt.java"


# virtual methods
.method public blacklist adjustFrameTimeNanos(JJ)J
    .locals 0
    .param p1, "frameTimeNanos"    # J
    .param p3, "lastFrameTimeNanos"    # J

    .line 39
    return-wide p1
.end method

.method public blacklist checkJankTrackerEnable()Z
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkPreAnimOpt(JJJ)V
    .locals 0
    .param p1, "frameTimeNanos"    # J
    .param p3, "frameIntervalNanos"    # J
    .param p5, "lastFrameTimeNanos"    # J

    .line 61
    return-void
.end method

.method public blacklist checkScrollOptCase()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkScrollOptEnable(JJJJJJJ)Z
    .locals 1
    .param p1, "startNanos"    # J
    .param p3, "jitterNanos"    # J
    .param p5, "intendedFrameTimeNanos"    # J
    .param p7, "frameTimeNanos"    # J
    .param p9, "id"    # J
    .param p11, "frameDeadline"    # J
    .param p13, "frameInterval"    # J

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkScrollOptSceneEnable(JJLandroid/view/Choreographer$FrameData;)Z
    .locals 1
    .param p1, "frameTimeNanos"    # J
    .param p3, "frameIntervalNanos"    # J
    .param p5, "frameData"    # Landroid/view/Choreographer$FrameData;

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist doAnimCallback(Landroid/view/Choreographer$FrameData;)V
    .locals 0
    .param p1, "frameData"    # Landroid/view/Choreographer$FrameData;

    .line 69
    return-void
.end method

.method public blacklist doFrameHook()V
    .locals 0

    .line 34
    return-void
.end method

.method public blacklist doFrameStartHook(J)V
    .locals 0
    .param p1, "frameStartNanos"    # J

    .line 32
    return-void
.end method

.method public blacklist doInitiativeFrame(JI)V
    .locals 0
    .param p1, "obj"    # J
    .param p3, "arg1"    # I

    .line 67
    return-void
.end method

.method public blacklist dumpAnimationDropInfo(J)V
    .locals 0
    .param p1, "startNanos"    # J

    .line 28
    return-void
.end method

.method public blacklist getVsyncEventDataId()J
    .locals 2

    .line 72
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist handleInputEvent(Landroid/view/InputEvent;II)V
    .locals 0
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "maximumVelocity"    # I
    .param p3, "minimumVelocity"    # I

    .line 81
    return-void
.end method

.method public blacklist makePauseActivityEnd()V
    .locals 0

    .line 92
    return-void
.end method

.method public blacklist markDrawStart()V
    .locals 0

    .line 88
    return-void
.end method

.method public blacklist markDrawingCacheFlag()V
    .locals 0

    .line 85
    return-void
.end method

.method public blacklist markPerformClickFlag()V
    .locals 0

    .line 93
    return-void
.end method

.method public blacklist markRelayout()V
    .locals 0

    .line 86
    return-void
.end method

.method public blacklist populateAndResetFrameInfo([JZ)V
    .locals 0
    .param p1, "frameInfoList"    # [J
    .param p2, "appVisible"    # Z

    .line 82
    return-void
.end method

.method public blacklist populateLayoutCost(J)V
    .locals 0
    .param p1, "cost"    # J

    .line 84
    return-void
.end method

.method public blacklist populateMeasureCost(J)V
    .locals 0
    .param p1, "cost"    # J

    .line 83
    return-void
.end method

.method public blacklist recordSkippedFrames(JZZJJ)V
    .locals 0
    .param p1, "skippedFrames"    # J
    .param p3, "animation"    # Z
    .param p4, "traversal"    # Z
    .param p5, "startNanos"    # J
    .param p7, "jitterNanos"    # J

    .line 22
    return-void
.end method

.method public blacklist resetFrameCount()V
    .locals 0

    .line 87
    return-void
.end method

.method public blacklist resetOptState(Z)V
    .locals 0
    .param p1, "isActivityEnable"    # Z

    .line 63
    return-void
.end method

.method public blacklist setIsPreDraw(Z)V
    .locals 0
    .param p1, "isPreDraw"    # Z

    .line 42
    return-void
.end method

.method public blacklist setIsSFChoregrapher(Z)V
    .locals 0
    .param p1, "isSFChoregrapher"    # Z

    .line 30
    return-void
.end method

.method public blacklist setLifecycleState(IZJJJ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "haveOnCreate"    # Z
    .param p3, "activityLaunchTime"    # J
    .param p5, "activityResumeTime"    # J
    .param p7, "activityPauseTime"    # J

    .line 91
    return-void
.end method

.method public blacklist setSlideAnimOptHelper(Landroid/view/Choreographer;)V
    .locals 0
    .param p1, "choreographer"    # Landroid/view/Choreographer;

    .line 65
    return-void
.end method

.method public blacklist syncViewCount(I)V
    .locals 0
    .param p1, "viewCount"    # I

    .line 89
    return-void
.end method

.method public blacklist traceBeginForOptimizeSlidingEffect(JJ)V
    .locals 0
    .param p1, "startNanos"    # J
    .param p3, "frameTimeNanos"    # J

    .line 53
    return-void
.end method

.method public blacklist traceBeginForSkippedFrames()V
    .locals 0

    .line 24
    return-void
.end method

.method public blacklist traceEndForOptimizeSlidingEffect()V
    .locals 0

    .line 59
    return-void
.end method

.method public blacklist traceEndForSkippedFrames()V
    .locals 0

    .line 26
    return-void
.end method

.method public blacklist updateFrameIntervalNanos(J)V
    .locals 0
    .param p1, "frameIntervalNanos"    # J

    .line 75
    return-void
.end method
