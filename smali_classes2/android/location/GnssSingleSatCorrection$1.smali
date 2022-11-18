.class Landroid/location/GnssSingleSatCorrection$1;
.super Ljava/lang/Object;
.source "GnssSingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssSingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssSingleSatCorrection;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;
    .locals 18
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 248
    .local v11, "singleSatCorrectionFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 249
    .local v12, "constellationType":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 250
    .local v13, "satId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 251
    .local v14, "carrierFrequencyHz":F
    and-int/lit8 v0, v11, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    .line 254
    .local v5, "probSatIsLos":F
    :goto_0
    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, v1

    .line 258
    .local v6, "combinedExcessPathLengthMeters":F
    :goto_1
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v7, v0

    goto :goto_2

    :cond_2
    move v7, v1

    .line 260
    .local v7, "combinedExcessPathLengthUncertaintyMeters":F
    :goto_2
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v8, v0

    goto :goto_3

    :cond_3
    move v8, v1

    .line 262
    .local v8, "combinedAttenuationDb":F
    :goto_3
    sget-object v0, Landroid/location/GnssExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    .line 264
    .local v16, "gnssExcessPathInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssExcessPathInfo;>;"
    new-instance v17, Landroid/location/GnssSingleSatCorrection;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v10}, Landroid/location/GnssSingleSatCorrection;-><init>(IIIFFFFFLjava/util/List;Landroid/location/GnssSingleSatCorrection-IA;)V

    return-object v17
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssSingleSatCorrection;
    .locals 1
    .param p1, "i"    # I

    .line 272
    new-array v0, p1, [Landroid/location/GnssSingleSatCorrection;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 243
    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->newArray(I)[Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method
