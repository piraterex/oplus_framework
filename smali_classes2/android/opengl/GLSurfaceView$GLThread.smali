.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private greylist mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private greylist-max-o mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExited:Z

.field private greylist-max-o mFinishDrawingRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mFinishedCreatingEglSurface:Z

.field private greylist-max-o mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHasSurface:Z

.field private greylist-max-o mHaveEglContext:Z

.field private greylist-max-o mHaveEglSurface:Z

.field private greylist-max-o mHeight:I

.field private greylist-max-o mPaused:Z

.field private greylist-max-o mRenderComplete:Z

.field private greylist-max-o mRenderMode:I

.field private greylist-max-o mRequestPaused:Z

.field private greylist-max-o mRequestRender:Z

.field private greylist-max-o mShouldExit:Z

.field private greylist-max-o mShouldReleaseEglContext:Z

.field private greylist-max-o mSizeChanged:Z

.field private greylist-max-o mSurfaceIsBad:Z

.field private greylist-max-o mWaitingForSurface:Z

.field private greylist-max-o mWantRenderNotification:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmExited(Landroid/opengl/GLSurfaceView$GLThread;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .line 1267
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1890
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1891
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1268
    const/4 v1, 0x0

    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1269
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1270
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1271
    iput v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1272
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1273
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1274
    return-void
.end method

.method private greylist-max-o guardedRun()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1315
    move-object/from16 v1, p0

    new-instance v0, Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1317
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1318
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1321
    const/4 v2, 0x0

    .line 1322
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1323
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1324
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1325
    .local v5, "createGlInterface":Z
    const/4 v6, 0x0

    .line 1326
    .local v6, "lostEglContext":Z
    const/4 v7, 0x0

    .line 1327
    .local v7, "sizeChanged":Z
    const/4 v8, 0x0

    .line 1328
    .local v8, "wantRenderNotification":Z
    const/4 v9, 0x0

    .line 1329
    .local v9, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1330
    .local v10, "askedToReleaseEglContext":Z
    const/4 v11, 0x0

    .line 1331
    .local v11, "w":I
    const/4 v12, 0x0

    .line 1332
    .local v12, "h":I
    const/4 v13, 0x0

    .line 1333
    .local v13, "event":Ljava/lang/Runnable;
    const/4 v14, 0x0

    .line 1336
    .local v14, "finishDrawingRunnable":Ljava/lang/Runnable;
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_18

    .line 1338
    :goto_1
    :try_start_1
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_16

    if-eqz v0, :cond_0

    .line 1339
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1649
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v16

    monitor-enter v16

    .line 1650
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1651
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1652
    monitor-exit v16

    .line 1339
    return-void

    .line 1652
    :catchall_0
    move-exception v0

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1519
    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    goto/16 :goto_18

    .line 1342
    :cond_0
    :try_start_4
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_16

    move-object/from16 v17, v2

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    if-nez v0, :cond_1

    .line 1343
    :try_start_5
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_17

    .line 1344
    .end local v13    # "event":Ljava/lang/Runnable;
    .local v0, "event":Ljava/lang/Runnable;
    move-object v13, v0

    const/4 v0, 0x0

    goto/16 :goto_a

    .line 1348
    .end local v0    # "event":Ljava/lang/Runnable;
    .restart local v13    # "event":Ljava/lang/Runnable;
    :cond_1
    const/4 v0, 0x0

    .line 1349
    .local v0, "pausing":Z
    :try_start_6
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v19, v0

    .end local v0    # "pausing":Z
    .local v19, "pausing":Z
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_15

    if-eq v2, v0, :cond_3

    .line 1350
    move v2, v0

    .line 1351
    .end local v19    # "pausing":Z
    .local v2, "pausing":Z
    :try_start_7
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1352
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1353
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_PAUSE_RESUME()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1354
    const-string v0, "GLThread"

    move/from16 v19, v2

    .end local v2    # "pausing":Z
    .restart local v19    # "pausing":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move/from16 v20, v3

    .end local v3    # "createEglContext":Z
    .local v20, "createEglContext":Z
    :try_start_8
    const-string v3, "mPaused is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move/from16 v21, v4

    .end local v4    # "createEglSurface":Z
    .local v21, "createEglSurface":Z
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    .line 1519
    .end local v19    # "pausing":Z
    .end local v21    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_2
    move-exception v0

    move/from16 v21, v4

    move/from16 v3, v20

    .end local v4    # "createEglSurface":Z
    .restart local v21    # "createEglSurface":Z
    goto/16 :goto_18

    .line 1353
    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .restart local v2    # "pausing":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    :cond_2
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    .end local v2    # "pausing":Z
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .restart local v19    # "pausing":Z
    .restart local v20    # "createEglContext":Z
    .restart local v21    # "createEglSurface":Z
    goto :goto_2

    .line 1519
    .end local v19    # "pausing":Z
    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_3
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .restart local v20    # "createEglContext":Z
    .restart local v21    # "createEglSurface":Z
    goto/16 :goto_18

    .line 1349
    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v19    # "pausing":Z
    :cond_3
    move/from16 v20, v3

    move/from16 v21, v4

    .line 1359
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .restart local v20    # "createEglContext":Z
    .restart local v21    # "createEglSurface":Z
    :goto_2
    :try_start_a
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_14

    if-eqz v0, :cond_5

    .line 1360
    :try_start_b
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1361
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because asked to tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1364
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1366
    const/4 v10, 0x1

    goto :goto_3

    .line 1519
    .end local v19    # "pausing":Z
    :catchall_4
    move-exception v0

    move/from16 v3, v20

    move/from16 v4, v21

    goto/16 :goto_18

    .line 1370
    .restart local v19    # "pausing":Z
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 1371
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1372
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1373
    const/4 v0, 0x0

    move v6, v0

    .line 1377
    :cond_6
    if-eqz v19, :cond_8

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_8

    .line 1378
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1379
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1385
    :cond_8
    if-eqz v19, :cond_c

    :try_start_c
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_c

    .line 1386
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;

    .line 1387
    .local v0, "view":Landroid/opengl/GLSurfaceView;
    if-nez v0, :cond_9

    .line 1388
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmPreserveEGLContextOnPause(Landroid/opengl/GLSurfaceView;)Z

    move-result v2

    .line 1389
    .local v2, "preserveEglContextOnPause":Z
    :goto_4
    if-nez v2, :cond_b

    .line 1390
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1391
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1392
    const-string v3, "GLThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    .local v22, "view":Landroid/opengl/GLSurfaceView;
    const-string v0, "releasing EGL context because paused tid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_14

    move/from16 v23, v5

    .end local v5    # "createGlInterface":Z
    .local v23, "createGlInterface":Z
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1391
    .end local v22    # "view":Landroid/opengl/GLSurfaceView;
    .end local v23    # "createGlInterface":Z
    .restart local v0    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v5    # "createGlInterface":Z
    :cond_a
    move-object/from16 v22, v0

    move/from16 v23, v5

    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    .end local v5    # "createGlInterface":Z
    .restart local v22    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v23    # "createGlInterface":Z
    goto :goto_5

    .line 1389
    .end local v22    # "view":Landroid/opengl/GLSurfaceView;
    .end local v23    # "createGlInterface":Z
    .restart local v0    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v5    # "createGlInterface":Z
    :cond_b
    move-object/from16 v22, v0

    move/from16 v23, v5

    .end local v0    # "view":Landroid/opengl/GLSurfaceView;
    .end local v5    # "createGlInterface":Z
    .restart local v22    # "view":Landroid/opengl/GLSurfaceView;
    .restart local v23    # "createGlInterface":Z
    goto :goto_5

    .line 1385
    .end local v2    # "preserveEglContextOnPause":Z
    .end local v22    # "view":Landroid/opengl/GLSurfaceView;
    .end local v23    # "createGlInterface":Z
    .restart local v5    # "createGlInterface":Z
    :cond_c
    move/from16 v23, v5

    .line 1398
    .end local v5    # "createGlInterface":Z
    .restart local v23    # "createGlInterface":Z
    :goto_5
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_f

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_f

    .line 1399
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1400
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_d
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_e

    .line 1403
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1405
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1406
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1407
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1411
    :cond_f
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_11

    .line 1412
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1413
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1416
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1419
    :cond_11
    if-eqz v9, :cond_13

    .line 1420
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1421
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1424
    const/4 v9, 0x0

    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1426
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1429
    :cond_13
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 1432
    if-eqz v14, :cond_14

    .line 1433
    const-string v0, "GLSurfaceView"

    const-string v2, "finishDrawingRunnable may not null, run it first"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 1435
    const/4 v14, 0x0

    .line 1438
    :cond_14
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object v14, v0

    .line 1439
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1443
    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1446
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_13

    if-nez v0, :cond_17

    .line 1447
    if-eqz v10, :cond_16

    .line 1448
    const/4 v0, 0x0

    move v10, v0

    move/from16 v3, v20

    .end local v10    # "askedToReleaseEglContext":Z
    .local v0, "askedToReleaseEglContext":Z
    goto :goto_6

    .line 1451
    .end local v0    # "askedToReleaseEglContext":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    :cond_16
    :try_start_e
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_13

    .line 1455
    nop

    .line 1456
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_13

    .line 1457
    const/4 v3, 0x1

    .line 1459
    .end local v20    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :try_start_10
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_6

    .line 1452
    .end local v3    # "createEglContext":Z
    .restart local v20    # "createEglContext":Z
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "t":Ljava/lang/RuntimeException;
    :try_start_11
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1454
    nop

    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .end local v23    # "createGlInterface":Z
    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_13

    .line 1446
    .end local v0    # "t":Ljava/lang/RuntimeException;
    .restart local v6    # "lostEglContext":Z
    .restart local v7    # "sizeChanged":Z
    .restart local v8    # "wantRenderNotification":Z
    .restart local v9    # "doRenderNotification":Z
    .restart local v10    # "askedToReleaseEglContext":Z
    .restart local v11    # "w":I
    .restart local v12    # "h":I
    .restart local v13    # "event":Ljava/lang/Runnable;
    .restart local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v20    # "createEglContext":Z
    .restart local v21    # "createEglSurface":Z
    .restart local v23    # "createGlInterface":Z
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_17
    move/from16 v3, v20

    .line 1463
    .end local v20    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :goto_6
    :try_start_12
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    if-eqz v0, :cond_18

    :try_start_13
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_18

    .line 1464
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 1465
    const/4 v4, 0x1

    .line 1466
    .end local v21    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    const/4 v5, 0x1

    .line 1467
    .end local v23    # "createGlInterface":Z
    .restart local v5    # "createGlInterface":Z
    const/4 v7, 0x1

    goto :goto_7

    .line 1519
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v19    # "pausing":Z
    .restart local v21    # "createEglSurface":Z
    .restart local v23    # "createGlInterface":Z
    :catchall_5
    move-exception v0

    move/from16 v4, v21

    move/from16 v5, v23

    goto/16 :goto_18

    .line 1470
    .restart local v19    # "pausing":Z
    :cond_18
    move/from16 v4, v21

    move/from16 v5, v23

    .end local v21    # "createEglSurface":Z
    .end local v23    # "createGlInterface":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    :goto_7
    :try_start_14
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_2e

    .line 1471
    iget-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_1a

    .line 1472
    const/4 v7, 0x1

    .line 1473
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move v11, v0

    .line 1474
    iget v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    move v12, v0

    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1476
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1477
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move/from16 v20, v3

    .end local v3    # "createEglContext":Z
    .restart local v20    # "createEglContext":Z
    :try_start_15
    const-string v3, "noticing that we want render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1479
    move/from16 v21, v4

    .end local v4    # "createEglSurface":Z
    .restart local v21    # "createEglSurface":Z
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1477
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_8

    .line 1476
    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    :cond_19
    move/from16 v20, v3

    move/from16 v21, v4

    .line 1483
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .restart local v20    # "createEglContext":Z
    .restart local v21    # "createEglSurface":Z
    :goto_8
    const/4 v4, 0x1

    .line 1485
    .end local v21    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    const/4 v0, 0x0

    :try_start_17
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    goto :goto_9

    .line 1471
    .end local v20    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :cond_1a
    move/from16 v20, v3

    move/from16 v21, v4

    .line 1487
    .end local v3    # "createEglContext":Z
    .restart local v20    # "createEglContext":Z
    :goto_9
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1488
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1489
    iget-boolean v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    if-eqz v2, :cond_1b

    .line 1490
    const/4 v2, 0x1

    move v8, v2

    move/from16 v3, v20

    .end local v8    # "wantRenderNotification":Z
    .local v2, "wantRenderNotification":Z
    goto :goto_a

    .line 1489
    .end local v2    # "wantRenderNotification":Z
    .restart local v8    # "wantRenderNotification":Z
    :cond_1b
    move/from16 v3, v20

    .line 1519
    .end local v19    # "pausing":Z
    .end local v20    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    :goto_a
    :try_start_18
    monitor-exit v15
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    .line 1521
    if-eqz v13, :cond_1c

    .line 1522
    :try_start_19
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 1523
    const/4 v13, 0x0

    .line 1524
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 1527
    :cond_1c
    if-eqz v4, :cond_1f

    .line 1528
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1529
    const-string v2, "GLThread"

    const-string v15, "egl createSurface"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_1d
    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1532
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_18

    .line 1533
    const/4 v15, 0x1

    :try_start_1a
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1534
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1535
    monitor-exit v2

    .line 1544
    const/4 v2, 0x0

    move v4, v2

    .end local v4    # "createEglSurface":Z
    .local v2, "createEglSurface":Z
    goto :goto_b

    .line 1535
    .end local v2    # "createEglSurface":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_1b
    throw v0

    .line 1537
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_1e
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    .line 1538
    const/4 v15, 0x1

    :try_start_1c
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1539
    iput-boolean v15, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1540
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    .line 1541
    monitor-exit v2

    .line 1542
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 1541
    :catchall_7
    move-exception v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_1d
    throw v0

    .line 1547
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_1f
    :goto_b
    if-eqz v5, :cond_20

    .line 1548
    iget-object v2, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 1550
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    goto :goto_c

    .line 1547
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_20
    move-object/from16 v2, v17

    .line 1553
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_c
    move v15, v4

    move/from16 v16, v5

    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .local v15, "createEglSurface":Z
    .local v16, "createGlInterface":Z
    if-eqz v3, :cond_23

    .line 1554
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_RENDERER()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 1555
    const-string v0, "GLThread"

    const-string v4, "onSurfaceCreated"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_21
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_18

    move-object v4, v0

    .line 1558
    .local v4, "view":Landroid/opengl/GLSurfaceView;
    if-eqz v4, :cond_22

    .line 1560
    :try_start_1e
    const-string v0, "onSurfaceCreated"
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    move/from16 v21, v6

    const-wide/16 v5, 0x8

    .end local v6    # "lostEglContext":Z
    .local v21, "lostEglContext":Z
    :try_start_1f
    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1561
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    iget-object v5, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v5, v5, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v2, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 1563
    const-wide/16 v5, 0x8

    :try_start_20
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1564
    goto :goto_e

    .line 1563
    :catchall_8
    move-exception v0

    goto :goto_d

    .end local v21    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :catchall_9
    move-exception v0

    move/from16 v21, v6

    .end local v6    # "lostEglContext":Z
    .restart local v21    # "lostEglContext":Z
    :goto_d
    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1564
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1558
    .end local v21    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_22
    move/from16 v21, v6

    .line 1566
    .end local v6    # "lostEglContext":Z
    .restart local v21    # "lostEglContext":Z
    :goto_e
    const/4 v0, 0x0

    move v3, v0

    .end local v3    # "createEglContext":Z
    .local v0, "createEglContext":Z
    goto :goto_f

    .line 1553
    .end local v0    # "createEglContext":Z
    .end local v4    # "view":Landroid/opengl/GLSurfaceView;
    .end local v21    # "lostEglContext":Z
    .restart local v3    # "createEglContext":Z
    .restart local v6    # "lostEglContext":Z
    :cond_23
    move/from16 v21, v6

    .line 1569
    .end local v6    # "lostEglContext":Z
    .restart local v21    # "lostEglContext":Z
    :goto_f
    if-eqz v7, :cond_26

    .line 1570
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_RENDERER()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1571
    const-string v0, "GLThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSurfaceChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_24
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    move-object v4, v0

    .line 1574
    .restart local v4    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v4, :cond_25

    .line 1576
    :try_start_21
    const-string v0, "onSurfaceChanged"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1577
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v2, v11, v12}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 1579
    :try_start_22
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    goto :goto_10

    .line 1579
    :catchall_a
    move-exception v0

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1580
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1582
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_25
    :goto_10
    const/4 v0, 0x0

    move v7, v0

    .line 1585
    .end local v4    # "view":Landroid/opengl/GLSurfaceView;
    :cond_26
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_RENDERER_DRAW_FRAME()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1586
    const-string v0, "GLThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDrawFrame tid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_27
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/opengl/GLSurfaceView;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_18

    move-object v4, v0

    .line 1590
    .restart local v4    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v4, :cond_2b

    .line 1592
    :try_start_23
    const-string v0, "onDrawFrame"

    const-wide/16 v5, 0x8

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1593
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    .line 1596
    if-eqz v14, :cond_28

    .line 1597
    const-string v0, "GLSurfaceView"

    const-string v5, "finishDrawingRunnable may not null, run it first"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    .line 1599
    const/4 v0, 0x0

    move-object v14, v0

    .line 1602
    :cond_28
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    move-object v14, v0

    .line 1603
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1605
    :cond_29
    invoke-static {v4}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1606
    if-eqz v14, :cond_2a

    .line 1607
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 1608
    const/4 v14, 0x0

    .line 1611
    :cond_2a
    const-wide/16 v5, 0x8

    :try_start_24
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1612
    goto :goto_11

    .line 1611
    :catchall_b
    move-exception v0

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1612
    nop

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    throw v0

    .line 1615
    .end local v4    # "view":Landroid/opengl/GLSurfaceView;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :cond_2b
    :goto_11
    iget-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v0

    move v4, v0

    .line 1616
    .local v4, "swapError":I
    sparse-switch v4, :sswitch_data_0

    .line 1630
    move-object v6, v2

    move/from16 v17, v3

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v3    # "createEglContext":Z
    .local v6, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .local v17, "createEglContext":Z
    const-string v0, "GLThread"

    goto :goto_13

    .line 1620
    .end local v6    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v17    # "createEglContext":Z
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v3    # "createEglContext":Z
    :sswitch_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1621
    const-string v0, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "egl context lost tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    move/from16 v17, v3

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v3    # "createEglContext":Z
    .restart local v6    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "createEglContext":Z
    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1620
    .end local v6    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v17    # "createEglContext":Z
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v3    # "createEglContext":Z
    :cond_2c
    move-object v6, v2

    move/from16 v17, v3

    .line 1623
    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v3    # "createEglContext":Z
    .restart local v6    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "createEglContext":Z
    :goto_12
    const/4 v0, 0x1

    .line 1624
    .end local v21    # "lostEglContext":Z
    .local v0, "lostEglContext":Z
    goto :goto_15

    .line 1618
    .end local v0    # "lostEglContext":Z
    .end local v6    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v17    # "createEglContext":Z
    .restart local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v3    # "createEglContext":Z
    .restart local v21    # "lostEglContext":Z
    :sswitch_1
    move-object v6, v2

    move/from16 v17, v3

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v3    # "createEglContext":Z
    .restart local v6    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "createEglContext":Z
    goto :goto_14

    .line 1630
    :goto_13
    const-string v2, "eglSwapBuffers"

    invoke-static {v0, v2, v4}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1632
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_18

    .line 1633
    const/4 v0, 0x1

    :try_start_25
    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1634
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1635
    monitor-exit v2

    .line 1639
    :goto_14
    move/from16 v0, v21

    .end local v21    # "lostEglContext":Z
    .restart local v0    # "lostEglContext":Z
    :goto_15
    if-eqz v8, :cond_2d

    .line 1640
    const/4 v2, 0x1

    .line 1641
    .end local v9    # "doRenderNotification":Z
    .local v2, "doRenderNotification":Z
    const/4 v3, 0x0

    move v9, v2

    move v8, v3

    .line 1643
    .end local v2    # "doRenderNotification":Z
    .end local v4    # "swapError":I
    .restart local v9    # "doRenderNotification":Z
    :cond_2d
    move-object v2, v6

    move v4, v15

    move/from16 v5, v16

    move/from16 v3, v17

    move v6, v0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1635
    .end local v0    # "lostEglContext":Z
    .restart local v4    # "swapError":I
    .restart local v21    # "lostEglContext":Z
    :catchall_c
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_26
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_18

    .line 1519
    .end local v15    # "createEglSurface":Z
    .end local v16    # "createGlInterface":Z
    .end local v21    # "lostEglContext":Z
    .restart local v3    # "createEglContext":Z
    .local v4, "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    .local v6, "lostEglContext":Z
    .local v17, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_d
    move-exception v0

    move/from16 v21, v6

    .end local v6    # "lostEglContext":Z
    .restart local v21    # "lostEglContext":Z
    goto/16 :goto_18

    .end local v3    # "createEglContext":Z
    .end local v21    # "lostEglContext":Z
    .restart local v6    # "lostEglContext":Z
    .restart local v20    # "createEglContext":Z
    :catchall_e
    move-exception v0

    move/from16 v3, v20

    goto/16 :goto_18

    .line 1470
    .end local v20    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    .restart local v19    # "pausing":Z
    :cond_2e
    move/from16 v20, v3

    move/from16 v21, v4

    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .restart local v20    # "createEglContext":Z
    .local v21, "createEglSurface":Z
    goto :goto_16

    .line 1519
    .end local v5    # "createGlInterface":Z
    .end local v19    # "pausing":Z
    .end local v20    # "createEglContext":Z
    .restart local v3    # "createEglContext":Z
    .restart local v23    # "createGlInterface":Z
    :catchall_f
    move-exception v0

    move/from16 v20, v3

    move/from16 v4, v21

    move/from16 v5, v23

    .end local v3    # "createEglContext":Z
    .restart local v20    # "createEglContext":Z
    goto/16 :goto_18

    .line 1495
    .restart local v19    # "pausing":Z
    :cond_2f
    if-eqz v14, :cond_30

    .line 1496
    :try_start_27
    const-string v0, "GLSurfaceView"

    const-string v2, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    .line 1499
    const/4 v0, 0x0

    move-object v14, v0

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v23

    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .local v0, "finishDrawingRunnable":Ljava/lang/Runnable;
    goto :goto_16

    .line 1495
    .end local v0    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .restart local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    :cond_30
    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v23

    .line 1503
    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .end local v23    # "createGlInterface":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    :goto_16
    :try_start_28
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_THREADS()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1504
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    move/from16 v16, v3

    .end local v3    # "createEglContext":Z
    .local v16, "createEglContext":Z
    :try_start_29
    const-string/jumbo v3, "waiting tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    move/from16 v18, v4

    .end local v4    # "createEglSurface":Z
    .local v18, "createEglSurface":Z
    :try_start_2a
    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHaveEglContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHaveEglSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFinishedCreatingEglSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSurfaceIsBad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWaitingForSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRequestRender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRenderMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 1519
    .end local v18    # "createEglSurface":Z
    .end local v19    # "pausing":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_10
    move-exception v0

    move/from16 v18, v4

    move/from16 v3, v16

    .end local v4    # "createEglSurface":Z
    .restart local v18    # "createEglSurface":Z
    goto :goto_18

    .line 1503
    .end local v16    # "createEglContext":Z
    .end local v18    # "createEglSurface":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v19    # "pausing":Z
    :cond_31
    move/from16 v16, v3

    move/from16 v18, v4

    .line 1517
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .restart local v16    # "createEglContext":Z
    .restart local v18    # "createEglSurface":Z
    :goto_17
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    .line 1518
    .end local v19    # "pausing":Z
    move/from16 v3, v16

    move-object/from16 v2, v17

    move/from16 v4, v18

    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1519
    :catchall_11
    move-exception v0

    move/from16 v3, v16

    move/from16 v4, v18

    goto :goto_18

    .end local v16    # "createEglContext":Z
    .end local v18    # "createEglSurface":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    :catchall_12
    move-exception v0

    move/from16 v16, v3

    move/from16 v18, v4

    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .restart local v16    # "createEglContext":Z
    .restart local v18    # "createEglSurface":Z
    goto :goto_18

    .end local v5    # "createGlInterface":Z
    .end local v16    # "createEglContext":Z
    .end local v18    # "createEglSurface":Z
    .restart local v20    # "createEglContext":Z
    .restart local v21    # "createEglSurface":Z
    .restart local v23    # "createGlInterface":Z
    :catchall_13
    move-exception v0

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v5, v23

    goto :goto_18

    .end local v23    # "createGlInterface":Z
    .restart local v5    # "createGlInterface":Z
    :catchall_14
    move-exception v0

    move/from16 v23, v5

    move/from16 v3, v20

    move/from16 v4, v21

    .end local v5    # "createGlInterface":Z
    .restart local v23    # "createGlInterface":Z
    goto :goto_18

    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .end local v23    # "createGlInterface":Z
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    :catchall_15
    move-exception v0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v5

    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .restart local v20    # "createEglContext":Z
    .restart local v21    # "createEglSurface":Z
    .restart local v23    # "createGlInterface":Z
    goto :goto_18

    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .end local v20    # "createEglContext":Z
    .end local v21    # "createEglSurface":Z
    .end local v23    # "createGlInterface":Z
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v3    # "createEglContext":Z
    .restart local v4    # "createEglSurface":Z
    .restart local v5    # "createGlInterface":Z
    :catchall_16
    move-exception v0

    move-object/from16 v17, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v5

    .end local v2    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    .restart local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :goto_18
    :try_start_2b
    monitor-exit v15
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    .end local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :try_start_2c
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_18

    .restart local p0    # "this":Landroid/opengl/GLSurfaceView$GLThread;
    :catchall_17
    move-exception v0

    goto :goto_18

    .line 1649
    .end local v3    # "createEglContext":Z
    .end local v4    # "createEglSurface":Z
    .end local v5    # "createGlInterface":Z
    .end local v6    # "lostEglContext":Z
    .end local v7    # "sizeChanged":Z
    .end local v8    # "wantRenderNotification":Z
    .end local v9    # "doRenderNotification":Z
    .end local v10    # "askedToReleaseEglContext":Z
    .end local v11    # "w":I
    .end local v12    # "h":I
    .end local v13    # "event":Ljava/lang/Runnable;
    .end local v14    # "finishDrawingRunnable":Ljava/lang/Runnable;
    .end local v17    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :catchall_18
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1650
    :try_start_2d
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1651
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1652
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_19

    .line 1653
    throw v0

    .line 1652
    :catchall_19
    move-exception v0

    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_19

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_1
        0x300e -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o readyToDraw()Z
    .locals 2

    .line 1661
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private greylist-max-o stopEglContextLocked()V
    .locals 1

    .line 1308
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1311
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1313
    :cond_0
    return-void
.end method

.method private greylist-max-o stopEglSurfaceLocked()V
    .locals 1

    .line 1297
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1298
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1299
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1301
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o ableToDraw()Z
    .locals 1

    .line 1657
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o getRenderMode()I
    .locals 2

    .line 1677
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1678
    :try_start_0
    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1679
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o onPause()V
    .locals 5

    .line 1760
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1761
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_PAUSE_RESUME()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1762
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1765
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1766
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_2

    .line 1767
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_PAUSE_RESUME()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1768
    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1771
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1774
    :goto_1
    goto :goto_0

    .line 1772
    :catch_0
    move-exception v1

    .line 1773
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1776
    :cond_2
    monitor-exit v0

    .line 1777
    return-void

    .line 1776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o onResume()V
    .locals 5

    .line 1780
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1781
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_PAUSE_RESUME()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1782
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1785
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1786
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1787
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1788
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_2

    .line 1789
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_PAUSE_RESUME()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1796
    :goto_1
    goto :goto_0

    .line 1794
    :catch_0
    move-exception v1

    .line 1795
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1798
    :cond_2
    monitor-exit v0

    .line 1799
    return-void

    .line 1798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o onWindowResize(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 1802
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1803
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1804
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1805
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1806
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1807
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1814
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1815
    monitor-exit v0

    return-void

    .line 1818
    :cond_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1821
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_2

    .line 1822
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1823
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_SURFACE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1824
    const-string v1, "Main thread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowResize waiting for render complete from tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1830
    :goto_1
    goto :goto_0

    .line 1828
    :catch_0
    move-exception v1

    .line 1829
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1832
    :cond_2
    monitor-exit v0

    .line 1833
    return-void

    .line 1832
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 1861
    if-eqz p1, :cond_0

    .line 1864
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1865
    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1866
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1867
    monitor-exit v0

    .line 1868
    return-void

    .line 1867
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1862
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o requestExitAndWait()V
    .locals 3

    .line 1838
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1839
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1840
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1841
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1843
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1846
    :goto_1
    goto :goto_0

    .line 1844
    :catch_0
    move-exception v1

    .line 1845
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1848
    :cond_0
    monitor-exit v0

    .line 1849
    return-void

    .line 1848
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o requestReleaseEglContextLocked()V
    .locals 1

    .line 1852
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1853
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1854
    return-void
.end method

.method public greylist-max-o requestRender()V
    .locals 2

    .line 1683
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1684
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1685
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1686
    monitor-exit v0

    .line 1687
    return-void

    .line 1686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o requestRenderAndNotify(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "finishDrawing"    # Ljava/lang/Runnable;

    .line 1690
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1695
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1696
    monitor-exit v0

    return-void

    .line 1700
    :cond_0
    iget-object v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    .line 1702
    nop

    .line 1703
    .local v1, "tmpRunnable":Ljava/lang/Runnable;
    :try_start_1
    const-string v2, "GLSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRenderAndNotify ==> run previous finish runnable mFinishDrawingRunnable =:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",tmpRunnable =:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    if-eqz v1, :cond_1

    .line 1706
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1710
    .end local v1    # "tmpRunnable":Ljava/lang/Runnable;
    :cond_1
    goto :goto_0

    .line 1708
    :catch_0
    move-exception v1

    .line 1709
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1713
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    .line 1714
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1715
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1716
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Ljava/lang/Runnable;

    .line 1718
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1719
    monitor-exit v0

    .line 1720
    return-void

    .line 1719
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1279
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_THREADS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    :goto_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1289
    goto :goto_1

    .line 1288
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1289
    throw v0

    .line 1285
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1290
    :goto_1
    return-void
.end method

.method public greylist-max-o setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .line 1667
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1670
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1671
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1672
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1673
    monitor-exit v0

    .line 1674
    return-void

    .line 1673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1668
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o surfaceCreated()V
    .locals 5

    .line 1723
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1724
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_THREADS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1725
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1728
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1729
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1730
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1734
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1737
    :goto_1
    goto :goto_0

    .line 1735
    :catch_0
    move-exception v1

    .line 1736
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1739
    :cond_1
    monitor-exit v0

    .line 1740
    return-void

    .line 1739
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public greylist-max-o surfaceDestroyed()V
    .locals 5

    .line 1743
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1744
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetLOG_THREADS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1745
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1748
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1749
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1751
    :try_start_1
    invoke-static {}, Landroid/opengl/GLSurfaceView;->-$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1754
    :goto_1
    goto :goto_0

    .line 1752
    :catch_0
    move-exception v1

    .line 1753
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1756
    :cond_1
    monitor-exit v0

    .line 1757
    return-void

    .line 1756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
