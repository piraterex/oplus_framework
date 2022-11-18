.class public final Landroid/hardware/location/GeofenceHardwareRequest;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final greylist-max-o GEOFENCE_TYPE_CIRCLE:I


# instance fields
.field private greylist-max-o mLastTransition:I

.field private greylist-max-o mLatitude:D

.field private greylist-max-o mLongitude:D

.field private greylist-max-o mMonitorTransitions:I

.field private greylist-max-o mNotificationResponsiveness:I

.field private greylist-max-o mRadius:D

.field private greylist-max-o mSourceTechnologies:I

.field private greylist-max-o mType:I

.field private greylist-max-o mUnknownTimer:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    .line 36
    const/16 v0, 0x7530

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    .line 37
    const/4 v0, 0x7

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    .line 39
    const/16 v0, 0x1388

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return-void
.end method

.method public static whitelist createCircularGeofence(DDD)Landroid/hardware/location/GeofenceHardwareRequest;
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "radius"    # D

    .line 58
    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequest;-><init>()V

    .line 59
    .local v0, "geofenceRequest":Landroid/hardware/location/GeofenceHardwareRequest;
    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroid/hardware/location/GeofenceHardwareRequest;->setCircularGeofence(DDD)V

    .line 60
    return-object v0
.end method

.method private greylist-max-o setCircularGeofence(DDD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # D

    .line 43
    iput-wide p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    .line 44
    iput-wide p3, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    .line 45
    iput-wide p5, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getLastTransition()I
    .locals 1

    .line 177
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    return v0
.end method

.method public whitelist getLatitude()D
    .locals 2

    .line 135
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLatitude:D

    return-wide v0
.end method

.method public whitelist getLongitude()D
    .locals 2

    .line 142
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLongitude:D

    return-wide v0
.end method

.method public whitelist getMonitorTransitions()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    return v0
.end method

.method public whitelist getNotificationResponsiveness()I
    .locals 1

    .line 170
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    return v0
.end method

.method public whitelist getRadius()D
    .locals 2

    .line 149
    iget-wide v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mRadius:D

    return-wide v0
.end method

.method public whitelist getSourceTechnologies()I
    .locals 1

    .line 184
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    return v0
.end method

.method greylist-max-o getType()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mType:I

    return v0
.end method

.method public whitelist getUnknownTimer()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    return v0
.end method

.method public whitelist setLastTransition(I)V
    .locals 0
    .param p1, "lastTransition"    # I

    .line 71
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mLastTransition:I

    .line 72
    return-void
.end method

.method public whitelist setMonitorTransitions(I)V
    .locals 0
    .param p1, "monitorTransitions"    # I

    .line 92
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mMonitorTransitions:I

    .line 93
    return-void
.end method

.method public whitelist setNotificationResponsiveness(I)V
    .locals 0
    .param p1, "notificationResponsiveness"    # I

    .line 106
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mNotificationResponsiveness:I

    .line 107
    return-void
.end method

.method public whitelist setSourceTechnologies(I)V
    .locals 4
    .param p1, "sourceTechnologies"    # I

    .line 117
    const/16 v0, 0x1f

    .line 123
    .local v0, "sourceTechnologiesAll":I
    and-int v1, p1, v0

    .line 124
    .local v1, "sanitizedSourceTechnologies":I
    if-eqz v1, :cond_0

    .line 128
    iput v1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mSourceTechnologies:I

    .line 129
    return-void

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "At least one valid source technology must be set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist setUnknownTimer(I)V
    .locals 0
    .param p1, "unknownTimer"    # I

    .line 82
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequest;->mUnknownTimer:I

    .line 83
    return-void
.end method
