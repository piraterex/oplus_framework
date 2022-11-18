.class Landroid/app/SystemServiceRegistry$94;
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
        "Landroid/os/BugreportManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1145
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/os/BugreportManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1149
    const-string v0, "bugreport"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1150
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/os/BugreportManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .line 1151
    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/BugreportManager;-><init>(Landroid/content/Context;Landroid/os/IDumpstate;)V

    .line 1150
    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1145
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$94;->createService(Landroid/app/ContextImpl;)Landroid/os/BugreportManager;

    move-result-object p1

    return-object p1
.end method
