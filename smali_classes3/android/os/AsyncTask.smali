.class public abstract Landroid/os/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AsyncTask$AsyncTaskResult;,
        Landroid/os/AsyncTask$WorkerRunnable;,
        Landroid/os/AsyncTask$InternalHandler;,
        Landroid/os/AsyncTask$Status;,
        Landroid/os/AsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist BACKUP_POOL_SIZE:I = 0x5

.field private static final greylist-max-o CORE_POOL_SIZE:I = 0x1

.field private static final greylist-max-o KEEP_ALIVE_SECONDS:I = 0x3

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final greylist-max-o MAXIMUM_POOL_SIZE:I = 0x14

.field private static final greylist-max-o MESSAGE_POST_PROGRESS:I = 0x2

.field private static final greylist-max-o MESSAGE_POST_RESULT:I = 0x1

.field public static final whitelist SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static blacklist sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static blacklist sBackupExecutorQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile greylist sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static greylist-max-o sHandler:Landroid/os/AsyncTask$InternalHandler;

.field private static final blacklist sRunOnSerialPolicy:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static final greylist-max-o sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final greylist-max-o mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private volatile greylist mStatus:Landroid/os/AsyncTask$Status;

.field private final greylist mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final greylist mWorker:Landroid/os/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCancelled(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaskInvoked(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpostResult(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mpostResultIfNotInvoked(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBackupExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBackupExecutorQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->sBackupExecutorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Landroid/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBackupExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    sput-object p0, Landroid/os/AsyncTask;->sBackupExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsBackupExecutorQueue(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    sput-object p0, Landroid/os/AsyncTask;->sBackupExecutorQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 10

    .line 216
    new-instance v7, Landroid/os/AsyncTask$1;

    invoke-direct {v7}, Landroid/os/AsyncTask$1;-><init>()V

    sput-object v7, Landroid/os/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 229
    new-instance v8, Landroid/os/AsyncTask$2;

    invoke-direct {v8}, Landroid/os/AsyncTask$2;-><init>()V

    sput-object v8, Landroid/os/AsyncTask;->sRunOnSerialPolicy:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 260
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0x14

    const-wide/16 v3, 0x3

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 263
    .local v0, "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 264
    sput-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 274
    .end local v0    # "threadPoolExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    new-instance v0, Landroid/os/AsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/AsyncTask$SerialExecutor;-><init>(Landroid/os/AsyncTask$SerialExecutor-IA;)V

    sput-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 280
    sput-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 365
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/Looper;

    invoke-direct {p0, v0}, Landroid/os/AsyncTask;-><init>(Landroid/os/Looper;)V

    .line 366
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 374
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/os/AsyncTask;-><init>(Landroid/os/Looper;)V

    .line 375
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "callbackLooper"    # Landroid/os/Looper;

    .line 382
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    .line 291
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 292
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 383
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_1

    .line 384
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/AsyncTask;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    .line 385
    :goto_1
    iput-object v0, p0, Landroid/os/AsyncTask;->mHandler:Landroid/os/Handler;

    .line 387
    new-instance v0, Landroid/os/AsyncTask$3;

    invoke-direct {v0, p0}, Landroid/os/AsyncTask$3;-><init>(Landroid/os/AsyncTask;)V

    iput-object v0, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    .line 406
    new-instance v1, Landroid/os/AsyncTask$4;

    invoke-direct {v1, p0, v0}, Landroid/os/AsyncTask$4;-><init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 421
    return-void
.end method

.method public static whitelist execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 742
    sget-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method

.method private greylist-max-o finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 768
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 773
    :goto_0
    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    .line 774
    return-void
.end method

.method private greylist-max-o getHandler()Landroid/os/Handler;
    .locals 1

    .line 352
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static greylist-max-o getMainHandler()Landroid/os/Handler;
    .locals 3

    .line 343
    const-class v0, Landroid/os/AsyncTask;

    monitor-enter v0

    .line 344
    :try_start_0
    sget-object v1, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    if-nez v1, :cond_0

    .line 345
    new-instance v1, Landroid/os/AsyncTask$InternalHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/AsyncTask$InternalHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    .line 347
    :cond_0
    sget-object v1, Landroid/os/AsyncTask;->sHandler:Landroid/os/AsyncTask$InternalHandler;

    monitor-exit v0

    return-object v1

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 432
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-direct {p0}, Landroid/os/AsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 434
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    return-object p1
.end method

.method private greylist-max-o postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 424
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 425
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 426
    invoke-direct {p0, p1}, Landroid/os/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_0
    return-void
.end method

.method public static greylist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .line 358
    sput-object p0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 359
    return-void
.end method


# virtual methods
.method public final whitelist cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .line 602
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 603
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs whitelist execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 671
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Landroid/os/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs whitelist executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 710
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 711
    sget-object v0, Landroid/os/AsyncTask$5;->$SwitchMap$android$os$AsyncTask$Status:[I

    iget-object v1, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 716
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    :goto_0
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iput-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    .line 724
    invoke-virtual {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 726
    iget-object v0, p0, Landroid/os/AsyncTask;->mWorker:Landroid/os/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Landroid/os/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 727
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 729
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final whitelist get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 618
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 638
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    .line 444
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mStatus:Landroid/os/AsyncTask$Status;

    return-object v0
.end method

.method public final whitelist isCancelled()Z
    .locals 1

    .line 565
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Landroid/os/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected whitelist onCancelled()V
    .locals 0

    .line 552
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected whitelist onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 534
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 535
    return-void
.end method

.method protected whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 500
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected whitelist onPreExecute()V
    .locals 0

    .line 480
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs whitelist onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 515
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs whitelist publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 761
    .local p0, "this":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    invoke-direct {p0}, Landroid/os/AsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroid/os/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Landroid/os/AsyncTask$AsyncTaskResult;-><init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 763
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 765
    :cond_0
    return-void
.end method
