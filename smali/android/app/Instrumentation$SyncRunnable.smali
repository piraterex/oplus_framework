.class final Landroid/app/Instrumentation$SyncRunnable;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private greylist-max-o mComplete:Z

.field private final greylist-max-o mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 2361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2362
    iput-object p1, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    .line 2363
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 2366
    iget-object v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2367
    monitor-enter p0

    .line 2368
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z

    .line 2369
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2370
    monitor-exit p0

    .line 2371
    return-void

    .line 2370
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o waitForComplete()V
    .locals 1

    .line 2374
    monitor-enter p0

    .line 2375
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/app/Instrumentation$SyncRunnable;->mComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2377
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2379
    :goto_1
    goto :goto_0

    .line 2378
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2381
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 2382
    return-void

    .line 2381
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
