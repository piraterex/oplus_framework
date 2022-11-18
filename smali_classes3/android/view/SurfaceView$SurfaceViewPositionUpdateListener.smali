.class Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewPositionUpdateListener"
.end annotation


# instance fields
.field private final blacklist mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

.field private blacklist mRtFirst:Z

.field private final blacklist mRtSurfaceHeight:I

.field private final blacklist mRtSurfaceWidth:I

.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceView;II)V
    .locals 0
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I

    .line 1489
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtFirst:Z

    .line 1486
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1490
    iput p2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    .line 1491
    iput p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    .line 1492
    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .locals 14
    .param p1, "frameNumber"    # J
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "vecX"    # F
    .param p6, "vecY"    # F
    .param p7, "maxStretchX"    # F
    .param p8, "maxStretchY"    # F
    .param p9, "childRelativeLeft"    # F
    .param p10, "childRelativeTop"    # F
    .param p11, "childRelativeRight"    # F
    .param p12, "childRelativeBottom"    # F

    .line 1549
    move-object v0, p0

    iget-object v1, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v1, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Landroid/view/SurfaceControl$Transaction;->setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1552
    iget-object v1, v0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    move-wide v3, p1

    invoke-static {v1, v2, v3, v4}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1553
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .locals 16
    .param p1, "frameNumber"    # J
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 1496
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    iget-boolean v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtFirst:Z

    if-nez v0, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ne v0, v3, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v4, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v5, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    if-ne v0, v6, :cond_0

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    if-ne v0, v6, :cond_0

    .line 1502
    return-void

    .line 1504
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtFirst:Z

    .line 1506
    :try_start_0
    iget-object v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v6}, Landroid/view/SurfaceView;->-$$Nest$fgetDEBUG_POSITION(Landroid/view/SurfaceView;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1507
    const-string v6, "SurfaceView"

    const-string v7, "%d updateSurfacePosition RenderWorker, frameNr = %d, position = [%d, %d, %d, %d] surfaceSize = %dx%d"

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    .line 1510
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x2

    .line 1511
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x6

    iget v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const/4 v0, 0x7

    iget v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    .line 1507
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1516
    :try_start_1
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-wide v9, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v9, v7

    if-nez v0, :cond_2

    move-wide/from16 v9, p1

    goto :goto_0

    .line 1524
    :cond_2
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1525
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    iget v8, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 1526
    iget-object v9, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v10, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v13, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1529
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float v7, v7

    div-float v14, v0, v7

    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1531
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float v7, v7

    div-float v15, v0, v7

    .line 1526
    invoke-virtual/range {v9 .. v15}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1533
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_3

    .line 1535
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v7, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v7}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1537
    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1538
    :try_start_2
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v9, p1

    :try_start_3
    invoke-static {v0, v6, v9, v10}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1541
    goto :goto_4

    .line 1516
    :cond_4
    move-wide/from16 v9, p1

    .line 1517
    :goto_0
    :try_start_4
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1518
    const-string v0, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "positionChanged mSurfaceControl is null return;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1519
    :cond_5
    iget-object v0, v1, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-wide v11, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_6

    .line 1520
    const-string v0, "SurfaceView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "positionChanged mSurfaceControl.mNativeObject is 0 return;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_6
    :goto_1
    monitor-exit v6

    return-void

    .line 1537
    :catchall_0
    move-exception v0

    move-wide/from16 v9, p1

    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .end local p1    # "frameNumber":J
    .end local p3    # "left":I
    .end local p4    # "top":I
    .end local p5    # "right":I
    .end local p6    # "bottom":I
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1539
    .restart local p0    # "this":Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
    .restart local p1    # "frameNumber":J
    .restart local p3    # "left":I
    .restart local p4    # "top":I
    .restart local p5    # "right":I
    .restart local p6    # "bottom":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1537
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1539
    :catch_1
    move-exception v0

    move-wide/from16 v9, p1

    .line 1540
    .local v0, "ex":Ljava/lang/Exception;
    :goto_3
    const-string v6, "SurfaceView"

    const-string v7, "Exception from repositionChild"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1542
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public blacklist positionLost(J)V
    .locals 6
    .param p1, "frameNumber"    # J

    .line 1557
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetDEBUG_POSITION(Landroid/view/SurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    const-string v0, "SurfaceView"

    const-string v1, "%d windowPositionLost, frameNr = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    .line 1559
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1558
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1562
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedSurfaceSize(Landroid/view/SurfaceView;)Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1565
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-wide v4, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    goto :goto_0

    .line 1578
    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1579
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1580
    monitor-exit v0

    .line 1581
    return-void

    .line 1570
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_3

    .line 1571
    const-string v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "positionLost mSurfaceControl is null return;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1572
    :cond_3
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-wide v4, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mBackgroundControl:Landroid/view/SurfaceControl;

    iget-wide v4, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_5

    .line 1573
    :cond_4
    const-string v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "positionLost mSurfaceControl.mNativeObject or mBackgroundControl.mNativeObject is 0 return;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    .line 1580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
