.class public abstract Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.super Lcom/android/internal/infra/AbstractRemoteService;
.source "AbstractMultiplePendingRequestsRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mInitialCapacity:I

.field protected blacklist mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceInterface"    # Ljava/lang/String;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "userId"    # I
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "bindingFlags"    # I
    .param p8, "verbose"    # Z
    .param p9, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "I",
            "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
            "TS;>;",
            "Landroid/os/Handler;",
            "IZI)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    .local p5, "callback":Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;, "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<TS;>;"
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/infra/AbstractRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZ)V

    .line 54
    iput p9, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 98
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    invoke-super {p0, p1, p2}, Lcom/android/internal/infra/AbstractRemoteService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "initialCapacity="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mInitialCapacity:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 105
    .local v1, "size":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v2, "pendingRequests="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 107
    return-void

    .line 105
    .end local v1    # "size":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final blacklist handleBindFailure()V
    .locals 5

    .line 84
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 86
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending failure to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    .line 89
    .local v3, "request":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->onFailed()V

    .line 90
    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->finish()Z

    .line 87
    nop

    .end local v3    # "request":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    .end local v1    # "size":I
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist handleOnDestroy()V
    .locals 5

    .line 72
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 74
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Canceling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 76
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->cancel()Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 79
    .end local v1    # "size":I
    monitor-exit v0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist handlePendingRequestWhileUnBound(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
            "TS;TI;>;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    .local p1, "pendingRequest":Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;, "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    .line 115
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requests; last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist handlePendingRequests()V
    .locals 5

    .line 60
    .local p0, "this":Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;, "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<TS;TI;>;"
    iget-object v0, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 62
    .local v1, "size":I
    iget-boolean v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mVerbose:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending requests"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 64
    iget-object v3, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;

    invoke-virtual {v3}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;->run()V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->mPendingRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 67
    .end local v1    # "size":I
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
