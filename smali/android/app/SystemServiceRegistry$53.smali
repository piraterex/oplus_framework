.class Landroid/app/SystemServiceRegistry$53;
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
        "Landroid/debug/AdbManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/debug/AdbManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 740
    const-string v0, "adb"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 741
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/debug/AdbManager;

    invoke-static {v0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/debug/AdbManager;-><init>(Landroid/content/Context;Landroid/debug/IAdbManager;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$53;->createService(Landroid/app/ContextImpl;)Landroid/debug/AdbManager;

    move-result-object p1

    return-object p1
.end method
