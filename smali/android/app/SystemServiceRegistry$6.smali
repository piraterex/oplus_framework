.class Landroid/app/SystemServiceRegistry$6;
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
        "Landroid/app/UriGrantsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/UriGrantsManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 346
    new-instance v0, Landroid/app/UriGrantsManager;

    .line 347
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/UriGrantsManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 346
    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 343
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$6;->createService(Landroid/app/ContextImpl;)Landroid/app/UriGrantsManager;

    move-result-object p1

    return-object p1
.end method
