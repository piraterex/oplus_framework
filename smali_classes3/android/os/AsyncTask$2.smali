.class Landroid/os/AsyncTask$2;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 9
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "e"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 232
    const-string v0, "AsyncTask"

    const-string v1, "Exceeded ThreadPoolExecutor pool size"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {v0}, Landroid/os/AsyncTask;->-$$Nest$sfputsBackupExecutorQueue(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 238
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutorQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v7

    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->-$$Nest$sfputsBackupExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 241
    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 243
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {}, Landroid/os/AsyncTask;->-$$Nest$sfgetsBackupExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
