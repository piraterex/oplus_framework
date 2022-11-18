.class Landroid/location/GnssMeasurementsEvent$1;
.super Ljava/lang/Object;
.source "GnssMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurementsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/location/GnssClock;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssClock;

    .line 164
    .local v0, "clock":Landroid/location/GnssClock;
    sget-object v1, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 165
    .local v1, "measurements":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssMeasurement;>;"
    sget-object v2, Landroid/location/GnssAutomaticGainControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 167
    .local v2, "agcs":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAutomaticGainControl;>;"
    new-instance v3, Landroid/location/GnssMeasurementsEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/location/GnssMeasurementsEvent;-><init>(Landroid/location/GnssClock;Ljava/util/List;Ljava/util/List;Landroid/location/GnssMeasurementsEvent-IA;)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurementsEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssMeasurementsEvent;
    .locals 1
    .param p1, "size"    # I

    .line 172
    new-array v0, p1, [Landroid/location/GnssMeasurementsEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurementsEvent$1;->newArray(I)[Landroid/location/GnssMeasurementsEvent;

    move-result-object p1

    return-object p1
.end method
