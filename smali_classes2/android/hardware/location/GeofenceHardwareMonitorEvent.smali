.class public Landroid/hardware/location/GeofenceHardwareMonitorEvent;
.super Ljava/lang/Object;
.source "GeofenceHardwareMonitorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/GeofenceHardwareMonitorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mLocation:Landroid/location/Location;

.field private final greylist-max-o mMonitoringStatus:I

.field private final greylist-max-o mMonitoringType:I

.field private final greylist-max-o mSourceTechnologies:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareMonitorEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/location/Location;)V
    .locals 0
    .param p1, "monitoringType"    # I
    .param p2, "monitoringStatus"    # I
    .param p3, "sourceTechnologies"    # I
    .param p4, "location"    # Landroid/location/Location;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    .line 43
    iput p2, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    .line 44
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    .line 45
    iput-object p4, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public whitelist getMonitoringStatus()I
    .locals 1

    .line 59
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    return v0
.end method

.method public whitelist getMonitoringType()I
    .locals 1

    .line 52
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    return v0
.end method

.method public whitelist getSourceTechnologies()I
    .locals 1

    .line 66
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 115
    const-string v1, "GeofenceHardwareMonitorEvent: type=%d, status=%d, sources=%d, location=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 106
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mMonitoringStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mSourceTechnologies:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareMonitorEvent;->mLocation:Landroid/location/Location;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    return-void
.end method
