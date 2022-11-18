.class Landroid/media/CallbackUtil;
.super Ljava/lang/Object;
.source "CallbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/CallbackUtil$LazyListenerManager;,
        Landroid/media/CallbackUtil$DispatcherStub;,
        Landroid/media/CallbackUtil$CallbackMethod;,
        Landroid/media/CallbackUtil$ListenerInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CallbackUtil"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist addListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/util/Pair;
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;",
            "Ljava/util/function/Supplier<",
            "TS;>;",
            "Ljava/util/function/Consumer<",
            "TS;>;)",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;>;"
        }
    .end annotation

    .line 133
    .local p2, "listener":Ljava/lang/Object;, "TT;"
    .local p3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    .local p4, "dispatchStub":Ljava/lang/Object;, "TS;"
    .local p5, "newStub":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TS;>;"
    .local p6, "registerStub":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TS;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {p2, p3}, Landroid/media/CallbackUtil;->hasListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    if-nez p3, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p3, v0

    .line 144
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 146
    if-nez p4, :cond_1

    .line 148
    :try_start_0
    invoke-interface {p5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v0

    .line 152
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while creating stub in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallbackUtil"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-interface {p6, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 156
    :cond_2
    new-instance v0, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v0, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on a previously registered listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V
    .locals 6
    .param p1, "listenerLock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            "Landroid/media/CallbackUtil$CallbackMethod<",
            "TT;>;)V"
        }
    .end annotation

    .line 211
    .local p0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    .local p2, "callback":Landroid/media/CallbackUtil$CallbackMethod;, "Landroid/media/CallbackUtil$CallbackMethod<TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    monitor-enter p1

    .line 215
    if-eqz p0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 218
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 219
    .local v0, "listenersShallowCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 220
    invoke-static {}, Landroid/media/permission/ClearCallingIdentityContext;->create()Landroid/media/permission/SafeCloseable;

    move-result-object v1

    .line 221
    .local v1, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/CallbackUtil$ListenerInfo;

    .line 222
    .local v3, "info":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<TT;>;"
    iget-object v4, v3, Landroid/media/CallbackUtil$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2, v3}, Landroid/media/CallbackUtil$$ExternalSyntheticLambda0;-><init>(Landroid/media/CallbackUtil$CallbackMethod;Landroid/media/CallbackUtil$ListenerInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v3    # "info":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<TT;>;"
    goto :goto_0

    .line 224
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V

    .line 226
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_2
    return-void

    .line 220
    .restart local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2

    .line 216
    .end local v0    # "listenersShallowCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    .end local v1    # "ignored":Landroid/media/permission/SafeCloseable;
    :cond_4
    :goto_2
    :try_start_3
    monitor-exit p1

    return-void

    .line 219
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method static blacklist getListenerInfo(Ljava/lang/Object;Ljava/util/ArrayList;)Landroid/media/CallbackUtil$ListenerInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;)",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "listener":Ljava/lang/Object;, "TT;"
    .local p1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 68
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/CallbackUtil$ListenerInfo;

    .line 71
    .local v2, "info":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<TT;>;"
    iget-object v3, v2, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    if-ne v3, p0, :cond_1

    .line 72
    return-object v2

    .line 74
    .end local v2    # "info":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<TT;>;"
    :cond_1
    goto :goto_0

    .line 75
    :cond_2
    return-object v0
.end method

.method static blacklist hasListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 87
    .local p0, "listener":Ljava/lang/Object;, "TT;"
    .local p1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    invoke-static {p0, p1}, Landroid/media/CallbackUtil;->getListenerInfo(Ljava/lang/Object;Ljava/util/ArrayList;)Landroid/media/CallbackUtil$ListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic blacklist lambda$callListeners$0(Landroid/media/CallbackUtil$CallbackMethod;Landroid/media/CallbackUtil$ListenerInfo;)V
    .locals 1
    .param p0, "callback"    # Landroid/media/CallbackUtil$CallbackMethod;
    .param p1, "info"    # Landroid/media/CallbackUtil$ListenerInfo;

    .line 222
    iget-object v0, p1, Landroid/media/CallbackUtil$ListenerInfo;->mListener:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/media/CallbackUtil$CallbackMethod;->callbackMethod(Ljava/lang/Object;)V

    return-void
.end method

.method static blacklist removeListener(Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Consumer;)Landroid/util/Pair;
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;",
            "Ljava/util/function/Consumer<",
            "TS;>;)",
            "Landroid/util/Pair<",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;TS;>;"
        }
    .end annotation

    .line 182
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    .local p2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    .local p3, "dispatchStub":Ljava/lang/Object;, "TS;"
    .local p4, "unregisterStub":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TS;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p1, p2}, Landroid/media/CallbackUtil;->removeListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 190
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "on an unregistered listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist removeListener(Ljava/lang/Object;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 99
    .local p0, "listener":Ljava/lang/Object;, "TT;"
    .local p1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/CallbackUtil$ListenerInfo<TT;>;>;"
    invoke-static {p0, p1}, Landroid/media/CallbackUtil;->getListenerInfo(Ljava/lang/Object;Ljava/util/ArrayList;)Landroid/media/CallbackUtil$ListenerInfo;

    move-result-object v0

    .line 100
    .local v0, "infoToRemove":Landroid/media/CallbackUtil$ListenerInfo;, "Landroid/media/CallbackUtil$ListenerInfo<TT;>;"
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    const/4 v1, 0x1

    return v1

    .line 104
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
