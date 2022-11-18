.class Landroid/location/LocationManager$GnssNmeaTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssNmeaTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssNmeaTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 3143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3144
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$GnssNmeaTransport;)V
    .locals 4
    .param p1, "transport"    # Landroid/location/LocationManager$GnssNmeaTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3149
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNmeaTransport;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 3150
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNmeaTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 3151
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssNmeaTransport;->getListener()Landroid/location/OnNmeaMessageListener;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3149
    invoke-interface {v0, p1, v1, v2, v3}, Landroid/location/ILocationManager;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3152
    return-void
.end method

.method protected bridge synthetic blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3139
    check-cast p1, Landroid/location/LocationManager$GnssNmeaTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssNmeaTransportManager;->registerTransport(Landroid/location/LocationManager$GnssNmeaTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$GnssNmeaTransport;)V
    .locals 1
    .param p1, "transport"    # Landroid/location/LocationManager$GnssNmeaTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3157
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    .line 3158
    return-void
.end method

.method protected bridge synthetic blacklist unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3139
    check-cast p1, Landroid/location/LocationManager$GnssNmeaTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssNmeaTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssNmeaTransport;)V

    return-void
.end method
