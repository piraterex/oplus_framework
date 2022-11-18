.class public Landroid/window/SurfaceSyncer;
.super Ljava/lang/Object;
.source "SurfaceSyncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;,
        Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;,
        Landroid/window/SurfaceSyncer$SyncSet;,
        Landroid/window/SurfaceSyncer$SyncBufferCallback;,
        Landroid/window/SurfaceSyncer$SyncTarget;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceSyncer"

.field private static blacklist sTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIdCounter:I

.field private final blacklist mSyncSetLock:Ljava/lang/Object;

.field private final blacklist mSyncSets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/window/SurfaceSyncer$SyncSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsTransactionFactory()Ljava/util/function/Supplier;
    .locals 1

    sget-object v0, Landroid/window/SurfaceSyncer;->sTransactionFactory:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/window/SurfaceSyncer;->sTransactionFactory:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/SurfaceSyncer;->mIdCounter:I

    return-void
.end method

.method private blacklist getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;
    .locals 4
    .param p1, "syncId"    # I

    .line 250
    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncSet;

    .line 252
    .local v1, "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    if-nez v1, :cond_0

    .line 254
    const-string v0, "SurfaceSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find sync for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_0
    return-object v1

    .line 252
    .end local v1    # "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$setupSync$0(Ljava/lang/Runnable;Landroid/os/Handler;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p0, "onComplete"    # Ljava/lang/Runnable;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 102
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_0
    return-void
.end method

.method public static blacklist setTransactionFactory(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    .line 88
    .local p0, "transactionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Transaction;>;"
    sput-object p0, Landroid/window/SurfaceSyncer;->sTransactionFactory:Ljava/util/function/Supplier;

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist addToSync(ILandroid/view/SurfaceView;Ljava/util/function/Consumer;)Z
    .locals 1
    .param p1, "syncId"    # I
    .param p2, "surfaceView"    # Landroid/view/SurfaceView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/SurfaceView;",
            "Ljava/util/function/Consumer<",
            "Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;",
            ">;)Z"
        }
    .end annotation

    .line 193
    .local p3, "frameCallbackConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;>;"
    new-instance v0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;

    invoke-direct {v0, p2, p3}, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;-><init>(Landroid/view/SurfaceView;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, v0}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    move-result v0

    return v0
.end method

.method public blacklist addToSync(ILandroid/view/View;)Z
    .locals 2
    .param p1, "syncId"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 206
    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 207
    .local v0, "viewRoot":Landroid/view/ViewRootImpl;
    if-nez v0, :cond_0

    .line 208
    const/4 v1, 0x0

    return v1

    .line 210
    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mSyncTarget:Landroid/window/SurfaceSyncer$SyncTarget;

    invoke-virtual {p0, p1, v1}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    move-result v1

    return v1
.end method

.method public blacklist addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z
    .locals 2
    .param p1, "syncId"    # I
    .param p2, "syncTarget"    # Landroid/window/SurfaceSyncer$SyncTarget;

    .line 224
    invoke-direct {p0, p1}, Landroid/window/SurfaceSyncer;->getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;

    move-result-object v0

    .line 225
    .local v0, "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    return v1

    .line 231
    :cond_0
    invoke-virtual {v0, p2}, Landroid/window/SurfaceSyncer$SyncSet;->addSyncableSurface(Landroid/window/SurfaceSyncer$SyncTarget;)Z

    move-result v1

    return v1
.end method

.method public blacklist addTransactionToSync(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "syncId"    # I
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 242
    invoke-direct {p0, p1}, Landroid/window/SurfaceSyncer;->getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;

    move-result-object v0

    .line 243
    .local v0, "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p2}, Landroid/window/SurfaceSyncer$SyncSet;->addTransactionToSync(Landroid/view/SurfaceControl$Transaction;)V

    .line 246
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$setupSync$1$android-window-SurfaceSyncer(ILjava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .locals 2
    .param p1, "syncId"    # I
    .param p2, "syncRequestComplete"    # Ljava/util/function/Consumer;
    .param p3, "transaction"    # Landroid/view/SurfaceControl$Transaction;

    .line 125
    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 127
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist markSyncReady(I)V
    .locals 4
    .param p1, "syncId"    # I

    .line 144
    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncSet;

    .line 146
    .local v1, "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-nez v1, :cond_0

    .line 148
    const-string v0, "SurfaceSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find syncSet for syncId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 151
    :cond_0
    invoke-virtual {v1}, Landroid/window/SurfaceSyncer$SyncSet;->markSyncReady()V

    .line 152
    return-void

    .line 146
    .end local v1    # "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist merge(IILandroid/window/SurfaceSyncer;)V
    .locals 2
    .param p1, "syncId"    # I
    .param p2, "otherSyncId"    # I
    .param p3, "otherSurfaceSyncer"    # Landroid/window/SurfaceSyncer;

    .line 162
    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncSet;

    .line 164
    .local v1, "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-direct {p3, p2}, Landroid/window/SurfaceSyncer;->getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;

    move-result-object v0

    .line 167
    .local v0, "otherSyncSet":Landroid/window/SurfaceSyncer$SyncSet;
    if-nez v0, :cond_0

    .line 168
    return-void

    .line 176
    :cond_0
    invoke-virtual {v1, v0}, Landroid/window/SurfaceSyncer$SyncSet;->merge(Landroid/window/SurfaceSyncer$SyncSet;)V

    .line 177
    return-void

    .line 164
    .end local v0    # "otherSyncSet":Landroid/window/SurfaceSyncer$SyncSet;
    .end local v1    # "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public blacklist setupSync(Ljava/lang/Runnable;)I
    .locals 2
    .param p1, "onComplete"    # Ljava/lang/Runnable;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-virtual {p0, v1}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/util/function/Consumer;)I

    move-result v1

    return v1
.end method

.method public blacklist setupSync(Ljava/util/function/Consumer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)I"
        }
    .end annotation

    .line 119
    .local p1, "syncRequestComplete":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/SurfaceControl$Transaction;>;"
    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget v1, p0, Landroid/window/SurfaceSyncer;->mIdCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/window/SurfaceSyncer;->mIdCounter:I

    .line 124
    .local v1, "syncId":I
    new-instance v2, Landroid/window/SurfaceSyncer$SyncSet;

    new-instance v3, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, p1}, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;-><init>(Landroid/window/SurfaceSyncer;ILjava/util/function/Consumer;)V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/window/SurfaceSyncer$SyncSet;-><init>(ILjava/util/function/Consumer;Landroid/window/SurfaceSyncer$SyncSet-IA;)V

    .line 130
    .local v2, "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    iget-object v3, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    monitor-exit v0

    return v1

    .line 132
    .end local v1    # "syncId":I
    .end local v2    # "syncSet":Landroid/window/SurfaceSyncer$SyncSet;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
