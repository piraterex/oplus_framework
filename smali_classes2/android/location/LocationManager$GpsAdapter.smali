.class Landroid/location/LocationManager$GpsAdapter;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsAdapter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mGpsListener:Landroid/location/GpsStatus$Listener;


# direct methods
.method constructor blacklist <init>(Landroid/location/GpsStatus$Listener;)V
    .locals 0
    .param p1, "gpsListener"    # Landroid/location/GpsStatus$Listener;

    .line 3357
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    .line 3358
    iput-object p1, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 3359
    return-void
.end method


# virtual methods
.method public whitelist onFirstFix(I)V
    .locals 2
    .param p1, "ttffMillis"    # I

    .line 3373
    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 3374
    return-void
.end method

.method public whitelist onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 2
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 3378
    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 3379
    return-void
.end method

.method public whitelist onStarted()V
    .locals 2

    .line 3363
    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 3364
    return-void
.end method

.method public whitelist onStopped()V
    .locals 2

    .line 3368
    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 3369
    return-void
.end method
