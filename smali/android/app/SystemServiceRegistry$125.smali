.class Landroid/app/SystemServiceRegistry$125;
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
        "Landroid/content/integrity/AppIntegrityManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1469
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/content/integrity/AppIntegrityManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1473
    const-string v0, "app_integrity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1474
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/content/integrity/AppIntegrityManager;

    invoke-static {v0}, Landroid/content/integrity/IAppIntegrityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/integrity/IAppIntegrityManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/integrity/AppIntegrityManager;-><init>(Landroid/content/integrity/IAppIntegrityManager;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1469
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$125;->createService(Landroid/app/ContextImpl;)Landroid/content/integrity/AppIntegrityManager;

    move-result-object p1

    return-object p1
.end method
