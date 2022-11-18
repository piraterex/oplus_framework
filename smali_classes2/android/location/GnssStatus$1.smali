.class Landroid/location/GnssStatus$1;
.super Ljava/lang/Object;
.source "GnssStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssStatus;
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 381
    .local v9, "svCount":I
    new-array v10, v9, [I

    .line 382
    .local v10, "svidWithFlags":[I
    new-array v11, v9, [F

    .line 383
    .local v11, "cn0DbHzs":[F
    new-array v12, v9, [F

    .line 384
    .local v12, "elevations":[F
    new-array v13, v9, [F

    .line 385
    .local v13, "azimuths":[F
    new-array v14, v9, [F

    .line 386
    .local v14, "carrierFrequencies":[F
    new-array v15, v9, [F

    .line 387
    .local v15, "basebandCn0DbHzs":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v10, v0

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v11, v0

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v12, v0

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v13, v0

    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v14, v0

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v15, v0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v0    # "i":I
    :cond_0
    new-instance v16, Landroid/location/GnssStatus;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[FLandroid/location/GnssStatus-IA;)V

    return-object v16
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssStatus;
    .locals 1
    .param p1, "size"    # I

    .line 402
    new-array v0, p1, [Landroid/location/GnssStatus;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus$1;->newArray(I)[Landroid/location/GnssStatus;

    move-result-object p1

    return-object p1
.end method
