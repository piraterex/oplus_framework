.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private greylist-max-o mLastTime:J

.field private final greylist-max-o mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final greylist-max-o mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 7112
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7113
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 7114
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .locals 2

    .line 7220
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 7225
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    .line 7226
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 7228
    :cond_0
    return-void
.end method

.method public greylist-max-o process(Landroid/view/MotionEvent;)V
    .locals 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 7119
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 7120
    .local v14, "curTime":J
    iget-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    cmp-long v1, v1, v14

    if-gez v1, :cond_0

    .line 7123
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 7124
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 7125
    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 7128
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 7129
    .local v16, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    .line 7130
    .local v17, "metaState":I
    const/4 v13, 0x2

    packed-switch v16, :pswitch_data_0

    move-wide/from16 v18, v14

    .end local v14    # "curTime":J
    .local v18, "curTime":J
    goto/16 :goto_0

    .line 7140
    .end local v18    # "curTime":J
    .restart local v14    # "curTime":J
    :pswitch_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 7141
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 7142
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x400

    const/16 v20, 0x101

    move-object v1, v11

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v9, v17

    move-object/from16 v21, v11

    move/from16 v11, v18

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-wide/from16 v18, v14

    move v14, v13

    .end local v14    # "curTime":J
    .restart local v18    # "curTime":J
    move/from16 v13, v20

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    .line 7132
    .end local v18    # "curTime":J
    .restart local v14    # "curTime":J
    :pswitch_1
    move-wide/from16 v18, v14

    move v14, v13

    .end local v14    # "curTime":J
    .restart local v18    # "curTime":J
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 7133
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 7134
    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x400

    const/16 v20, 0x101

    move-object v1, v13

    move-wide/from16 v2, v18

    move-wide/from16 v4, v18

    move/from16 v9, v17

    move-object v14, v13

    move/from16 v13, v20

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 7138
    nop

    .line 7149
    :goto_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TB X="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " step="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v4, v4, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dir="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v5, v5, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " acc="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v6, v6, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " move="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7151
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / Y="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v7, v7, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7154
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7149
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7155
    :cond_1
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "X"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v14

    .line 7156
    .local v14, "xOff":F
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "Y"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v15

    .line 7164
    .local v15, "yOff":F
    const/4 v1, 0x0

    .line 7165
    .local v1, "keycode":I
    const/4 v2, 0x0

    .line 7166
    .local v2, "movement":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7167
    .local v3, "accel":F
    cmpl-float v4, v14, v15

    if-lez v4, :cond_4

    .line 7168
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    .line 7169
    if-eqz v2, :cond_3

    .line 7170
    if-lez v2, :cond_2

    const/16 v4, 0x16

    goto :goto_1

    .line 7171
    :cond_2
    const/16 v4, 0x15

    :goto_1
    move v1, v4

    .line 7172
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 7173
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move v13, v1

    move v12, v3

    goto :goto_3

    .line 7169
    :cond_3
    move v13, v1

    move v12, v3

    goto :goto_3

    .line 7175
    :cond_4
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-lez v4, :cond_7

    .line 7176
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    .line 7177
    if-eqz v2, :cond_6

    .line 7178
    if-lez v2, :cond_5

    const/16 v4, 0x14

    goto :goto_2

    .line 7179
    :cond_5
    const/16 v4, 0x13

    :goto_2
    move v1, v4

    .line 7180
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 7181
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    move v13, v1

    move v12, v3

    goto :goto_3

    .line 7177
    :cond_6
    move v13, v1

    move v12, v3

    goto :goto_3

    .line 7175
    :cond_7
    move v13, v1

    move v12, v3

    .line 7185
    .end local v1    # "keycode":I
    .end local v3    # "accel":F
    .local v12, "accel":F
    .local v13, "keycode":I
    :goto_3
    if-eqz v13, :cond_e

    .line 7186
    if-gez v2, :cond_8

    neg-int v2, v2

    .line 7187
    :cond_8
    int-to-float v1, v2

    mul-float/2addr v1, v12

    float-to-int v11, v1

    .line 7188
    .local v11, "accelMovement":I
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move: movement="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accelMovement="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7191
    :cond_9
    const-string v10, "Delivering fake DPAD: "

    if-le v11, v2, :cond_b

    .line 7192
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7194
    :cond_a
    add-int/lit8 v20, v2, -0x1

    .line 7195
    .end local v2    # "movement":I
    .local v20, "movement":I
    sub-int v21, v11, v20

    .line 7196
    .local v21, "repeatCount":I
    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v8, Landroid/view/KeyEvent;

    const/4 v6, 0x2

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    const/16 v25, 0x101

    move-object v1, v8

    move-wide/from16 v2, v18

    move-wide/from16 v4, v18

    move v7, v13

    move-object/from16 v26, v8

    move/from16 v8, v21

    move-object/from16 v27, v9

    move/from16 v9, v17

    move-object/from16 v28, v10

    move/from16 v10, v22

    move/from16 v22, v11

    .end local v11    # "accelMovement":I
    .local v22, "accelMovement":I
    move/from16 v11, v23

    move/from16 v23, v12

    .end local v12    # "accel":F
    .local v23, "accel":F
    move/from16 v12, v24

    move/from16 v24, v14

    move v14, v13

    .end local v13    # "keycode":I
    .local v14, "keycode":I
    .local v24, "xOff":F
    move/from16 v13, v25

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v26

    move-object/from16 v1, v27

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move-wide/from16 v3, v18

    move/from16 v2, v20

    goto :goto_4

    .line 7191
    .end local v20    # "movement":I
    .end local v21    # "repeatCount":I
    .end local v22    # "accelMovement":I
    .end local v23    # "accel":F
    .end local v24    # "xOff":F
    .restart local v2    # "movement":I
    .restart local v11    # "accelMovement":I
    .restart local v12    # "accel":F
    .restart local v13    # "keycode":I
    .local v14, "xOff":F
    :cond_b
    move-object/from16 v28, v10

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v14

    move v14, v13

    .end local v11    # "accelMovement":I
    .end local v12    # "accel":F
    .end local v13    # "keycode":I
    .local v14, "keycode":I
    .restart local v22    # "accelMovement":I
    .restart local v23    # "accel":F
    .restart local v24    # "xOff":F
    move-wide/from16 v3, v18

    .line 7201
    .end local v18    # "curTime":J
    .local v3, "curTime":J
    :goto_4
    if-lez v2, :cond_d

    .line 7202
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v28

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    move-object/from16 v13, v28

    .line 7204
    :goto_5
    add-int/lit8 v18, v2, -0x1

    .line 7205
    .end local v2    # "movement":I
    .local v18, "movement":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 7206
    .end local v3    # "curTime":J
    .local v19, "curTime":J
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v21, 0x0

    const/16 v25, 0x400

    const/16 v26, 0x101

    move-object v1, v11

    move-wide/from16 v2, v19

    move-wide/from16 v4, v19

    move v7, v14

    move/from16 v9, v17

    move-object/from16 v29, v11

    move/from16 v11, v21

    move-object/from16 v30, v12

    move/from16 v12, v25

    move-object/from16 v21, v13

    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 7210
    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object v1, v12

    move-wide/from16 v2, v19

    move-object/from16 v31, v12

    move/from16 v12, v25

    move/from16 v25, v14

    move-object v14, v13

    .end local v14    # "keycode":I
    .local v25, "keycode":I
    move/from16 v13, v26

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v31

    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    move/from16 v2, v18

    move-wide/from16 v3, v19

    move-object/from16 v28, v21

    move/from16 v14, v25

    goto :goto_4

    .line 7215
    .end local v18    # "movement":I
    .end local v19    # "curTime":J
    .end local v25    # "keycode":I
    .restart local v2    # "movement":I
    .restart local v3    # "curTime":J
    .restart local v14    # "keycode":I
    :cond_d
    move/from16 v25, v14

    .end local v14    # "keycode":I
    .restart local v25    # "keycode":I
    iput-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    move-wide/from16 v18, v3

    goto :goto_6

    .line 7185
    .end local v3    # "curTime":J
    .end local v22    # "accelMovement":I
    .end local v23    # "accel":F
    .end local v24    # "xOff":F
    .end local v25    # "keycode":I
    .restart local v12    # "accel":F
    .restart local v13    # "keycode":I
    .local v14, "xOff":F
    .local v18, "curTime":J
    :cond_e
    move/from16 v23, v12

    move/from16 v25, v13

    move/from16 v24, v14

    .line 7217
    .end local v12    # "accel":F
    .end local v13    # "keycode":I
    .end local v14    # "xOff":F
    .restart local v23    # "accel":F
    .restart local v24    # "xOff":F
    .restart local v25    # "keycode":I
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
