.class public Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;
.super Landroid/net/IPacProxyInstalledListener$Stub;
.source "PacProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/PacProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PacProxyInstalledListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/net/PacProxyManager$PacProxyInstalledListener;

.field final synthetic blacklist this$0:Landroid/net/PacProxyManager;


# direct methods
.method constructor blacklist <init>(Landroid/net/PacProxyManager;Ljava/util/concurrent/Executor;Landroid/net/PacProxyManager$PacProxyInstalledListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/PacProxyManager;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/net/PacProxyManager$PacProxyInstalledListener;

    .line 136
    iput-object p1, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->this$0:Landroid/net/PacProxyManager;

    invoke-direct {p0}, Landroid/net/IPacProxyInstalledListener$Stub;-><init>()V

    .line 137
    iput-object p2, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 138
    iput-object p3, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mListener:Landroid/net/PacProxyManager$PacProxyInstalledListener;

    .line 139
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onPacProxyInstalled$0$android-net-PacProxyManager$PacProxyInstalledListenerProxy(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    .line 145
    iget-object v0, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mListener:Landroid/net/PacProxyManager$PacProxyInstalledListener;

    invoke-interface {v0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListener;->onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V

    .line 146
    return-void
.end method

.method synthetic blacklist lambda$onPacProxyInstalled$1$android-net-PacProxyManager$PacProxyInstalledListenerProxy(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;Landroid/net/Network;Landroid/net/ProxyInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public blacklist onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    .line 143
    new-instance v0, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;Landroid/net/Network;Landroid/net/ProxyInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 148
    return-void
.end method
