.class Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord$1;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;
    .locals 1
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 246
    new-instance v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;-><init>()V

    .line 247
    .local v0, "_aidl_out":Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;
    invoke-virtual {v0, p1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->readFromParcel(Landroid/os/Parcel;)V

    .line 248
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;
    .locals 1
    .param p1, "_aidl_size"    # I

    .line 252
    new-array v0, p1, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord$1;->newArray(I)[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    move-result-object p1

    return-object p1
.end method
