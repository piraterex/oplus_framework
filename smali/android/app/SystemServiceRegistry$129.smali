.class Landroid/app/SystemServiceRegistry$129;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/media/metrics/MediaMetricsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1498
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/media/metrics/MediaMetricsManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1502
    nop

    .line 1503
    const-string/jumbo v0, "media_metrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1504
    .local v0, "iBinder":Landroid/os/IBinder;
    nop

    .line 1505
    invoke-static {v0}, Landroid/media/metrics/IMediaMetricsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/metrics/IMediaMetricsManager;

    move-result-object v1

    .line 1506
    .local v1, "service":Landroid/media/metrics/IMediaMetricsManager;
    new-instance v2, Landroid/media/metrics/MediaMetricsManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/media/metrics/MediaMetricsManager;-><init>(Landroid/media/metrics/IMediaMetricsManager;I)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1498
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$129;->createService(Landroid/app/ContextImpl;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object p1

    return-object p1
.end method
