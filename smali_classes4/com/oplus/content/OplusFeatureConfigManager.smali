.class public Lcom/oplus/content/OplusFeatureConfigManager;
.super Lcom/oplus/content/OplusBaseFeatureConfigManager;
.source "OplusFeatureConfigManager.java"

# interfaces
.implements Lcom/oplus/content/IOplusFeatureConfigList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;,
        Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;,
        Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;,
        Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;,
        Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;,
        Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;
    }
.end annotation


# static fields
.field private static final blacklist STACK_SIZE:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "OplusFeatureConfigManager"

.field private static volatile blacklist sInstance:Lcom/oplus/content/OplusFeatureConfigManager;


# instance fields
.field private blacklist mCache:Lcom/oplus/content/OplusFeatureCache;

.field private final blacklist mFeatureActionObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;",
            "Lcom/oplus/content/IOplusFeatureActionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureMapObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;",
            "Lcom/oplus/content/IOplusFeatureMapObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;",
            "Lcom/oplus/content/IOplusFeatureObserver;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOplusPackageManager:Landroid/content/pm/OplusPackageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 48
    const-string/jumbo v0, "package"

    invoke-direct {p0, v0}, Lcom/oplus/content/OplusBaseFeatureConfigManager;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureObservers:Landroid/util/ArrayMap;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureMapObservers:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureActionObservers:Landroid/util/ArrayMap;

    .line 49
    new-instance v0, Lcom/oplus/content/OplusFeatureCache;

    invoke-direct {v0}, Lcom/oplus/content/OplusFeatureCache;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mCache:Lcom/oplus/content/OplusFeatureCache;

    .line 50
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    .line 51
    return-void
.end method

.method public static whitelist getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/oplus/content/OplusFeatureConfigManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-direct {v1}, Lcom/oplus/content/OplusFeatureConfigManager;-><init>()V

    sput-object v1, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    iget-object v0, v0, Lcom/oplus/content/OplusFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_3

    .line 62
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    iget-object v0, v0, Lcom/oplus/content/OplusFeatureConfigManager;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 64
    const-string v1, "OplusFeatureConfigManager"

    const-string/jumbo v2, "remote is still null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :cond_2
    const-string v1, "OplusFeatureConfigManager"

    const-string/jumbo v2, "remote is not null, update remote"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    iput-object v0, v1, Lcom/oplus/content/OplusFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    .line 70
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_3
    :goto_0
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    return-object v0
.end method

.method public static whitelist getInstance()Lcom/oplus/content/OplusFeatureConfigManager;
    .locals 3

    .line 78
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/oplus/content/OplusFeatureConfigManager;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-direct {v1}, Lcom/oplus/content/OplusFeatureConfigManager;-><init>()V

    sput-object v1, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 84
    :cond_1
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    iget-object v0, v0, Lcom/oplus/content/OplusFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_3

    .line 85
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    iget-object v0, v0, Lcom/oplus/content/OplusFeatureConfigManager;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 87
    const-string v1, "OplusFeatureConfigManager"

    const-string/jumbo v2, "remote is still null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_2
    const-string v1, "OplusFeatureConfigManager"

    const-string/jumbo v2, "remote is not null, update remote"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v1, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    iput-object v0, v1, Lcom/oplus/content/OplusFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    .line 93
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_3
    :goto_0
    sget-object v0, Lcom/oplus/content/OplusFeatureConfigManager;->sInstance:Lcom/oplus/content/OplusFeatureConfigManager;

    return-object v0
.end method

.method private blacklist registerFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->registerFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v0

    return v0
.end method

.method private blacklist registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 2
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p3, "observer"    # Lcom/oplus/content/IOplusFeatureMapObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;",
            "Lcom/oplus/content/IOplusFeatureMapObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    .local p1, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {p2}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/OplusPackageManager;->registerFeatureMapObserverInner(Ljava/util/List;ILcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v0

    return v0
.end method

.method private blacklist registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 1
    .param p2, "observer"    # Lcom/oplus/content/IOplusFeatureObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/IOplusFeatureObserver;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v0

    return v0
.end method

.method private blacklist unregisterFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureActionObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->unregisterFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v0

    return v0
.end method

.method private blacklist unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/IOplusFeatureMapObserver;)Z
    .locals 2
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "observer"    # Lcom/oplus/content/IOplusFeatureMapObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/OplusPackageManager;->unregisterFeatureMapObserverInner(ILcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v0

    return v0
.end method

.method private blacklist unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/content/IOplusFeatureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist disableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->disableFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist disableFeature(Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {p2}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/OplusPackageManager;->disableFeatureMap(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist enableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->enableFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist enableFeature(Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {p2}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/OplusPackageManager;->enableFeatureMap(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mCache:Lcom/oplus/content/OplusFeatureCache;

    invoke-virtual {v0, p1}, Lcom/oplus/content/OplusFeatureCache;->query(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFeature(Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    .line 149
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mCache:Lcom/oplus/content/OplusFeatureCache;

    invoke-virtual {p2}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/content/OplusFeatureCache;->query(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFeatureIPC(Ljava/lang/String;)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasFeatureIPC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed , pms not initialized."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 99
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "OplusFeatureConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    sget-object v1, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/OplusPackageManager;->hasFeatureIPC(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasFeatureIPC(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasFeatureIPC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed , pms not initialized."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    .line 111
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "OplusFeatureConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->hasFeatureIPC(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist isRemoteReady()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mRemote:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/OplusPackageManager;->notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public whitelist notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;
    .param p3, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mOplusPackageManager:Landroid/content/pm/OplusPackageManager;

    invoke-virtual {p3}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/OplusPackageManager;->notifyFeaturesMapUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    return-void
.end method

.method public whitelist registerFeatureActionObserver(Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;)Z
    .locals 6
    .param p1, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    .line 524
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 525
    const-string v1, "OplusFeatureConfigManager"

    const-string v2, " registerFeatureActionObserver null observer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return v0

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureActionObservers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureActionObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 530
    const-string v2, "OplusFeatureConfigManager"

    const-string v3, "already regiter before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    monitor-exit v1

    return v0

    .line 533
    :cond_1
    new-instance v2, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;

    invoke-direct {v2, p0, p1}, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;-><init>(Lcom/oplus/content/OplusFeatureConfigManager;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .local v2, "delegate":Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->registerFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v3

    .line 536
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 537
    iget-object v4, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureActionObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    :cond_2
    :try_start_2
    monitor-exit v1

    return v3

    .line 540
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 541
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusFeatureConfigManager"

    const-string/jumbo v5, "registerFeatureActionObserver failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 544
    .end local v2    # "delegate":Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserverDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    monitor-exit v1

    .line 545
    return v0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist registerFeatureObserver(Ljava/util/List;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;)Z
    .locals 7
    .param p2, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p3, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;",
            "Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;",
            ")Z"
        }
    .end annotation

    .line 396
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 397
    const-string v1, "OplusFeatureConfigManager"

    const-string v2, " registerFeatureMapObserver null observer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v0

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureMapObservers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 401
    :try_start_0
    iget-object v2, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureMapObservers:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 402
    .local v2, "featureMapObservers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;Lcom/oplus/content/IOplusFeatureMapObserver;>;"
    if-nez v2, :cond_1

    .line 403
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 404
    iget-object v3, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureMapObservers:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_1
    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 407
    const-string v3, "OplusFeatureConfigManager"

    const-string v4, "already regiter before"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v1

    return v0

    .line 410
    :cond_2
    new-instance v3, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;

    invoke-direct {v3, p0, p3}, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;-><init>(Lcom/oplus/content/OplusFeatureConfigManager;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .local v3, "delegate":Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;
    :try_start_1
    invoke-direct {p0, p1, p2, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v4

    .line 413
    .local v4, "result":Z
    if-eqz v4, :cond_3

    .line 414
    invoke-virtual {v2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :cond_3
    :try_start_2
    monitor-exit v1

    return v4

    .line 417
    .end local v4    # "result":Z
    :catch_0
    move-exception v4

    .line 418
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "OplusFeatureConfigManager"

    const-string/jumbo v6, "registerFeatureMapObserver failed!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 421
    .end local v2    # "featureMapObservers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;Lcom/oplus/content/IOplusFeatureMapObserver;>;"
    .end local v3    # "delegate":Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserverDelegate;
    .end local v4    # "e":Landroid/os/RemoteException;
    monitor-exit v1

    .line 422
    return v0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist registerFeatureObserver(Ljava/util/List;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;)Z
    .locals 6
    .param p2, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;",
            ")Z"
        }
    .end annotation

    .line 283
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 284
    const-string v1, "OplusFeatureConfigManager"

    const-string v2, " registerFeatureObserver null observer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureObservers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 289
    const-string v2, "OplusFeatureConfigManager"

    const-string v3, "already regiter before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    monitor-exit v1

    return v0

    .line 292
    :cond_1
    new-instance v2, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;

    invoke-direct {v2, p0, p2}, Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;-><init>(Lcom/oplus/content/OplusFeatureConfigManager;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v2, "delegate":Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;
    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v3

    .line 295
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 296
    iget-object v4, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :cond_2
    :try_start_2
    monitor-exit v1

    return v3

    .line 299
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 300
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusFeatureConfigManager"

    const-string/jumbo v5, "registerFeatureObserver failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 303
    .end local v2    # "delegate":Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserverDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    monitor-exit v1

    .line 304
    return v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist unregisterFeatureActionObserver(Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureActionObserver;

    .line 562
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 563
    const-string v1, "OplusFeatureConfigManager"

    const-string/jumbo v2, "unregisterFeatureActionObserver null observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v0

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureActionObservers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 567
    :try_start_0
    iget-object v2, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureActionObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/content/IOplusFeatureActionObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .local v2, "delegate":Lcom/oplus/content/IOplusFeatureActionObserver;
    if-eqz v2, :cond_1

    .line 570
    :try_start_1
    iget-object v3, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureActionObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-direct {p0, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->unregisterFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v0

    .line 573
    :catch_0
    move-exception v3

    .line 574
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 575
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    nop

    .line 576
    .end local v2    # "delegate":Lcom/oplus/content/IOplusFeatureActionObserver;
    :goto_0
    monitor-exit v1

    .line 577
    return v0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist unregisterFeatureObserver(Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;)Z
    .locals 5
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;

    .line 440
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 441
    const-string v1, "OplusFeatureConfigManager"

    const-string/jumbo v2, "unregisterFeatureMapObserver null observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return v0

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureMapObservers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureMapObservers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 446
    .local v2, "featureMapObservers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;Lcom/oplus/content/IOplusFeatureMapObserver;>;"
    if-nez v2, :cond_1

    .line 447
    const-string v3, "OplusFeatureConfigManager"

    const-string/jumbo v4, "unregisterFeatureMapObserver not register observer"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    monitor-exit v1

    return v0

    .line 450
    :cond_1
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/content/IOplusFeatureMapObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .local v3, "delegate":Lcom/oplus/content/IOplusFeatureMapObserver;
    if-eqz v3, :cond_2

    .line 453
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-direct {p0, p1, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Lcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v0

    .line 456
    :catch_0
    move-exception v4

    .line 457
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    nop

    .line 459
    .end local v2    # "featureMapObservers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureMapObserver;Lcom/oplus/content/IOplusFeatureMapObserver;>;"
    .end local v3    # "delegate":Lcom/oplus/content/IOplusFeatureMapObserver;
    :goto_0
    monitor-exit v1

    .line 460
    return v0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist unregisterFeatureObserver(Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;

    .line 321
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 322
    const-string v1, "OplusFeatureConfigManager"

    const-string/jumbo v2, "unregisterFeatureObserver null observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v0

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureObservers:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/content/IOplusFeatureObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .local v2, "delegate":Lcom/oplus/content/IOplusFeatureObserver;
    if-eqz v2, :cond_1

    .line 329
    :try_start_1
    iget-object v3, p0, Lcom/oplus/content/OplusFeatureConfigManager;->mFeatureObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-direct {p0, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v0

    .line 332
    :catch_0
    move-exception v3

    .line 333
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    nop

    .line 335
    .end local v2    # "delegate":Lcom/oplus/content/IOplusFeatureObserver;
    :goto_0
    monitor-exit v1

    .line 336
    return v0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
