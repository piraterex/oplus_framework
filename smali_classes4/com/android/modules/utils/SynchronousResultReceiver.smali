.class public final Lcom/android/modules/utils/SynchronousResultReceiver;
.super Ljava/lang/Object;
.source "SynchronousResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;,
        Lcom/android/modules/utils/SynchronousResultReceiver$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/modules/utils/SynchronousResultReceiver<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist QUEUE_THRESHOLD:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "SynchronousResultReceiver"

.field private static final blacklist sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/modules/utils/SynchronousResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private blacklist mIsCompleted:Z

.field private final blacklist mLocal:Z

.field blacklist mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetFuture(Lcom/android/modules/utils/SynchronousResultReceiver;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 263
    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$1;

    invoke-direct {v0}, Lcom/android/modules/utils/SynchronousResultReceiver$1;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 73
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mLocal:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    .line 76
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 257
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mLocal:Z

    .line 259
    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/modules/utils/ISynchronousResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/modules/utils/ISynchronousResultReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    .line 261
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/modules/utils/SynchronousResultReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist complete(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    .local p1, "result":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    iget-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    if-nez v0, :cond_2

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    .line 156
    iget-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mLocal:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    .line 162
    .local v0, "rr":Lcom/android/modules/utils/ISynchronousResultReceiver;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v0, :cond_1

    .line 165
    :try_start_1
    invoke-interface {v0, p1}, Lcom/android/modules/utils/ISynchronousResultReceiver;->send(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SynchronousResultReceiver"

    const-string v3, "Failed to complete future"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v0    # "rr":Lcom/android/modules/utils/ISynchronousResultReceiver;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .line 162
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 153
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Receiver has already been completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist get()Lcom/android/modules/utils/SynchronousResultReceiver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/modules/utils/SynchronousResultReceiver<",
            "TT;>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    new-instance v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    invoke-direct {v1}, Lcom/android/modules/utils/SynchronousResultReceiver;-><init>()V

    monitor-exit v0

    return-object v1

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 68
    .local v1, "receiver":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-direct {v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->resetLocked()V

    .line 69
    monitor-exit v0

    return-object v1

    .line 70
    .end local v1    # "receiver":Lcom/android/modules/utils/SynchronousResultReceiver;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    monitor-exit v0

    return-object v1

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist releaseLocked()V
    .locals 3

    .line 80
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 81
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 82
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method private blacklist resetLocked()V
    .locals 1

    .line 88
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    .line 90
    return-void
.end method


# virtual methods
.method public blacklist awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;
    .locals 7
    .param p1, "timeout"    # Ljava/time/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    const-string v0, "Null timeout is not allowed"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 207
    .local v0, "startWaitNanoTime":J
    move-object v2, p1

    .line 208
    .local v2, "remainingTime":Ljava/time/Duration;
    :goto_0
    invoke-virtual {v2}, Ljava/time/Duration;->isNegative()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    :try_start_0
    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    .line 211
    .local v3, "result":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->releaseLocked()V

    .line 213
    monitor-exit v4

    return-object v3

    .line 214
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "startWaitNanoTime":J
    .end local v2    # "remainingTime":Ljava/time/Duration;
    .end local p0    # "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    .end local p1    # "timeout":Ljava/time/Duration;
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    .end local v3    # "result":Lcom/android/modules/utils/SynchronousResultReceiver$Result;, "Lcom/android/modules/utils/SynchronousResultReceiver$Result<TT;>;"
    .restart local v0    # "startWaitNanoTime":J
    .restart local v2    # "remainingTime":Ljava/time/Duration;
    .restart local p0    # "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    .restart local p1    # "timeout":Ljava/time/Duration;
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/InterruptedException;
    nop

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v4

    .line 221
    invoke-virtual {p1, v4}, Ljava/time/Duration;->minus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v2

    .line 223
    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 215
    :catch_1
    move-exception v3

    .line 217
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Error receiving response"

    invoke-direct {v4, v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 225
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_0
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 226
    :try_start_3
    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->releaseLocked()V

    .line 227
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3

    .line 227
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 245
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propagateException(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/RuntimeException;

    .line 188
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    const-string v0, "RuntimeException cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    invoke-direct {v0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Ljava/lang/RuntimeException;)V

    invoke-direct {p0, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->complete(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V

    .line 190
    return-void
.end method

.method public blacklist send(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    .local p1, "resultData":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    invoke-direct {v0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->complete(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V

    .line 180
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 249
    .local p0, "this":Lcom/android/modules/utils/SynchronousResultReceiver;, "Lcom/android/modules/utils/SynchronousResultReceiver<TT;>;"
    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;-><init>(Lcom/android/modules/utils/SynchronousResultReceiver;Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver-IA;)V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    invoke-interface {v0}, Lcom/android/modules/utils/ISynchronousResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 254
    monitor-exit p0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
