.class public final Landroid/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignal$Transport;,
        Landroid/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private greylist-max-p mCancelInProgress:Z

.field private greylist-max-p mIsCanceled:Z

.field private greylist-max-p mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

.field private greylist-max-p mRemote:Landroid/os/ICancellationSignal;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static greylist-max-o createTransport()Landroid/os/ICancellationSignal;
    .locals 2

    .line 178
    new-instance v0, Landroid/os/CancellationSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CancellationSignal$Transport;-><init>(Landroid/os/CancellationSignal$Transport-IA;)V

    return-object v0
.end method

.method public static greylist-max-o fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;
    .locals 1
    .param p0, "transport"    # Landroid/os/ICancellationSignal;

    .line 190
    instance-of v0, p0, Landroid/os/CancellationSignal$Transport;

    if-eqz v0, :cond_0

    .line 191
    move-object v0, p0

    check-cast v0, Landroid/os/CancellationSignal$Transport;

    iget-object v0, v0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-p waitForCancelFinishedLocked()V
    .locals 1

    .line 161
    :goto_0
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_1
    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    goto :goto_1

    .line 167
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .locals 4

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_0

    .line 71
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    .line 74
    iput-boolean v0, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 75
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 76
    .local v0, "listener":Landroid/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 77
    .local v1, "remote":Landroid/os/ICancellationSignal;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 80
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 81
    :try_start_1
    invoke-interface {v0}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 85
    :try_start_2
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    goto :goto_2

    .line 90
    :goto_1
    monitor-enter p0

    .line 91
    :try_start_3
    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    throw v3

    .line 93
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 86
    :catch_0
    move-exception v3

    .line 90
    :cond_2
    :goto_2
    monitor-enter p0

    .line 91
    :try_start_5
    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit p0

    .line 94
    nop

    .line 95
    return-void

    .line 93
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2

    .line 77
    .end local v0    # "listener":Landroid/os/CancellationSignal$OnCancelListener;
    .end local v1    # "remote":Landroid/os/ICancellationSignal;
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

.method public whitelist isCanceled()Z
    .locals 1

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/CancellationSignal$OnCancelListener;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 117
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_0

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    iput-object p1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 121
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {p1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 126
    return-void

    .line 122
    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist-max-o setRemote(Landroid/os/ICancellationSignal;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/ICancellationSignal;

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 145
    iget-object v0, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    if-ne v0, p1, :cond_0

    .line 146
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 149
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist throwIfCanceled()V
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0
.end method
