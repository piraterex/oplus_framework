.class Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo$1;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 314
    new-instance v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;-><init>()V

    .line 315
    .local v0, "_aidl_out":Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 316
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 320
    new-array v0, p1, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 311
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo$1;->newArray(I)[Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;

    move-result-object p1

    return-object p1
.end method
