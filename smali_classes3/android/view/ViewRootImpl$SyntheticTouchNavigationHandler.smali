.class final Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTouchNavigationHandler"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_HEIGHT_MILLIMETERS:F = 48.0f

.field private static final greylist-max-o DEFAULT_WIDTH_MILLIMETERS:F = 48.0f

.field private static final greylist-max-o FLING_TICK_DECAY:F = 0.8f

.field private static final greylist-max-o LOCAL_DEBUG:Z = false

.field private static final greylist-max-o LOCAL_TAG:Ljava/lang/String; = "SyntheticTouchNavigationHandler"

.field private static final greylist-max-o MAX_FLING_VELOCITY_TICKS_PER_SECOND:F = 20.0f

.field private static final greylist-max-o MIN_FLING_VELOCITY_TICKS_PER_SECOND:F = 6.0f

.field private static final greylist-max-o TICK_DISTANCE_MILLIMETERS:I = 0xc


# instance fields
.field private greylist-max-o mAccumulatedX:F

.field private greylist-max-o mAccumulatedY:F

.field private greylist-max-o mActivePointerId:I

.field private greylist-max-o mConfigMaxFlingVelocity:F

.field private greylist-max-o mConfigMinFlingVelocity:F

.field private greylist-max-o mConfigTickDistance:F

.field private greylist-max-o mConsumedMovement:Z

.field private greylist-max-o mCurrentDeviceId:I

.field private greylist-max-o mCurrentDeviceSupported:Z

.field private greylist-max-o mCurrentSource:I

.field private final greylist-max-o mFlingRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mFlingVelocity:F

.field private greylist-max-o mFlinging:Z

.field private greylist-max-o mLastX:F

.field private greylist-max-o mLastY:F

.field private greylist-max-o mPendingKeyCode:I

.field private greylist-max-o mPendingKeyDownTime:J

.field private greylist-max-o mPendingKeyMetaState:I

.field private greylist-max-o mPendingKeyRepeatCount:I

.field private greylist-max-o mStartX:F

.field private greylist-max-o mStartY:F

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlingVelocity(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)F
    .locals 0

    iget p0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingKeyCode(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 0

    iget p0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingKeyMetaState(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)I
    .locals 0

    iget p0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlingVelocity(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;F)V
    .locals 0

    iput p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlinging(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishKeys(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostFling(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendKeyDownOrRepeat(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 7692
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 7693
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 7642
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 7662
    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 7684
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 7982
    new-instance v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler$1;-><init>(Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    .line 7694
    return-void
.end method

.method private greylist-max-o cancelFling()V
    .locals 1

    .line 7976
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    if-eqz v0, :cond_0

    .line 7977
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7978
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 7980
    :cond_0
    return-void
.end method

.method private greylist-max-o consumeAccumulatedMovement(JIFII)F
    .locals 1
    .param p1, "time"    # J
    .param p3, "metaState"    # I
    .param p4, "accumulator"    # F
    .param p5, "negativeKeyCode"    # I
    .param p6, "positiveKeyCode"    # I

    .line 7863
    :goto_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    neg-float v0, v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_0

    .line 7864
    invoke-direct {p0, p1, p2, p5, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 7865
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    add-float/2addr p4, v0

    goto :goto_0

    .line 7867
    :cond_0
    :goto_1
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_1

    .line 7868
    invoke-direct {p0, p1, p2, p6, p3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyDownOrRepeat(JII)V

    .line 7869
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    sub-float/2addr p4, v0

    goto :goto_1

    .line 7871
    :cond_1
    return p4
.end method

.method private greylist-max-o consumeAccumulatedMovement(JI)V
    .locals 12
    .param p1, "time"    # J
    .param p3, "metaState"    # I

    .line 7842
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 7843
    .local v0, "absX":F
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 7844
    .local v1, "absY":F
    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    .line 7845
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    .line 7846
    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    const/16 v10, 0x15

    const/16 v11, 0x16

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v5 .. v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 7848
    iput v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 7849
    iput-boolean v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    goto :goto_0

    .line 7852
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 7853
    iget v9, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    const/16 v10, 0x13

    const/16 v11, 0x14

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v5 .. v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JIFII)F

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 7855
    iput v4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 7856
    iput-boolean v3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    .line 7859
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o finishKeys(J)V
    .locals 0
    .param p1, "time"    # J

    .line 7829
    invoke-direct {p0}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->cancelFling()V

    .line 7830
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 7831
    return-void
.end method

.method private greylist-max-o finishTracking(J)V
    .locals 1
    .param p1, "time"    # J

    .line 7834
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-ltz v0, :cond_0

    .line 7835
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 7836
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7837
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7839
    :cond_0
    return-void
.end method

.method private greylist-max-o postFling(J)Z
    .locals 5
    .param p1, "time"    # J

    .line 7962
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 7963
    iget v1, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    div-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 7964
    .local v0, "delay":J
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingRunnable:Ljava/lang/Runnable;

    add-long v3, p1, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 7970
    const/4 v2, 0x1

    return v2

    .line 7972
    .end local v0    # "delay":J
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o sendKeyDownOrRepeat(JII)V
    .locals 21
    .param p1, "time"    # J
    .param p3, "keyCode"    # I
    .param p4, "metaState"    # I

    .line 7875
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eq v2, v1, :cond_0

    .line 7876
    invoke-direct/range {p0 .. p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->sendKeyUp(J)V

    .line 7877
    move-wide/from16 v14, p1

    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    .line 7878
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 7879
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    goto :goto_0

    .line 7881
    :cond_0
    move-wide/from16 v14, p1

    iget v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    .line 7883
    :goto_0
    move/from16 v2, p4

    iput v2, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    .line 7892
    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    iget-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v8, 0x0

    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyRepeatCount:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/16 v16, 0x400

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-object v3, v12

    move/from16 v17, v6

    move/from16 v18, v7

    move-wide/from16 v6, p1

    move-object/from16 v19, v12

    move/from16 v12, v17

    move-object/from16 v20, v13

    move/from16 v13, v16

    move/from16 v14, v18

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 7896
    return-void
.end method

.method private greylist-max-o sendKeyUp(J)V
    .locals 16
    .param p1, "time"    # J

    .line 7899
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v1, :cond_0

    .line 7904
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v15, Landroid/view/KeyEvent;

    iget-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyDownTime:J

    const/4 v7, 0x1

    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v9, 0x0

    iget v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyMetaState:I

    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/4 v12, 0x0

    const/16 v13, 0x400

    iget v14, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    move-object v2, v15

    move-wide/from16 v5, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 7908
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    .line 7910
    :cond_0
    return-void
.end method

.method private greylist-max-o startFling(JFF)Z
    .locals 3
    .param p1, "time"    # J
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .line 7919
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7929
    :pswitch_0
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_0

    .line 7930
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 7931
    iput p3, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 7932
    goto :goto_0

    .line 7934
    :cond_0
    return v1

    .line 7921
    :pswitch_1
    neg-float v0, p3

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 7922
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 7923
    neg-float v0, p3

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 7924
    goto :goto_0

    .line 7926
    :cond_1
    return v1

    .line 7945
    :pswitch_2
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_2

    .line 7946
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    .line 7947
    iput p4, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 7948
    goto :goto_0

    .line 7950
    :cond_2
    return v1

    .line 7937
    :pswitch_3
    neg-float v0, p4

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    .line 7938
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 7939
    neg-float v0, p4

    iput v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlingVelocity:F

    .line 7940
    goto :goto_0

    .line 7942
    :cond_3
    return v1

    .line 7954
    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->postFling(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 7955
    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o cancel(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 7820
    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 7821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 7822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 7823
    .local v0, "time":J
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 7824
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 7826
    .end local v0    # "time":J
    :cond_0
    return-void
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 7698
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 7699
    .local v2, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    .line 7700
    .local v4, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    .line 7701
    .local v5, "source":I
    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v6, v4, :cond_0

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    if-eq v6, v5, :cond_3

    .line 7702
    :cond_0
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 7703
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 7704
    iput v4, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceId:I

    .line 7705
    iput v5, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentSource:I

    .line 7706
    iput-boolean v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 7707
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v6

    .line 7708
    .local v6, "device":Landroid/view/InputDevice;
    if-eqz v6, :cond_3

    .line 7711
    invoke-virtual {v6, v8}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v10

    .line 7712
    .local v10, "xRange":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v6, v7}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v11

    .line 7713
    .local v11, "yRange":Landroid/view/InputDevice$MotionRange;
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 7714
    iput-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    .line 7717
    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v12

    .line 7718
    .local v12, "xRes":F
    cmpg-float v13, v12, v9

    const/high16 v14, 0x42400000    # 48.0f

    if-gtz v13, :cond_1

    .line 7719
    invoke-virtual {v10}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v13

    div-float v12, v13, v14

    .line 7721
    :cond_1
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getResolution()F

    move-result v13

    .line 7722
    .local v13, "yRes":F
    cmpg-float v15, v13, v9

    if-gtz v15, :cond_2

    .line 7723
    invoke-virtual {v11}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v15

    div-float v13, v15, v14

    .line 7725
    :cond_2
    add-float v14, v12, v13

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    .line 7728
    .local v14, "nominalRes":F
    const/high16 v15, 0x41400000    # 12.0f

    mul-float/2addr v15, v14

    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigTickDistance:F

    .line 7729
    const/high16 v16, 0x40c00000    # 6.0f

    mul-float v9, v15, v16

    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMinFlingVelocity:F

    .line 7731
    const/high16 v9, 0x41a00000    # 20.0f

    mul-float/2addr v15, v9

    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    .line 7744
    .end local v6    # "device":Landroid/view/InputDevice;
    .end local v10    # "xRange":Landroid/view/InputDevice$MotionRange;
    .end local v11    # "yRange":Landroid/view/InputDevice$MotionRange;
    .end local v12    # "xRes":F
    .end local v13    # "yRes":F
    .end local v14    # "nominalRes":F
    :cond_3
    iget-boolean v6, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mCurrentDeviceSupported:Z

    if-nez v6, :cond_4

    .line 7745
    return-void

    .line 7749
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    .line 7750
    .local v6, "action":I
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_0

    .line 7812
    :pswitch_0
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 7813
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto/16 :goto_0

    .line 7773
    :pswitch_1
    iget v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    if-gez v8, :cond_5

    .line 7774
    goto/16 :goto_0

    .line 7776
    :cond_5
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    .line 7777
    .local v8, "index":I
    if-gez v8, :cond_6

    .line 7778
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 7779
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 7780
    goto/16 :goto_0

    .line 7783
    :cond_6
    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7784
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 7785
    .local v9, "x":F
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 7786
    .local v10, "y":F
    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    sub-float v12, v9, v12

    add-float/2addr v11, v12

    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 7787
    iget v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    sub-float v12, v10, v12

    add-float/2addr v11, v12

    iput v11, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 7788
    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 7789
    iput v10, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 7792
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 7793
    .local v11, "metaState":I
    invoke-direct {v0, v2, v3, v11}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->consumeAccumulatedMovement(JI)V

    .line 7796
    if-ne v6, v7, :cond_8

    .line 7797
    iget-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    if-eqz v7, :cond_7

    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mPendingKeyCode:I

    if-eqz v7, :cond_7

    .line 7799
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    iget v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConfigMaxFlingVelocity:F

    invoke-virtual {v7, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 7800
    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-virtual {v7, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    .line 7801
    .local v7, "vx":F
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v13, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    invoke-virtual {v12, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v12

    .line 7802
    .local v12, "vy":F
    invoke-direct {v0, v2, v3, v7, v12}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->startFling(JFF)Z

    move-result v13

    if-nez v13, :cond_7

    .line 7803
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 7806
    .end local v7    # "vx":F
    .end local v12    # "vy":F
    :cond_7
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    goto :goto_0

    .line 7752
    .end local v8    # "index":I
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "metaState":I
    :pswitch_2
    iget-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mFlinging:Z

    .line 7753
    .local v7, "caughtFling":Z
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishKeys(J)V

    .line 7754
    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->finishTracking(J)V

    .line 7755
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mActivePointerId:I

    .line 7756
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7757
    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7758
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    .line 7759
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartY:F

    .line 7760
    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mStartX:F

    iput v9, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastX:F

    .line 7761
    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mLastY:F

    .line 7762
    const/4 v8, 0x0

    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedX:F

    .line 7763
    iput v8, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mAccumulatedY:F

    .line 7767
    iput-boolean v7, v0, Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;->mConsumedMovement:Z

    .line 7768
    nop

    .line 7817
    .end local v7    # "caughtFling":Z
    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
