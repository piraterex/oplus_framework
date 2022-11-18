.class Landroid/app/SystemServiceRegistry$80;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/service/persistentdata/PersistentDataBlockManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1017
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/service/persistentdata/PersistentDataBlockManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1020
    const-string/jumbo v0, "persistent_data_block"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1021
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 1022
    invoke-static {v0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object v1

    .line 1023
    .local v1, "persistentDataBlockService":Landroid/service/persistentdata/IPersistentDataBlockService;
    if-eqz v1, :cond_0

    .line 1024
    new-instance v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {v2, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;-><init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V

    return-object v2

    .line 1027
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1017
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$80;->createService()Landroid/service/persistentdata/PersistentDataBlockManager;

    move-result-object v0

    return-object v0
.end method
