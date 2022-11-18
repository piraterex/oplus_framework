.class public final Landroid/graphics/RenderNode;
.super Landroid/graphics/OplusBaseRenderNode;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RenderNode$AnimationHost;,
        Landroid/graphics/RenderNode$UsageHint;,
        Landroid/graphics/RenderNode$CompositePositionUpdateListener;,
        Landroid/graphics/RenderNode$PositionUpdateListener;,
        Landroid/graphics/RenderNode$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final blacklist USAGE_BACKGROUND:I = 0x1

.field public static final blacklist USAGE_UNKNOWN:I


# instance fields
.field private final blacklist mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

.field private blacklist mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

.field private blacklist mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

.field public final blacklist mNativeRenderNode:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/RenderNode;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    .line 238
    invoke-direct {p0}, Landroid/graphics/OplusBaseRenderNode;-><init>()V

    .line 239
    iput-wide p1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 240
    sget-object v0, Landroid/graphics/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    .line 242
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V

    .line 227
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "animationHost"    # Landroid/graphics/RenderNode$AnimationHost;

    .line 229
    invoke-direct {p0}, Landroid/graphics/OplusBaseRenderNode;-><init>()V

    .line 230
    invoke-static {p1}, Landroid/graphics/RenderNode;->nCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 231
    sget-object v2, Landroid/graphics/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 232
    iput-object p2, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    .line 233
    return-void
.end method

.method public static blacklist adopt(J)Landroid/graphics/RenderNode;
    .locals 1
    .param p0, "nativePtr"    # J

    .line 258
    new-instance v0, Landroid/graphics/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderNode;-><init>(J)V

    return-object v0
.end method

.method public static blacklist create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "animationHost"    # Landroid/graphics/RenderNode$AnimationHost;

    .line 246
    new-instance v0, Landroid/graphics/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)V

    return-object v0
.end method

.method private static native blacklist nAddAnimator(JJ)V
.end method

.method private static native blacklist nClearStretch(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nCreate(Ljava/lang/String;)J
.end method

.method private static native blacklist nDiscardDisplayList(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nEndAllAnimators(J)V
.end method

.method private static native blacklist nForceEndAnimators(J)V
.end method

.method private static native blacklist nGetAllocatedSize(J)I
.end method

.method private static native blacklist nGetAllowForceDark(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAmbientShadowColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetAnimationMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetBottom(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetCameraDistance(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetClipToBounds(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetClipToOutline(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetElevation(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetInverseTransformMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLayerType(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLeft(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetNativeFinalizer()J
.end method

.method private static native blacklist nGetPivotX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetPivotY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRotation(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRotationX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetRotationY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetScaleY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetSpotShadowColor(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTop(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTransformMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTranslationX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTranslationY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetTranslationZ(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetUniqueId(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetUsageSize(J)I
.end method

.method private static native blacklist nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nHasIdentityMatrix(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nHasOverlappingRendering(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nHasShadow(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nIsPivotExplicitlySet(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nIsValid(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nOffsetLeftAndRight(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nOffsetTopAndBottom(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nOutput(J)V
.end method

.method private static native blacklist nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/RenderNode$PositionUpdateListener;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nResetPivot(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAllowForceDark(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAlpha(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAmbientShadowColor(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetAnimationMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetBottom(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetCameraDistance(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipBounds(JIIII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipBoundsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipToBounds(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetClipToOutline(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetElevation(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetHasOverlappingRendering(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLayerPaint(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLayerType(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLeft(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetLeftTopRightBottom(JIIII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlineEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlineNone(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlinePath(JJF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetOutlineRoundRect(JIIIIFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetPivotX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetPivotY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetProjectBackwards(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetProjectionReceiver(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRenderEffect(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRevealClip(JZFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRight(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRotation(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRotationX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetRotationY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetScaleX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetScaleY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetSpotShadowColor(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetStaticMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTop(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTranslationX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTranslationY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetTranslationZ(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetUsageHint(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nStretch(JFFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public blacklist addAnimator(Landroid/graphics/animation/RenderNodeAnimator;)V
    .locals 4
    .param p1, "animator"    # Landroid/graphics/animation/RenderNodeAnimator;

    .line 1592
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/animation/RenderNodeAnimator;->getNativeAnimator()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nAddAnimator(JJ)V

    .line 1596
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    invoke-interface {v0, p0}, Landroid/graphics/RenderNode$AnimationHost;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    .line 1597
    return-void

    .line 1593
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist addPositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 402
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 403
    .local v0, "comp":Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    if-nez v0, :cond_0

    .line 404
    new-instance v1, Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/RenderNode$PositionUpdateListener;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;-><init>([Landroid/graphics/RenderNode$PositionUpdateListener;)V

    move-object v0, v1

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->with(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    move-result-object v0

    .line 408
    :goto_0
    iput-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 409
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/graphics/RenderNode;->nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V

    .line 410
    return-void
.end method

.method public whitelist beginRecording()Landroid/graphics/RecordingCanvas;
    .locals 3

    .line 468
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetWidth(J)I

    move-result v0

    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v1, v2}, Landroid/graphics/RenderNode;->nGetHeight(J)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist beginRecording(II)Landroid/graphics/RecordingCanvas;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 448
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-nez v0, :cond_0

    .line 452
    invoke-static {p0, p1, p2}, Landroid/graphics/RecordingCanvas;->obtain(Landroid/graphics/RenderNode;II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 453
    return-object v0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recording currently in progress - missing #endRecording() call?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clearStretch()Z
    .locals 2

    .line 776
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nClearStretch(J)Z

    move-result v0

    return v0
.end method

.method public blacklist computeApproximateMemoryAllocated()J
    .locals 2

    .line 1522
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAllocatedSize(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist computeApproximateMemoryUsage()J
    .locals 2

    .line 1507
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetUsageSize(J)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist discardDisplayList()V
    .locals 2

    .line 517
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nDiscardDisplayList(J)V

    .line 518
    return-void
.end method

.method public blacklist end(Landroid/graphics/RecordingCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/RecordingCanvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 505
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-ne p1, v0, :cond_0

    .line 508
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->endRecording()V

    .line 509
    return-void

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong canvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist endAllAnimators()V
    .locals 2

    .line 1614
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nEndAllAnimators(J)V

    .line 1615
    return-void
.end method

.method public whitelist endRecording()V
    .locals 2

    .line 480
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 485
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/RenderNode;->mCurrentRecordingCanvas:Landroid/graphics/RecordingCanvas;

    .line 486
    invoke-virtual {v0, p0}, Landroid/graphics/RecordingCanvas;->finishRecording(Landroid/graphics/RenderNode;)V

    .line 487
    invoke-virtual {v0}, Landroid/graphics/RecordingCanvas;->recycle()V

    .line 488
    return-void

    .line 481
    .end local v0    # "canvas":Landroid/graphics/RecordingCanvas;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No recording in progress, forgot to call #beginRecording()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist forceEndAnimators()V
    .locals 2

    .line 1619
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nForceEndAnimators(J)V

    .line 1620
    return-void
.end method

.method public whitelist getAlpha()F
    .locals 2

    .line 983
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAlpha(J)F

    move-result v0

    return v0
.end method

.method public whitelist getAmbientShadowColor()I
    .locals 2

    .line 867
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAmbientShadowColor(J)I

    move-result v0

    return v0
.end method

.method public blacklist getAnimationMatrix()Landroid/graphics/Matrix;
    .locals 5

    .line 940
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 941
    .local v0, "output":Landroid/graphics/Matrix;
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {v0}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderNode;->nGetAnimationMatrix(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    return-object v0

    .line 944
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getBottom()I
    .locals 2

    .line 1410
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetBottom(J)I

    move-result v0

    return v0
.end method

.method public whitelist getCameraDistance()F
    .locals 2

    .line 1330
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetCameraDistance(J)F

    move-result v0

    neg-float v0, v0

    return v0
.end method

.method public whitelist getClipToBounds()Z
    .locals 2

    .line 681
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetClipToBounds(J)Z

    move-result v0

    return v0
.end method

.method public whitelist getClipToOutline()Z
    .locals 2

    .line 887
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetClipToOutline(J)Z

    move-result v0

    return v0
.end method

.method public whitelist getElevation()F
    .locals 2

    .line 1056
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetElevation(J)F

    move-result v0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 2

    .line 1428
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getInverseMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 570
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nGetInverseTransformMatrix(JJ)V

    .line 571
    return-void
.end method

.method public whitelist getLeft()I
    .locals 2

    .line 1383
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetLeft(J)I

    move-result v0

    return v0
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "outMatrix"    # Landroid/graphics/Matrix;

    .line 560
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nGetTransformMatrix(JJ)V

    .line 561
    return-void
.end method

.method public whitelist getNativeRenderNode()J
    .locals 2

    .line 1902
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    return-wide v0
.end method

.method public whitelist getPivotX()F
    .locals 2

    .line 1244
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getPivotY()F
    .locals 2

    .line 1265
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRight()I
    .locals 2

    .line 1401
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRight(J)I

    move-result v0

    return v0
.end method

.method public whitelist getRotationX()F
    .locals 2

    .line 1160
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotationX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRotationY()F
    .locals 2

    .line 1181
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotationY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRotationZ()F
    .locals 2

    .line 1139
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method public whitelist getScaleX()F
    .locals 2

    .line 1202
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getScaleY()F
    .locals 2

    .line 1223
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getSpotShadowColor()I
    .locals 2

    .line 841
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetSpotShadowColor(J)I

    move-result v0

    return v0
.end method

.method public whitelist getTop()I
    .locals 2

    .line 1392
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTop(J)I

    move-result v0

    return v0
.end method

.method public whitelist getTranslationX()F
    .locals 2

    .line 1077
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTranslationY()F
    .locals 2

    .line 1098
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationY(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTranslationZ()F
    .locals 2

    .line 1118
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetTranslationZ(J)F

    move-result v0

    return v0
.end method

.method public whitelist getUniqueId()J
    .locals 2

    .line 1564
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetUniqueId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getUseCompositingLayer()Z
    .locals 2

    .line 632
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetLayerType(J)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getWidth()I
    .locals 2

    .line 1419
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public whitelist hasDisplayList()Z
    .locals 2

    .line 536
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nIsValid(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasIdentityMatrix()Z
    .locals 2

    .line 551
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasIdentityMatrix(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasOverlappingRendering()Z
    .locals 2

    .line 1037
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasOverlappingRendering(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasShadow()Z
    .locals 2

    .line 815
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nHasShadow(J)Z

    move-result v0

    return v0
.end method

.method public blacklist isAttached()Z
    .locals 1

    .line 1601
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/graphics/RenderNode$AnimationHost;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isForceDarkAllowed()Z
    .locals 2

    .line 1548
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nGetAllowForceDark(J)Z

    move-result v0

    return v0
.end method

.method public whitelist isPivotExplicitlySet()Z
    .locals 2

    .line 1274
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nIsPivotExplicitlySet(J)Z

    move-result v0

    return v0
.end method

.method public whitelist offsetLeftAndRight(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 1476
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nOffsetLeftAndRight(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist offsetTopAndBottom(I)Z
    .locals 2
    .param p1, "offset"    # I

    .line 1486
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nOffsetTopAndBottom(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist output()V
    .locals 2

    .line 1496
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nOutput(J)V

    .line 1497
    return-void
.end method

.method public blacklist registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V
    .locals 2
    .param p1, "animatorSet"    # Landroid/view/NativeVectorDrawableAnimator;

    .line 1606
    invoke-virtual {p0}, Landroid/graphics/RenderNode;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1609
    iget-object v0, p0, Landroid/graphics/RenderNode;->mAnimationHost:Landroid/graphics/RenderNode$AnimationHost;

    invoke-interface {v0, p1}, Landroid/graphics/RenderNode$AnimationHost;->registerVectorDrawableAnimator(Landroid/view/NativeVectorDrawableAnimator;)V

    .line 1610
    return-void

    .line 1607
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removePositionUpdateListener(Landroid/graphics/RenderNode$PositionUpdateListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/graphics/RenderNode$PositionUpdateListener;

    .line 420
    iget-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 421
    .local v0, "comp":Landroid/graphics/RenderNode$CompositePositionUpdateListener;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0, p1}, Landroid/graphics/RenderNode$CompositePositionUpdateListener;->without(Landroid/graphics/RenderNode$PositionUpdateListener;)Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    move-result-object v0

    .line 423
    iput-object v0, p0, Landroid/graphics/RenderNode;->mCompositePositionUpdateListener:Landroid/graphics/RenderNode$CompositePositionUpdateListener;

    .line 424
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/graphics/RenderNode;->nRequestPositionUpdates(JLjava/lang/ref/WeakReference;)V

    .line 426
    :cond_0
    return-void
.end method

.method public whitelist resetPivot()Z
    .locals 2

    .line 1285
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nResetPivot(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setAlpha(F)Z
    .locals 2
    .param p1, "alpha"    # F

    .line 957
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setAmbientShadowColor(I)Z
    .locals 2
    .param p1, "color"    # I

    .line 859
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAmbientShadowColor(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setAnimationMatrix(Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 923
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 924
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 923
    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetAnimationMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setBottom(I)Z
    .locals 2
    .param p1, "bottom"    # I

    .line 1374
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetBottom(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist setCameraDistance(F)Z
    .locals 3
    .param p1, "distance"    # F

    .line 1315
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1320
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    neg-float v2, p1

    invoke-static {v0, v1, v2}, Landroid/graphics/RenderNode;->nSetCameraDistance(JF)Z

    move-result v0

    return v0

    .line 1316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance must be finite & positive, given="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setClipRect(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 652
    if-nez p1, :cond_0

    .line 653
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetClipBoundsEmpty(J)Z

    move-result v0

    return v0

    .line 655
    :cond_0
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v1 .. v6}, Landroid/graphics/RenderNode;->nSetClipBounds(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist setClipToBounds(Z)Z
    .locals 2
    .param p1, "clipToBounds"    # Z

    .line 671
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetClipToBounds(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setClipToOutline(Z)Z
    .locals 2
    .param p1, "clipToOutline"    # Z

    .line 878
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetClipToOutline(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setElevation(F)Z
    .locals 2
    .param p1, "lift"    # F

    .line 1047
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetElevation(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setForceDarkAllowed(Z)Z
    .locals 2
    .param p1, "allow"    # Z

    .line 1539
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetAllowForceDark(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setHasOverlappingRendering(Z)Z
    .locals 2
    .param p1, "hasOverlappingRendering"    # Z

    .line 997
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetHasOverlappingRendering(JZ)Z

    move-result v0

    return v0
.end method

.method public blacklist setLayerPaint(Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetLayerPaint(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setLayerType(I)Z
    .locals 2
    .param p1, "layerType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetLayerType(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setLeft(I)Z
    .locals 2
    .param p1, "left"    # I

    .line 1341
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetLeft(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setLeftTopRightBottom(IIII)Z
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1442
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist setOutline(Landroid/graphics/Outline;)Z
    .locals 9
    .param p1, "outline"    # Landroid/graphics/Outline;

    .line 754
    if-nez p1, :cond_0

    .line 755
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetOutlineNone(J)Z

    move-result v0

    return v0

    .line 758
    :cond_0
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 771
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized outline?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 767
    :pswitch_0
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-wide v2, v2, Landroid/graphics/Path;->mNativePath:J

    iget v4, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->nSetOutlinePath(JJF)Z

    move-result v0

    return v0

    .line 762
    :pswitch_1
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Outline;->mRadius:F

    iget v8, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static/range {v1 .. v8}, Landroid/graphics/RenderNode;->nSetOutlineRoundRect(JIIIIFF)Z

    move-result v0

    return v0

    .line 760
    :pswitch_2
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->nSetOutlineEmpty(J)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist setPivotX(F)Z
    .locals 2
    .param p1, "pivotX"    # F

    .line 1235
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetPivotX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setPivotY(F)Z
    .locals 2
    .param p1, "pivotY"    # F

    .line 1256
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetPivotY(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setPosition(IIII)Z
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1455
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist setPosition(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "position"    # Landroid/graphics/Rect;

    .line 1465
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist setProjectBackwards(Z)Z
    .locals 2
    .param p1, "shouldProject"    # Z

    .line 725
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetProjectBackwards(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setProjectionReceiver(Z)Z
    .locals 2
    .param p1, "shouldRecieve"    # Z

    .line 739
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetProjectionReceiver(JZ)Z

    move-result v0

    return v0
.end method

.method public whitelist setRenderEffect(Landroid/graphics/RenderEffect;)Z
    .locals 4
    .param p1, "renderEffect"    # Landroid/graphics/RenderEffect;

    .line 972
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 973
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 972
    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetRenderEffect(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setRevealClip(ZFFF)Z
    .locals 6
    .param p1, "shouldClip"    # Z
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "radius"    # F

    .line 897
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/RenderNode;->nSetRevealClip(JZFFF)Z

    move-result v0

    return v0
.end method

.method public blacklist setRight(I)Z
    .locals 2
    .param p1, "right"    # I

    .line 1363
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRight(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist setRotationX(F)Z
    .locals 2
    .param p1, "rotationX"    # F

    .line 1151
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotationX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setRotationY(F)Z
    .locals 2
    .param p1, "rotationY"    # F

    .line 1172
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotationY(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setRotationZ(F)Z
    .locals 2
    .param p1, "rotation"    # F

    .line 1130
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetRotation(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setScaleX(F)Z
    .locals 2
    .param p1, "scaleX"    # F

    .line 1193
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetScaleX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setScaleY(F)Z
    .locals 2
    .param p1, "scaleY"    # F

    .line 1214
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetScaleY(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setSpotShadowColor(I)Z
    .locals 2
    .param p1, "color"    # I

    .line 833
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetSpotShadowColor(JI)Z

    move-result v0

    return v0
.end method

.method public blacklist setStaticMatrix(Landroid/graphics/Matrix;)Z
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 908
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/RenderNode;->nSetStaticMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public blacklist setTop(I)Z
    .locals 2
    .param p1, "top"    # I

    .line 1352
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTop(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist setTranslationX(F)Z
    .locals 2
    .param p1, "translationX"    # F

    .line 1068
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationX(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setTranslationY(F)Z
    .locals 2
    .param p1, "translationY"    # F

    .line 1089
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationY(JF)Z

    move-result v0

    return v0
.end method

.method public whitelist setTranslationZ(F)Z
    .locals 2
    .param p1, "translationZ"    # F

    .line 1109
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetTranslationZ(JF)Z

    move-result v0

    return v0
.end method

.method public blacklist setUsageHint(I)V
    .locals 2
    .param p1, "usageHint"    # I

    .line 1027
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RenderNode;->nSetUsageHint(JI)V

    .line 1028
    return-void
.end method

.method public whitelist setUseCompositingLayer(ZLandroid/graphics/Paint;)Z
    .locals 5
    .param p1, "forceToLayer"    # Z
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 618
    iget-wide v0, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/RenderNode;->nSetLayerType(JI)Z

    move-result v0

    .line 619
    .local v0, "didChange":Z
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    .line 620
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    .line 619
    :goto_1
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderNode;->nSetLayerPaint(JJ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 621
    return v0
.end method

.method public blacklist start(II)Landroid/graphics/RecordingCanvas;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    return-object v0
.end method

.method public blacklist stretch(FFFF)Z
    .locals 7
    .param p1, "vecX"    # F
    .param p2, "vecY"    # F
    .param p3, "maxStretchAmountX"    # F
    .param p4, "maxStretchAmountY"    # F

    .line 782
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 785
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 789
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-lez v1, :cond_1

    .line 793
    cmpg-float v0, p4, v0

    if-lez v0, :cond_0

    .line 797
    iget-wide v1, p0, Landroid/graphics/RenderNode;->mNativeRenderNode:J

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/graphics/RenderNode;->nStretch(JFFFF)Z

    move-result v0

    return v0

    .line 794
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The max vertical stretch amount must be >0, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The max horizontal stretch amount must be >0, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vecY must be a finite, non-NaN value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vecX must be a finite, non-NaN value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
