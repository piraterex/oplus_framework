.class Landroid/location/LocationResult$1;
.super Ljava/lang/Object;
.source "LocationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/LocationResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationResult;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 247
    new-instance v0, Landroid/location/LocationResult;

    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 248
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationResult;-><init>(Ljava/util/ArrayList;Landroid/location/LocationResult-IA;)V

    .line 247
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Landroid/location/LocationResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/LocationResult;
    .locals 1
    .param p1, "size"    # I

    .line 253
    new-array v0, p1, [Landroid/location/LocationResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Landroid/location/LocationResult$1;->newArray(I)[Landroid/location/LocationResult;

    move-result-object p1

    return-object p1
.end method
