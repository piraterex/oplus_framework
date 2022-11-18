.class Landroid/app/SystemServiceRegistry$117;
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
        "Landroid/os/image/DynamicSystemManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1388
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/image/DynamicSystemManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1392
    const-string v0, "dynamic_system"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1394
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/os/image/DynamicSystemManager;

    .line 1395
    invoke-static {v0}, Landroid/os/image/IDynamicSystemService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/image/IDynamicSystemService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/image/DynamicSystemManager;-><init>(Landroid/os/image/IDynamicSystemService;)V

    .line 1394
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1388
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$117;->createService(Landroid/app/ContextImpl;)Landroid/os/image/DynamicSystemManager;

    move-result-object p1

    return-object p1
.end method
