.class abstract Landroid/accounts/AccountManager$Future2Task;
.super Landroid/accounts/AccountManager$BaseFutureTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Future2Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/accounts/AccountManager$BaseFutureTask<",
        "TT;>;",
        "Landroid/accounts/AccountManagerFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/accounts/AccountManager;


# direct methods
.method public constructor blacklist <init>(Landroid/accounts/AccountManager;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 2552
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .local p3, "callback":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<TT;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    .line 2553
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManager$BaseFutureTask;-><init>(Landroid/accounts/AccountManager;Landroid/os/Handler;)V

    .line 2554
    iput-object p3, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 2555
    return-void
.end method

.method private greylist-max-o internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2576
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2577
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-$$Nest$mensureNotOnMainThread(Landroid/accounts/AccountManager;)V

    .line 2580
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2581
    :try_start_0
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2607
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2581
    return-object v1

    .line 2583
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Landroid/accounts/AccountManager$Future2Task;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2607
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2583
    return-object v1

    .line 2607
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2591
    :catch_0
    move-exception v1

    .line 2592
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 2593
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_6

    .line 2595
    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    if-nez v3, :cond_5

    .line 2597
    instance-of v3, v2, Landroid/accounts/AuthenticatorException;

    if-nez v3, :cond_4

    .line 2599
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_3

    .line 2601
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_2

    .line 2602
    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    .end local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2604
    .restart local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2600
    .restart local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_3
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    .end local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2598
    .restart local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_4
    move-object v3, v2

    check-cast v3, Landroid/accounts/AuthenticatorException;

    .end local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2596
    .restart local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_5
    new-instance v3, Landroid/accounts/AuthenticatorException;

    invoke-direct {v3, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3

    .line 2594
    .restart local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :cond_6
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    .end local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .end local p1    # "timeout":Ljava/lang/Long;
    .end local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2607
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local p0    # "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    .restart local p1    # "timeout":Ljava/lang/Long;
    .restart local p2    # "unit":Ljava/util/concurrent/TimeUnit;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2608
    throw v1

    .line 2589
    :catch_1
    move-exception v1

    goto :goto_1

    .line 2587
    :catch_2
    move-exception v1

    goto :goto_1

    .line 2585
    :catch_3
    move-exception v1

    .line 2607
    :goto_1
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->cancel(Z)Z

    .line 2608
    nop

    .line 2609
    new-instance v0, Landroid/accounts/OperationCanceledException;

    invoke-direct {v0}, Landroid/accounts/OperationCanceledException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected whitelist test-api done()V
    .locals 1

    .line 2559
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    iget-object v0, p0, Landroid/accounts/AccountManager$Future2Task;->mCallback:Landroid/accounts/AccountManagerCallback;

    if-eqz v0, :cond_0

    .line 2560
    new-instance v0, Landroid/accounts/AccountManager$Future2Task$1;

    invoke-direct {v0, p0}, Landroid/accounts/AccountManager$Future2Task$1;-><init>(Landroid/accounts/AccountManager$Future2Task;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$Future2Task;->postRunnableToHandler(Ljava/lang/Runnable;)V

    .line 2567
    :cond_0
    return-void
.end method

.method public whitelist getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2615
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 2621
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/accounts/AccountManager$Future2Task;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o start()Landroid/accounts/AccountManager$Future2Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/accounts/AccountManager$Future2Task<",
            "TT;>;"
        }
    .end annotation

    .line 2570
    .local p0, "this":Landroid/accounts/AccountManager$Future2Task;, "Landroid/accounts/AccountManager$Future2Task<TT;>;"
    invoke-virtual {p0}, Landroid/accounts/AccountManager$Future2Task;->startTask()V

    .line 2571
    return-object p0
.end method
