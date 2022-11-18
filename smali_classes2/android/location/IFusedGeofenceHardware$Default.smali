.class public Landroid/location/IFusedGeofenceHardware$Default;
.super Ljava/lang/Object;
.source "IFusedGeofenceHardware.java"

# interfaces
.implements Landroid/location/IFusedGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IFusedGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V
    .locals 0
    .param p1, "geofenceRequestsArray"    # [Landroid/hardware/location/GeofenceHardwareRequestParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist modifyGeofenceOptions(IIIIII)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "lastTransition"    # I
    .param p3, "monitorTransitions"    # I
    .param p4, "notificationResponsiveness"    # I
    .param p5, "unknownTimer"    # I
    .param p6, "sourcesToUse"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist pauseMonitoringGeofence(I)V
    .locals 0
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist removeGeofences([I)V
    .locals 0
    .param p1, "geofenceIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist resumeMonitoringGeofence(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method
