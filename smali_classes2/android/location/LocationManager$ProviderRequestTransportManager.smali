.class Landroid/location/LocationManager$ProviderRequestTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderRequestTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$ProviderRequestTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 3231
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3232
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V
    .locals 1
    .param p1, "transport"    # Landroid/location/LocationManager$ProviderRequestTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3237
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 3238
    return-void
.end method

.method protected bridge synthetic blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3227
    check-cast p1, Landroid/location/LocationManager$ProviderRequestTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->registerTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V
    .locals 1
    .param p1, "transport"    # Landroid/location/LocationManager$ProviderRequestTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3243
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 3244
    return-void
.end method

.method protected bridge synthetic blacklist unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3227
    check-cast p1, Landroid/location/LocationManager$ProviderRequestTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->unregisterTransport(Landroid/location/LocationManager$ProviderRequestTransport;)V

    return-void
.end method
