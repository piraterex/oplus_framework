.class Landroid/os/connectivity/CellularBatteryStats$1;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/CellularBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/CellularBatteryStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/CellularBatteryStats;
    .locals 51
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v25

    .local v25, "loggingDurationMs":J
    move-wide/from16 v1, v25

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v27

    .local v27, "kernelActiveTimeMs":J
    move-wide/from16 v3, v27

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    .local v29, "numPacketsTx":J
    move-wide/from16 v5, v29

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .local v31, "numBytesTx":J
    move-wide/from16 v7, v31

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .local v33, "numPacketsRx":J
    move-wide/from16 v9, v33

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .local v35, "numBytesRx":J
    move-wide/from16 v11, v35

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v37

    .local v37, "sleepTimeMs":J
    move-wide/from16 v13, v37

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    .local v39, "idleTimeMs":J
    move-wide/from16 v15, v39

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v41

    .local v41, "rxTimeMs":J
    move-wide/from16 v17, v41

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v43

    .line 69
    .local v43, "energyConsumedMaMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v45

    .local v45, "timeInRatMs":[J
    move-object/from16 v20, v45

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v46

    .local v46, "timeInRxSignalStrengthLevelMs":[J
    move-object/from16 v21, v46

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v47

    .local v47, "txTimeMs":[J
    move-object/from16 v22, v47

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v48

    .local v48, "monitoredRailChargeConsumedMaMs":J
    move-wide/from16 v23, v48

    .line 74
    new-instance v50, Landroid/os/connectivity/CellularBatteryStats;

    move-object/from16 v0, v50

    .line 76
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-direct/range {v0 .. v24}, Landroid/os/connectivity/CellularBatteryStats;-><init>(JJJJJJJJJLjava/lang/Long;[J[J[JJ)V

    .line 74
    return-object v50
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/connectivity/CellularBatteryStats;
    .locals 1
    .param p1, "size"    # I

    .line 82
    new-array v0, p1, [Landroid/os/connectivity/CellularBatteryStats;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats$1;->newArray(I)[Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p1

    return-object p1
.end method
