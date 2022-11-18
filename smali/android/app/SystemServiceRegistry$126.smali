.class Landroid/app/SystemServiceRegistry$126;
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
        "Landroid/apphibernation/AppHibernationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1477
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/apphibernation/AppHibernationManager;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1480
    const-string v0, "app_hibernation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1481
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/apphibernation/AppHibernationManager;

    invoke-direct {v1, p1}, Landroid/apphibernation/AppHibernationManager;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1477
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$126;->createService(Landroid/app/ContextImpl;)Landroid/apphibernation/AppHibernationManager;

    move-result-object p1

    return-object p1
.end method
