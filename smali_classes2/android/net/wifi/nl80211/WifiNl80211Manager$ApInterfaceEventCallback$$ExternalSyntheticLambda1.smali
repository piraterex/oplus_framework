.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

.field public final synthetic blacklist f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

    iput-boolean p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/nl80211/NativeWifiClient;

    iget-boolean v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;->f$2:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->lambda$onConnectedClientsChanged$0$android-net-wifi-nl80211-WifiNl80211Manager$ApInterfaceEventCallback(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method
