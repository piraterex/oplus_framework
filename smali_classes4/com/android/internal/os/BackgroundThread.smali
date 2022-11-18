.class public final Lcom/android/internal/os/BackgroundThread;
.super Landroid/os/HandlerThread;
.source "BackgroundThread.java"


# static fields
.field private static final blacklist SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final blacklist SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static blacklist sInstance:Lcom/android/internal/os/BackgroundThread;


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    .line 38
    const-string v0, "android.bg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method private static blacklist ensureThreadLocked()V
    .locals 5

    .line 42
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/internal/os/BackgroundThread;

    invoke-direct {v0}, Lcom/android/internal/os/BackgroundThread;-><init>()V

    sput-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    .line 44
    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->start()V

    .line 45
    sget-object v0, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 46
    .local v0, "looper":Landroid/os/Looper;
    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 47
    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 49
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 50
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/android/internal/os/BackgroundThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 52
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public static blacklist get()Lcom/android/internal/os/BackgroundThread;
    .locals 2

    .line 55
    const-class v0, Lcom/android/internal/os/BackgroundThread;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadLocked()V

    .line 57
    sget-object v1, Lcom/android/internal/os/BackgroundThread;->sInstance:Lcom/android/internal/os/BackgroundThread;

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 69
    const-class v0, Lcom/android/internal/os/BackgroundThread;

    monitor-enter v0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadLocked()V

    .line 71
    sget-object v1, Lcom/android/internal/os/BackgroundThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .locals 2

    .line 62
    const-class v0, Lcom/android/internal/os/BackgroundThread;

    monitor-enter v0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->ensureThreadLocked()V

    .line 64
    sget-object v1, Lcom/android/internal/os/BackgroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
