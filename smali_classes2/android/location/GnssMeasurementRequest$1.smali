.class Landroid/location/GnssMeasurementRequest$1;
.super Ljava/lang/Object;
.source "GnssMeasurementRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurementRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementRequest;
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 96
    new-instance v0, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssMeasurementRequest;-><init>(ZZILandroid/location/GnssMeasurementRequest-IA;)V

    .line 96
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssMeasurementRequest;
    .locals 1
    .param p1, "i"    # I

    .line 102
    new-array v0, p1, [Landroid/location/GnssMeasurementRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementRequest$1;->newArray(I)[Landroid/location/GnssMeasurementRequest;

    move-result-object p1

    return-object p1
.end method
