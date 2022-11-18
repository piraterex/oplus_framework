.class public abstract Landroid/view/SurfaceControlHdrLayerInfoListener;
.super Ljava/lang/Object;
.source "SurfaceControlHdrLayerInfoListener.java"


# static fields
.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private blacklist mRegisteredListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 32
    const-class v0, Landroid/view/SurfaceControlHdrLayerInfoListener;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/view/SurfaceControlHdrLayerInfoListener;->nGetDestructor()J

    move-result-wide v1

    .line 33
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControlHdrLayerInfoListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 32
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    return-void
.end method

.method private static native blacklist nGetDestructor()J
.end method

.method private native blacklist nRegister(Landroid/os/IBinder;)J
.end method


# virtual methods
.method public abstract blacklist onHdrInfoChanged(Landroid/os/IBinder;IIII)V
.end method

.method public blacklist register(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 56
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->nRegister(Landroid/os/IBinder;)J

    move-result-wide v0

    .line 62
    .local v0, "nativePtr":J
    sget-object v2, Landroid/view/SurfaceControlHdrLayerInfoListener;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    .line 63
    .local v2, "destructor":Ljava/lang/Runnable;
    iget-object v3, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    nop

    .end local v0    # "nativePtr":J
    .end local v2    # "destructor":Ljava/lang/Runnable;
    monitor-exit p0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist unregister(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "displayToken"    # Landroid/os/IBinder;

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 77
    .local v0, "destructor":Ljava/lang/Runnable;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_0
    return-void

    .line 77
    .end local v0    # "destructor":Ljava/lang/Runnable;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist unregisterAll()V
    .locals 3

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 91
    .local v0, "toDestroy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/lang/Runnable;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/view/SurfaceControlHdrLayerInfoListener;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 94
    .local v2, "destructor":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 95
    .end local v2    # "destructor":Ljava/lang/Runnable;
    goto :goto_0

    .line 96
    :cond_0
    return-void

    .line 92
    .end local v0    # "toDestroy":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
