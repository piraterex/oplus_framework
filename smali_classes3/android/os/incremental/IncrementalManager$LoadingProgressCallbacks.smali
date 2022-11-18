.class Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;
.super Landroid/os/incremental/IStorageLoadingProgressListener$Stub;
.source "IncrementalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IncrementalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingProgressCallbacks"
.end annotation


# instance fields
.field private final blacklist mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 334
    invoke-direct {p0}, Landroid/os/incremental/IStorageLoadingProgressListener$Stub;-><init>()V

    .line 335
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V
    .locals 3
    .param p1, "storage"    # Landroid/os/incremental/IncrementalStorage;

    .line 340
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    .line 342
    .local v0, "storageId":I
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 344
    .local v2, "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    if-nez v2, :cond_0

    .line 346
    return-void

    .line 349
    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 350
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->unregisterLoadingProgressListener()Z

    .line 351
    return-void

    .line 344
    .end local v2    # "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public blacklist onStorageLoadingProgressChanged(IF)V
    .locals 5
    .param p1, "storageId"    # I
    .param p2, "progress"    # F

    .line 377
    iget-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 379
    .local v1, "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    if-nez v1, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 386
    .local v0, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 387
    nop

    .line 388
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 390
    .local v3, "callback":Landroid/content/pm/IPackageLoadingProgressCallback;
    :try_start_1
    invoke-interface {v3, p2}, Landroid/content/pm/IPackageLoadingProgressCallback;->onPackageLoadingProgressChanged(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 392
    goto :goto_1

    .line 391
    :catch_0
    move-exception v4

    .line 386
    .end local v3    # "callback":Landroid/content/pm/IPackageLoadingProgressCallback;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 395
    return-void

    .line 379
    .end local v0    # "n":I
    .end local v1    # "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist registerCallback(Landroid/os/incremental/IncrementalStorage;Landroid/content/pm/IPackageLoadingProgressCallback;)Z
    .locals 5
    .param p1, "storage"    # Landroid/os/incremental/IncrementalStorage;
    .param p2, "callback"    # Landroid/content/pm/IPackageLoadingProgressCallback;

    .line 355
    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    .line 356
    .local v0, "storageId":I
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    .line 357
    :try_start_0
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    .line 358
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 359
    .local v2, "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    if-nez v2, :cond_0

    .line 360
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 361
    iget-object v3, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    :cond_0
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 366
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 368
    monitor-exit v1

    return v4

    .line 370
    .end local v2    # "callbacksForStorage":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/content/pm/IPackageLoadingProgressCallback;>;"
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v1

    return v1

    .line 370
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
