.class public Lcom/android/internal/infra/ServiceConnector$Impl;
.super Ljava/util/ArrayDeque;
.source "ServiceConnector.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/ArrayDeque<",
        "Lcom/android/internal/infra/ServiceConnector$Job<",
        "TI;*>;>;",
        "Lcom/android/internal/infra/ServiceConnector<",
        "TI;>;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final blacklist DEBUG:Z = false

.field private static final blacklist DEFAULT_DISCONNECT_TIMEOUT_MS:J = 0x3a98L

.field private static final blacklist DEFAULT_REQUEST_TIMEOUT_MS:J = 0x7530L

.field static final blacklist LOG_TAG:Ljava/lang/String; = "ServiceConnector.Impl"


# instance fields
.field private final blacklist mBinderAsInterface:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;"
        }
    .end annotation
.end field

.field private blacklist mBinding:Z

.field private final blacklist mBindingFlags:I

.field protected final blacklist mContext:Landroid/content/Context;

.field protected final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private final blacklist mMainHandler:Landroid/os/Handler;

.field private final blacklist mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private blacklist mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TI;>;"
        }
    .end annotation
.end field

.field private volatile blacklist mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final blacklist mTimeoutDisconnect:Ljava/lang/Runnable;

.field private blacklist mUnbinding:Z

.field private final blacklist mUnfinishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmQueue(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfinishedJobs(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeScheduleUnbindTimeout(Lcom/android/internal/infra/ServiceConnector$Impl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "bindingFlags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;)V"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p5, "binderAsInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TI;>;"
    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    .line 254
    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    .line 258
    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 259
    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 271
    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 272
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 273
    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 275
    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 294
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 295
    iput-object p2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 296
    iput p3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    .line 297
    iput-object p5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 300
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 301
    return-void
.end method

.method private blacklist cancelTimeout()V
    .locals 2

    .line 475
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    return-void
.end method

.method static blacklist castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BASE:",
            "Ljava/lang/Object;",
            "T:TBASE;>(TBASE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 491
    .local p0, "instance":Ljava/lang/Object;, "TBASE;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist dispatchOnBinderDied()V
    .locals 1

    .line 675
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 676
    .local v0, "serviceLifecycleCallbacks":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    if-eqz v0, :cond_0

    .line 677
    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onBinderDied()V

    .line 679
    :cond_0
    return-void
.end method

.method private blacklist dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1
    .param p2, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "service":Landroid/os/IInterface;, "TI;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 374
    .local v0, "serviceLifecycleCallbacks":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    if-eqz v0, :cond_1

    .line 375
    if-eqz p2, :cond_0

    .line 376
    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onConnected(Landroid/os/IInterface;)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onDisconnected(Landroid/os/IInterface;)V

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 382
    return-void
.end method

.method private blacklist enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;)V"
        }
    .end annotation

    .line 436
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;*>;"
    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to post a job to handler. Likely "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    .line 439
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 441
    :cond_0
    return-void
.end method

.method private blacklist enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)Z"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 445
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;Lcom/android/internal/infra/ServiceConnector$Job;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private blacklist isBound()Z
    .locals 1

    .line 546
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$connect$0(Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0
    .param p0, "s"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 424
    return-object p0
.end method

.method private blacklist logTrace()V
    .locals 3

    .line 745
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ServiceConnector.Impl"

    const-string v2, "See stacktrace"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    return-void
.end method

.method private blacklist maybeScheduleUnbindTimeout()V
    .locals 1

    .line 528
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->scheduleUnbindTimeout()V

    .line 531
    :cond_0
    return-void
.end method

.method private blacklist onTimeout()V
    .locals 0

    .line 690
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 691
    return-void
.end method

.method private blacklist processQueue()V
    .locals 5

    .line 500
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    .local v1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    if-eqz v0, :cond_3

    .line 501
    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 503
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 504
    .local v2, "service":Landroid/os/IInterface;, "TI;"
    if-nez v2, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 511
    .local v3, "result":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 512
    iget-boolean v4, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    if-eqz v4, :cond_1

    .line 513
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v4, v0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_1

    .line 516
    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    .end local v2    # "service":Landroid/os/IInterface;, "TI;"
    .end local v3    # "result":Ljava/lang/Object;
    :cond_2
    :goto_1
    goto :goto_2

    .line 519
    :catchall_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    .line 522
    .end local v0    # "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    goto :goto_0

    .line 524
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    .line 525
    return-void
.end method

.method private blacklist scheduleUnbindTimeout()V
    .locals 4

    .line 537
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getAutoDisconnectTimeoutMs()J

    move-result-wide v0

    .line 538
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 543
    :cond_0
    return-void
.end method

.method private blacklist stateToString()Ljava/lang/String;
    .locals 1

    .line 733
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "Binding..."

    return-object v0

    .line 735
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_1

    .line 736
    const-string v0, "Unbinding..."

    return-object v0

    .line 737
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    const-string v0, "Bound"

    return-object v0

    .line 740
    :cond_2
    const-string v0, "Unbound"

    return-object v0
.end method


# virtual methods
.method protected blacklist bindService(Landroid/content/ServiceConnection;)Z
    .locals 4
    .param p1, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 343
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    or-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method protected blacklist binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public whitelist binderDied()V
    .locals 1

    .line 669
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    .line 671
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnBinderDied()V

    .line 672
    return-void
.end method

.method protected blacklist cancelPendingJobs()V
    .locals 3

    .line 611
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    .local v1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    if-eqz v0, :cond_1

    .line 615
    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 616
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    if-eqz v0, :cond_0

    .line 617
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    .line 619
    .end local v0    # "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :cond_0
    goto :goto_0

    .line 620
    :cond_1
    return-void
.end method

.method blacklist completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V
    .locals 4
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 479
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<**>;"
    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 480
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    const/4 v1, 0x0

    .line 481
    .local v1, "taskChanged":Z
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    .line 484
    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceConnector.Impl"

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    :goto_0
    return-void
.end method

.method public declared-synchronized blacklist connect()Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TI;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-nez v0, :cond_1

    .line 423
    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 424
    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    .line 425
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 426
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    if-eqz v0, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 429
    .end local p0    # "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 432
    .end local v0    # "service":Landroid/os/IInterface;, "TI;"
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 712
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-string v0, "  "

    .line 713
    .local v0, "tab":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "ServiceConnector:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 714
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 715
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    .line 716
    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 717
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 718
    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 719
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 720
    const-string v2, "Pending jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 727
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    .line 728
    const-string v2, "Unfinished async jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    .line 729
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 730
    return-void
.end method

.method blacklist enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)V"
        }
    .end annotation

    .line 452
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;*>;"
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 453
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is unbinding. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    goto :goto_0

    .line 461
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-nez v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    goto :goto_0

    .line 465
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    .line 469
    :cond_4
    :goto_0
    return-void
.end method

.method protected blacklist getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 317
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method protected blacklist getJobHandler()Landroid/os/Handler;
    .locals 1

    .line 307
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected blacklist getRequestTimeoutMs()J
    .locals 2

    .line 330
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method synthetic blacklist lambda$enqueue$1$com-android-internal-infra-ServiceConnector$Impl(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .locals 0
    .param p1, "job"    # Lcom/android/internal/infra/ServiceConnector$Job;

    .line 445
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 661
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    .line 662
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 624
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    const-string v1, "ServiceConnector.Impl"

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring onServiceConnected due to ongoing unbinding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void

    .line 631
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    .line 632
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 633
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 635
    :try_start_0
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    goto :goto_0

    .line 636
    :catch_0
    move-exception v2

    .line 637
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 640
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    .line 641
    return-void
.end method

.method protected blacklist onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0
    .param p2, "isConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    .line 387
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "service":Landroid/os/IInterface;, "TI;"
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 648
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 649
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 650
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    if-eqz v0, :cond_0

    .line 651
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 652
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 654
    :cond_0
    return-void
.end method

.method protected blacklist onServiceUnbound()V
    .locals 0

    .line 369
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    return-void
.end method

.method public blacklist post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object v0

    return-object v0
.end method

.method public blacklist postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;Ljava/util/concurrent/CompletableFuture<TR;>;>;"
    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    .line 414
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    .line 416
    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 417
    return-object v0
.end method

.method public bridge synthetic blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .locals 0

    .line 245
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object p1

    return-object p1
.end method

.method public blacklist postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TR;>;"
        }
    .end annotation

    .line 405
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<TI;TR;>;"
    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    .line 406
    .local v0, "task":Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>.CompletionAwareJob<TI;TR;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    .line 407
    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    .line 408
    return-object v0
.end method

.method public whitelist test-api run()V
    .locals 0

    .line 683
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onTimeout()V

    .line 684
    return-void
.end method

.method public blacklist run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)Z"
        }
    .end annotation

    .line 395
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "job":Lcom/android/internal/infra/ServiceConnector$VoidJob;, "Lcom/android/internal/infra/ServiceConnector$VoidJob<TI;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    return v0
.end method

.method public blacklist setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation

    .line 560
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    .local p1, "callbacks":Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;, "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<TI;>;"
    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    .line 561
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 695
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceConnector@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 698
    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 699
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_0

    .line 700
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pending job(s)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 706
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unfinished async job(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist unbind()V
    .locals 2

    .line 554
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 555
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method blacklist unbindJobThread()V
    .locals 9

    .line 564
    .local p0, "this":Lcom/android/internal/infra/ServiceConnector$Impl;, "Lcom/android/internal/infra/ServiceConnector$Impl<TI;>;"
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    .line 565
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 569
    .local v0, "service":Landroid/os/IInterface;, "TI;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 570
    .local v3, "wasBound":Z
    :goto_0
    if-nez v3, :cond_1

    iget-boolean v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v4, :cond_2

    .line 572
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    goto :goto_1

    .line 573
    :catch_0
    move-exception v4

    .line 576
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "ServiceConnector.Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unbind: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 580
    invoke-direct {p0, v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    .line 586
    :try_start_1
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 589
    goto :goto_2

    .line 587
    :catch_1
    move-exception v5

    .line 588
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ServiceConnector.Impl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error unlinking to death"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    .line 593
    :cond_3
    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    .line 594
    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    .line 595
    monitor-enter p0

    .line 596
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v2, :cond_4

    .line 597
    invoke-virtual {v2, v1}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    .line 598
    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    .line 600
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    .line 604
    if-eqz v3, :cond_5

    .line 605
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceUnbound()V

    .line 607
    :cond_5
    return-void

    .line 600
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
