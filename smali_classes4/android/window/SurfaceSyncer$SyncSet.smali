.class Landroid/window/SurfaceSyncer$SyncSet;
.super Ljava/lang/Object;
.source "SurfaceSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SurfaceSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncSet"
.end annotation


# instance fields
.field private blacklist mFinished:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMergedSyncSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/window/SurfaceSyncer$SyncSet;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingSyncs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSyncId:I

.field private blacklist mSyncReady:Z

.field private blacklist mSyncRequestCompleteCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSyncTargets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/window/SurfaceSyncer$SyncTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingSyncs(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncer$SyncSet;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckIfSyncIsComplete(Landroid/window/SurfaceSyncer$SyncSet;)V
    .locals 0

    invoke-direct {p0}, Landroid/window/SurfaceSyncer$SyncSet;->checkIfSyncIsComplete()V

    return-void
.end method

.method private constructor blacklist <init>(ILjava/util/function/Consumer;)V
    .locals 1
    .param p1, "syncId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p2, "syncRequestComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    .line 305
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    .line 307
    invoke-static {}, Landroid/window/SurfaceSyncer;->-$$Nest$sfgetsTransactionFactory()Ljava/util/function/Supplier;

    move-result-object v0

    .line 308
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 311
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    .line 318
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    .line 325
    iput p1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncId:I

    .line 326
    iput-object p2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    .line 327
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/util/function/Consumer;Landroid/window/SurfaceSyncer$SyncSet-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/window/SurfaceSyncer$SyncSet;-><init>(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist checkIfSyncIsComplete()V
    .locals 2

    .line 365
    iget-boolean v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncReady:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncTarget;

    .line 379
    .local v1, "syncTarget":Landroid/window/SurfaceSyncer$SyncTarget;
    invoke-interface {v1}, Landroid/window/SurfaceSyncer$SyncTarget;->onSyncComplete()V

    .line 380
    .end local v1    # "syncTarget":Landroid/window/SurfaceSyncer$SyncTarget;
    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 382
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mFinished:Z

    .line 384
    return-void

    .line 371
    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$updateCallback$0(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p0, "oldCallback"    # Ljava/util/function/Consumer;
    .param p1, "transactionConsumer"    # Ljava/util/function/Consumer;
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 406
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 407
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 408
    return-void
.end method


# virtual methods
.method blacklist addSyncableSurface(Landroid/window/SurfaceSyncer$SyncTarget;)Z
    .locals 5
    .param p1, "syncTarget"    # Landroid/window/SurfaceSyncer$SyncTarget;

    .line 330
    new-instance v0, Landroid/window/SurfaceSyncer$SyncSet$1;

    invoke-direct {v0, p0}, Landroid/window/SurfaceSyncer$SyncSet$1;-><init>(Landroid/window/SurfaceSyncer$SyncSet;)V

    .line 343
    .local v0, "syncBufferCallback":Landroid/window/SurfaceSyncer$SyncBufferCallback;
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-boolean v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncReady:Z

    if-eqz v2, :cond_0

    .line 345
    const-string v2, "SurfaceSyncer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was already marked as ready. No more SyncTargets can be added."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v2, 0x0

    monitor-exit v1

    return v2

    .line 349
    :cond_0
    iget-object v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-interface {p1, v0}, Landroid/window/SurfaceSyncer$SyncTarget;->onReadyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    .line 353
    const/4 v1, 0x1

    return v1

    .line 351
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method blacklist addTransactionToSync(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 391
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 393
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$merge$1$android-window-SurfaceSyncer$SyncSet(Landroid/window/SurfaceSyncer$SyncSet;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "otherSyncSet"    # Landroid/window/SurfaceSyncer$SyncSet;
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 432
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 435
    invoke-direct {p0}, Landroid/window/SurfaceSyncer$SyncSet;->checkIfSyncIsComplete()V

    .line 436
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method blacklist markSyncReady()V
    .locals 2

    .line 357
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncReady:Z

    .line 359
    invoke-direct {p0}, Landroid/window/SurfaceSyncer$SyncSet;->checkIfSyncIsComplete()V

    .line 360
    monitor-exit v0

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist merge(Landroid/window/SurfaceSyncer$SyncSet;)V
    .locals 2
    .param p1, "otherSyncSet"    # Landroid/window/SurfaceSyncer$SyncSet;

    .line 428
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    new-instance v0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;-><init>(Landroid/window/SurfaceSyncer$SyncSet;Landroid/window/SurfaceSyncer$SyncSet;)V

    invoke-virtual {p1, v0}, Landroid/window/SurfaceSyncer$SyncSet;->updateCallback(Ljava/util/function/Consumer;)V

    .line 438
    return-void

    .line 430
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist updateCallback(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p1, "transactionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-boolean v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mFinished:Z

    if-eqz v1, :cond_0

    .line 399
    const-string v1, "SurfaceSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to merge SyncSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when sync is already complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 404
    :cond_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    .line 405
    .local v1, "oldCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    new-instance v2, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    .line 409
    .end local v1    # "oldCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
