.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperationsRegistry.java"


# static fields
.field private static final blacklist sLock:Ljava/lang/Object;

.field private static blacklist sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

.field private static blacklist sRegistry:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static blacklist get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .locals 4
    .param p0, "token"    # Landroid/os/IBinder;

    .line 93
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 95
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 97
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 98
    .local v1, "wrapperRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;>;"
    if-nez v1, :cond_1

    .line 99
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 101
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 102
    .local v2, "wrapper":Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    if-nez v2, :cond_2

    .line 103
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 105
    :cond_2
    monitor-exit v0

    return-object v2

    .line 106
    .end local v1    # "wrapperRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;>;"
    .end local v2    # "wrapper":Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    return-object v0
.end method

.method public static blacklist put(Landroid/os/IBinder;Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;)V
    .locals 3
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "ops"    # Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    .line 73
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    .line 77
    :cond_0
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist remove(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .line 120
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    .line 128
    :cond_1
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
