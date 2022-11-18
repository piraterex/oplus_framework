.class public final Landroid/location/GnssReflectingPlane;
.super Ljava/lang/Object;
.source "GnssReflectingPlane.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssReflectingPlane$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssReflectingPlane;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAltitudeMeters:D

.field private final blacklist mAzimuthDegrees:D

.field private final blacklist mLatitudeDegrees:D

.field private final blacklist mLongitudeDegrees:D


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Landroid/location/GnssReflectingPlane$1;

    invoke-direct {v0}, Landroid/location/GnssReflectingPlane$1;-><init>()V

    sput-object v0, Landroid/location/GnssReflectingPlane;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GnssReflectingPlane$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/location/GnssReflectingPlane$Builder;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmLatitudeDegrees(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    .line 57
    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmLongitudeDegrees(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    .line 58
    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmAltitudeMeters(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    .line 59
    invoke-static {p1}, Landroid/location/GnssReflectingPlane$Builder;->-$$Nest$fgetmAzimuthDegrees(Landroid/location/GnssReflectingPlane$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GnssReflectingPlane$Builder;Landroid/location/GnssReflectingPlane-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/location/GnssReflectingPlane;-><init>(Landroid/location/GnssReflectingPlane$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 137
    instance-of v0, p1, Landroid/location/GnssReflectingPlane;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 138
    move-object v0, p1

    check-cast v0, Landroid/location/GnssReflectingPlane;

    .line 139
    .local v0, "that":Landroid/location/GnssReflectingPlane;
    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    .line 140
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    .line 141
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    iget-wide v4, v0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    .line 142
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 139
    :goto_0
    return v1

    .line 144
    .end local v0    # "that":Landroid/location/GnssReflectingPlane;
    :cond_1
    return v1
.end method

.method public whitelist getAltitudeMeters()D
    .locals 2

    .line 80
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getAzimuthDegrees()D
    .locals 2

    .line 86
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    return-wide v0
.end method

.method public whitelist getLatitudeDegrees()D
    .locals 2

    .line 65
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getLongitudeDegrees()D
    .locals 2

    .line 71
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 149
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReflectingPlane["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, " LatitudeDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " LongitudeDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, " AltitudeMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, " AzimuthDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 131
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 118
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 119
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 120
    iget-wide v0, p0, Landroid/location/GnssReflectingPlane;->mAzimuthDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 121
    return-void
.end method
