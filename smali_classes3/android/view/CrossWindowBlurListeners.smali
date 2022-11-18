.class public final Landroid/view/CrossWindowBlurListeners;
.super Ljava/lang/Object;
.source "CrossWindowBlurListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
    }
.end annotation


# static fields
.field private static final blacklist BLUR_PROPERTY:Ljava/lang/String; = "ro.surface_flinger.supports_background_blur"

.field public static final blacklist CROSS_WINDOW_BLUR_SUPPORTED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "CrossWindowBlurListeners"

.field private static volatile blacklist sInstance:Landroid/view/CrossWindowBlurListeners;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mInternalListenerAttached:Z

.field private final blacklist mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCrossWindowBlurEnabled(Landroid/view/CrossWindowBlurListeners;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyListener(Landroid/view/CrossWindowBlurListeners;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 44
    nop

    .line 48
    const-string/jumbo v0, "ro.surface_flinger.supports_background_blur"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;-><init>(Landroid/view/CrossWindowBlurListeners;Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal-IA;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mMainHandler:Landroid/os/Handler;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    .line 60
    return-void
.end method

.method private blacklist attachInternalListenerIfNeededLocked()V
    .locals 3

    .line 120
    iget-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-nez v0, :cond_0

    .line 122
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    .line 123
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CrossWindowBlurListeners"

    const-string v2, "Could not register ICrossWindowBlurEnabledListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist getInstance()Landroid/view/CrossWindowBlurListeners;
    .locals 3

    .line 66
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    .line 67
    .local v0, "instance":Landroid/view/CrossWindowBlurListeners;
    if-nez v0, :cond_1

    .line 69
    sget-object v1, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v2, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    move-object v0, v2

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v2, Landroid/view/CrossWindowBlurListeners;

    invoke-direct {v2}, Landroid/view/CrossWindowBlurListeners;-><init>()V

    move-object v0, v2

    .line 73
    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    .line 75
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 77
    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$notifyListener$0(Ljava/util/function/Consumer;Z)V
    .locals 1
    .param p0, "listener"    # Ljava/util/function/Consumer;
    .param p1, "enabled"    # Z

    .line 132
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .line 132
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method


# virtual methods
.method public blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p2, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    .line 95
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    invoke-direct {p0, p2, p1, v1}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCrossWindowBlurEnabled()Z
    .locals 2

    .line 81
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    .line 83
    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    monitor-exit v0

    return v1

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist removeListener(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 109
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    .line 110
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CrossWindowBlurListeners"

    const-string v3, "Could not unregister ICrossWindowBlurEnabledListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
