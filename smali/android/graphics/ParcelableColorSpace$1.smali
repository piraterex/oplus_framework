.class Landroid/graphics/ParcelableColorSpace$1;
.super Ljava/lang/Object;
.source "ParcelableColorSpace.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ParcelableColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/ParcelableColorSpace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/ParcelableColorSpace;
    .locals 34
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 119
    .local v2, "primaries":[F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 120
    .local v3, "whitePoint":[F
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 121
    .local v19, "a":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 122
    .local v21, "b":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    .line 123
    .local v23, "c":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v25

    .line 124
    .local v25, "d":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v27

    .line 125
    .local v27, "e":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v29

    .line 126
    .local v29, "f":D
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v31

    .line 127
    .local v31, "g":D
    new-instance v33, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-object/from16 v4, v33

    move-wide/from16 v5, v19

    move-wide/from16 v7, v21

    move-wide/from16 v9, v23

    move-wide/from16 v11, v25

    move-wide/from16 v13, v27

    move-wide/from16 v15, v29

    move-wide/from16 v17, v31

    invoke-direct/range {v4 .. v18}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDDDD)V

    .line 129
    .local v4, "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    new-instance v5, Landroid/graphics/ParcelableColorSpace;

    new-instance v6, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v6, v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V

    invoke-direct {v5, v6}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    return-object v5

    .line 132
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "primaries":[F
    .end local v3    # "whitePoint":[F
    .end local v4    # "function":Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .end local v19    # "a":D
    .end local v21    # "b":D
    .end local v23    # "c":D
    .end local v25    # "d":D
    .end local v27    # "e":D
    .end local v29    # "f":D
    .end local v31    # "g":D
    :cond_0
    new-instance v1, Landroid/graphics/ParcelableColorSpace;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(I)Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ParcelableColorSpace;-><init>(Landroid/graphics/ColorSpace;)V

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/graphics/ParcelableColorSpace$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/ParcelableColorSpace;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/ParcelableColorSpace;
    .locals 1
    .param p1, "size"    # I

    .line 137
    new-array v0, p1, [Landroid/graphics/ParcelableColorSpace;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/graphics/ParcelableColorSpace$1;->newArray(I)[Landroid/graphics/ParcelableColorSpace;

    move-result-object p1

    return-object p1
.end method
