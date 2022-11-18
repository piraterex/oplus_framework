.class Landroid/app/SystemServiceRegistry$18;
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
        "Landroid/net/vcn/VcnManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/net/vcn/VcnManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 446
    const-string/jumbo v0, "vcn_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 447
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/vcn/IVcnManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/vcn/IVcnManagementService;

    move-result-object v1

    .line 448
    .local v1, "service":Landroid/net/vcn/IVcnManagementService;
    new-instance v2, Landroid/net/vcn/VcnManager;

    invoke-direct {v2, p1, v1}, Landroid/net/vcn/VcnManager;-><init>(Landroid/content/Context;Landroid/net/vcn/IVcnManagementService;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 443
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$18;->createService(Landroid/app/ContextImpl;)Landroid/net/vcn/VcnManager;

    move-result-object p1

    return-object p1
.end method
