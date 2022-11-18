.class public final Landroid/graphics/HardwareRendererObserver;
.super Ljava/lang/Object;
.source "HardwareRendererObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;
    }
.end annotation


# instance fields
.field private final blacklist mFrameMetrics:[J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

.field private blacklist mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V
    .locals 3
    .param p1, "listener"    # Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;
    .param p2, "frameMetrics"    # [J
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "waitForPresentTime"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iput-object p2, p0, Landroid/graphics/HardwareRendererObserver;->mFrameMetrics:[J

    .line 77
    iput-object p3, p0, Landroid/graphics/HardwareRendererObserver;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Landroid/graphics/HardwareRendererObserver;->mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

    .line 79
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, p4}, Landroid/graphics/HardwareRendererObserver;->nCreateObserver(Ljava/lang/ref/WeakReference;Z)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 81
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid looper, null message queue\n"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler and its looper cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist invokeDataAvailable(Ljava/lang/ref/WeakReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/HardwareRendererObserver;",
            ">;)Z"
        }
    .end annotation

    .line 108
    .local p0, "weakObserver":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/HardwareRendererObserver;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/HardwareRendererObserver;

    .line 109
    .local v0, "observer":Landroid/graphics/HardwareRendererObserver;
    if-eqz v0, :cond_0

    .line 110
    invoke-direct {v0}, Landroid/graphics/HardwareRendererObserver;->notifyDataAvailable()V

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static native blacklist nCreateObserver(Ljava/lang/ref/WeakReference;Z)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/HardwareRendererObserver;",
            ">;Z)J"
        }
    .end annotation
.end method

.method private static native blacklist nGetNextBuffer(J[J)I
.end method

.method private blacklist notifyDataAvailable()V
    .locals 2

    .line 88
    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/graphics/HardwareRendererObserver$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/HardwareRendererObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method


# virtual methods
.method blacklist getNativeInstance()J
    .locals 2

    .line 84
    iget-object v0, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic blacklist lambda$notifyDataAvailable$0$android-graphics-HardwareRendererObserver()V
    .locals 4

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "hasMoreData":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 92
    iget-object v1, p0, Landroid/graphics/HardwareRendererObserver;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v1}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v1

    iget-object v3, p0, Landroid/graphics/HardwareRendererObserver;->mFrameMetrics:[J

    invoke-static {v1, v2, v3}, Landroid/graphics/HardwareRendererObserver;->nGetNextBuffer(J[J)I

    move-result v1

    .line 93
    .local v1, "dropCount":I
    if-ltz v1, :cond_0

    .line 94
    iget-object v2, p0, Landroid/graphics/HardwareRendererObserver;->mListener:Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;

    invoke-interface {v2, v1}, Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;->onFrameMetricsAvailable(I)V

    goto :goto_1

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 98
    .end local v1    # "dropCount":I
    :goto_1
    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method
