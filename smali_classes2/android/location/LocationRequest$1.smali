.class Landroid/location/LocationRequest$1;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/LocationRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    .line 765
    new-instance v21, Landroid/location/LocationRequest;

    move-object/from16 v0, v21

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 768
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 773
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 774
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    move-object/from16 v22, v0

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 779
    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/WorkSource;

    const/16 v20, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct/range {v0 .. v20}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;Landroid/location/LocationRequest-IA;)V

    .line 765
    return-object v21
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 762
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/LocationRequest;
    .locals 1
    .param p1, "size"    # I

    .line 784
    new-array v0, p1, [Landroid/location/LocationRequest;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 762
    invoke-virtual {p0, p1}, Landroid/location/LocationRequest$1;->newArray(I)[Landroid/location/LocationRequest;

    move-result-object p1

    return-object p1
.end method
