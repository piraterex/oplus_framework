.class public Landroid/net/PacProxyManager;
.super Ljava/lang/Object;
.source "PacProxyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;,
        Landroid/net/PacProxyManager$PacProxyInstalledListener;
    }
.end annotation


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/PacProxyManager$PacProxyInstalledListener;",
            "Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/net/IPacProxyManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/IPacProxyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/IPacProxyManager;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    .line 48
    const-string v0, "missing IPacProxyManager"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Landroid/net/PacProxyManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist addPacProxyInstalledListener(Ljava/util/concurrent/Executor;Landroid/net/PacProxyManager$PacProxyInstalledListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/net/PacProxyManager$PacProxyInstalledListener;

    .line 63
    :try_start_0
    iget-object v0, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :try_start_1
    new-instance v1, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;-><init>(Landroid/net/PacProxyManager;Ljava/util/concurrent/Executor;Landroid/net/PacProxyManager$PacProxyInstalledListener;)V

    .line 67
    .local v1, "listenerProxy":Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
    iget-object v2, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    invoke-interface {v2, v1}, Landroid/net/IPacProxyManager;->addListener(Landroid/net/IPacProxyInstalledListener;)V

    .line 71
    .end local v1    # "listenerProxy":Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
    monitor-exit v0

    .line 74
    nop

    .line 75
    return-void

    .line 68
    .restart local v1    # "listenerProxy":Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Listener is already added."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/PacProxyManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/PacProxyManager$PacProxyInstalledListener;
    throw v2

    .line 71
    .end local v1    # "listenerProxy":Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
    .restart local p0    # "this":Landroid/net/PacProxyManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/PacProxyManager$PacProxyInstalledListener;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/net/PacProxyManager;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/net/PacProxyManager$PacProxyInstalledListener;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    .restart local p0    # "this":Landroid/net/PacProxyManager;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/net/PacProxyManager$PacProxyInstalledListener;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removePacProxyInstalledListener(Landroid/net/PacProxyManager$PacProxyInstalledListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/PacProxyManager$PacProxyInstalledListener;

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    iget-object v1, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;

    .line 88
    .local v1, "listenerProxy":Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    invoke-interface {v2, v1}, Landroid/net/IPacProxyManager;->removeListener(Landroid/net/IPacProxyInstalledListener;)V

    .line 90
    .end local v1    # "listenerProxy":Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
    monitor-exit v0

    .line 93
    nop

    .line 94
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/net/PacProxyManager;
    .end local p1    # "listener":Landroid/net/PacProxyManager$PacProxyInstalledListener;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .restart local p0    # "this":Landroid/net/PacProxyManager;
    .restart local p1    # "listener":Landroid/net/PacProxyManager$PacProxyInstalledListener;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    invoke-interface {v0, p1}, Landroid/net/IPacProxyManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
