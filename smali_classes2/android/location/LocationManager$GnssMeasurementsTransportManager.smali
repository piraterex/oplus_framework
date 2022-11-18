.class Landroid/location/LocationManager$GnssMeasurementsTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssMeasurementsTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssMeasurementsTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 1

    .line 3165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    .line 3166
    return-void
.end method


# virtual methods
.method protected blacklist registerTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V
    .locals 6
    .param p1, "transport"    # Landroid/location/LocationManager$GnssMeasurementsTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3171
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getRequest()Landroid/location/GnssMeasurementRequest;

    move-result-object v1

    .line 3172
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 3173
    invoke-virtual {p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getListener()Landroid/location/GnssMeasurementsEvent$Callback;

    move-result-object v2

    invoke-static {v2}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3171
    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/location/ILocationManager;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    return-void
.end method

.method protected bridge synthetic blacklist registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3161
    check-cast p1, Landroid/location/LocationManager$GnssMeasurementsTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->registerTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V

    return-void
.end method

.method protected blacklist unregisterTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V
    .locals 1
    .param p1, "transport"    # Landroid/location/LocationManager$GnssMeasurementsTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3179
    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 3180
    return-void
.end method

.method protected bridge synthetic blacklist unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3161
    check-cast p1, Landroid/location/LocationManager$GnssMeasurementsTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssMeasurementsTransport;)V

    return-void
.end method
