.class Landroid/app/SystemServiceRegistry$68;
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
        "Landroid/companion/virtual/VirtualDeviceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 889
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/companion/virtual/VirtualDeviceManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 893
    nop

    .line 894
    const-string/jumbo v0, "virtualdevice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 893
    invoke-static {v0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDeviceManager;

    move-result-object v0

    .line 895
    .local v0, "service":Landroid/companion/virtual/IVirtualDeviceManager;
    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/companion/virtual/VirtualDeviceManager;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;)V

    return-object v1
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 889
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$68;->createService(Landroid/app/ContextImpl;)Landroid/companion/virtual/VirtualDeviceManager;

    move-result-object p1

    return-object p1
.end method
