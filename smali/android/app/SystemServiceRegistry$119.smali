.class Landroid/app/SystemServiceRegistry$119;
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
        "Landroid/content/pm/DataLoaderManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1409
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/content/pm/DataLoaderManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1413
    const-string v0, "dataloader_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1415
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/content/pm/DataLoaderManager;

    invoke-static {v0}, Landroid/content/pm/IDataLoaderManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDataLoaderManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/DataLoaderManager;-><init>(Landroid/content/pm/IDataLoaderManager;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1409
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$119;->createService(Landroid/app/ContextImpl;)Landroid/content/pm/DataLoaderManager;

    move-result-object p1

    return-object p1
.end method
