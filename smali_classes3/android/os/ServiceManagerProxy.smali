.class Landroid/os/ServiceManagerProxy;
.super Ljava/lang/Object;
.source "ServiceManagerNative.java"

# interfaces
.implements Landroid/os/IServiceManager;


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;

.field private blacklist mServiceManager:Landroid/os/IServiceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 53
    invoke-static {p1}, Landroid/os/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    .line 54
    return-void
.end method


# virtual methods
.method public blacklist addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "allowIsolated"    # Z
    .param p4, "dumpPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 73
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getConnectionInfo(Ljava/lang/String;)Landroid/os/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0}, Landroid/os/IServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isDeclared(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist listServices(I)[Ljava/lang/String;
    .locals 1
    .param p1, "dumpPriority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->listServices(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerClientCallback(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/IClientCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .param p3, "cb"    # Landroid/os/IClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public blacklist registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IServiceManager;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V

    .line 82
    return-void
.end method

.method public blacklist tryUnregisterService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public blacklist unregisterForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/IServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public blacklist updatableViaApex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Landroid/os/ServiceManagerProxy;->mServiceManager:Landroid/os/IServiceManager;

    invoke-interface {v0, p1}, Landroid/os/IServiceManager;->updatableViaApex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
