.class public Landroid/hardware/gnss/IGnssGeofence$Default;
.super Ljava/lang/Object;
.source "IGnssGeofence.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addGeofence(IDDDIIII)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "latitudeDegrees"    # D
    .param p4, "longitudeDegrees"    # D
    .param p6, "radiusMeters"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsivenessMs"    # I
    .param p11, "unknownTimerMs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pauseGeofence(I)V
    .locals 0
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist removeGeofence(I)V
    .locals 0
    .param p1, "geofenceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist resumeGeofence(II)V
    .locals 0
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist setCallback(Landroid/hardware/gnss/IGnssGeofenceCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/gnss/IGnssGeofenceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
