.class public final Landroid/os/connectivity/CellularBatteryStats;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/CellularBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnergyConsumedMaMs:J

.field private final blacklist mIdleTimeMs:J

.field private final blacklist mKernelActiveTimeMs:J

.field private final blacklist mLoggingDurationMs:J

.field private final blacklist mMonitoredRailChargeConsumedMaMs:J

.field private final blacklist mNumBytesRx:J

.field private final blacklist mNumBytesTx:J

.field private final blacklist mNumPacketsRx:J

.field private final blacklist mNumPacketsTx:J

.field private final blacklist mRxTimeMs:J

.field private final blacklist mSleepTimeMs:J

.field private final blacklist mTimeInRatMs:[J

.field private final blacklist mTimeInRxSignalStrengthLevelMs:[J

.field private final blacklist mTxTimeMs:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/os/connectivity/CellularBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/CellularBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/CellularBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJLjava/lang/Long;[J[J[JJ)V
    .locals 16
    .param p1, "loggingDurationMs"    # J
    .param p3, "kernelActiveTimeMs"    # J
    .param p5, "numPacketsTx"    # J
    .param p7, "numBytesTx"    # J
    .param p9, "numPacketsRx"    # J
    .param p11, "numBytesRx"    # J
    .param p13, "sleepTimeMs"    # J
    .param p15, "idleTimeMs"    # J
    .param p17, "rxTimeMs"    # J
    .param p19, "energyConsumedMaMs"    # Ljava/lang/Long;
    .param p20, "timeInRatMs"    # [J
    .param p21, "timeInRxSignalStrengthLevelMs"    # [J
    .param p22, "txTimeMs"    # [J
    .param p23, "monitoredRailChargeConsumedMaMs"    # J

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p20

    move-object/from16 v2, p21

    move-object/from16 v3, p22

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    move-wide/from16 v4, p1

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    .line 94
    move-wide/from16 v6, p3

    iput-wide v6, v0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    .line 95
    move-wide/from16 v8, p5

    iput-wide v8, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    .line 96
    move-wide/from16 v10, p7

    iput-wide v10, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    .line 97
    move-wide/from16 v12, p9

    iput-wide v12, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    .line 98
    move-wide/from16 v14, p11

    iput-wide v14, v0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    .line 99
    move-wide/from16 v4, p13

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    .line 100
    move-wide/from16 v4, p15

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    .line 101
    move-wide/from16 v4, p17

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    .line 102
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    .line 103
    array-length v4, v1

    sget v5, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    .line 105
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 103
    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    .line 106
    array-length v4, v2

    .line 109
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 106
    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 110
    array-length v4, v3

    .line 112
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 110
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    iput-object v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    .line 113
    move-wide/from16 v4, p23

    iput-wide v4, v0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    .line 114
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 136
    instance-of v0, p1, Landroid/os/connectivity/CellularBatteryStats;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 138
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/connectivity/CellularBatteryStats;

    .line 139
    .local v2, "otherStats":Landroid/os/connectivity/CellularBatteryStats;
    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    .line 149
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 150
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    iget-object v4, v2, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    .line 152
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    iget-wide v5, v2, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    nop

    .line 139
    :goto_0
    return v1
.end method

.method public whitelist getEnergyConsumedMaMillis()J
    .locals 2

    .line 262
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getIdleTimeMillis()J
    .locals 2

    .line 242
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-wide v0
.end method

.method public whitelist getKernelActiveTimeMillis()J
    .locals 2

    .line 182
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-wide v0
.end method

.method public whitelist getLoggingDurationMillis()J
    .locals 2

    .line 172
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public whitelist getMonitoredRailChargeConsumedMaMillis()J
    .locals 2

    .line 338
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    return-wide v0
.end method

.method public whitelist getNumBytesRx()J
    .locals 2

    .line 222
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public whitelist getNumBytesTx()J
    .locals 2

    .line 202
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsRx()J
    .locals 2

    .line 212
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public whitelist getNumPacketsTx()J
    .locals 2

    .line 192
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public whitelist getRxTimeMillis()J
    .locals 2

    .line 252
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-wide v0
.end method

.method public whitelist getSleepTimeMillis()J
    .locals 2

    .line 232
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-wide v0
.end method

.method public whitelist getTimeInRatMicros(I)J
    .locals 2
    .param p1, "networkType"    # I

    .line 276
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 277
    const-wide/16 v0, -0x1

    return-wide v0

    .line 280
    :cond_0
    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getTimeInRxSignalStrengthLevelMicros(I)J
    .locals 2
    .param p1, "signalStrengthBin"    # I

    .line 297
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 298
    const-wide/16 v0, -0x1

    return-wide v0

    .line 300
    :cond_0
    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public blacklist getTxTimeMillis(I)J
    .locals 2
    .param p1, "level"    # I

    .line 325
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 326
    const-wide/16 v0, -0x1

    return-wide v0

    .line 329
    :cond_0
    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 159
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    .line 160
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    .line 161
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 162
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    .line 163
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 159
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 127
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 129
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 130
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 131
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mMonitoredRailChargeConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 132
    return-void
.end method
