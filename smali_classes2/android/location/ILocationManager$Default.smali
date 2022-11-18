.class public Landroid/location/ILocationManager$Default;
.super Ljava/lang/Object;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p2, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public blacklist addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public blacklist addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/provider/IProviderRequestListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/location/provider/ProviderProperties;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/provider/ProviderProperties;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    .local p3, "locationTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist flushGnssBatch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    return-void
.end method

.method public blacklist geocoderIsPresent()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 1
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/LocationRequest;
    .param p3, "callback"    # Landroid/location/ILocationCallback;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .param p7, "listener"    # Landroid/location/IGeocodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V
    .locals 0
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .param p12, "listener"    # Landroid/location/IGeocodeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist getGnssAntennaInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGnssBatchSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getGnssCapabilities()Landroid/location/GnssCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGnssHardwareModelName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getGnssYearOfHardware()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/LastLocationRequest;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 1
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasProvider(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .locals 0
    .param p1, "corrections"    # Landroid/location/GnssMeasurementCorrections;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist injectLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist isAdasGnssLocationEnabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAutomotiveGnssSuspended()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isExtraLocationControllerPackageEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isLocationEnabledForUser(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/location/IGnssNmeaListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/LocationRequest;
    .param p3, "listener"    # Landroid/location/ILocationListener;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/LocationRequest;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist removeGeofence(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGnssAntennaInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    return-void
.end method

.method public blacklist removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public blacklist removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public blacklist removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/provider/IProviderRequestListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    return-void
.end method

.method public blacklist removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    return-void
.end method

.method public blacklist requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public blacklist requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    return-void
.end method

.method public blacklist setAdasGnssLocationEnabledForUser(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    return-void
.end method

.method public blacklist setAutomotiveGnssSuspended(Z)V
    .locals 0
    .param p1, "suspended"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    return-void
.end method

.method public blacklist setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    return-void
.end method

.method public blacklist setExtraLocationControllerPackageEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    return-void
.end method

.method public blacklist setLocationEnabledForUser(ZI)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    return-void
.end method

.method public blacklist setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    return-void
.end method

.method public blacklist setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    return-void
.end method

.method public blacklist startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "periodNanos"    # J
    .param p3, "listener"    # Landroid/location/ILocationListener;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "listenerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist stopGnssBatch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public blacklist unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/location/IGnssNmeaListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public blacklist unregisterLocationListener(Landroid/location/ILocationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
