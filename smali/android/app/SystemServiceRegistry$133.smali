.class Landroid/app/SystemServiceRegistry$133;
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
        "Landroid/app/ambientcontext/AmbientContextManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1541
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/ambientcontext/AmbientContextManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1545
    const-string v0, "ambient_context"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1547
    .local v0, "iBinder":Landroid/os/IBinder;
    nop

    .line 1548
    invoke-static {v0}, Landroid/app/ambientcontext/IAmbientContextManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ambientcontext/IAmbientContextManager;

    move-result-object v1

    .line 1549
    .local v1, "manager":Landroid/app/ambientcontext/IAmbientContextManager;
    new-instance v2, Landroid/app/ambientcontext/AmbientContextManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/app/ambientcontext/AmbientContextManager;-><init>(Landroid/content/Context;Landroid/app/ambientcontext/IAmbientContextManager;)V

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1541
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$133;->createService(Landroid/app/ContextImpl;)Landroid/app/ambientcontext/AmbientContextManager;

    move-result-object p1

    return-object p1
.end method
