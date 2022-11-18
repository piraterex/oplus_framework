.class Landroid/location/GnssAntennaInfo$1;
.super Ljava/lang/Object;
.source "GnssAntennaInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAntennaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 524
    .local v7, "carrierFrequencyMHz":D
    sget-object v0, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 525
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/location/GnssAntennaInfo$PhaseCenterOffset;

    .line 526
    .local v9, "phaseCenterOffset":Landroid/location/GnssAntennaInfo$PhaseCenterOffset;
    sget-object v0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 527
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 528
    .local v10, "phaseCenterVariationCorrections":Landroid/location/GnssAntennaInfo$SphericalCorrections;
    sget-object v0, Landroid/location/GnssAntennaInfo$SphericalCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 529
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/location/GnssAntennaInfo$SphericalCorrections;

    .line 531
    .local v11, "signalGainCorrections":Landroid/location/GnssAntennaInfo$SphericalCorrections;
    new-instance v12, Landroid/location/GnssAntennaInfo;

    const/4 v6, 0x0

    move-object v0, v12

    move-wide v1, v7

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAntennaInfo;-><init>(DLandroid/location/GnssAntennaInfo$PhaseCenterOffset;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo$SphericalCorrections;Landroid/location/GnssAntennaInfo-IA;)V

    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 520
    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAntennaInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssAntennaInfo;
    .locals 1
    .param p1, "size"    # I

    .line 540
    new-array v0, p1, [Landroid/location/GnssAntennaInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 520
    invoke-virtual {p0, p1}, Landroid/location/GnssAntennaInfo$1;->newArray(I)[Landroid/location/GnssAntennaInfo;

    move-result-object p1

    return-object p1
.end method
