.class Landroid/location/SatellitePvt$1;
.super Ljava/lang/Object;
.source "SatellitePvt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/SatellitePvt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/SatellitePvt;
    .locals 35
    .param p1, "in"    # Landroid/os/Parcel;

    .line 625
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .local v18, "flags":I
    move/from16 v2, v18

    .line 626
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 627
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v3, Landroid/location/SatellitePvt$PositionEcef;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/location/SatellitePvt$PositionEcef;

    .local v19, "positionEcef":Landroid/location/SatellitePvt$PositionEcef;
    move-object/from16 v3, v19

    .line 629
    const-class v4, Landroid/location/SatellitePvt$VelocityEcef;

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Landroid/location/SatellitePvt$VelocityEcef;

    .local v20, "velocityEcef":Landroid/location/SatellitePvt$VelocityEcef;
    move-object/from16 v4, v20

    .line 631
    const-class v5, Landroid/location/SatellitePvt$ClockInfo;

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/location/SatellitePvt$ClockInfo;

    .local v21, "clockInfo":Landroid/location/SatellitePvt$ClockInfo;
    move-object/from16 v5, v21

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    .local v22, "ionoDelayMeters":D
    move-wide/from16 v6, v22

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    .local v24, "tropoDelayMeters":D
    move-wide/from16 v8, v24

    .line 635
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .local v26, "toc":J
    move-wide/from16 v10, v26

    .line 636
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .local v28, "toe":J
    move-wide/from16 v12, v28

    .line 637
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "iodc":I
    move/from16 v14, v30

    .line 638
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .local v31, "iode":I
    move/from16 v15, v31

    .line 639
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .local v32, "ephemerisSource":I
    move/from16 v16, v32

    .line 641
    new-instance v33, Landroid/location/SatellitePvt;

    move-object/from16 v34, v1

    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .local v34, "classLoader":Ljava/lang/ClassLoader;
    move-object/from16 v1, v33

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Landroid/location/SatellitePvt;-><init>(ILandroid/location/SatellitePvt$PositionEcef;Landroid/location/SatellitePvt$VelocityEcef;Landroid/location/SatellitePvt$ClockInfo;DDJJIIILandroid/location/SatellitePvt-IA;)V

    return-object v33
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Landroid/location/SatellitePvt$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/SatellitePvt;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/SatellitePvt;
    .locals 1
    .param p1, "size"    # I

    .line 657
    new-array v0, p1, [Landroid/location/SatellitePvt;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Landroid/location/SatellitePvt$1;->newArray(I)[Landroid/location/SatellitePvt;

    move-result-object p1

    return-object p1
.end method
