.class Landroid/hardware/gnss/IGnssDebug$SatelliteData$1;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug$SatelliteData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/IGnssDebug$SatelliteData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssDebug$SatelliteData;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 355
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$SatelliteData;-><init>()V

    .line 356
    .local v0, "_aidl_out":Landroid/hardware/gnss/IGnssDebug$SatelliteData;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->readFromParcel(Landroid/os/Parcel;)V

    .line 357
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssDebug$SatelliteData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssDebug$SatelliteData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/IGnssDebug$SatelliteData;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 361
    new-array v0, p1, [Landroid/hardware/gnss/IGnssDebug$SatelliteData;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 352
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssDebug$SatelliteData$1;->newArray(I)[Landroid/hardware/gnss/IGnssDebug$SatelliteData;

    move-result-object p1

    return-object p1
.end method
