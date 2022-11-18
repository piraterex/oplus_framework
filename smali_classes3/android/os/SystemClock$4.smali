.class Landroid/os/SystemClock$4;
.super Landroid/os/SimpleClock;
.source "SystemClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/SystemClock;->currentGnssTimeClock()Ljava/time/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mMgr:Landroid/location/ILocationManager;


# direct methods
.method constructor blacklist <init>(Ljava/time/ZoneId;)V
    .locals 1
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 339
    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    .line 340
    nop

    .line 341
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    .line 340
    return-void
.end method


# virtual methods
.method public whitelist test-api millis()J
    .locals 7

    .line 346
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemClock$4;->mMgr:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .local v0, "time":Landroid/location/LocationTime;
    nop

    .line 350
    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 354
    .local v1, "currentNanos":J
    invoke-virtual {v0}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 355
    .local v3, "deltaMs":J
    invoke-virtual {v0}, Landroid/location/LocationTime;->getTime()J

    move-result-wide v5

    add-long/2addr v5, v3

    return-wide v5

    .line 351
    .end local v1    # "currentNanos":J
    .end local v3    # "deltaMs":J
    :cond_0
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Gnss based time is not available."

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    .end local v0    # "time":Landroid/location/LocationTime;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
