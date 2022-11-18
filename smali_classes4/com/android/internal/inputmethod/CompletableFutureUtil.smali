.class public final Lcom/android/internal/inputmethod/CompletableFutureUtil;
.super Ljava/lang/Object;
.source "CompletableFutureUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist getBooleanResult(Ljava/util/concurrent/CompletableFuture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 159
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist getIntegerResult(Ljava/util/concurrent/CompletableFuture;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 172
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)Z"
        }
    .end annotation

    .line 197
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 199
    .local v0, "obj":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)TT;"
        }
    .end annotation

    .line 251
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)I"
        }
    .end annotation

    .line 223
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Integer;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 225
    .local v0, "obj":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .param p5, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")TT;"
        }
    .end annotation

    .line 71
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p5, :cond_0

    .line 72
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->tryRegisterFutureOrCancelImmediately(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, "needsToUnregister":Z
    :goto_0
    const/4 v1, 0x0

    .line 77
    .local v1, "interrupted":Z
    :goto_1
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p3, p4, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_1
    if-eqz v1, :cond_2

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 77
    :cond_2
    return-object v2

    .line 93
    :catchall_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    nop

    .line 99
    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_3
    if-eqz v1, :cond_4

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_4
    return-object v2

    .line 90
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_2
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 92
    nop

    .line 99
    if-eqz v0, :cond_5

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_5
    if-eqz v1, :cond_6

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 92
    :cond_6
    return-object v2

    .line 88
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 96
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 85
    :catch_2
    move-exception v3

    .line 86
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    :try_start_3
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    nop

    .line 99
    if-eqz v0, :cond_7

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_7
    if-eqz v1, :cond_8

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 87
    :cond_8
    return-object v2

    .line 78
    .end local v3    # "e":Ljava/util/concurrent/CancellationException;
    :catch_3
    move-exception v3

    .line 79
    .local v3, "e":Ljava/util/concurrent/CompletionException;
    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/CompletionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/util/concurrent/CancellationException;

    if-eqz v4, :cond_b

    .line 80
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    nop

    .line 99
    if-eqz v0, :cond_9

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_9
    if-eqz v1, :cond_a

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 81
    :cond_a
    return-object v2

    .line 83
    :cond_b
    :try_start_5
    invoke-virtual {v3}, Ljava/util/concurrent/CompletionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    nop

    .line 99
    if-eqz v0, :cond_c

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_c
    if-eqz v1, :cond_d

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 84
    :cond_d
    return-object v2

    .line 99
    .end local v3    # "e":Ljava/util/concurrent/CompletionException;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_e

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_e
    if-eqz v1, :cond_f

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 105
    :cond_f
    throw v2
.end method

.method private static blacklist getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 49
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 49
    :cond_0
    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 55
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    .line 51
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 52
    .local v2, "cause":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "interrupted":Z
    .end local p0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v0    # "interrupted":Z
    .restart local p0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 61
    :cond_1
    throw v1
.end method

.method private static blacklist logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 128
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 129
    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "errorString"    # Ljava/lang/String;

    .line 120
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was failed with an exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method private static blacklist logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 111
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " didn\'t respond in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 112
    :cond_1
    :goto_0
    return-void
.end method
