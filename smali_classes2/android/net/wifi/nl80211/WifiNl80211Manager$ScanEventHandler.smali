.class Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;
.super Landroid/net/wifi/nl80211/IScanEvent$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanEventHandler"
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

    .line 232
    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IScanEvent$Stub;-><init>()V

    .line 233
    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 234
    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    .line 235
    return-void
.end method


# virtual methods
.method public blacklist OnScanFailed()V
    .locals 4

    .line 250
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 253
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw v2
.end method

.method public blacklist OnScanResultReady()V
    .locals 4

    .line 239
    const-string v0, "WifiNl80211Manager"

    const-string v1, "Scan result ready event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 242
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    nop

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    throw v2
.end method

.method synthetic blacklist lambda$OnScanFailed$1$android-net-wifi-nl80211-WifiNl80211Manager$ScanEventHandler()V
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed()V

    return-void
.end method

.method synthetic blacklist lambda$OnScanResultReady$0$android-net-wifi-nl80211-WifiNl80211Manager$ScanEventHandler()V
    .locals 1

    .line 242
    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanResultReady()V

    return-void
.end method
