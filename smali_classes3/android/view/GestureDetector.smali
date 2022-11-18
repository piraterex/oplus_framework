.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DOUBLE_TAP_MIN_TIME:I

.field private static final greylist-max-o DOUBLE_TAP_TIMEOUT:I

.field private static final greylist-max-p LONGPRESS_TIMEOUT:I

.field private static final greylist-max-o LONG_PRESS:I = 0x2

.field private static final greylist-max-o SHOW_PRESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final greylist-max-o TAP:I = 0x3

.field private static final greylist-max-o TAP_TIMEOUT:I


# instance fields
.field private greylist-max-o mAlwaysInBiggerTapRegion:Z

.field private greylist mAlwaysInTapRegion:Z

.field private blacklist mAmbiguousGestureMultiplier:F

.field private greylist-max-o mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private greylist-max-o mCurrentDownEvent:Landroid/view/MotionEvent;

.field private blacklist mCurrentMotionEvent:Landroid/view/MotionEvent;

.field private greylist-max-o mDeferConfirmSingleTap:Z

.field private greylist-max-o mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private greylist-max-o mDoubleTapSlopSquare:I

.field private greylist-max-o mDoubleTapTouchSlopSquare:I

.field private greylist-max-o mDownFocusX:F

.field private greylist-max-o mDownFocusY:F

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private blacklist mHasRecordedClassification:Z

.field private greylist-max-o mIgnoreNextUpEvent:Z

.field private greylist-max-o mInContextClick:Z

.field private greylist-max-o mInLongPress:Z

.field private final greylist-max-o mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private greylist-max-o mIsDoubleTapping:Z

.field private greylist-max-o mIsLongpressEnabled:Z

.field private greylist-max-o mLastFocusX:F

.field private greylist-max-o mLastFocusY:F

.field private final greylist mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private greylist-max-o mMaximumFlingVelocity:I

.field private greylist mMinimumFlingVelocity:I

.field private greylist-max-o mPreviousUpEvent:Landroid/view/MotionEvent;

.field private greylist-max-o mStillDown:Z

.field private greylist mTouchSlopSquare:I

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentDownEvent(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDoubleTapListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 0

    iget-object p0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStillDown(Landroid/view/GestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeferConfirmSingleTap(Landroid/view/GestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchLongPress(Landroid/view/GestureDetector;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrecordGestureClassification(Landroid/view/GestureDetector;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 238
    const-class v0, Landroid/view/GestureDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/GestureDetector;->TAG:Ljava/lang/String;

    .line 249
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 250
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 251
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 252
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 401
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    nop

    .line 303
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 420
    if-eqz p3, :cond_1

    .line 421
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 423
    :cond_1
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 425
    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 426
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_2

    .line 427
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 429
    :cond_2
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_3

    .line 430
    move-object v0, p2

    check-cast v0, Landroid/view/GestureDetector$OnContextClickListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 432
    :cond_3
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 433
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .line 451
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 452
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 381
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 363
    return-void
.end method

.method private greylist-max-o cancel()V
    .locals 2

    .line 839
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 840
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 844
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 845
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 846
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 847
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 848
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 849
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 850
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 851
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 852
    return-void
.end method

.method private greylist-max-o cancelTaps()V
    .locals 2

    .line 855
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 856
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 859
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 860
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 861
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 862
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 863
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 864
    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 865
    return-void
.end method

.method private greylist-max-o dispatchLongPress()V
    .locals 2

    .line 887
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 890
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 891
    return-void
.end method

.method private greylist-max-o init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 455
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_1

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 462
    if-nez p1, :cond_0

    .line 464
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    .line 465
    .local v0, "touchSlop":I
    move v1, v0

    .line 466
    .local v1, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v2

    .line 468
    .local v2, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 469
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 470
    invoke-static {}, Landroid/view/ViewConfiguration;->getAmbiguousGestureMultiplier()F

    move-result v3

    iput v3, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    goto :goto_0

    .line 472
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_0
    const-string v0, "GestureDetector#init"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 473
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 474
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 475
    .local v1, "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 476
    .local v2, "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    .line 477
    .local v3, "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 478
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 479
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledAmbiguousGestureMultiplier()F

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    move v0, v1

    move v1, v2

    move v2, v3

    .line 481
    .end local v3    # "doubleTapSlop":I
    .local v0, "touchSlop":I
    .local v1, "doubleTapTouchSlop":I
    .local v2, "doubleTapSlop":I
    :goto_0
    mul-int v3, v0, v0

    iput v3, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 482
    mul-int v3, v1, v1

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 483
    mul-int v3, v2, v2

    iput v3, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 484
    return-void

    .line 456
    .end local v0    # "touchSlop":I
    .end local v1    # "doubleTapTouchSlop":I
    .end local v2    # "doubleTapSlop":I
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "OnGestureListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .line 869
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 870
    return v1

    .line 873
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 874
    .local v2, "deltaTime":J
    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    sget v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_2

    .line 878
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    .line 879
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    .line 880
    .local v4, "deltaY":I
    nop

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v1

    .line 882
    .local v5, "isGeneratedGesture":Z
    :goto_0
    if-eqz v5, :cond_3

    move v7, v1

    goto :goto_1

    :cond_3
    iget v7, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 883
    .local v7, "slopSquare":I
    :goto_1
    mul-int v8, v0, v0

    mul-int v9, v4, v4

    add-int/2addr v8, v9

    if-ge v8, v7, :cond_4

    move v1, v6

    :cond_4
    return v1

    .line 875
    .end local v0    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "isGeneratedGesture":Z
    .end local v7    # "slopSquare":I
    :cond_5
    :goto_2
    return v1
.end method

.method private blacklist recordGestureClassification(I)V
    .locals 8
    .param p1, "classification"    # I

    .line 894
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 900
    :cond_0
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    goto :goto_0

    .line 905
    :cond_1
    const/16 v0, 0xb1

    .line 907
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iget-object v4, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 910
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v6, p0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 911
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 910
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    .line 905
    invoke-static {v0, v2, p1, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIF)V

    .line 912
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 913
    return-void

    .line 902
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 903
    return-void

    .line 898
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist isLongpressEnabled()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 808
    iget-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {v0, p1, v1}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 812
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 813
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 828
    :pswitch_0
    iget-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_3

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_3

    .line 830
    :cond_1
    iput-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 831
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_0

    .line 815
    :pswitch_1
    iget-object v2, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v2, :cond_3

    iget-boolean v6, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v6, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    .line 818
    :cond_2
    invoke-interface {v2, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 819
    iput-boolean v5, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 820
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 821
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    return v5

    .line 835
    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 36
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 540
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 542
    .local v2, "action":I
    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_1

    .line 543
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 545
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mCurrentMotionEvent:Landroid/view/MotionEvent;

    .line 547
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2

    .line 548
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 550
    :cond_2
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 552
    and-int/lit16 v4, v2, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    move v4, v3

    .line 554
    .local v4, "pointerUp":Z
    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_4
    const/4 v5, -0x1

    .line 555
    .local v5, "skipIndex":I
    :goto_1
    nop

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    move v7, v3

    .line 559
    .local v7, "isGeneratedGesture":Z
    :goto_2
    const/4 v8, 0x0

    .local v8, "sumX":F
    const/4 v9, 0x0

    .line 560
    .local v9, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 561
    .local v10, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_7

    .line 562
    if-ne v5, v11, :cond_6

    goto :goto_4

    .line 563
    :cond_6
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v8, v12

    .line 564
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    add-float/2addr v9, v12

    .line 561
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 566
    .end local v11    # "i":I
    :cond_7
    if-eqz v4, :cond_8

    add-int/lit8 v11, v10, -0x1

    goto :goto_5

    :cond_8
    move v11, v10

    .line 567
    .local v11, "div":I
    :goto_5
    int-to-float v12, v11

    div-float v12, v8, v12

    .line 568
    .local v12, "focusX":F
    int-to-float v13, v11

    div-float v13, v9, v13

    .line 570
    .local v13, "focusY":F
    const/4 v14, 0x0

    .line 572
    .local v14, "handled":Z
    and-int/lit16 v15, v2, 0xff

    const/16 v3, 0x3e8

    const/4 v6, 0x2

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .local v18, "action":I
    .local v19, "pointerUp":Z
    .local v20, "skipIndex":I
    .local v23, "sumX":F
    .local v24, "sumY":F
    .local v28, "count":I
    .local v29, "div":I
    .local v31, "handled":Z
    goto/16 :goto_16

    .line 581
    .end local v18    # "action":I
    .end local v19    # "pointerUp":Z
    .end local v20    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v31    # "handled":Z
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_1
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 582
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 586
    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v15, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v6, v3, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 588
    .local v3, "upIndex":I
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 589
    .local v6, "id1":I
    iget-object v15, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v15

    .line 590
    .local v15, "x1":F
    move/from16 v18, v2

    .end local v2    # "action":I
    .restart local v18    # "action":I
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    .line 591
    .local v2, "y1":F
    const/16 v16, 0x0

    move/from16 v19, v4

    move/from16 v4, v16

    .local v4, "i":I
    .restart local v19    # "pointerUp":Z
    :goto_6
    if-ge v4, v10, :cond_b

    .line 592
    if-ne v4, v3, :cond_9

    move/from16 v22, v2

    move/from16 v16, v3

    move/from16 v20, v5

    move/from16 v17, v6

    goto :goto_7

    .line 594
    :cond_9
    move/from16 v16, v3

    .end local v3    # "upIndex":I
    .local v16, "upIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 595
    .local v3, "id2":I
    move/from16 v20, v5

    .end local v5    # "skipIndex":I
    .restart local v20    # "skipIndex":I
    iget-object v5, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    mul-float/2addr v5, v15

    .line 596
    .local v5, "x":F
    move/from16 v17, v6

    .end local v6    # "id1":I
    .local v17, "id1":I
    iget-object v6, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    mul-float/2addr v6, v2

    .line 598
    .local v6, "y":F
    add-float v21, v5, v6

    .line 599
    .local v21, "dot":F
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-gez v22, :cond_a

    .line 600
    move/from16 v22, v2

    .end local v2    # "y1":F
    .local v22, "y1":F
    iget-object v2, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 601
    goto :goto_8

    .line 599
    .end local v22    # "y1":F
    .restart local v2    # "y1":F
    :cond_a
    move/from16 v22, v2

    .line 591
    .end local v2    # "y1":F
    .end local v3    # "id2":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v21    # "dot":F
    .restart local v22    # "y1":F
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v16

    move/from16 v6, v17

    move/from16 v5, v20

    move/from16 v2, v22

    goto :goto_6

    .end local v16    # "upIndex":I
    .end local v17    # "id1":I
    .end local v20    # "skipIndex":I
    .end local v22    # "y1":F
    .restart local v2    # "y1":F
    .local v3, "upIndex":I
    .local v5, "skipIndex":I
    .local v6, "id1":I
    :cond_b
    move/from16 v22, v2

    move/from16 v16, v3

    move/from16 v20, v5

    move/from16 v17, v6

    .line 604
    .end local v2    # "y1":F
    .end local v3    # "upIndex":I
    .end local v4    # "i":I
    .end local v5    # "skipIndex":I
    .end local v6    # "id1":I
    .restart local v16    # "upIndex":I
    .restart local v17    # "id1":I
    .restart local v20    # "skipIndex":I
    .restart local v22    # "y1":F
    :goto_8
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 574
    .end local v15    # "x1":F
    .end local v16    # "upIndex":I
    .end local v17    # "id1":I
    .end local v18    # "action":I
    .end local v19    # "pointerUp":Z
    .end local v20    # "skipIndex":I
    .end local v22    # "y1":F
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_2
    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v19    # "pointerUp":Z
    .restart local v20    # "skipIndex":I
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 575
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 577
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    .line 578
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 789
    .end local v18    # "action":I
    .end local v19    # "pointerUp":Z
    .end local v20    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_3
    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v19    # "pointerUp":Z
    .restart local v20    # "skipIndex":I
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 656
    .end local v18    # "action":I
    .end local v19    # "pointerUp":Z
    .end local v20    # "skipIndex":I
    .restart local v2    # "action":I
    .restart local v4    # "pointerUp":Z
    .restart local v5    # "skipIndex":I
    :pswitch_4
    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .restart local v18    # "action":I
    .restart local v19    # "pointerUp":Z
    .restart local v20    # "skipIndex":I
    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v2, :cond_c

    .line 657
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    goto/16 :goto_16

    .line 660
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    .line 661
    .local v2, "motionClassification":I
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    .line 663
    .local v3, "hasPendingLongPress":Z
    iget v4, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    sub-float/2addr v4, v12

    .line 664
    .local v4, "scrollX":F
    iget v5, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    sub-float/2addr v5, v13

    .line 665
    .local v5, "scrollY":F
    iget-boolean v15, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v15, :cond_d

    .line 667
    invoke-direct {v0, v6}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 669
    iget-object v15, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v15, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v15

    or-int/2addr v14, v15

    move/from16 v33, v2

    move/from16 v32, v3

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    goto/16 :goto_11

    .line 670
    :cond_d
    iget-boolean v15, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v15, :cond_16

    .line 671
    iget v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    sub-float v15, v12, v15

    float-to-int v15, v15

    .line 672
    .local v15, "deltaX":I
    iget v6, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    sub-float v6, v13, v6

    float-to-int v6, v6

    .line 673
    .local v6, "deltaY":I
    mul-int v23, v15, v15

    mul-int v24, v6, v6

    move/from16 v25, v6

    .end local v6    # "deltaY":I
    .local v25, "deltaY":I
    add-int v6, v23, v24

    .line 674
    .local v6, "distance":I
    move/from16 v23, v8

    if-eqz v7, :cond_e

    const/4 v8, 0x0

    goto :goto_9

    .end local v8    # "sumX":F
    .restart local v23    # "sumX":F
    :cond_e
    iget v8, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 676
    .local v8, "slopSquare":I
    :goto_9
    move/from16 v24, v9

    const/4 v9, 0x1

    .end local v9    # "sumY":F
    .restart local v24    # "sumY":F
    if-ne v2, v9, :cond_f

    const/4 v9, 0x1

    goto :goto_a

    :cond_f
    const/4 v9, 0x0

    .line 678
    .local v9, "ambiguousGesture":Z
    :goto_a
    if-eqz v3, :cond_10

    if-eqz v9, :cond_10

    const/16 v26, 0x1

    goto :goto_b

    :cond_10
    const/16 v26, 0x0

    .line 680
    .local v26, "shouldInhibitDefaultAction":Z
    :goto_b
    if-eqz v26, :cond_12

    .line 682
    if-le v6, v8, :cond_11

    .line 688
    move/from16 v27, v9

    .end local v9    # "ambiguousGesture":Z
    .local v27, "ambiguousGesture":Z
    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move/from16 v28, v10

    const/4 v10, 0x2

    .end local v10    # "count":I
    .restart local v28    # "count":I
    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 689
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    move/from16 v29, v11

    .end local v11    # "div":I
    .restart local v29    # "div":I
    int-to-long v10, v9

    .line 690
    .local v10, "longPressTimeout":J
    iget-object v9, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 691
    move/from16 v33, v2

    move/from16 v32, v3

    move/from16 v31, v14

    move/from16 v30, v15

    const/4 v3, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x3

    .end local v2    # "motionClassification":I
    .end local v3    # "hasPendingLongPress":Z
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .local v30, "deltaX":I
    .restart local v31    # "handled":Z
    .local v32, "hasPendingLongPress":Z
    .local v33, "motionClassification":I
    invoke-virtual {v9, v14, v15, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 695
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    long-to-float v3, v10

    move-wide/from16 v34, v10

    .end local v10    # "longPressTimeout":J
    .local v34, "longPressTimeout":J
    iget v10, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v3, v10

    float-to-long v10, v3

    add-long/2addr v14, v10

    .line 690
    invoke-virtual {v9, v2, v14, v15}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_c

    .line 682
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v30    # "deltaX":I
    .end local v31    # "handled":Z
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .end local v34    # "longPressTimeout":J
    .restart local v2    # "motionClassification":I
    .restart local v3    # "hasPendingLongPress":Z
    .restart local v9    # "ambiguousGesture":Z
    .local v10, "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    .restart local v15    # "deltaX":I
    :cond_11
    move/from16 v33, v2

    move/from16 v32, v3

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    .line 702
    .end local v2    # "motionClassification":I
    .end local v3    # "hasPendingLongPress":Z
    .end local v9    # "ambiguousGesture":Z
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    :goto_c
    int-to-float v2, v8

    iget v3, v0, Landroid/view/GestureDetector;->mAmbiguousGestureMultiplier:F

    mul-float/2addr v3, v3

    mul-float/2addr v2, v3

    float-to-int v8, v2

    goto :goto_d

    .line 680
    .end local v27    # "ambiguousGesture":Z
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v30    # "deltaX":I
    .end local v31    # "handled":Z
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .restart local v2    # "motionClassification":I
    .restart local v3    # "hasPendingLongPress":Z
    .restart local v9    # "ambiguousGesture":Z
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    .restart local v15    # "deltaX":I
    :cond_12
    move/from16 v33, v2

    move/from16 v32, v3

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    move/from16 v30, v15

    .line 705
    .end local v2    # "motionClassification":I
    .end local v3    # "hasPendingLongPress":Z
    .end local v9    # "ambiguousGesture":Z
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .end local v15    # "deltaX":I
    .restart local v27    # "ambiguousGesture":Z
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v30    # "deltaX":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    :goto_d
    if-le v6, v8, :cond_13

    .line 706
    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 708
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .line 709
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 710
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 711
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 712
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_e

    .line 705
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_13
    move/from16 v14, v31

    .line 716
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_e
    if-eqz v7, :cond_14

    const/4 v2, 0x0

    goto :goto_f

    :cond_14
    iget v2, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 717
    .local v2, "doubleTapSlopSquare":I
    :goto_f
    if-le v6, v2, :cond_15

    .line 718
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 720
    .end local v2    # "doubleTapSlopSquare":I
    .end local v6    # "distance":I
    .end local v8    # "slopSquare":I
    .end local v25    # "deltaY":I
    .end local v26    # "shouldInhibitDefaultAction":Z
    .end local v27    # "ambiguousGesture":Z
    .end local v30    # "deltaX":I
    :cond_15
    goto :goto_11

    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v32    # "hasPendingLongPress":Z
    .end local v33    # "motionClassification":I
    .local v2, "motionClassification":I
    .restart local v3    # "hasPendingLongPress":Z
    .local v8, "sumX":F
    .local v9, "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_16
    move/from16 v33, v2

    move/from16 v32, v3

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "motionClassification":I
    .end local v3    # "hasPendingLongPress":Z
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    .restart local v32    # "hasPendingLongPress":Z
    .restart local v33    # "motionClassification":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_18

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_17

    goto :goto_10

    :cond_17
    move/from16 v14, v31

    goto :goto_11

    .line 721
    :cond_18
    :goto_10
    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 722
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, v1, v4, v5}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    .line 723
    .end local v31    # "handled":Z
    .local v2, "handled":Z
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 724
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move v14, v2

    .line 726
    .end local v2    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_11
    move/from16 v2, v33

    const/4 v3, 0x2

    .end local v33    # "motionClassification":I
    .local v2, "motionClassification":I
    if-ne v2, v3, :cond_19

    const/4 v6, 0x1

    goto :goto_12

    :cond_19
    const/4 v6, 0x0

    :goto_12
    move v3, v6

    .line 728
    .local v3, "deepPress":Z
    if-eqz v3, :cond_28

    if-eqz v32, :cond_28

    .line 729
    iget-object v6, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v6, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    .line 731
    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 730
    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    .line 656
    .end local v2    # "motionClassification":I
    .end local v3    # "deepPress":Z
    .end local v4    # "scrollX":F
    .end local v5    # "scrollY":F
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v32    # "hasPendingLongPress":Z
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :cond_1a
    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    goto/16 :goto_16

    .line 739
    .end local v18    # "action":I
    .end local v19    # "pointerUp":Z
    .end local v20    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .end local v31    # "handled":Z
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    .restart local v14    # "handled":Z
    :pswitch_5
    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v18    # "action":I
    .restart local v19    # "pointerUp":Z
    .restart local v20    # "skipIndex":I
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 740
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 741
    .local v2, "currentUpEvent":Landroid/view/MotionEvent;
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    if-eqz v4, :cond_1b

    .line 743
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 745
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v14, v31, v3

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    goto :goto_14

    .line 746
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_1b
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v4, :cond_1c

    .line 747
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_13

    .line 749
    :cond_1c
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v4, :cond_1d

    iget-boolean v4, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v4, :cond_1d

    .line 750
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 752
    iget-object v3, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 753
    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    if-eqz v3, :cond_20

    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v3, :cond_20

    .line 754
    invoke-interface {v3, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_14

    .line 756
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_1d
    iget-boolean v4, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    if-nez v4, :cond_1f

    .line 759
    iget-object v4, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 760
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 761
    .local v6, "pointerId":I
    iget v5, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 762
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    .line 763
    .local v3, "velocityY":F
    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    .line 765
    .local v5, "velocityX":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_1e

    .line 766
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1f

    .line 767
    :cond_1e
    iget-object v8, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v9, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v8, v9, v1, v5, v3}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v14

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    goto :goto_14

    .line 770
    .end local v3    # "velocityY":F
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v5    # "velocityX":F
    .end local v6    # "pointerId":I
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_1f
    :goto_13
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_20
    :goto_14
    iget-object v3, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_21

    .line 771
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 774
    :cond_21
    iput-object v2, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 775
    iget-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_22

    .line 778
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 779
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 781
    :cond_22
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 782
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 783
    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 784
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 785
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 786
    goto/16 :goto_17

    .line 607
    .end local v18    # "action":I
    .end local v19    # "pointerUp":Z
    .end local v20    # "skipIndex":I
    .end local v23    # "sumX":F
    .end local v24    # "sumY":F
    .end local v28    # "count":I
    .end local v29    # "div":I
    .local v2, "action":I
    .local v4, "pointerUp":Z
    .local v5, "skipIndex":I
    .restart local v8    # "sumX":F
    .restart local v9    # "sumY":F
    .restart local v10    # "count":I
    .restart local v11    # "div":I
    :pswitch_6
    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v31, v14

    .end local v2    # "action":I
    .end local v4    # "pointerUp":Z
    .end local v5    # "skipIndex":I
    .end local v8    # "sumX":F
    .end local v9    # "sumY":F
    .end local v10    # "count":I
    .end local v11    # "div":I
    .end local v14    # "handled":Z
    .restart local v18    # "action":I
    .restart local v19    # "pointerUp":Z
    .restart local v20    # "skipIndex":I
    .restart local v23    # "sumX":F
    .restart local v24    # "sumY":F
    .restart local v28    # "count":I
    .restart local v29    # "div":I
    .restart local v31    # "handled":Z
    iget-object v2, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v2, :cond_25

    .line 608
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    .line 609
    .local v2, "hadTapMessage":Z
    if-eqz v2, :cond_23

    iget-object v4, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    :cond_23
    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v3, :cond_24

    iget-object v4, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_24

    if-eqz v2, :cond_24

    .line 612
    invoke-direct {v0, v3, v4, v1}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 614
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 615
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/view/GestureDetector;->recordGestureClassification(I)V

    .line 618
    iget-object v3, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v4, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v3, v4}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v3, v31, v3

    .line 620
    .end local v31    # "handled":Z
    .local v3, "handled":Z
    iget-object v4, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v4, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    or-int v14, v3, v4

    .end local v3    # "handled":Z
    .restart local v14    # "handled":Z
    goto :goto_15

    .line 623
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :cond_24
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    sget v4, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 627
    .end local v2    # "hadTapMessage":Z
    :cond_25
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :goto_15
    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 628
    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 629
    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_26

    .line 630
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 632
    :cond_26
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 633
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 634
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 635
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 636
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 637
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 638
    iput-boolean v2, v0, Landroid/view/GestureDetector;->mHasRecordedClassification:Z

    .line 640
    iget-boolean v3, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    if-eqz v3, :cond_27

    .line 641
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 642
    iget-object v3, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 643
    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v2, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 647
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 648
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v8, v2

    add-long/2addr v5, v8

    .line 642
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 650
    :cond_27
    iget-object v2, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 651
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 650
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 652
    iget-object v2, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v2, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v14, v2

    .line 653
    goto :goto_17

    .line 793
    .end local v14    # "handled":Z
    .restart local v31    # "handled":Z
    :goto_16
    move/from16 v14, v31

    .end local v31    # "handled":Z
    .restart local v14    # "handled":Z
    :cond_28
    :goto_17
    if-nez v14, :cond_29

    iget-object v2, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_29

    .line 794
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 796
    :cond_29
    return v14

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .line 504
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 505
    return-void
.end method

.method public whitelist setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    .line 517
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 518
    return-void
.end method

.method public whitelist setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 494
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 495
    return-void
.end method
