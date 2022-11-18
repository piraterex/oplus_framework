.class public Lcom/android/internal/os/BinderInternal;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;,
        Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;,
        Lcom/android/internal/os/BinderInternal$CallStatsObserver;,
        Lcom/android/internal/os/BinderInternal$Observer;,
        Lcom/android/internal/os/BinderInternal$WorkSourceProvider;,
        Lcom/android/internal/os/BinderInternal$CallSession;,
        Lcom/android/internal/os/BinderInternal$GcWatcher;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BinderInternal"

.field static final blacklist sBinderProxyLimitListenerDelegate:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

.field static blacklist sGcWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/os/BinderInternal$GcWatcher;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sGcWatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sLastGcTime:J

.field static blacklist sTmpWatchers:[Ljava/lang/Runnable;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/android/internal/os/BinderInternal$GcWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderInternal$GcWatcher;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatcher:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sTmpWatchers:[Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;-><init>(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate-IA;)V

    sput-object v0, Lcom/android/internal/os/BinderInternal;->sBinderProxyLimitListenerDelegate:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addGcWatcher(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "watcher"    # Ljava/lang/Runnable;

    .line 69
    sget-object v0, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/android/internal/os/BinderInternal;->sGcWatchers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist binderProxyLimitCallbackFromNative(I)V
    .locals 1
    .param p0, "uid"    # I

    .line 246
    sget-object v0, Lcom/android/internal/os/BinderInternal;->sBinderProxyLimitListenerDelegate:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->notifyClient(I)V

    .line 247
    return-void
.end method

.method public static blacklist clearBinderProxyCountCallback()V
    .locals 2

    .line 267
    sget-object v0, Lcom/android/internal/os/BinderInternal;->sBinderProxyLimitListenerDelegate:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->setListener(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    .line 268
    return-void
.end method

.method public static final native blacklist disableBackgroundScheduling(Z)V
.end method

.method static blacklist forceBinderGc()V
    .locals 1

    .line 200
    const-string v0, "Binder"

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->forceGc(Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public static blacklist forceGc(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 195
    const/16 v0, 0xab5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 196
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    .line 197
    return-void
.end method

.method public static final native greylist getContextObject()Landroid/os/IBinder;
.end method

.method public static blacklist getLastGcTime()J
    .locals 2

    .line 171
    sget-wide v0, Lcom/android/internal/os/BinderInternal;->sLastGcTime:J

    return-wide v0
.end method

.method static final native greylist handleGc()V
.end method

.method public static final native blacklist joinThreadPool()V
.end method

.method public static final native blacklist nGetBinderProxyCount(I)I
.end method

.method public static final native blacklist nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;
.end method

.method public static final native blacklist nSetBinderProxyCountEnabled(Z)V
.end method

.method public static final native blacklist nSetBinderProxyCountWatermarks(II)V
.end method

.method public static blacklist setBinderProxyCountCallback(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 257
    const-string v0, "Must provide NonNull Handler to setBinderProxyCountCallback when setting BinderProxyLimitListener"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/internal/os/BinderInternal;->sBinderProxyLimitListenerDelegate:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->setListener(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V

    .line 261
    return-void
.end method

.method public static final native blacklist setMaxThreads(I)V
.end method
