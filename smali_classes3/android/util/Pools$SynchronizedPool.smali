.class public Landroid/util/Pools$SynchronizedPool;
.super Landroid/util/Pools$SimplePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynchronizedPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Pools$SimplePool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>(I)V
    .locals 1
    .param p1, "maxPoolSize"    # I

    .line 164
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/util/Pools$SynchronizedPool;-><init>(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "maxPoolSize"    # I
    .param p2, "lock"    # Ljava/lang/Object;

    .line 157
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    invoke-direct {p0, p1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 158
    iput-object p2, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 159
    return-void
.end method


# virtual methods
.method public greylist acquire()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 170
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    iget-object v0, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    invoke-super {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist release(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 178
    .local p0, "this":Landroid/util/Pools$SynchronizedPool;, "Landroid/util/Pools$SynchronizedPool<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/util/Pools$SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-super {p0, p1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
