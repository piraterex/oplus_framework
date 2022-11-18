.class Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
.super Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanEventHandler"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 438
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;-><init>()V

    .line 439
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 440
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 441
    return-void
.end method


# virtual methods
.method public blacklist OnPnoNetworkFound()V
    .locals 4

    .line 445
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Pno scan result event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 448
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    throw v2
.end method

.method public blacklist OnPnoScanFailed()V
    .locals 4

    .line 456
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Pno Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    nop

    .line 463
    return-void

    .line 461
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    throw v2
.end method

.method synthetic blacklist lambda$OnPnoNetworkFound$0$android-net-wifi-nl80211-WifiNl80211Manager$PnoScanEventHandler()V
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanResultReady()V

    return-void
.end method

.method synthetic blacklist lambda$OnPnoScanFailed$1$android-net-wifi-nl80211-WifiNl80211Manager$PnoScanEventHandler()V
    .locals 1

    .line 459
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed()V

    return-void
.end method
