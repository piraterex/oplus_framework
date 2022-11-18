.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Looper$Observer;
    }
.end annotation


# static fields
.field private static final blacklist ONETRACE_EXT:Landroid/os/IOneTraceExt;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Looper"

.field private static greylist sMainLooper:Landroid/os/Looper;

.field private static blacklist sObserver:Landroid/os/Looper$Observer;

.field static final greylist sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInLoop:Z

.field private greylist mLogging:Landroid/util/Printer;

.field public blacklist mLooperExt:Landroid/os/ILooperExt;

.field final greylist mQueue:Landroid/os/MessageQueue;

.field private blacklist mSlowDeliveryDetected:Z

.field private greylist-max-o mSlowDeliveryThresholdMs:J

.field private greylist-max-o mSlowDispatchThresholdMs:J

.field final greylist-max-o mThread:Ljava/lang/Thread;

.field private greylist-max-o mTraceTag:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 83
    const-class v0, Landroid/os/IOneTraceExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOneTraceExt;

    sput-object v0, Landroid/os/Looper;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .locals 1
    .param p1, "quitAllowed"    # Z

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-class v0, Landroid/os/ILooperExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ILooperExt;

    iput-object v0, p0, Landroid/os/Looper;->mLooperExt:Landroid/os/ILooperExt;

    .line 388
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 389
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 390
    return-void
.end method

.method public static whitelist getMainLooper()Landroid/os/Looper;
    .locals 2

    .line 166
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist loop()V
    .locals 5

    .line 320
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 321
    .local v0, "me":Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 324
    iget-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    if-eqz v1, :cond_0

    .line 325
    const-string v1, "Looper"

    const-string v2, "Loop again would have the queued messages be executed before this one completed."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/os/Looper;->mInLoop:Z

    .line 332
    iget-object v1, v0, Landroid/os/Looper;->mLooperExt:Landroid/os/ILooperExt;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/ILooperExt;->initLoop(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 338
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 342
    .local v1, "ident":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "log.looper."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 345
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".slow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 343
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 348
    .local v3, "thresholdOverride":I
    iput-boolean v4, v0, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    .line 351
    :cond_1
    invoke-static {v0, v1, v2, v3}, Landroid/os/Looper;->loopOnce(Landroid/os/Looper;JI)Z

    move-result v4

    if-nez v4, :cond_1

    .line 352
    return-void

    .line 322
    .end local v1    # "ident":J
    .end local v3    # "thresholdOverride":I
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist loopOnce(Landroid/os/Looper;JI)Z
    .locals 35
    .param p0, "me"    # Landroid/os/Looper;
    .param p1, "ident"    # J
    .param p3, "thresholdOverride"    # I

    .line 186
    move-object/from16 v1, p0

    move/from16 v2, p3

    iget-object v0, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    invoke-virtual {v0}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v11

    .line 187
    .local v11, "msg":Landroid/os/Message;
    const/4 v0, 0x0

    if-nez v11, :cond_0

    .line 189
    return v0

    .line 193
    :cond_0
    iget-object v12, v1, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 194
    .local v12, "logging":Landroid/util/Printer;
    const-string v13, " "

    if-eqz v12, :cond_1

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> Dispatching to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 199
    :cond_1
    sget-object v14, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 201
    .local v14, "observer":Landroid/os/Looper$Observer;
    iget-wide v9, v1, Landroid/os/Looper;->mTraceTag:J

    .line 202
    .local v9, "traceTag":J
    iget-wide v3, v1, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 203
    .local v3, "slowDispatchThresholdMs":J
    iget-wide v5, v1, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 204
    .local v5, "slowDeliveryThresholdMs":J
    if-lez v2, :cond_2

    .line 205
    int-to-long v3, v2

    .line 206
    int-to-long v5, v2

    move-wide v15, v3

    move-wide/from16 v17, v5

    goto :goto_0

    .line 204
    :cond_2
    move-wide v15, v3

    move-wide/from16 v17, v5

    .line 208
    .end local v3    # "slowDispatchThresholdMs":J
    .end local v5    # "slowDeliveryThresholdMs":J
    .local v15, "slowDispatchThresholdMs":J
    .local v17, "slowDeliveryThresholdMs":J
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v17, v3

    if-lez v5, :cond_3

    iget-wide v5, v11, Landroid/os/Message;->when:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v0

    :goto_1
    move/from16 v19, v5

    .line 209
    .local v19, "logSlowDelivery":Z
    cmp-long v5, v15, v3

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v0

    :goto_2
    move/from16 v20, v5

    .line 211
    .local v20, "logSlowDispatch":Z
    if-nez v19, :cond_6

    if-eqz v20, :cond_5

    goto :goto_3

    :cond_5
    move v5, v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x1

    :goto_4
    move/from16 v21, v5

    .line 212
    .local v21, "needStartTime":Z
    move/from16 v22, v20

    .line 214
    .local v22, "needEndTime":Z
    cmp-long v5, v9, v3

    const-wide v7, 0x100000000L

    if-eqz v5, :cond_7

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 215
    iget-object v5, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v10, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_5

    .line 220
    :cond_7
    sget-object v5, Landroid/os/Looper;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    invoke-interface {v5, v7, v8}, Landroid/os/IOneTraceExt;->isEnable(J)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 221
    iget-object v5, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v8, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 227
    :cond_8
    :goto_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 228
    .local v5, "pid":I
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v23

    .line 229
    .local v23, "activityThread":Landroid/app/ActivityThread;
    iget-object v6, v1, Landroid/os/Looper;->mLooperExt:Landroid/os/ILooperExt;

    if-eqz v23, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-interface {v6, v11, v5, v0}, Landroid/os/ILooperExt;->startLooperMessageMonitor(Landroid/os/Message;IZ)V

    .line 232
    if-eqz v21, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    goto :goto_6

    :cond_a
    move-wide/from16 v25, v3

    .line 234
    .local v25, "dispatchStart":J
    :goto_6
    const/4 v0, 0x0

    .line 235
    .local v0, "token":Ljava/lang/Object;
    if-eqz v14, :cond_b

    .line 236
    invoke-interface {v14}, Landroid/os/Looper$Observer;->messageDispatchStarting()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    goto :goto_7

    .line 235
    :cond_b
    move-object v6, v0

    .line 238
    .end local v0    # "token":Ljava/lang/Object;
    .local v6, "token":Ljava/lang/Object;
    :goto_7
    iget v0, v11, Landroid/os/Message;->workSourceUid:I

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v27

    .line 240
    .local v27, "origWorkSource":J
    :try_start_0
    iget-object v0, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    if-eqz v14, :cond_c

    .line 242
    :try_start_1
    invoke-interface {v14, v6, v11}, Landroid/os/Looper$Observer;->messageDispatched(Ljava/lang/Object;Landroid/os/Message;)V

    goto :goto_8

    .line 251
    :catchall_0
    move-exception v0

    move/from16 v31, v5

    move-object v2, v6

    move-wide/from16 v33, v9

    goto/16 :goto_f

    .line 245
    :catch_0
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v32, v6

    move-wide/from16 v33, v9

    goto/16 :goto_d

    .line 244
    :cond_c
    :goto_8
    if-eqz v22, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v29
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :cond_d
    move-wide/from16 v29, v3

    .line 251
    .local v29, "dispatchEnd":J
    :goto_9
    invoke-static/range {v27 .. v28}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 252
    cmp-long v0, v9, v3

    if-eqz v0, :cond_e

    .line 253
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_a

    .line 257
    :cond_e
    sget-object v0, Landroid/os/Looper;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    invoke-interface {v0, v7, v8}, Landroid/os/IOneTraceExt;->isEnable(J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 258
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 265
    :cond_f
    :goto_a
    iget-object v0, v1, Landroid/os/Looper;->mLooperExt:Landroid/os/ILooperExt;

    if-eqz v23, :cond_10

    const/4 v3, 0x1

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    :goto_b
    invoke-interface {v0, v11, v5, v3}, Landroid/os/ILooperExt;->stopLooperMessageMonitor(Landroid/os/Message;IZ)V

    .line 268
    const-string v0, "Looper"

    if-eqz v19, :cond_13

    .line 269
    iget-boolean v3, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    if-eqz v3, :cond_12

    .line 270
    iget-wide v3, v11, Landroid/os/Message;->when:J

    sub-long v3, v25, v3

    const-wide/16 v7, 0xa

    cmp-long v3, v3, v7

    if-gtz v3, :cond_11

    .line 271
    const-string v3, "Drained"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    move/from16 v31, v5

    move-object/from16 v32, v6

    move-wide/from16 v33, v9

    const/4 v2, 0x1

    goto :goto_c

    .line 270
    :cond_11
    move/from16 v31, v5

    move-object/from16 v32, v6

    move-wide/from16 v33, v9

    const/4 v2, 0x1

    goto :goto_c

    .line 275
    :cond_12
    iget-wide v7, v11, Landroid/os/Message;->when:J

    const-string v24, "delivery"

    move-wide/from16 v3, v17

    move/from16 v31, v5

    move-object v2, v6

    .end local v5    # "pid":I
    .end local v6    # "token":Ljava/lang/Object;
    .local v2, "token":Ljava/lang/Object;
    .local v31, "pid":I
    move-wide v5, v7

    move-object/from16 v32, v2

    const/4 v2, 0x1

    .end local v2    # "token":Ljava/lang/Object;
    .local v32, "token":Ljava/lang/Object;
    move-wide/from16 v7, v25

    move-wide/from16 v33, v9

    .end local v9    # "traceTag":J
    .local v33, "traceTag":J
    move-object/from16 v9, v24

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 278
    iput-boolean v2, v1, Landroid/os/Looper;->mSlowDeliveryDetected:Z

    goto :goto_c

    .line 268
    .end local v31    # "pid":I
    .end local v32    # "token":Ljava/lang/Object;
    .end local v33    # "traceTag":J
    .restart local v5    # "pid":I
    .restart local v6    # "token":Ljava/lang/Object;
    .restart local v9    # "traceTag":J
    :cond_13
    move/from16 v31, v5

    move-object/from16 v32, v6

    move-wide/from16 v33, v9

    const/4 v2, 0x1

    .line 282
    .end local v5    # "pid":I
    .end local v6    # "token":Ljava/lang/Object;
    .end local v9    # "traceTag":J
    .restart local v31    # "pid":I
    .restart local v32    # "token":Ljava/lang/Object;
    .restart local v33    # "traceTag":J
    :cond_14
    :goto_c
    if-eqz v20, :cond_16

    .line 283
    const-string v9, "dispatch"

    move-wide v3, v15

    move-wide/from16 v5, v25

    move-wide/from16 v7, v29

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    .line 286
    sub-long v3, v29, v25

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-gtz v3, :cond_15

    sub-long v3, v29, v25

    const-wide/16 v5, 0xfa0

    cmp-long v3, v3, v5

    if-lez v3, :cond_16

    iget-object v3, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 288
    const-string v4, "android.view.Choreographer$FrameHandler"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 289
    :cond_15
    const-string v3, "Quality"

    const-string v4, "07 01 blocked"

    invoke-static {v3, v4}, Landroid/util/Log;->p(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_16
    if-eqz v12, :cond_17

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<< Finished to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 300
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 301
    .local v3, "newIdent":J
    cmp-long v5, p1, v3

    if-eqz v5, :cond_18

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread identity changed from 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 304
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while dispatching to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 305
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v11, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-static {v0, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_18
    invoke-virtual {v11}, Landroid/os/Message;->recycleUnchecked()V

    .line 311
    return v2

    .line 251
    .end local v3    # "newIdent":J
    .end local v29    # "dispatchEnd":J
    .end local v31    # "pid":I
    .end local v32    # "token":Ljava/lang/Object;
    .end local v33    # "traceTag":J
    .restart local v5    # "pid":I
    .restart local v6    # "token":Ljava/lang/Object;
    .restart local v9    # "traceTag":J
    :catchall_1
    move-exception v0

    move/from16 v31, v5

    move-wide/from16 v33, v9

    move-object v2, v6

    .end local v5    # "pid":I
    .end local v6    # "token":Ljava/lang/Object;
    .end local v9    # "traceTag":J
    .restart local v31    # "pid":I
    .restart local v32    # "token":Ljava/lang/Object;
    .restart local v33    # "traceTag":J
    goto :goto_f

    .line 245
    .end local v31    # "pid":I
    .end local v32    # "token":Ljava/lang/Object;
    .end local v33    # "traceTag":J
    .restart local v5    # "pid":I
    .restart local v6    # "token":Ljava/lang/Object;
    .restart local v9    # "traceTag":J
    :catch_1
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v32, v6

    move-wide/from16 v33, v9

    .line 246
    .end local v5    # "pid":I
    .end local v6    # "token":Ljava/lang/Object;
    .end local v9    # "traceTag":J
    .local v0, "exception":Ljava/lang/Exception;
    .restart local v31    # "pid":I
    .restart local v32    # "token":Ljava/lang/Object;
    .restart local v33    # "traceTag":J
    :goto_d
    if-eqz v14, :cond_19

    .line 247
    move-object/from16 v2, v32

    .end local v32    # "token":Ljava/lang/Object;
    .restart local v2    # "token":Ljava/lang/Object;
    :try_start_2
    invoke-interface {v14, v2, v11, v0}, Landroid/os/Looper$Observer;->dispatchingThrewException(Ljava/lang/Object;Landroid/os/Message;Ljava/lang/Exception;)V

    goto :goto_e

    .line 246
    .end local v2    # "token":Ljava/lang/Object;
    .restart local v32    # "token":Ljava/lang/Object;
    :cond_19
    move-object/from16 v2, v32

    .line 249
    .end local v32    # "token":Ljava/lang/Object;
    .restart local v2    # "token":Ljava/lang/Object;
    :goto_e
    nop

    .end local v2    # "token":Ljava/lang/Object;
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "logging":Landroid/util/Printer;
    .end local v14    # "observer":Landroid/os/Looper$Observer;
    .end local v15    # "slowDispatchThresholdMs":J
    .end local v17    # "slowDeliveryThresholdMs":J
    .end local v19    # "logSlowDelivery":Z
    .end local v20    # "logSlowDispatch":Z
    .end local v21    # "needStartTime":Z
    .end local v22    # "needEndTime":Z
    .end local v23    # "activityThread":Landroid/app/ActivityThread;
    .end local v25    # "dispatchStart":J
    .end local v27    # "origWorkSource":J
    .end local v31    # "pid":I
    .end local v33    # "traceTag":J
    .end local p0    # "me":Landroid/os/Looper;
    .end local p1    # "ident":J
    .end local p3    # "thresholdOverride":I
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 251
    .end local v0    # "exception":Ljava/lang/Exception;
    .restart local v2    # "token":Ljava/lang/Object;
    .restart local v11    # "msg":Landroid/os/Message;
    .restart local v12    # "logging":Landroid/util/Printer;
    .restart local v14    # "observer":Landroid/os/Looper$Observer;
    .restart local v15    # "slowDispatchThresholdMs":J
    .restart local v17    # "slowDeliveryThresholdMs":J
    .restart local v19    # "logSlowDelivery":Z
    .restart local v20    # "logSlowDispatch":Z
    .restart local v21    # "needStartTime":Z
    .restart local v22    # "needEndTime":Z
    .restart local v23    # "activityThread":Landroid/app/ActivityThread;
    .restart local v25    # "dispatchStart":J
    .restart local v27    # "origWorkSource":J
    .restart local v31    # "pid":I
    .restart local v33    # "traceTag":J
    .restart local p0    # "me":Landroid/os/Looper;
    .restart local p1    # "ident":J
    .restart local p3    # "thresholdOverride":I
    :catchall_2
    move-exception v0

    :goto_f
    invoke-static/range {v27 .. v28}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 252
    cmp-long v3, v33, v3

    if-nez v3, :cond_1a

    .line 257
    sget-object v3, Landroid/os/Looper;->ONETRACE_EXT:Landroid/os/IOneTraceExt;

    invoke-interface {v3, v7, v8}, Landroid/os/IOneTraceExt;->isEnable(J)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 258
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_10

    .line 253
    :cond_1a
    invoke-static/range {v33 .. v34}, Landroid/os/Trace;->traceEnd(J)V

    .line 261
    :cond_1b
    :goto_10
    throw v0
.end method

.method public static whitelist myLooper()Landroid/os/Looper;
    .locals 1

    .line 375
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static whitelist myQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 384
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static whitelist prepare()V
    .locals 1

    .line 134
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 135
    return-void
.end method

.method private static greylist-max-o prepare(Z)V
    .locals 2
    .param p0, "quitAllowed"    # Z

    .line 138
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 142
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist prepareMainLooper()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 154
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist setObserver(Landroid/os/Looper$Observer;)V
    .locals 0
    .param p0, "observer"    # Landroid/os/Looper$Observer;

    .line 177
    sput-object p0, Landroid/os/Looper;->sObserver:Landroid/os/Looper$Observer;

    .line 178
    return-void
.end method

.method private static greylist-max-o showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .locals 4
    .param p0, "threshold"    # J
    .param p2, "measureStart"    # J
    .param p4, "measureEnd"    # J
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "msg"    # Landroid/os/Message;

    .line 359
    sub-long v0, p4, p2

    .line 360
    .local v0, "actualTime":J
    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    .line 361
    const/4 v2, 0x0

    return v2

    .line 364
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 366
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p7, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    const-string v3, "Looper"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 490
    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 503
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 507
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 508
    .local v0, "looperToken":J
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 509
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 510
    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    if-eqz v2, :cond_0

    .line 511
    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/MessageQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 513
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 514
    return-void
.end method

.method public whitelist getQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 478
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public whitelist getThread()Ljava/lang/Thread;
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public whitelist isCurrentThread()Z
    .locals 2

    .line 396
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist quit()V
    .locals 2

    .line 444
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 445
    return-void
.end method

.method public whitelist quitSafely()V
    .locals 2

    .line 460
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 461
    return-void
.end method

.method public whitelist setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .line 409
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 410
    return-void
.end method

.method public greylist-max-o setSlowLogThresholdMs(JJ)V
    .locals 0
    .param p1, "slowDispatchThresholdMs"    # J
    .param p3, "slowDeliveryThresholdMs"    # J

    .line 423
    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 424
    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 425
    return-void
.end method

.method public greylist setTraceTag(J)V
    .locals 0
    .param p1, "traceTag"    # J

    .line 415
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    .line 416
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 519
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    return-object v0
.end method
