.class public Landroid/net/wifi/nl80211/IWifiScannerImpl$Default;
.super Ljava/lang/Object;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWifiScannerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortScan()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMaxSsidsPerScan()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z
    .locals 1
    .param p1, "scanSettings"    # Landroid/net/wifi/nl80211/SingleScanSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z
    .locals 1
    .param p1, "pnoSettings"    # Landroid/net/wifi/nl80211/PnoSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopPnoScan()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V
    .locals 0
    .param p1, "handler"    # Landroid/net/wifi/nl80211/IPnoScanEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V
    .locals 0
    .param p1, "handler"    # Landroid/net/wifi/nl80211/IScanEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist unsubscribePnoScanEvents()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist unsubscribeScanEvents()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
