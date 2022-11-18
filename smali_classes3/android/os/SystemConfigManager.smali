.class public Landroid/os/SystemConfigManager;
.super Ljava/lang/Object;
.source "SystemConfigManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mInterface:Landroid/os/ISystemConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    const-class v0, Landroid/os/SystemConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/SystemConfigManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    nop

    .line 52
    const-string/jumbo v0, "system_config"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/os/ISystemConfig$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISystemConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemConfigManager;->mInterface:Landroid/os/ISystemConfig;

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemConfigManager;->mInterface:Landroid/os/ISystemConfig;

    invoke-interface {v0}, Landroid/os/ISystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 65
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/SystemConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "Caught remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/CarrierAssociatedAppEntry;",
            ">;>;"
        }
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemConfigManager;->mInterface:Landroid/os/ISystemConfig;

    .line 109
    invoke-interface {v0}, Landroid/os/ISystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/SystemConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "Caught remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 83
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemConfigManager;->mInterface:Landroid/os/ISystemConfig;

    .line 84
    invoke-interface {v0}, Landroid/os/ISystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/SystemConfigManager;->TAG:Ljava/lang/String;

    const-string v2, "Caught remote exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemConfigManager;->mInterface:Landroid/os/ISystemConfig;

    invoke-interface {v0, p1}, Landroid/os/ISystemConfig;->getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSystemPermissionUids(Ljava/lang/String;)[I
    .locals 2
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemConfigManager;->mInterface:Landroid/os/ISystemConfig;

    invoke-interface {v0, p1}, Landroid/os/ISystemConfig;->getSystemPermissionUids(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
