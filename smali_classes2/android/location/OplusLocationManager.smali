.class public Landroid/location/OplusLocationManager;
.super Ljava/lang/Object;
.source "OplusLocationManager.java"


# static fields
.field private static final blacklist OPLUS_GPS_STATUS:I = 0x20


# instance fields
.field private final blacklist TAG:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "OplusLocationManager"

    iput-object v0, p0, Landroid/location/OplusLocationManager;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private blacklist getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const-string v0, ""

    .line 98
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 99
    .local v1, "uid":I
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "packages":[Ljava/lang/String;
    const-string v3, "OplusLocationManager"

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    array-length v5, v2

    if-ne v4, v5, :cond_0

    .line 102
    const/4 v4, 0x0

    aget-object v0, v2, v4

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "only one name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    const-string v4, "packages is invalid!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist getInUsePackagesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    const-string v0, "OplusLocationManager"

    const/4 v1, 0x0

    .line 31
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IOplusLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IOplusLocationManager;

    move-result-object v2

    .line 32
    .local v2, "oplusLocMgr":Landroid/location/IOplusLocationManager;
    if-eqz v2, :cond_0

    .line 33
    invoke-interface {v2}, Landroid/location/IOplusLocationManager;->getInUsePackagesList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 37
    .end local v2    # "oplusLocMgr":Landroid/location/IOplusLocationManager;
    :cond_0
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Running getPackageList error!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1
.end method

.method public whitelist handleCompatibilityException(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Landroid/location/OplusLocationManager;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/oplus/compatibility/OplusCompatibilityManager;

    invoke-direct {v1}, Lcom/oplus/compatibility/OplusCompatibilityManager;-><init>()V

    .line 92
    .local v1, "compatibilityManager":Lcom/oplus/compatibility/OplusCompatibilityManager;
    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Lcom/oplus/compatibility/OplusCompatibilityManager;->handleCompatibilityException(ILjava/lang/String;)V

    .line 93
    return-void
.end method

.method public whitelist setDebugDump()V
    .locals 3

    .line 80
    const-string v0, "OplusLocationManager"

    :try_start_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IOplusLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IOplusLocationManager;

    move-result-object v1

    .line 81
    .local v1, "oplusLocMgr":Landroid/location/IOplusLocationManager;
    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v1}, Landroid/location/IOplusLocationManager;->setDebugDump()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "oplusLocMgr":Landroid/location/IOplusLocationManager;
    :cond_0
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Running setDebugDump error!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setDebugOff()V
    .locals 3

    .line 64
    const-string v0, "OplusLocationManager"

    :try_start_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IOplusLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IOplusLocationManager;

    move-result-object v1

    .line 65
    .local v1, "oplusLocMgr":Landroid/location/IOplusLocationManager;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Landroid/location/IOplusLocationManager;->setDebugOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "oplusLocMgr":Landroid/location/IOplusLocationManager;
    :cond_0
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Running setDebugOff error!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setDebugOn()V
    .locals 3

    .line 48
    const-string v0, "OplusLocationManager"

    :try_start_0
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/IOplusLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IOplusLocationManager;

    move-result-object v1

    .line 49
    .local v1, "oplusLocMgr":Landroid/location/IOplusLocationManager;
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Landroid/location/IOplusLocationManager;->setDebugOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v1    # "oplusLocMgr":Landroid/location/IOplusLocationManager;
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Running setDebugOn error!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
