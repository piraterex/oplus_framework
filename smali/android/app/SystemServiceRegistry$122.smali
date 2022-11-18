.class Landroid/app/SystemServiceRegistry$122;
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
        "Landroid/os/incremental/IncrementalManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1433
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/incremental/IncrementalManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1436
    const-string v0, "incremental"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1437
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 1438
    const/4 v1, 0x0

    return-object v1

    .line 1440
    :cond_0
    new-instance v1, Landroid/os/incremental/IncrementalManager;

    .line 1441
    invoke-static {v0}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 1440
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1433
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$122;->createService(Landroid/app/ContextImpl;)Landroid/os/incremental/IncrementalManager;

    move-result-object p1

    return-object p1
.end method
