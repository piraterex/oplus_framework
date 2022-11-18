.class Landroid/location/LocationManager$GnssNavigationTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNavigationTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssNavigationTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 3209
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3210
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V
    .locals 4
    .param p1, "transport"    # Landroid/location/LocationManager$GnssNavigationTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3215
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    .line 3216
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNavigationTransport;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNavigationTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 3217
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNavigationTransport;->getListener()Landroid/location/GnssNavigationMessage$Callback;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3215
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/location/ILocationManager;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    return-void
.end method

.method protected bridge synthetic blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3205
    check-cast p1, Landroid/location/LocationManager$GnssNavigationTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->registerTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V
    .locals 1
    .param p1, "transport"    # Landroid/location/LocationManager$GnssNavigationTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3223
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 3224
    return-void
.end method

.method protected bridge synthetic blacklist unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3205
    check-cast p1, Landroid/location/LocationManager$GnssNavigationTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssNavigationTransport;)V

    return-void
.end method
