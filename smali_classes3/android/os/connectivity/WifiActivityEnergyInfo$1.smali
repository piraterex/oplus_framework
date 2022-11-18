.class Landroid/os/connectivity/WifiActivityEnergyInfo$1;
.super Ljava/lang/Object;
.source "WifiActivityEnergyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/WifiActivityEnergyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/WifiActivityEnergyInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 24
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 163
    .local v12, "timestamp":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 164
    .local v14, "stackState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 165
    .local v15, "txTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 166
    .local v17, "rxTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 167
    .local v19, "scanTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 168
    .local v21, "idleTime":J
    new-instance v23, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object/from16 v0, v23

    move-wide v1, v12

    move v3, v14

    move-wide v4, v15

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    move-wide/from16 v10, v21

    invoke-direct/range {v0 .. v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    return-object v23
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 1
    .param p1, "size"    # I

    .line 172
    new-array v0, p1, [Landroid/os/connectivity/WifiActivityEnergyInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiActivityEnergyInfo$1;->newArray(I)[Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object p1

    return-object p1
.end method
