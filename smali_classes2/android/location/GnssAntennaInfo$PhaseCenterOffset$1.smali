.class Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAntennaInfo$PhaseCenterOffset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .line 83
    new-instance v13, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v9

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;-><init>(DDDDDD)V

    .line 83
    return-object v13
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    .locals 1
    .param p1, "size"    # I

    .line 95
    new-array v0, p1, [Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$PhaseCenterOffset$1;->newArray(I)[Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    move-result-object p1

    return-object p1
.end method
