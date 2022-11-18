.class public Landroid/location/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$LocationEnabledCache;,
        Landroid/location/LocationManager$BatchedLocationCallbackTransport;,
        Landroid/location/LocationManager$BatchedLocationCallbackWrapper;,
        Landroid/location/LocationManager$ProviderRequestTransport;,
        Landroid/location/LocationManager$GnssNavigationTransport;,
        Landroid/location/LocationManager$GnssAntennaInfoTransport;,
        Landroid/location/LocationManager$GnssMeasurementsTransport;,
        Landroid/location/LocationManager$GnssNmeaTransport;,
        Landroid/location/LocationManager$GpsStatusTransport;,
        Landroid/location/LocationManager$GnssStatusTransport;,
        Landroid/location/LocationManager$GpsAdapter;,
        Landroid/location/LocationManager$LocationListenerTransport;,
        Landroid/location/LocationManager$GetCurrentLocationTransport;,
        Landroid/location/LocationManager$ProviderRequestTransportManager;,
        Landroid/location/LocationManager$GnssNavigationTransportManager;,
        Landroid/location/LocationManager$GnssAntennaTransportManager;,
        Landroid/location/LocationManager$GnssMeasurementsTransportManager;,
        Landroid/location/LocationManager$GnssNmeaTransportManager;,
        Landroid/location/LocationManager$GnssStatusTransportManager;,
        Landroid/location/LocationManager$ProviderRequestLazyLoader;,
        Landroid/location/LocationManager$GnssLazyLoader;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ADAS_GNSS_ENABLED_CHANGED:Ljava/lang/String; = "android.location.action.ADAS_GNSS_ENABLED_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_GNSS_CAPABILITIES_CHANGED:Ljava/lang/String; = "android.location.action.GNSS_CAPABILITIES_CHANGED"

.field public static final blacklist BLOCK_GPS_STATUS_USAGE:J = 0x895af92L

.field public static final blacklist BLOCK_IMMUTABLE_PENDING_INTENTS:J = 0xa3618e8L

.field public static final blacklist BLOCK_INCOMPLETE_LOCATIONS:J = 0x8e105b9L

.field public static final blacklist BLOCK_PENDING_INTENT_SYSTEM_API_USAGE:J = 0xa204608L

.field public static final blacklist BLOCK_UNTARGETED_PENDING_INTENTS:J = 0x8e10106L

.field private static final blacklist CACHE_KEY_LOCATION_ENABLED_PROPERTY:Ljava/lang/String; = "cache_key.location_enabled"

.field public static final blacklist DELIVER_HISTORICAL_LOCATIONS:J = 0x45c18f6L

.field public static final whitelist EXTRA_ADAS_GNSS_ENABLED:Ljava/lang/String; = "android.location.extra.ADAS_GNSS_ENABLED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_GNSS_CAPABILITIES:Ljava/lang/String; = "android.location.extra.GNSS_CAPABILITIES"

.field public static final whitelist EXTRA_LOCATION_ENABLED:Ljava/lang/String; = "android.location.extra.LOCATION_ENABLED"

.field public static final whitelist EXTRA_PROVIDER_ENABLED:Ljava/lang/String; = "android.location.extra.PROVIDER_ENABLED"

.field public static final whitelist EXTRA_PROVIDER_NAME:Ljava/lang/String; = "android.location.extra.PROVIDER_NAME"

.field public static final whitelist FUSED_PROVIDER:Ljava/lang/String; = "fused"

.field public static final blacklist GET_PROVIDER_SECURITY_EXCEPTIONS:J = 0x8ff173aL

.field public static final whitelist GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final greylist-max-o HIGH_POWER_REQUEST_CHANGE_ACTION:Ljava/lang/String; = "android.location.HIGH_POWER_REQUEST_CHANGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_FLUSH_COMPLETE:Ljava/lang/String; = "flushComplete"

.field public static final whitelist KEY_LOCATIONS:Ljava/lang/String; = "locations"

.field public static final whitelist KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final whitelist KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final whitelist KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final whitelist KEY_STATUS_CHANGED:Ljava/lang/String; = "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist MAX_SINGLE_LOCATION_TIMEOUT_MS:J = 0x7530L

.field public static final greylist-max-o METADATA_SETTINGS_FOOTER_STRING:Ljava/lang/String; = "com.android.settings.location.FOOTER_STRING"

.field public static final whitelist MODE_CHANGED_ACTION:Ljava/lang/String; = "android.location.MODE_CHANGED"

.field public static final whitelist NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field public static final whitelist PASSIVE_PROVIDER:Ljava/lang/String; = "passive"

.field public static final whitelist PROVIDERS_CHANGED_ACTION:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"

.field public static final greylist-max-o SETTINGS_FOOTER_DISPLAYED_ACTION:Ljava/lang/String; = "com.android.settings.location.DISPLAYED_FOOTER"

.field private static volatile blacklist sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

.field private static final blacklist sLocationListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/location/LocationListener;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/location/LocationManager$LocationListenerTransport;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mContext:Landroid/content/Context;

.field public blacklist mLocationManagerExt:Landroid/location/ILocationManagerExt;

.field final blacklist mService:Landroid/location/ILocationManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 444
    new-instance v0, Landroid/location/LocationManager$LocationEnabledCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/location/LocationManager$LocationEnabledCache;-><init>(I)V

    sput-object v0, Landroid/location/LocationManager;->sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

    .line 449
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/location/ILocationManager;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    const-class v0, Landroid/location/ILocationManagerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationManagerExt;

    iput-object v0, p0, Landroid/location/LocationManager;->mLocationManagerExt:Landroid/location/ILocationManagerExt;

    .line 483
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 484
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationManager;

    iput-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    .line 485
    return-void
.end method

.method public static blacklist disableLocalLocationEnabledCaches()V
    .locals 1

    .line 3754
    const/4 v0, 0x0

    sput-object v0, Landroid/location/LocationManager;->sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

    .line 3755
    return-void
.end method

.method static blacklist getService()Landroid/location/ILocationManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    :try_start_0
    const-string v0, "location"

    .line 438
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 437
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist invalidateLocalLocationEnabledCaches()V
    .locals 1

    .line 3747
    const-string v0, "cache_key.location_enabled"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    .line 3748
    return-void
.end method


# virtual methods
.method public greylist addGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2683
    const/4 v0, 0x0

    return v0
.end method

.method public greylist addGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2889
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2456
    const-wide/32 v0, 0x895af92

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2466
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    new-instance v1, Landroid/location/LocationManager$GpsStatusTransport;

    new-instance v2, Landroid/os/HandlerExecutor;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3, p1}, Landroid/location/LocationManager$GpsStatusTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GpsStatus$Listener;)V

    invoke-virtual {v0, p1, v1}, Landroid/location/LocationManager$GnssStatusTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2468
    const/4 v0, 0x1

    return v0

    .line 2459
    :cond_0
    new-instance v0, Landroid/location/OplusLocationManager;

    invoke-direct {v0}, Landroid/location/OplusLocationManager;-><init>()V

    .line 2460
    .local v0, "locMgr":Landroid/location/OplusLocationManager;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/location/OplusLocationManager;->handleCompatibilityException(Landroid/content/Context;)V

    .line 2462
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GpsStatus APIs not supported, please use GnssStatus APIs instead"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2590
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist addNmeaListener(Landroid/location/OnNmeaMessageListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z
    .locals 1
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2636
    if-nez p2, :cond_0

    .line 2637
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2640
    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->addNmeaListener(Ljava/util/concurrent/Executor;Landroid/location/OnNmeaMessageListener;)Z

    move-result v0

    return v0
.end method

.method public whitelist addNmeaListener(Ljava/util/concurrent/Executor;Landroid/location/OnNmeaMessageListener;)Z
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 2659
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNmeaListeners:Landroid/location/LocationManager$GnssNmeaTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssNmeaTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssNmeaTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/OnNmeaMessageListener;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssNmeaTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2661
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist addProviderRequestChangedListener(Ljava/util/concurrent/Executor;Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/location/provider/ProviderRequest$ChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2994
    sget-object v0, Landroid/location/LocationManager$ProviderRequestLazyLoader;->sProviderRequestListeners:Landroid/location/LocationManager$ProviderRequestTransportManager;

    new-instance v1, Landroid/location/LocationManager$ProviderRequestTransport;

    invoke-direct {v1, p1, p2}, Landroid/location/LocationManager$ProviderRequestTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/location/provider/ProviderRequest$ChangedListener;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2996
    return-void
.end method

.method public whitelist addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F
    .param p6, "expiration"    # J
    .param p8, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 2288
    const/4 v0, 0x1

    if-eqz p8, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null pending intent"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2289
    const-wide/32 v1, 0x8e10106

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2290
    invoke-virtual {p8}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v1

    const-string v2, "pending intent must be targeted to a package"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2294
    :cond_1
    const-wide/32 v1, 0xa3618e8

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2297
    invoke-virtual {p8}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2298
    new-instance v1, Landroid/location/OplusLocationManager;

    invoke-direct {v1}, Landroid/location/OplusLocationManager;-><init>()V

    .line 2299
    .local v1, "locMgr":Landroid/location/OplusLocationManager;
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/location/OplusLocationManager;->handleCompatibilityException(Landroid/content/Context;)V

    .line 2302
    .end local v1    # "locMgr":Landroid/location/OplusLocationManager;
    :cond_2
    invoke-virtual {p8}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v1

    xor-int/2addr v0, v1

    const-string v1, "pending intent must be mutable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2306
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gez v0, :cond_4

    .line 2307
    const-wide p6, 0x7fffffffffffffffL

    .line 2311
    :cond_4
    move-wide v0, p1

    move-wide v2, p3

    move v4, p5

    move-wide v5, p6

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/location/Geofence;->createCircle(DDFJ)Landroid/location/Geofence;

    move-result-object v0

    .line 2312
    .local v0, "fence":Landroid/location/Geofence;
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2313
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2312
    invoke-interface {v1, v0, p8, v2, v3}, Landroid/location/ILocationManager;->requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    .end local v0    # "fence":Landroid/location/Geofence;
    nop

    .line 2317
    return-void

    .line 2314
    :catch_0
    move-exception v0

    .line 2315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/location/provider/ProviderProperties;

    .line 2109
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V

    .line 2110
    return-void
.end method

.method public whitelist addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/Set;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "properties"    # Landroid/location/provider/ProviderProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/provider/ProviderProperties;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2128
    .local p3, "extraAttributionTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2129
    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "invalid null properties"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2130
    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, "invalid null extra attribution tags"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2134
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2135
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v7

    .line 2134
    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v2 .. v7}, Landroid/location/ILocationManager;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    nop

    .line 2139
    return-void

    .line 2136
    :catch_0
    move-exception v0

    .line 2137
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "requiresNetwork"    # Z
    .param p3, "requiresSatellite"    # Z
    .param p4, "requiresCell"    # Z
    .param p5, "hasMonetaryCost"    # Z
    .param p6, "supportsAltitude"    # Z
    .param p7, "supportsSpeed"    # Z
    .param p8, "supportsBearing"    # Z
    .param p9, "powerUsage"    # I
    .param p10, "accuracy"    # I

    .line 2083
    new-instance v0, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v0}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 2084
    invoke-virtual {v0, p2}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2085
    invoke-virtual {v0, p3}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2086
    invoke-virtual {v0, p4}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2087
    invoke-virtual {v0, p5}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2088
    invoke-virtual {v0, p6}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2089
    invoke-virtual {v0, p7}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2090
    invoke-virtual {v0, p8}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2091
    invoke-virtual {v0, p9}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2092
    invoke-virtual {v0, p10}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v0

    .line 2093
    invoke-virtual {v0}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v0

    .line 2083
    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V

    .line 2094
    return-void
.end method

.method public whitelist clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 2237
    return-void
.end method

.method public whitelist clearTestProviderLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2204
    return-void
.end method

.method public whitelist clearTestProviderStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2254
    return-void
.end method

.method public whitelist flushGnssBatch()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3088
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->flushGnssBatch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3091
    nop

    .line 3092
    return-void

    .line 3089
    :catch_0
    move-exception v0

    .line 3090
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1829
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .locals 2

    .line 493
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .line 1892
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null criteria"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1895
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1896
    :catch_0
    move-exception v0

    .line 1897
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentLocation(Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/LocationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 959
    .local p4, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 960
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 962
    return-void
.end method

.method public whitelist getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroid/location/LocationRequest;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/location/LocationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1005
    .local p5, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1006
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null location request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1008
    if-eqz p3, :cond_2

    .line 1009
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1013
    :cond_2
    iget-object v0, p0, Landroid/location/LocationManager;->mLocationManagerExt:Landroid/location/ILocationManagerExt;

    .line 1014
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getLastKnownLocation"

    invoke-interface {v0, v1, v2, v3}, Landroid/location/ILocationManagerExt;->checkPermission(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1015
    return-void

    .line 1018
    :cond_3
    new-instance v4, Landroid/location/LocationManager$GetCurrentLocationTransport;

    invoke-direct {v4, p4, p5, p3}, Landroid/location/LocationManager$GetCurrentLocationTransport;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/CancellationSignal;)V

    .line 1023
    .local v4, "transport":Landroid/location/LocationManager$GetCurrentLocationTransport;
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1024
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1025
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {p5}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1023
    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Landroid/location/ILocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    .local v0, "cancelRemote":Landroid/os/ICancellationSignal;
    nop

    .line 1030
    if-eqz p3, :cond_4

    .line 1031
    invoke-virtual {p3, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1033
    :cond_4
    return-void

    .line 1026
    .end local v0    # "cancelRemote":Landroid/os/ICancellationSignal;
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 9
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 925
    .local p4, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 927
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v5

    .line 925
    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 929
    return-void
.end method

.method public whitelist getExtraLocationControllerPackage()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 530
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssAntennaInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 2394
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2395
    :catch_0
    move-exception v0

    .line 2396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssBatchSize()I
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3026
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssBatchSize()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3027
    :catch_0
    move-exception v0

    .line 3028
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssCapabilities()Landroid/location/GnssCapabilities;
    .locals 2

    .line 2352
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2353
    :catch_0
    move-exception v0

    .line 2354
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssHardwareModelName()Ljava/lang/String;
    .locals 2

    .line 2379
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2380
    :catch_0
    move-exception v0

    .line 2381
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGnssYearOfHardware()I
    .locals 2

    .line 2364
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssYearOfHardware()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 3
    .param p1, "status"    # Landroid/location/GpsStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2417
    const-wide/32 v0, 0x895af92

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2427
    sget-object v0, Landroid/location/LocationManager$GpsStatusTransport;->sGnssStatus:Landroid/location/GnssStatus;

    .line 2428
    .local v0, "gnssStatus":Landroid/location/GnssStatus;
    sget v1, Landroid/location/LocationManager$GpsStatusTransport;->sTtff:I

    .line 2429
    .local v1, "ttff":I
    if-eqz v0, :cond_1

    .line 2430
    if-nez p1, :cond_0

    .line 2431
    invoke-static {v0, v1}, Landroid/location/GpsStatus;->create(Landroid/location/GnssStatus;I)Landroid/location/GpsStatus;

    move-result-object p1

    goto :goto_0

    .line 2433
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GnssStatus;I)V

    goto :goto_0

    .line 2435
    :cond_1
    if-nez p1, :cond_2

    .line 2438
    invoke-static {}, Landroid/location/GpsStatus;->createEmpty()Landroid/location/GpsStatus;

    move-result-object p1

    .line 2440
    :cond_2
    :goto_0
    return-object p1

    .line 2420
    .end local v0    # "gnssStatus":Landroid/location/GnssStatus;
    .end local v1    # "ttff":I
    :cond_3
    new-instance v0, Landroid/location/OplusLocationManager;

    invoke-direct {v0}, Landroid/location/OplusLocationManager;-><init>()V

    .line 2421
    .local v0, "locMgr":Landroid/location/OplusLocationManager;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/location/OplusLocationManager;->handleCompatibilityException(Landroid/content/Context;)V

    .line 2423
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GpsStatus APIs not supported, please use GnssStatus APIs instead"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .locals 2

    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getIgnoreSettingsWhitelist()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 506
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 858
    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0}, Landroid/location/LastLocationRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLastKnownLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;)Landroid/location/Location;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "lastLocationRequest"    # Landroid/location/LastLocationRequest;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 886
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 887
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null last location request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 891
    iget-object v0, p0, Landroid/location/LocationManager;->mLocationManagerExt:Landroid/location/ILocationManagerExt;

    .line 892
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "getLastKnownLocation"

    invoke-interface {v0, v1, v2, v3}, Landroid/location/ILocationManagerExt;->checkPermission(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 893
    const/4 v0, 0x0

    return-object v0

    .line 897
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 898
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 897
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/location/ILocationManager;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o getLastLocation()Landroid/location/Location;
    .locals 1

    .line 833
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1916
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1918
    const-wide/32 v0, 0x8ff173a

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1919
    const-string v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    if-nez v0, :cond_2

    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1928
    :cond_1
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2

    .line 1921
    :cond_2
    :goto_1
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1922
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1921
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 1925
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1924
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1934
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    :goto_2
    :try_start_1
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v0

    .line 1935
    .local v0, "properties":Landroid/location/provider/ProviderProperties;
    new-instance v2, Landroid/location/LocationProvider;

    invoke-direct {v2, p1, v0}, Landroid/location/LocationProvider;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderProperties;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 1939
    .end local v0    # "properties":Landroid/location/provider/ProviderProperties;
    :catch_1
    move-exception v0

    .line 1940
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1936
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 1938
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method public blacklist getProviderPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2038
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2039
    :catch_0
    move-exception v0

    .line 2040
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1956
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1959
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1960
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 2
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

    .line 1860
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null criteria"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1863
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1864
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getProviders(Z)Ljava/util/List;
    .locals 2
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1844
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/location/ILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1845
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasProvider(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 1812
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1815
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->hasProvider(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    .locals 2
    .param p1, "measurementCorrections"    # Landroid/location/GnssMeasurementCorrections;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2827
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2829
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2832
    nop

    .line 2833
    return-void

    .line 2830
    :catch_0
    move-exception v0

    .line 2831
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o injectLocation(Landroid/location/Location;)Z
    .locals 3
    .param p1, "location"    # Landroid/location/Location;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1676
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null location"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1677
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v1

    const-string v2, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1681
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v1, p1}, Landroid/location/ILocationManager;->injectLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    return v0

    .line 1683
    :catch_0
    move-exception v0

    .line 1684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAdasGnssLocationEnabled()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 684
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isAutomotiveGnssSuspended()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 813
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->isAutomotiveGnssSuspended()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isExtraLocationControllerPackageEnabled()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 574
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->isExtraLocationControllerPackageEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isLocationEnabled()Z
    .locals 1

    .line 623
    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist isLocationEnabledForUser(Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 640
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ltz v0, :cond_0

    .line 641
    sget-object v0, Landroid/location/LocationManager;->sLocationEnabledCache:Landroid/location/LocationManager$LocationEnabledCache;

    .line 642
    .local v0, "cache":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 648
    .end local v0    # "cache":Landroid/app/PropertyInvalidatedCache;, "Landroid/app/PropertyInvalidatedCache<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->isLocationEnabledForUser(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isProviderEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .line 723
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->isProviderEnabledForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProviderEnabledForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 745
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 748
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isProviderPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1976
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist isProviderPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1997
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/location/LocationManager;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2017
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p3}, Landroid/location/ILocationManager;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2019
    :catch_0
    move-exception v0

    .line 2020
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAntennaInfoListener(Ljava/util/concurrent/Executor;Landroid/location/GnssAntennaInfo$Listener;)Z
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/location/GnssAntennaInfo$Listener;

    .line 2865
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssAntennaInfoListeners:Landroid/location/LocationManager$GnssAntennaTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssAntennaInfoTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssAntennaInfoTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssAntennaInfo$Listener;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2867
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerGnssBatchedLocationCallback(JZLandroid/location/BatchedLocationCallback;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "callback"    # Landroid/location/BatchedLocationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3057
    if-nez p5, :cond_0

    .line 3058
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p5, v0

    .line 3062
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    new-instance v3, Landroid/location/LocationManager$BatchedLocationCallbackTransport;

    invoke-direct {v3, p4, p5}, Landroid/location/LocationManager$BatchedLocationCallbackTransport;-><init>(Landroid/location/BatchedLocationCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 3065
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 3066
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 3067
    invoke-static {p4}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 3062
    move-wide v1, p1

    invoke-interface/range {v0 .. v6}, Landroid/location/ILocationManager;->startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3068
    const/4 v0, 0x1

    return v0

    .line 3069
    :catch_0
    move-exception v0

    .line 3070
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .locals 3
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2809
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssMeasurementsListeners:Landroid/location/LocationManager$GnssMeasurementsTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssMeasurementsTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p2, v2, p1, p3}, Landroid/location/LocationManager$GnssMeasurementsTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssMeasurementRequest;Landroid/location/GnssMeasurementsEvent$Callback;)V

    invoke-virtual {v0, p3, v1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2811
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2714
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z
    .locals 2
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2733
    if-nez p2, :cond_0

    .line 2734
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2737
    :cond_0
    new-instance v0, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {v0}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, p1}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Landroid/location/GnssRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .locals 1
    .param p1, "request"    # Landroid/location/GnssRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2786
    invoke-virtual {p1}, Landroid/location/GnssRequest;->toGnssMeasurementRequest()Landroid/location/GnssMeasurementRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssMeasurementsCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2759
    new-instance v0, Landroid/location/GnssMeasurementRequest$Builder;

    invoke-direct {v0}, Landroid/location/GnssMeasurementRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/location/GnssMeasurementRequest$Builder;->build()Landroid/location/GnssMeasurementRequest;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementRequest;Ljava/util/concurrent/Executor;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2920
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssNavigationMessage$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;Landroid/os/Handler;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2940
    if-nez p2, :cond_0

    .line 2941
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2944
    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssNavigationMessageCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssNavigationMessage$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssNavigationMessageCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssNavigationMessage$Callback;)Z
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 2966
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNavigationListeners:Landroid/location/LocationManager$GnssNavigationTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssNavigationTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssNavigationTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssNavigationMessage$Callback;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2968
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2512
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z
    .locals 4
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2531
    if-nez p2, :cond_0

    .line 2532
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    .line 2537
    :cond_0
    iget-object v0, p0, Landroid/location/LocationManager;->mLocationManagerExt:Landroid/location/ILocationManagerExt;

    .line 2538
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "registerGnssStatusCallback"

    invoke-interface {v0, v1, v2, v3}, Landroid/location/ILocationManagerExt;->checkPermission(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2539
    const/4 v0, 0x0

    return v0

    .line 2542
    :cond_1
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v0, p1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerGnssStatusCallback(Ljava/util/concurrent/Executor;Landroid/location/GnssStatus$Callback;)Z
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;

    .line 2563
    iget-object v0, p0, Landroid/location/LocationManager;->mLocationManagerExt:Landroid/location/ILocationManagerExt;

    .line 2564
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "registerGnssStatusCallback"

    invoke-interface {v0, v1, v2, v3}, Landroid/location/ILocationManagerExt;->checkPermission(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2565
    const/4 v0, 0x0

    return v0

    .line 2568
    :cond_0
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    new-instance v1, Landroid/location/LocationManager$GnssStatusTransport;

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2, p2}, Landroid/location/LocationManager$GnssStatusTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssStatus$Callback;)V

    invoke-virtual {v0, p2, v1}, Landroid/location/LocationManager$GnssStatusTransportManager;->addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V

    .line 2570
    const/4 v0, 0x1

    return v0
.end method

.method public greylist removeGpsMeasurementListener(Landroid/location/GpsMeasurementsEvent$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/GpsMeasurementsEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2695
    return-void
.end method

.method public greylist removeGpsNavigationMessageListener(Landroid/location/GpsNavigationMessageEvent$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/GpsNavigationMessageEvent$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2901
    return-void
.end method

.method public whitelist removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 3
    .param p1, "listener"    # Landroid/location/GpsStatus$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2481
    const-wide/32 v0, 0x895af92

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2491
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssStatusTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2492
    return-void

    .line 2484
    :cond_0
    new-instance v0, Landroid/location/OplusLocationManager;

    invoke-direct {v0}, Landroid/location/OplusLocationManager;-><init>()V

    .line 2485
    .local v0, "locMgr":Landroid/location/OplusLocationManager;
    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/location/OplusLocationManager;->handleCompatibilityException(Landroid/content/Context;)V

    .line 2487
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "GpsStatus APIs not supported, please use GnssStatus APIs instead"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2599
    return-void
.end method

.method public whitelist removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/OnNmeaMessageListener;

    .line 2670
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNmeaListeners:Landroid/location/LocationManager$GnssNmeaTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssNmeaTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2671
    return-void
.end method

.method public whitelist removeProviderRequestChangedListener(Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/provider/ProviderRequest$ChangedListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3008
    sget-object v0, Landroid/location/LocationManager$ProviderRequestLazyLoader;->sProviderRequestListeners:Landroid/location/LocationManager$ProviderRequestTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$ProviderRequestTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 3009
    return-void
.end method

.method public whitelist removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 2336
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null pending intent"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2339
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGeofence(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2342
    nop

    .line 2343
    return-void

    .line 2340
    :catch_0
    move-exception v0

    .line 2341
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeTestProvider(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 2153
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2156
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2157
    invoke-virtual {v2}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    .line 2156
    invoke-interface {v0, p1, v1, v2}, Landroid/location/ILocationManager;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    nop

    .line 2161
    return-void

    .line 2158
    :catch_0
    move-exception v0

    .line 2159
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeUpdates(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 1793
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null pending intent"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1796
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    nop

    .line 1800
    return-void

    .line 1797
    :catch_0
    move-exception v0

    .line 1798
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeUpdates(Landroid/location/LocationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/location/LocationListener;

    .line 1766
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1769
    :try_start_0
    sget-object v0, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1771
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$LocationListenerTransport;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1772
    .local v2, "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :goto_1
    if-eqz v2, :cond_2

    .line 1773
    invoke-virtual {v2}, Landroid/location/LocationManager$LocationListenerTransport;->unregister()V

    .line 1774
    iget-object v3, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v3, v2}, Landroid/location/ILocationManager;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 1776
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v2    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :cond_2
    monitor-exit v0

    .line 1779
    nop

    .line 1780
    return-void

    .line 1776
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/location/LocationManager;
    .end local p1    # "listener":Landroid/location/LocationListener;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1777
    .restart local p0    # "this":Landroid/location/LocationManager;
    .restart local p1    # "listener":Landroid/location/LocationListener;
    :catch_0
    move-exception v0

    .line 1778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "requestCode"    # I

    .line 1740
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1741
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null pending intent"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1744
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationManager;->requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    nop

    .line 1748
    return-void

    .line 1745
    :catch_0
    move-exception v0

    .line 1746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestFlush(Ljava/lang/String;Landroid/location/LocationListener;I)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "requestCode"    # I

    .line 1706
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1707
    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "invalid null listener"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1709
    sget-object v2, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 1710
    :try_start_0
    invoke-virtual {v2, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1711
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager$LocationListenerTransport;

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 1713
    .local v4, "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    const-string/jumbo v1, "unregistered listener cannot be flushed"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    :try_start_1
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, v4, p3}, Landroid/location/ILocationManager;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1720
    nop

    .line 1721
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v4    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :try_start_2
    monitor-exit v2

    .line 1722
    return-void

    .line 1718
    .restart local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .restart local v4    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local p0    # "this":Landroid/location/LocationManager;
    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "listener":Landroid/location/LocationListener;
    .end local p3    # "requestCode":I
    throw v1

    .line 1721
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v4    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    .restart local p0    # "this":Landroid/location/LocationManager;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "listener":Landroid/location/LocationListener;
    .restart local p3    # "requestCode":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "minTimeMs"    # J
    .param p3, "minDistanceM"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1397
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1398
    nop

    .line 1400
    invoke-static {p4, p1, p2, p3, v0}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1398
    const-string v1, "fused"

    invoke-virtual {p0, v1, v0, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1402
    return-void
.end method

.method public whitelist requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .param p1, "minTimeMs"    # J
    .param p3, "minDistanceM"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1297
    new-instance v0, Landroid/os/Handler;

    if-nez p6, :cond_0

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1298
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v6, Landroid/os/HandlerExecutor;

    invoke-direct {v6, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1300
    return-void
.end method

.method public whitelist requestLocationUpdates(JFLandroid/location/Criteria;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .locals 3
    .param p1, "minTimeMs"    # J
    .param p3, "minDistanceM"    # F
    .param p4, "criteria"    # Landroid/location/Criteria;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/location/LocationListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1335
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1337
    nop

    .line 1339
    invoke-static {p4, p1, p2, p3, v0}, Landroid/location/LocationRequest;->createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1337
    const-string v1, "fused"

    invoke-virtual {p0, v1, v0, p5, p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1342
    return-void
.end method

.method public whitelist requestLocationUpdates(Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1495
    if-nez p1, :cond_0

    .line 1496
    invoke-static {}, Landroid/location/LocationRequest;->create()Landroid/location/LocationRequest;

    move-result-object p1

    .line 1498
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1499
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1500
    return-void
.end method

.method public whitelist requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1435
    new-instance v0, Landroid/os/Handler;

    if-nez p3, :cond_0

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1436
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v1, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1437
    return-void
.end method

.method public whitelist requestLocationUpdates(Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/location/LocationListener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1465
    if-nez p1, :cond_0

    .line 1466
    invoke-static {}, Landroid/location/LocationRequest;->create()Landroid/location/LocationRequest;

    move-result-object p1

    .line 1468
    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1469
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1470
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 1363
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1365
    nop

    .line 1367
    invoke-static {p1, p2, p3, p4, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1365
    invoke-virtual {p0, p1, v0, p5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1369
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;

    .line 1198
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1199
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "listener"    # Landroid/location/LocationListener;
    .param p6, "looper"    # Landroid/os/Looper;

    .line 1226
    new-instance v0, Landroid/os/Handler;

    if-nez p6, :cond_0

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1227
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v6, Landroid/os/HandlerExecutor;

    invoke-direct {v6, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLjava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1229
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;JFLjava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTimeMs"    # J
    .param p4, "minDistanceM"    # F
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Landroid/location/LocationListener;

    .line 1260
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1262
    nop

    .line 1264
    invoke-static {p1, p2, p3, p4, v0}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v0

    .line 1262
    invoke-virtual {p0, p1, v0, p5, p6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1267
    return-void
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroid/location/LocationRequest;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 1619
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1620
    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "invalid null location request"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1621
    if-eqz p3, :cond_2

    move v0, v1

    :cond_2
    const-string v2, "invalid null pending intent"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1625
    iget-object v0, p0, Landroid/location/LocationManager;->mLocationManagerExt:Landroid/location/ILocationManagerExt;

    .line 1626
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v4, "requestLocationUpdates"

    invoke-interface {v0, v2, v3, v4}, Landroid/location/ILocationManagerExt;->checkPermission(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1627
    return-void

    .line 1630
    :cond_3
    const-wide/32 v2, 0x8e10106

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1631
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v0

    const-string v2, "pending intent must be targeted to a package"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1635
    :cond_4
    const-wide/32 v2, 0xa3618e8

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1638
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1639
    new-instance v0, Landroid/location/OplusLocationManager;

    invoke-direct {v0}, Landroid/location/OplusLocationManager;-><init>()V

    .line 1640
    .local v0, "locMgr":Landroid/location/OplusLocationManager;
    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/location/OplusLocationManager;->handleCompatibilityException(Landroid/content/Context;)V

    .line 1643
    .end local v0    # "locMgr":Landroid/location/OplusLocationManager;
    :cond_5
    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v1, "pending intent must be mutable"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1648
    :cond_6
    :try_start_0
    iget-object v2, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1649
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 1648
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v7}, Landroid/location/ILocationManager;->registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    nop

    .line 1653
    return-void

    .line 1650
    :catch_0
    move-exception v0

    .line 1651
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    .locals 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationRequest"    # Landroid/location/LocationRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/location/LocationListener;

    .line 1564
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1565
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null location request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1568
    iget-object v0, p0, Landroid/location/LocationManager;->mLocationManagerExt:Landroid/location/ILocationManagerExt;

    .line 1569
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "requestLocationUpdates"

    invoke-interface {v0, v1, v2, v3}, Landroid/location/ILocationManagerExt;->checkPermission(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1570
    return-void

    .line 1574
    :cond_2
    :try_start_0
    sget-object v0, Landroid/location/LocationManager;->sLocationListeners:Ljava/util/WeakHashMap;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    :try_start_1
    invoke-virtual {v0, p4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1577
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager$LocationListenerTransport;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 1578
    .local v2, "transport":Landroid/location/LocationManager$LocationListenerTransport;
    :goto_2
    if-nez v2, :cond_4

    .line 1579
    new-instance v3, Landroid/location/LocationManager$LocationListenerTransport;

    invoke-direct {v3, p4, p3}, Landroid/location/LocationManager$LocationListenerTransport;-><init>(Landroid/location/LocationListener;Ljava/util/concurrent/Executor;)V

    move-object v2, v3

    goto :goto_3

    .line 1581
    :cond_4
    invoke-virtual {v2}, Landroid/location/LocationManager$LocationListenerTransport;->isRegistered()Z

    move-result v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1582
    invoke-virtual {v2, p3}, Landroid/location/LocationManager$LocationListenerTransport;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 1585
    :goto_3
    iget-object v4, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 1586
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    .line 1587
    invoke-static {p4}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1585
    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    invoke-interface/range {v4 .. v10}, Landroid/location/ILocationManager;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p4, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    nop

    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/LocationManager$LocationListenerTransport;>;"
    .end local v2    # "transport":Landroid/location/LocationManager$LocationListenerTransport;
    monitor-exit v0

    .line 1593
    nop

    .line 1594
    return-void

    .line 1590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/location/LocationManager;
    .end local p1    # "provider":Ljava/lang/String;
    .end local p2    # "locationRequest":Landroid/location/LocationRequest;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "listener":Landroid/location/LocationListener;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1591
    .restart local p0    # "this":Landroid/location/LocationManager;
    .restart local p1    # "provider":Ljava/lang/String;
    .restart local p2    # "locationRequest":Landroid/location/LocationRequest;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "listener":Landroid/location/LocationListener;
    :catch_0
    move-exception v0

    .line 1592
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1162
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1164
    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1167
    invoke-virtual {v1, p1}, Landroid/location/LocationRequest$Builder;->setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 1168
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 1169
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    .line 1164
    const-string v1, "fused"

    invoke-virtual {p0, v1, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1172
    return-void
.end method

.method public whitelist requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1095
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null criteria"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1097
    new-instance v1, Landroid/os/Handler;

    if-nez p3, :cond_1

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    goto :goto_1

    :cond_1
    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1098
    .local v1, "handler":Landroid/os/Handler;
    :goto_1
    new-instance v2, Landroid/location/LocationRequest$Builder;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1101
    invoke-virtual {v2, p1}, Landroid/location/LocationRequest$Builder;->setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;

    move-result-object v2

    .line 1102
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    .line 1103
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1098
    const-string v3, "fused"

    invoke-virtual {p0, v3, v0, v2, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1107
    return-void
.end method

.method public whitelist requestSingleUpdate(Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1128
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1130
    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1133
    invoke-virtual {v1, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 1134
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1135
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    .line 1130
    invoke-virtual {p0, p1, v0, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;)V

    .line 1137
    return-void
.end method

.method public whitelist requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1058
    new-instance v1, Landroid/os/Handler;

    if-nez p3, :cond_1

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    goto :goto_1

    :cond_1
    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1059
    .local v1, "handler":Landroid/os/Handler;
    :goto_1
    new-instance v2, Landroid/location/LocationRequest$Builder;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 1062
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest$Builder;->setMaxUpdates(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7530

    .line 1063
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 1064
    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 1059
    invoke-virtual {p0, p1, v0, v2, p2}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    .line 1067
    return-void
.end method

.method public whitelist sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2055
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2056
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    const-string v2, "invalid null command"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2059
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/ILocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    return v1

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setAdasGnssLocationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->setAdasGnssLocationEnabledForUser(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    nop

    .line 707
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setAutomotiveGnssSuspended(Z)V
    .locals 2
    .param p1, "suspended"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 795
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setAutomotiveGnssSuspended(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    nop

    .line 799
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setExtraLocationControllerPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 545
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    nop

    .line 549
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setExtraLocationControllerPackageEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 560
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    nop

    .line 564
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setLocationControllerExtraPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    nop

    .line 596
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist setLocationControllerExtraPackageEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 610
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->setExtraLocationControllerPackageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    nop

    .line 614
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 666
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/location/ILocationManager;->setLocationEnabledForUser(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    nop

    .line 670
    return-void

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setProviderEnabledForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 774
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "invalid null provider"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 775
    return v0
.end method

.method public whitelist setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 2218
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid null provider"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2221
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2222
    invoke-virtual {v2}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    .line 2221
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/location/ILocationManager;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2225
    nop

    .line 2226
    return-void

    .line 2223
    :catch_0
    move-exception v0

    .line 2224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;

    .line 2180
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null provider"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2181
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null location"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2183
    const-wide/32 v0, 0x8e105b9

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2184
    invoke-virtual {p2}, Landroid/location/Location;->isComplete()Z

    move-result v0

    const-string v1, "incomplete location object, missing timestamp or accuracy?"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_2

    .line 2187
    :cond_2
    invoke-virtual {p2}, Landroid/location/Location;->makeComplete()V

    .line 2191
    :goto_2
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/location/LocationManager;->mContext:Landroid/content/Context;

    .line 2192
    invoke-virtual {v2}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    .line 2191
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/location/ILocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    nop

    .line 2196
    return-void

    .line 2193
    :catch_0
    move-exception v0

    .line 2194
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2246
    return-void
.end method

.method public whitelist unregisterAntennaInfoListener(Landroid/location/GnssAntennaInfo$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/GnssAntennaInfo$Listener;

    .line 2876
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssAntennaInfoListeners:Landroid/location/LocationManager$GnssAntennaTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2877
    return-void
.end method

.method public whitelist unregisterGnssBatchedLocationCallback(Landroid/location/BatchedLocationCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/location/BatchedLocationCallback;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3110
    :try_start_0
    iget-object v0, p0, Landroid/location/LocationManager;->mService:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->stopGnssBatch()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3111
    const/4 v0, 0x1

    return v0

    .line 3112
    :catch_0
    move-exception v0

    .line 3113
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssMeasurementsEvent$Callback;

    .line 2842
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssMeasurementsListeners:Landroid/location/LocationManager$GnssMeasurementsTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2843
    return-void
.end method

.method public whitelist unregisterGnssNavigationMessageCallback(Landroid/location/GnssNavigationMessage$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssNavigationMessage$Callback;

    .line 2978
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNavigationListeners:Landroid/location/LocationManager$GnssNavigationTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssNavigationTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2979
    return-void
.end method

.method public whitelist unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/location/GnssStatus$Callback;

    .line 2579
    sget-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager$GnssStatusTransportManager;->removeListener(Ljava/lang/Object;)V

    .line 2580
    return-void
.end method
