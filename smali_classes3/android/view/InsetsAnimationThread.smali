.class public Landroid/view/InsetsAnimationThread;
.super Landroid/os/HandlerThread;
.source "InsetsAnimationThread.java"


# static fields
.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sInstance:Landroid/view/InsetsAnimationThread;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 34
    const-string v0, "InsetsAnimations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private static blacklist ensureThreadLocked()V
    .locals 3

    .line 38
    sget-object v0, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/view/InsetsAnimationThread;

    invoke-direct {v0}, Landroid/view/InsetsAnimationThread;-><init>()V

    sput-object v0, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    .line 40
    invoke-virtual {v0}, Landroid/view/InsetsAnimationThread;->start()V

    .line 41
    sget-object v0, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    .line 42
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    invoke-virtual {v1}, Landroid/view/InsetsAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/view/InsetsAnimationThread;->sHandler:Landroid/os/Handler;

    .line 44
    :cond_0
    return-void
.end method

.method public static blacklist get()Landroid/view/InsetsAnimationThread;
    .locals 2

    .line 58
    const-class v0, Landroid/view/InsetsAnimationThread;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {}, Landroid/view/InsetsAnimationThread;->ensureThreadLocked()V

    .line 60
    sget-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .locals 2

    .line 65
    const-class v0, Landroid/view/InsetsAnimationThread;

    monitor-enter v0

    .line 66
    :try_start_0
    invoke-static {}, Landroid/view/InsetsAnimationThread;->ensureThreadLocked()V

    .line 67
    sget-object v1, Landroid/view/InsetsAnimationThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist release()V
    .locals 2

    .line 47
    const-class v0, Landroid/view/InsetsAnimationThread;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    if-nez v1, :cond_0

    .line 49
    monitor-exit v0

    return-void

    .line 51
    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 52
    const/4 v1, 0x0

    sput-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    .line 53
    sput-object v1, Landroid/view/InsetsAnimationThread;->sHandler:Landroid/os/Handler;

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
