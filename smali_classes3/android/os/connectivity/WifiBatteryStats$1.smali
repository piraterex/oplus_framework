.class Landroid/os/connectivity/WifiBatteryStats$1;
.super Ljava/lang/Object;
.source "WifiBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/connectivity/WifiBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/connectivity/WifiBatteryStats;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiBatteryStats;
    .locals 64
    .param p1, "in"    # Landroid/os/Parcel;

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .local v32, "loggingDurationMillis":J
    move-wide/from16 v1, v32

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .local v34, "kernelActiveTimeMillis":J
    move-wide/from16 v3, v34

    .line 61
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    .local v36, "numPacketsTx":J
    move-wide/from16 v5, v36

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v38

    .local v38, "numBytesTx":J
    move-wide/from16 v7, v38

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v40

    .local v40, "numPacketsRx":J
    move-wide/from16 v9, v40

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    .local v42, "numBytesRx":J
    move-wide/from16 v11, v42

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    .local v44, "sleepTimeMillis":J
    move-wide/from16 v13, v44

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v46

    .local v46, "scanTimeMillis":J
    move-wide/from16 v15, v46

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v48

    .local v48, "idleTimeMillis":J
    move-wide/from16 v17, v48

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v50

    .local v50, "rxTimeMillis":J
    move-wide/from16 v19, v50

    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    .local v52, "txTimeMillis":J
    move-wide/from16 v21, v52

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v54

    .local v54, "energyConsumedMaMillis":J
    move-wide/from16 v23, v54

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v56

    .local v56, "appScanRequestCount":J
    move-wide/from16 v25, v56

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v58

    .local v58, "timeInStateMillis":[J
    move-object/from16 v27, v58

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v59

    .local v59, "timeInRxSignalStrengthLevelMillis":[J
    move-object/from16 v28, v59

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v60

    .local v60, "timeInSupplicantStateMillis":[J
    move-object/from16 v29, v60

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v61

    .local v61, "monitoredRailChargeConsumedMaMillis":J
    move-wide/from16 v30, v61

    .line 76
    new-instance v63, Landroid/os/connectivity/WifiBatteryStats;

    move-object/from16 v0, v63

    invoke-direct/range {v0 .. v31}, Landroid/os/connectivity/WifiBatteryStats;-><init>(JJJJJJJJJJJJJ[J[J[JJ)V

    return-object v63
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiBatteryStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/connectivity/WifiBatteryStats;
    .locals 1
    .param p1, "size"    # I

    .line 85
    new-array v0, p1, [Landroid/os/connectivity/WifiBatteryStats;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiBatteryStats$1;->newArray(I)[Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p1

    return-object p1
.end method
