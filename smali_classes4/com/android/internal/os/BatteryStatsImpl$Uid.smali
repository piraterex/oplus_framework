.class public Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final greylist-max-o NO_BATCHED_SCAN_STARTED:I = -0x1

.field private static blacklist sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;


# instance fields
.field greylist-max-o mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field greylist-max-o mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private blacklist mBinderCallCount:J

.field private final blacklist mBinderCallStats:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field greylist-max-o mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field greylist-max-o mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field protected greylist-max-o mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field greylist-max-o mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field blacklist mChildUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field greylist-max-o mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field greylist-max-o mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field blacklist mCurStepSystemTimeMs:J

.field blacklist mCurStepUserTimeMs:J

.field greylist-max-o mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mFullWifiLockOut:Z

.field greylist-max-o mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mInForegroundService:Z

.field final greylist-max-o mJobCompletions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field final greylist-max-o mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field blacklist mLastStepSystemTimeMs:J

.field blacklist mLastStepUserTimeMs:J

.field greylist-max-o mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field blacklist mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field private greylist-max-o mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private greylist-max-o mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field greylist-max-o mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field public final greylist-max-o mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field public final greylist-max-o mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field final greylist-max-o mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field blacklist mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

.field greylist-max-o mProcessState:I

.field greylist-max-o mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final greylist-max-o mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProportionalSystemServiceUsage:D

.field greylist-max-o mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

.field final greylist-max-o mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final greylist-max-o mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$DualTimer;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private blacklist mSystemServiceTimeUs:J

.field final greylist-max-o mUid:I

.field private blacklist mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

.field greylist-max-o mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field greylist-max-o mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field greylist-max-o mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final greylist-max-o mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mWifiBatchedScanBinStarted:I

.field greylist-max-o mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private greylist-max-o mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field greylist-max-o mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field blacklist mWifiMulticastWakelockCount:I

.field private greylist-max-o mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field greylist-max-o mWifiRunning:Z

.field greylist-max-o mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field greylist-max-o mWifiScanStarted:Z

.field greylist-max-o mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBinderCallCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBinderCallStats(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMobileRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemServiceTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemServiceTimeUs:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidMeasuredEnergyStats(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/power/MeasuredEnergyStats;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMobileRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProportionalSystemServiceUsage(Lcom/android/internal/os/BatteryStatsImpl$Uid;D)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSystemServiceTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemServiceTimeUs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUidMeasuredEnergyStats(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/power/MeasuredEnergyStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiRadioApWakeupCount(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddChargeToCustomBucketLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addChargeToCustomBucketLocked(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddChargeToStandardBucketLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid;JIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->addChargeToStandardBucketLocked(JIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCpuActiveTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProcStateScreenOffTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProcStateTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmarkGnssTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->markGnssTimeUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmarkProcessForegroundTimeUs(Lcom/android/internal/os/BatteryStatsImpl$Uid;JZ)J
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->markProcessForegroundTimeUs(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11393
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    return-void
.end method

.method public constructor greylist-max-o <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .line 9156
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid;-><init>(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V

    .line 9157
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImpl;IJJ)V
    .locals 13
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I
    .param p3, "elapsedRealtimeMs"    # J
    .param p5, "uptimeMs"    # J

    .line 9159
    move-object v7, p0

    move v8, p2

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 8977
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 8996
    const/4 v9, 0x7

    iput v9, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 8999
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 9078
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    .line 9106
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 9111
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 9116
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 9121
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 9131
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    .line 9160
    move-object v10, p1

    iput-object v10, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 9161
    iput v8, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 9164
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object v6, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9165
    const-wide/16 v1, 0x3e8

    mul-long v3, p5, v1

    mul-long v11, p3, v1

    invoke-virtual {v6, v3, v4, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 9167
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>(Z)V

    iput-object v3, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9168
    mul-long v4, p5, v1

    mul-long v0, p3, v1

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 9170
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9171
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9172
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 9174
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 9179
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 9185
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;I)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 9192
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x4

    move-object v0, v11

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9194
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9196
    new-instance v11, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x6

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v11, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9198
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9199
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v6, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9201
    new-array v0, v9, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9202
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9203
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9204
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 9205
    sget-object v0, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, v7, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9206
    return-void
.end method

.method private blacklist addChargeToCustomBucketLocked(JI)V
    .locals 6
    .param p1, "chargeDeltaUC"    # J
    .param p3, "powerBucket"    # I

    .line 9635
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 9636
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 9635
    move v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateCustomBucket(IJJ)V

    .line 9637
    return-void
.end method

.method private blacklist addChargeToStandardBucketLocked(JIJ)V
    .locals 7
    .param p1, "chargeDeltaUC"    # J
    .param p3, "powerBucket"    # I
    .param p4, "timestampMs"    # J

    .line 9627
    nop

    .line 9628
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v6

    .line 9629
    .local v6, "measuredEnergyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    move-object v0, v6

    move v1, p3

    move-wide v2, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateStandardBucket(IJJ)V

    .line 9630
    return-void
.end method

.method private blacklist ensureMultiStateCounters(J)V
    .locals 16
    .param p1, "timestampMs"    # J

    .line 9373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-eqz v1, :cond_0

    .line 9374
    return-void

    .line 9377
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v4, 0x8

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 9379
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v5

    const/4 v8, 0x0

    move-object v2, v1

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJLcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter-IA;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9381
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v10, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v11, 0x8

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 9383
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v12

    const/4 v15, 0x0

    move-object v9, v1

    move-wide/from16 v13, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJLcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter-IA;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9385
    return-void
.end method

.method private blacklist getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 9

    .line 9246
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 9247
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 9248
    .local v7, "timestampMs":J
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 9250
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9251
    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v1

    .line 9250
    invoke-static {v0, v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 9254
    .end local v7    # "timestampMs":J
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private blacklist getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .locals 9

    .line 10298
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 10299
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 10300
    .local v7, "timestampMs":J
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 10302
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 10303
    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v1

    .line 10302
    invoke-static {v0, v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 10305
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mupdate(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)J

    .line 10307
    .end local v7    # "timestampMs":J
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private blacklist getOrCreateMeasuredEnergyStatsIfSupportedLocked()Lcom/android/internal/power/MeasuredEnergyStats;
    .locals 2

    .line 9617
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    if-eqz v0, :cond_0

    .line 9618
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-direct {v0, v1}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9620
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-object v0
.end method

.method private blacklist getOrCreateMeasuredEnergyStatsLocked()Lcom/android/internal/power/MeasuredEnergyStats;
    .locals 2

    .line 9609
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_0

    .line 9610
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-direct {v0, v1}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9612
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    return-object v0
.end method

.method private blacklist getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .locals 1
    .param p1, "timestampMs"    # J

    .line 9395
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 9396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return-object v0
.end method

.method private blacklist getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;
    .locals 1
    .param p1, "timestampMs"    # J

    .line 9389
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureMultiStateCounters(J)V

    .line 9390
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    return-object v0
.end method

.method private blacklist markGnssTimeUs(J)J
    .locals 4
    .param p1, "elapsedRealtimeMs"    # J

    .line 9788
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 9789
    .local v0, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 9790
    return-wide v1

    .line 9793
    :cond_0
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9794
    .local v3, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v3, :cond_1

    .line 9795
    return-wide v1

    .line 9798
    :cond_1
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v1

    .line 9799
    .local v1, "gnssTimeUs":J
    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 9800
    return-wide v1
.end method

.method private blacklist markProcessForegroundTimeUs(JZ)J
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "doCalc"    # Z

    .line 9764
    const-wide/16 v0, 0x0

    .line 9765
    .local v0, "fgTimeUs":J
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9766
    .local v2, "fgTimer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_1

    .line 9767
    if-eqz p3, :cond_0

    mul-long v5, p1, v3

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v0

    .line 9768
    :cond_0
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 9771
    :cond_1
    const-wide/16 v5, 0x0

    .line 9772
    .local v5, "topTimeUs":J
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 9773
    .local v7, "topTimer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v7, :cond_3

    .line 9774
    if-eqz p3, :cond_2

    mul-long/2addr v3, p1

    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v3

    move-wide v5, v3

    .line 9775
    :cond_2
    invoke-virtual {v7, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    .line 9779
    :cond_3
    cmp-long v3, v5, v0

    if-gez v3, :cond_4

    move-wide v3, v5

    goto :goto_0

    :cond_4
    move-wide v3, v0

    :goto_0
    return-wide v3
.end method

.method private blacklist maybeScheduleExternalStatsSync(II)V
    .locals 4
    .param p1, "oldProcessState"    # I
    .param p2, "newProcessState"    # I

    .line 12307
    if-ne p1, p2, :cond_0

    .line 12308
    return-void

    .line 12313
    :cond_0
    const/4 v0, 0x2

    if-nez p1, :cond_1

    if-eq p2, v0, :cond_2

    :cond_1
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    .line 12317
    :cond_2
    return-void

    .line 12320
    :cond_3
    const/16 v0, 0xe

    .line 12322
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMobileRadioPowerState:I

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smisActiveRadioPowerState(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 12323
    and-int/lit8 v0, v0, -0x5

    .line 12326
    :cond_4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmExternalSync(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mConstants:Lcom/android/internal/os/BatteryStatsImpl$Constants;

    iget-wide v2, v2, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;->scheduleSyncDueToProcessStateChange(IJ)V

    .line 12328
    return-void
.end method

.method private greylist-max-o nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J
    .locals 7
    .param p1, "cpuTimesMs"    # Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .param p2, "which"    # I

    .line 9355
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 9356
    return-object v0

    .line 9358
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->getCountsLocked(I)[J

    move-result-object v1

    .line 9359
    .local v1, "counts":[J
    if-nez v1, :cond_1

    .line 9360
    return-object v0

    .line 9363
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 9364
    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 9365
    return-object v1

    .line 9363
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 9368
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public greylist-max-o addIsolatedUid(I)V
    .locals 2
    .param p1, "isolatedUid"    # I

    .line 9333
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 9334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    goto :goto_0

    .line 9335
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 9336
    return-void

    .line 9338
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;

    invoke-direct {v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9339
    return-void
.end method

.method public greylist-max-o createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    .line 9916
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 9917
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x14

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9921
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 9804
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9805
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xf

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9808
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 2

    .line 9976
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 9977
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9979
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public greylist-max-o createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 2

    .line 9969
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 9970
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 9972
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public greylist-max-o createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    .line 9925
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 9926
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x13

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9930
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 8

    .line 9934
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 9935
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x15

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9939
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 9876
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9877
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x11

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9880
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 9852
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9853
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x10

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9856
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 9900
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9901
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xa

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9904
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 9908
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9909
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x16

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9912
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 4

    .line 10012
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_0

    .line 10013
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 10016
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public greylist-max-o createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7

    .line 9828
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9829
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x8

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9832
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method blacklist detachFromTimeBase()V
    .locals 5

    .line 10668
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10669
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10670
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10671
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10672
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10673
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10674
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10675
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10677
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10678
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10679
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10681
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10683
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10684
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10685
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10686
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10688
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10690
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10692
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10694
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10695
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10697
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10698
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10699
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10700
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10702
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 10703
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 10704
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)V

    .line 10706
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 10708
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10709
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10711
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10713
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10714
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10716
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10718
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10720
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10722
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10724
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 10725
    .local v0, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "iw":I
    :goto_0
    if-ltz v1, :cond_0

    .line 10726
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10727
    .local v2, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->detachFromTimeBase()V

    .line 10725
    .end local v2    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10729
    .end local v1    # "iw":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 10730
    .local v1, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "is":I
    :goto_1
    if-ltz v2, :cond_1

    .line 10731
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10732
    .local v3, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10730
    .end local v3    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 10734
    .end local v2    # "is":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 10735
    .local v2, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ij":I
    :goto_2
    if-ltz v3, :cond_2

    .line 10736
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10737
    .local v4, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10735
    .end local v4    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 10740
    .end local v3    # "ij":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10741
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10742
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10743
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10746
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ise":I
    :goto_3
    if-ltz v3, :cond_3

    .line 10747
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 10748
    .local v4, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->detachFromTimeBase()V

    .line 10746
    .end local v4    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 10751
    .end local v3    # "ise":I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ip":I
    :goto_4
    if-ltz v3, :cond_4

    .line 10752
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 10753
    .local v4, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 10751
    .end local v4    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 10755
    .end local v3    # "ip":I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 10757
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_5
    if-ltz v3, :cond_5

    .line 10758
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 10759
    .local v4, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 10757
    .end local v4    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 10761
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 10762
    return-void
.end method

.method blacklist ensureNetworkActivityLocked()V
    .locals 5

    .line 10463
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 10464
    return-void

    .line 10467
    :cond_0
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10468
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10469
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10470
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 10471
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v1

    .line 10469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10473
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10474
    return-void
.end method

.method public bridge synthetic blacklist getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAggregatedPartialWakelockTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 9401
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10130
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .line 12593
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public blacklist getBinderCallCount()J
    .locals 2

    .line 9318
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    return-wide v0
.end method

.method public blacklist getBinderCallStats()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;",
            ">;"
        }
    .end annotation

    .line 9323
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    return-object v0
.end method

.method public bridge synthetic greylist-max-o getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 1

    .line 9575
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public blacklist getBluetoothMeasuredBatteryConsumptionUC()J
    .locals 2

    .line 9690
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getBluetoothMeasuredBatteryConsumptionUC(I)J
    .locals 2
    .param p1, "processState"    # I

    .line 9697
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10165
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 10166
    const/4 v0, 0x0

    return-object v0

    .line 10168
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanResultBgCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 1

    .line 10191
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanResultCounter()Lcom/android/internal/os/BatteryStatsImpl$Counter;
    .locals 1

    .line 10186
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10160
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothUnoptimizedScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10178
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 10179
    const/4 v0, 0x0

    return-object v0

    .line 10181
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBluetoothUnoptimizedScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10173
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10145
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method blacklist getChildUid(I)Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;
    .locals 1
    .param p1, "childUid"    # I

    .line 9351
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$ChildUid;

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getCpuActiveTime()J
    .locals 5

    .line 9259
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 9260
    const-wide/16 v0, 0x0

    return-wide v0

    .line 9263
    :cond_0
    const-wide/16 v0, 0x0

    .line 9264
    .local v0, "activeTime":J
    const/4 v2, 0x0

    .local v2, "procState":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 9265
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 9264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9267
    .end local v2    # "procState":I
    :cond_1
    return-wide v0
.end method

.method public blacklist getCpuActiveTime(I)J
    .locals 2
    .param p1, "procState"    # I

    .line 9272
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 9277
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide v0

    return-wide v0

    .line 9274
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getCpuClusterTimes()[J
    .locals 2

    .line 9282
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCpuFreqTimes([JI)Z
    .locals 2
    .param p1, "timesInFreqMs"    # [J
    .param p2, "procState"    # I

    .line 9288
    const/4 v0, 0x0

    if-ltz p2, :cond_3

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 9291
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_1

    .line 9292
    return v0

    .line 9294
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_2

    .line 9295
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9296
    return v0

    .line 9298
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked([JI)Z

    move-result v0

    return v0

    .line 9289
    :cond_3
    :goto_0
    return v0
.end method

.method public greylist-max-o getCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 9237
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCpuMeasuredBatteryConsumptionUC()J
    .locals 2

    .line 9704
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCpuMeasuredBatteryConsumptionUC(I)J
    .locals 2
    .param p1, "processState"    # I

    .line 9711
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getCustomConsumerMeasuredBatteryConsumptionUC()[J
    .locals 1

    .line 9677
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_0

    .line 9678
    const/4 v0, 0x0

    return-object v0

    .line 9680
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_1

    .line 9682
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-virtual {v0}, Lcom/android/internal/power/MeasuredEnergyStats;->getNumberCustomPowerBuckets()I

    move-result v0

    new-array v0, v0, [J

    return-object v0

    .line 9684
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/power/MeasuredEnergyStats;->getAccumulatedCustomBucketCharges()[J

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 10419
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10420
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    .line 10421
    .local v0, "deferredEventCount":I
    if-nez v0, :cond_0

    .line 10422
    return-void

    .line 10424
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    .line 10425
    .local v1, "deferredCount":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 10426
    .local v2, "totalLatency":J
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10427
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10428
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10429
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 10430
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v4

    if-nez v5, :cond_1

    .line 10431
    const-string v5, ",0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10433
    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10434
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v4

    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10429
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10437
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method public greylist-max-o getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "which"    # I

    .line 10441
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10442
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    .line 10443
    .local v0, "deferredEventCount":I
    if-nez v0, :cond_0

    .line 10444
    return-void

    .line 10446
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v1

    .line 10447
    .local v1, "deferredCount":I
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 10448
    .local v2, "totalLatency":J
    const-string/jumbo v4, "times="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10449
    const-string v5, "count="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10450
    const-string/jumbo v5, "totalLatencyMs="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10451
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 10452
    const-string v5, "<"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v5, v5, v4

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10453
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v5, v5, v4

    if-nez v5, :cond_1

    .line 10454
    const-string v5, "0"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10456
    :cond_1
    invoke-virtual {v5, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10458
    :goto_1
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10451
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10460
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method public bridge synthetic blacklist getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10140
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10150
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getForegroundServiceTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10155
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o getFullWifiLockTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10040
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 10041
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10043
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getGnssMeasuredBatteryConsumptionUC()J
    .locals 2

    .line 9718
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 9427
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public greylist-max-o getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 9422
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMeasuredBatteryConsumptionUC(I)J
    .locals 2
    .param p1, "bucket"    # I

    .line 9647
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9648
    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9651
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_1

    .line 9652
    const-wide/16 v0, 0x0

    return-wide v0

    .line 9654
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->getAccumulatedStandardBucketCharge(I)J

    move-result-wide v0

    return-wide v0

    .line 9649
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getMeasuredBatteryConsumptionUC(II)J
    .locals 2
    .param p1, "bucket"    # I
    .param p2, "processState"    # I

    .line 9664
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mGlobalMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 9665
    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isStandardBucketSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9668
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-nez v0, :cond_1

    .line 9669
    const-wide/16 v0, 0x0

    return-wide v0

    .line 9671
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/power/MeasuredEnergyStats;->getAccumulatedStandardBucketCharge(II)J

    move-result-wide v0

    return-wide v0

    .line 9666
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public greylist-max-o getMobileRadioActiveCount(I)I
    .locals 2
    .param p1, "which"    # I

    .line 10355
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 10356
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10355
    :goto_0
    return v0
.end method

.method public greylist-max-o getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .line 10337
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMobileRadioActiveTimeInProcessState(I)J
    .locals 2
    .param p1, "processState"    # I

    .line 10343
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_0

    .line 10344
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10346
    :cond_0
    if-nez p1, :cond_1

    .line 10347
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getTotalCountLocked()J

    move-result-wide v0

    return-wide v0

    .line 10349
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getCountForProcessState(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getMobileRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 10396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 10397
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10399
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getMobileRadioMeasuredBatteryConsumptionUC()J
    .locals 2

    .line 9724
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMobileRadioMeasuredBatteryConsumptionUC(I)J
    .locals 2
    .param p1, "processState"    # I

    .line 9730
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 9580
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public bridge synthetic blacklist getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getMulticastWakelockStats()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 9412
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist-max-o getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 10317
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 10319
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10321
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 10327
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 10329
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10331
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist-max-o getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 4

    .line 9592
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 9593
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 9596
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public greylist-max-o getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 4

    .line 9600
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 9601
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 9602
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 9604
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public greylist-max-o getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 4

    .line 9584
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 9585
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 9588
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public greylist-max-o getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .line 9444
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public greylist-max-o getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 12365
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 12366
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 12367
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    move-object v0, v1

    .line 12368
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12371
    :cond_0
    return-object v0
.end method

.method public greylist-max-o getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .line 12348
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public greylist-max-o getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    .line 12352
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 12353
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 12354
    new-instance v1, Landroid/os/BatteryStats$Uid$Pid;

    invoke-direct {v1, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    move-object v0, v1

    .line 12355
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12357
    :cond_0
    return-object v0
.end method

.method public greylist-max-o getProcessStateTime(IJI)J
    .locals 3
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 10209
    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 10210
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 10211
    return-wide v0

    .line 10213
    :cond_1
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    .line 10209
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public bridge synthetic blacklist getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 8953
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1
    .param p1, "state"    # I

    .line 10218
    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 10219
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    return-object v0

    .line 10218
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .line 9439
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public greylist-max-o getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 12211
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 12212
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 12213
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    move-object v0, v1

    .line 12214
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12217
    :cond_0
    return-object v0
.end method

.method public blacklist getProportionalSystemServiceUsage()D
    .locals 2

    .line 9328
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    return-wide v0
.end method

.method public blacklist getScreenOffCpuFreqTimes([JI)Z
    .locals 2
    .param p1, "timesInFreqMs"    # [J
    .param p2, "procState"    # I

    .line 9304
    const/4 v0, 0x0

    if-ltz p2, :cond_3

    const/4 v1, 0x7

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 9307
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-nez v1, :cond_1

    .line 9308
    return v0

    .line 9310
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerProcStateCpuTimesAvailable:Z

    if-nez v1, :cond_2

    .line 9311
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 9312
    return v0

    .line 9314
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCountsLocked([JI)Z

    move-result v0

    return v0

    .line 9305
    :cond_3
    :goto_0
    return v0
.end method

.method public greylist-max-o getScreenOffCpuFreqTimes(I)[J
    .locals 1
    .param p1, "which"    # I

    .line 9242
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->nullIfAllZeros(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getScreenOnMeasuredBatteryConsumptionUC()J
    .locals 2

    .line 9737
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .line 9433
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public greylist-max-o getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 11
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    .line 12419
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 12420
    .local v0, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v0, :cond_1

    .line 12421
    if-nez p2, :cond_0

    .line 12422
    const/4 v1, 0x0

    return-object v1

    .line 12424
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    move-object v0, v1

    .line 12425
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12427
    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12428
    .local v1, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v1, :cond_2

    .line 12429
    return-object v1

    .line 12431
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 12432
    .local v2, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v2, :cond_3

    .line 12433
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 12434
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12436
    :cond_3
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v4, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v10, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v4, v3

    move-object v6, p0

    move-object v8, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v1, v3

    .line 12438
    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12439
    return-object v1
.end method

.method public greylist-max-o getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    .line 12379
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 12380
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 12381
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 12382
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 12383
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12386
    :cond_0
    return-object v1
.end method

.method public greylist-max-o getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .line 9417
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 10366
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getTimeAtCpuSpeed(III)J
    .locals 4
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .line 10371
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 10372
    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 10373
    aget-object v0, v0, p1

    .line 10374
    .local v0, "cpuSpeedTimesUs":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_0

    .line 10375
    if-ltz p2, :cond_0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 10376
    aget-object v1, v0, p2

    .line 10377
    .local v1, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_0

    .line 10378
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    return-wide v2

    .line 10384
    .end local v0    # "cpuSpeedTimesUs":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v1    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getUid()I
    .locals 1

    .line 9450
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public greylist-max-o getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .line 10247
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 10248
    const/4 v0, 0x0

    return v0

    .line 10250
    :cond_0
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .line 10361
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10224
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic blacklist getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10135
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public greylist getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .line 9407
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 9
    .param p1, "wl"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .param p2, "type"    # I

    .line 12480
    if-nez p1, :cond_0

    .line 12481
    const/4 v0, 0x0

    return-object v0

    .line 12483
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 12522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12513
    :sswitch_0
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12514
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_1

    .line 12515
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0x12

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mDrawTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 12517
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12519
    :cond_1
    return-object v0

    .line 12504
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_1
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12505
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_2

    .line 12506
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWindowTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 12508
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12510
    :cond_2
    return-object v0

    .line 12495
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_2
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12496
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-nez v0, :cond_3

    .line 12497
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v7

    .line 12499
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 12501
    :cond_3
    return-object v0

    .line 12485
    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :sswitch_3
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12486
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-nez v0, :cond_4

    .line 12487
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPartialTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    move-object v0, v8

    .line 12490
    iput-object v0, p1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12492
    :cond_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o getWifiBatchedScanCount(II)I
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .line 10113
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 10114
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 10115
    return v0

    .line 10117
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0

    .line 10113
    :cond_2
    :goto_0
    return v0
.end method

.method public greylist-max-o getWifiBatchedScanTime(IJI)J
    .locals 3
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .line 10104
    const-wide/16 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v2, 0x5

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 10105
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, p1

    if-nez v2, :cond_1

    .line 10106
    return-wide v0

    .line 10108
    :cond_1
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0

    .line 10104
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public bridge synthetic greylist-max-o getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 1

    .line 9570
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public blacklist getWifiMeasuredBatteryConsumptionUC()J
    .locals 2

    .line 9743
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getWifiMeasuredBatteryConsumptionUC(I)J
    .locals 2
    .param p1, "processState"    # I

    .line 9749
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMeasuredBatteryConsumptionUC(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getWifiMulticastTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10122
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 10123
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10125
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getWifiRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .line 10411
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 10412
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 10414
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist getWifiRunningTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10032
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 10033
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10035
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public greylist-max-o getWifiScanActualTime(J)J
    .locals 7
    .param p1, "elapsedRealtimeUs"    # J

    .line 10078
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 10079
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10081
    :cond_0
    const-wide/16 v1, 0x1f4

    add-long/2addr v1, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 10082
    .local v1, "elapsedRealtimeMs":J
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    mul-long/2addr v5, v3

    return-wide v5
.end method

.method public greylist-max-o getWifiScanBackgroundCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 10070
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10073
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCountLocked(I)I

    move-result v0

    return v0

    .line 10071
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getWifiScanBackgroundTime(J)J
    .locals 6
    .param p1, "elapsedRealtimeUs"    # J

    .line 10087
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10090
    :cond_0
    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 10091
    .local v0, "elapsedRealtimeMs":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    return-wide v4

    .line 10088
    .end local v0    # "elapsedRealtimeMs":J
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic blacklist getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWifiScanBackgroundTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10096
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 10097
    const/4 v0, 0x0

    return-object v0

    .line 10099
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .line 10057
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 10058
    const/4 v0, 0x0

    return v0

    .line 10060
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public greylist getWifiScanTime(JI)J
    .locals 2
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .line 10049
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 10050
    const-wide/16 v0, 0x0

    return-wide v0

    .line 10052
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic blacklist getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 8953
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWifiScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .line 10065
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method public greylist-max-o hasNetworkActivity()Z
    .locals 1

    .line 10312
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o hasUserActivity()Z
    .locals 1

    .line 10242
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o initUserActivityLocked()V
    .locals 4

    .line 10273
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10274
    sget v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 10275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_0

    .line 10276
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 10275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10278
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public greylist-max-o isInBackground()Z
    .locals 2

    .line 12334
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o makeProcessState(ILandroid/os/Parcel;)V
    .locals 9
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 10195
    if-ltz p1, :cond_2

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 10197
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10198
    if-nez p2, :cond_1

    .line 10199
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v7

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v7, v0, p1

    goto :goto_0

    .line 10202
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v4, 0xc

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v8

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v8, v0, p1

    .line 10205
    :goto_0
    return-void

    .line 10195
    :cond_2
    :goto_1
    return-void
.end method

.method greylist-max-o makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 10
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .line 10254
    if-ltz p1, :cond_3

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 10256
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 10257
    .local v0, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v0, :cond_1

    .line 10258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 10259
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10261
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, p1

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    .line 10262
    if-nez p2, :cond_2

    .line 10263
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v8

    move-object v4, p0

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v1, p1

    goto :goto_0

    .line 10266
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v5, 0xb

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v9

    move-object v4, p0

    move-object v6, v0

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v9, v1, p1

    .line 10269
    :goto_0
    return-void

    .line 10254
    .end local v0    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public greylist-max-o noteActivityPausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9996
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9997
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9999
    :cond_0
    return-void
.end method

.method public greylist-max-o noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9991
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9992
    return-void
.end method

.method public greylist-max-o noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9816
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9817
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9819
    :cond_0
    return-void
.end method

.method public greylist-max-o noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9812
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9813
    return-void
.end method

.method public blacklist noteBinderCallStatsLocked(JLjava/util/Collection;)V
    .locals 8
    .param p1, "incrementalCallCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;)V"
        }
    .end annotation

    .line 11405
    .local p3, "callStats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/os/BinderCallsStats$CallStat;>;"
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    .line 11406
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$CallStat;

    .line 11408
    .local v1, "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    sget-object v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    iget-object v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 11409
    sget-object v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v3, v2, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 11410
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl$Uid;->sTempBinderCallStats:Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 11411
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 11412
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    .local v3, "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    goto :goto_1

    .line 11414
    .end local v3    # "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    :cond_0
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;

    invoke-direct {v3}, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;-><init>()V

    .line 11415
    .restart local v3    # "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->binderClass:Ljava/lang/Class;

    iput-object v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->binderClass:Ljava/lang/Class;

    .line 11416
    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->transactionCode:I

    iput v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->transactionCode:I

    .line 11417
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11420
    :goto_1
    iget-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->callCount:J

    iget-wide v6, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->incrementalCallCount:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->callCount:J

    .line 11421
    iget-wide v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->recordedCallCount:J

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->recordedCallCount:J

    .line 11422
    iget-wide v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->cpuTimeMicros:J

    iput-wide v4, v3, Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;->recordedCpuTimeMicros:J

    .line 11423
    .end local v1    # "stat":Lcom/android/internal/os/BinderCallsStats$CallStat;
    .end local v2    # "index":I
    .end local v3    # "bcs":Lcom/android/internal/os/BatteryStatsImpl$BinderCallStats;
    goto :goto_0

    .line 11424
    :cond_1
    return-void
.end method

.method public greylist-max-o noteBluetoothScanResultsLocked(I)V
    .locals 1
    .param p1, "numNewResults"    # I

    .line 9983
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 9985
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanResultBgCounterLocked()Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 9986
    return-void
.end method

.method public greylist-max-o noteBluetoothScanStartedLocked(JZ)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "isUnoptimized"    # Z

    .line 9944
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 9945
    if-eqz p3, :cond_0

    .line 9946
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothUnoptimizedScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 9948
    :cond_0
    return-void
.end method

.method public greylist-max-o noteBluetoothScanStoppedLocked(JZ)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J
    .param p3, "isUnoptimized"    # Z

    .line 9951
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    .line 9952
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 9954
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    .line 9955
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 9957
    :cond_1
    return-void
.end method

.method public greylist-max-o noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9888
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9889
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9891
    :cond_0
    return-void
.end method

.method public greylist-max-o noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9884
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9885
    return-void
.end method

.method public greylist-max-o noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9864
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9865
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9867
    :cond_0
    return-void
.end method

.method public greylist-max-o noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9860
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9861
    return-void
.end method

.method public greylist-max-o noteForegroundServicePausedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 10006
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 10007
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 10009
    :cond_0
    return-void
.end method

.method public greylist-max-o noteForegroundServiceResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 10002
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundServiceTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 10003
    return-void
.end method

.method public greylist-max-o noteFullWifiLockAcquiredLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 9475
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 9476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 9477
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9478
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9481
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9483
    :cond_1
    return-void
.end method

.method public greylist-max-o noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9487
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 9488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 9489
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9491
    :cond_0
    return-void
.end method

.method public greylist-max-o noteJobsDeferredLocked(IJ)V
    .locals 5
    .param p1, "numDeferred"    # I
    .param p2, "sinceLast"    # J

    .line 11373
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 11374
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 11375
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2

    .line 11377
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 11379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 11380
    sget-object v2, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    aget-wide v2, v2, v0

    cmp-long v2, p2, v2

    if-gez v2, :cond_1

    .line 11381
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 11382
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v3, v2, v0

    .line 11385
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->addAtomic(I)V

    .line 11386
    goto :goto_1

    .line 11379
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11390
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method blacklist noteMobileRadioActiveTimeLocked(JJ)V
    .locals 3
    .param p1, "batteryUptimeDeltaUs"    # J
    .param p3, "elapsedTimeMs"    # J

    .line 10292
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    .line 10293
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mincrement(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)V

    .line 10294
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10295
    return-void
.end method

.method public greylist-max-o noteMobileRadioApWakeupLocked()V
    .locals 3

    .line 10388
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 10389
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10391
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10392
    return-void
.end method

.method greylist-max-o noteNetworkActivityLocked(IJJ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    .line 10281
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->ensureNetworkActivityLocked()V

    .line 10282
    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 10283
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10284
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    goto :goto_0

    .line 10286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown network activity type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10289
    :goto_0
    return-void
.end method

.method public greylist-max-o noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9822
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9823
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 9825
    :cond_0
    return-void
.end method

.method public greylist-max-o noteResetBluetoothScanLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9960
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    .line 9961
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    .line 9963
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_1

    .line 9964
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopAllRunningLocked(J)V

    .line 9966
    :cond_1
    return-void
.end method

.method public greylist-max-o noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9894
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9895
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 9897
    :cond_0
    return-void
.end method

.method public greylist-max-o noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9870
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9871
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 9873
    :cond_0
    return-void
.end method

.method public greylist-max-o noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9846
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9847
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 9849
    :cond_0
    return-void
.end method

.method public greylist-max-o noteStartGps(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 12585
    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStartSensor(IJ)V

    .line 12586
    return-void
.end method

.method public greylist-max-o noteStartJobLocked(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 12457
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12458
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 12459
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12461
    :cond_0
    return-void
.end method

.method public greylist-max-o noteStartSensor(IJ)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 12572
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    .line 12573
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12574
    return-void
.end method

.method public greylist-max-o noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 12443
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12444
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 12445
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12447
    :cond_0
    return-void
.end method

.method public greylist-max-o noteStartWakeLocked(ILjava/lang/String;IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .line 12527
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 12528
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v0, :cond_0

    .line 12529
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 12531
    :cond_0
    if-nez p3, :cond_1

    .line 12532
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAggregatedPartialWakelockTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 12533
    if-ltz p1, :cond_1

    .line 12534
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v1

    .line 12535
    .local v1, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_1

    .line 12536
    iput-wide p4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 12540
    .end local v1    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public greylist-max-o noteStopGps(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 12589
    const/16 v0, -0x2710

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteStopSensor(IJ)V

    .line 12590
    return-void
.end method

.method public greylist-max-o noteStopJobLocked(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "stopReason"    # I

    .line 12464
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12465
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 12466
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12468
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12469
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    .line 12470
    .local v1, "types":Landroid/util/SparseIntArray;
    if-nez v1, :cond_1

    .line 12471
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v1, v2

    .line 12472
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12474
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 12475
    .local v2, "last":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 12477
    .end local v1    # "types":Landroid/util/SparseIntArray;
    .end local v2    # "last":I
    :cond_2
    return-void
.end method

.method public greylist-max-o noteStopSensor(IJ)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 12578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    .line 12579
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 12580
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12582
    :cond_0
    return-void
.end method

.method public greylist-max-o noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .line 12450
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12451
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    if-eqz v0, :cond_0

    .line 12452
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12454
    :cond_0
    return-void
.end method

.method public greylist-max-o noteStopWakeLocked(ILjava/lang/String;IJ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .line 12543
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 12544
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v0, :cond_0

    .line 12545
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    .line 12546
    .local v1, "wlt":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 12548
    .end local v1    # "wlt":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_0
    if-nez p3, :cond_2

    .line 12549
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v1, :cond_1

    .line 12550
    invoke-virtual {v1, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 12552
    :cond_1
    if-ltz p1, :cond_2

    .line 12553
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pid;

    .line 12554
    .local v1, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_2

    .line 12555
    iget v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 12556
    iget-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 12557
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 12562
    .end local v1    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_2
    return-void
.end method

.method public greylist-max-o noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .line 10229
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 10230
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 10232
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge p1, v0, :cond_1

    .line 10233
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    goto :goto_0

    .line 10235
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown user activity type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was specified."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10238
    :goto_0
    return-void
.end method

.method public blacklist noteVibratorOffLocked(J)V
    .locals 2
    .param p1, "elapsedRealtimeMs"    # J

    .line 10024
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_0

    .line 10025
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 10027
    :cond_0
    return-void
.end method

.method public blacklist noteVibratorOnLocked(JJ)V
    .locals 6
    .param p1, "durationMillis"    # J
    .param p3, "elapsedRealtimeMs"    # J

    .line 10020
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;JJ)V

    .line 10021
    return-void
.end method

.method public greylist-max-o noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9840
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 9841
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9843
    :cond_0
    return-void
.end method

.method public greylist-max-o noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9836
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9837
    return-void
.end method

.method public greylist-max-o noteWifiBatchedScanStartedLocked(IJ)V
    .locals 3
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 9516
    const/4 v0, 0x0

    .line 9517
    .local v0, "bin":I
    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 9518
    shr-int/lit8 p1, p1, 0x3

    .line 9519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9522
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_1

    return-void

    .line 9524
    :cond_1
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 9525
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v2, v1

    .line 9526
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9528
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9529
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 9530
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 9532
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9533
    return-void
.end method

.method public greylist-max-o noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .line 9537
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9538
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v2, v0

    .line 9539
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9540
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 9542
    :cond_0
    return-void
.end method

.method public greylist-max-o noteWifiMulticastDisabledLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9558
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_0

    .line 9559
    return-void

    .line 9562
    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 9563
    if-nez v0, :cond_1

    .line 9564
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9566
    :cond_1
    return-void
.end method

.method public greylist-max-o noteWifiMulticastEnabledLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 9546
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-nez v0, :cond_1

    .line 9547
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9548
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9551
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9553
    :cond_1
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 9554
    return-void
.end method

.method public greylist-max-o noteWifiRadioApWakeupLocked()V
    .locals 3

    .line 10403
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 10404
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 10406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 10407
    return-void
.end method

.method public greylist-max-o noteWifiRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .line 9455
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 9456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 9457
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 9458
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 9461
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 9463
    :cond_1
    return-void
.end method

.method public greylist-max-o noteWifiScanStartedLocked(J)V
    .locals 8
    .param p1, "elapsedRealtimeMs"    # J

    .line 9495
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    .line 9496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 9497
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    .line 9498
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 9502
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    .line 9504
    :cond_1
    return-void
.end method

.method public greylist-max-o noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9508
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    .line 9509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 9510
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    .line 9512
    :cond_0
    return-void
.end method

.method public greylist-max-o noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 9467
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 9468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 9469
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 9471
    :cond_0
    return-void
.end method

.method greylist-max-o readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 24
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .line 11074
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v10

    .line 11075
    .local v10, "timestampMs":J
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 11076
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->readFromParcel(Landroid/os/Parcel;)V

    .line 11078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11079
    .local v12, "numWakelocks":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 11080
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v12, :cond_0

    .line 11081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11082
    .local v1, "wakelockName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 11083
    .local v2, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v2, v13, v14, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 11085
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11080
    .end local v1    # "wakelockName":Ljava/lang/String;
    .end local v2    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 11088
    .end local v0    # "j":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11089
    .local v15, "numSyncs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 11090
    const/4 v0, 0x0

    move v7, v0

    .local v7, "j":I
    :goto_1
    if-ge v7, v15, :cond_2

    .line 11091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 11092
    .local v6, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 11093
    iget-object v5, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0xd

    const/16 v16, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v17, v0

    move-object v0, v4

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v4

    move-object/from16 v4, v16

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    .end local v6    # "syncName":Ljava/lang/String;
    .local v21, "syncName":Ljava/lang/String;
    move-object/from16 v6, v17

    move/from16 v16, v7

    .end local v7    # "j":I
    .local v16, "j":I
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    .end local v21    # "syncName":Ljava/lang/String;
    .local v0, "syncName":Ljava/lang/String;
    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 11092
    .end local v0    # "syncName":Ljava/lang/String;
    .end local v16    # "j":I
    .restart local v6    # "syncName":Ljava/lang/String;
    .restart local v7    # "j":I
    :cond_1
    move-object v0, v6

    move/from16 v16, v7

    .line 11090
    .end local v6    # "syncName":Ljava/lang/String;
    .end local v7    # "j":I
    .restart local v16    # "j":I
    :goto_2
    add-int/lit8 v7, v16, 0x1

    .end local v16    # "j":I
    .restart local v7    # "j":I
    goto :goto_1

    :cond_2
    move/from16 v16, v7

    .line 11098
    .end local v7    # "j":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11099
    .local v7, "numJobs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 11100
    const/4 v0, 0x0

    move v6, v0

    .local v6, "j":I
    :goto_3
    if-ge v6, v7, :cond_4

    .line 11101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 11102
    .local v5, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 11103
    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v16, 0xe

    const/16 v17, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v18, v0

    move-object v0, v3

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move/from16 v20, v12

    move-object v12, v3

    .end local v12    # "numWakelocks":I
    .local v20, "numWakelocks":I
    move/from16 v3, v16

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    move-object/from16 v23, v5

    .end local v5    # "jobName":Ljava/lang/String;
    .local v23, "jobName":Ljava/lang/String;
    move-object/from16 v5, v19

    move/from16 v16, v6

    .end local v6    # "j":I
    .restart local v16    # "j":I
    move-object/from16 v6, v18

    move/from16 v17, v7

    .end local v7    # "numJobs":I
    .local v17, "numJobs":I
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v1, v22

    move-object/from16 v0, v23

    .end local v23    # "jobName":Ljava/lang/String;
    .local v0, "jobName":Ljava/lang/String;
    invoke-virtual {v1, v0, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 11102
    .end local v0    # "jobName":Ljava/lang/String;
    .end local v16    # "j":I
    .end local v17    # "numJobs":I
    .end local v20    # "numWakelocks":I
    .restart local v5    # "jobName":Ljava/lang/String;
    .restart local v6    # "j":I
    .restart local v7    # "numJobs":I
    .restart local v12    # "numWakelocks":I
    :cond_3
    move-object v0, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    .line 11100
    .end local v5    # "jobName":Ljava/lang/String;
    .end local v6    # "j":I
    .end local v7    # "numJobs":I
    .end local v12    # "numWakelocks":I
    .restart local v16    # "j":I
    .restart local v17    # "numJobs":I
    .restart local v20    # "numWakelocks":I
    :goto_4
    add-int/lit8 v6, v16, 0x1

    move/from16 v7, v17

    move/from16 v12, v20

    .end local v16    # "j":I
    .restart local v6    # "j":I
    goto :goto_3

    .end local v17    # "numJobs":I
    .end local v20    # "numWakelocks":I
    .restart local v7    # "numJobs":I
    .restart local v12    # "numWakelocks":I
    :cond_4
    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v12

    .line 11108
    .end local v6    # "j":I
    .end local v7    # "numJobs":I
    .end local v12    # "numWakelocks":I
    .restart local v17    # "numJobs":I
    .restart local v20    # "numWakelocks":I
    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V

    .line 11110
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11111
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11112
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    sget-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 11114
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->readCounterFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-result-object v2

    aput-object v2, v1, v0

    .line 11113
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 11118
    .end local v0    # "i":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11119
    .local v12, "numSensors":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 11120
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_6
    if-ge v0, v12, :cond_6

    .line 11121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11122
    .local v1, "sensorNumber":I
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 11123
    .local v2, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 11125
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11120
    .end local v1    # "sensorNumber":I
    .end local v2    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 11128
    .end local v0    # "k":I
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11129
    .local v7, "numProcs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 11130
    const/4 v0, 0x0

    .restart local v0    # "k":I
    :goto_7
    if-ge v0, v7, :cond_7

    .line 11131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11132
    .local v1, "processName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    .line 11133
    .local v2, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 11134
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11130
    .end local v1    # "processName":Ljava/lang/String;
    .end local v2    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 11137
    .end local v0    # "k":I
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11138
    .local v6, "numPkgs":I
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 11139
    const/4 v0, 0x0

    .local v0, "l":I
    :goto_8
    if-ge v0, v6, :cond_8

    .line 11140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 11141
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 11142
    .local v2, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v2, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 11143
    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11139
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 11146
    .end local v0    # "l":I
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 11147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 11148
    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v16, 0x4

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v18, v0

    move-object v0, v3

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move/from16 v21, v7

    move-object v7, v3

    .end local v7    # "numProcs":I
    .local v21, "numProcs":I
    move/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v18

    move/from16 v16, v6

    .end local v6    # "numPkgs":I
    .local v16, "numPkgs":I
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    goto :goto_9

    .line 11151
    .end local v16    # "numPkgs":I
    .end local v21    # "numProcs":I
    .restart local v6    # "numPkgs":I
    .restart local v7    # "numProcs":I
    :cond_9
    move/from16 v16, v6

    move/from16 v21, v7

    .end local v6    # "numPkgs":I
    .end local v7    # "numProcs":I
    .restart local v16    # "numPkgs":I
    .restart local v21    # "numProcs":I
    const/4 v7, 0x0

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11153
    :goto_9
    const/4 v6, 0x0

    iput-boolean v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 11154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 11155
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v3, 0x5

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v5

    move-object/from16 v18, v2

    move-object/from16 v2, p0

    move-object v7, v5

    move-object/from16 v5, v18

    move/from16 v18, v12

    move v12, v6

    .end local v12    # "numSensors":I
    .local v18, "numSensors":I
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x0

    goto :goto_a

    .line 11158
    .end local v18    # "numSensors":I
    .restart local v12    # "numSensors":I
    :cond_a
    move/from16 v18, v12

    move v12, v6

    .end local v12    # "numSensors":I
    .restart local v18    # "numSensors":I
    const/4 v7, 0x0

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11160
    :goto_a
    iput-boolean v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 11161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 11162
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v3, 0x6

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move-object v12, v6

    move-object/from16 v6, v19

    move-object v13, v7

    move/from16 v19, v21

    .end local v21    # "numProcs":I
    .local v19, "numProcs":I
    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_b

    .line 11166
    .end local v19    # "numProcs":I
    .restart local v21    # "numProcs":I
    :cond_b
    move-object v13, v7

    move/from16 v19, v21

    .end local v21    # "numProcs":I
    .restart local v19    # "numProcs":I
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11168
    :goto_b
    const/4 v0, -0x1

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 11169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    const/4 v12, 0x5

    if-ge v0, v12, :cond_d

    .line 11170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 11171
    invoke-virtual {v8, v0, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    goto :goto_d

    .line 11173
    :cond_c
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aput-object v13, v1, v0

    .line 11169
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 11176
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x0

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    .line 11177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 11178
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v3, 0x7

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_e

    .line 11182
    :cond_e
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11184
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 11185
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0xf

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_f

    .line 11188
    :cond_f
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11190
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 11191
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_10

    .line 11194
    :cond_10
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11196
    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 11197
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x10

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_11

    .line 11200
    :cond_11
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11202
    :goto_11
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 11203
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x11

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_12

    .line 11206
    :cond_12
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11208
    :goto_12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 11209
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0xa

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_13

    .line 11212
    :cond_13
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11214
    :goto_13
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 11215
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x16

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v7, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_14

    .line 11218
    :cond_14
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 11220
    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    .line 11221
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x14

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v7

    move-object/from16 v2, p0

    move-object v12, v7

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_15

    .line 11226
    :cond_15
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11228
    :goto_15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    .line 11229
    new-instance v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x13

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_16

    .line 11233
    :cond_16
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11235
    :goto_16
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 11236
    new-instance v12, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x15

    const/4 v4, 0x0

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v12, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    goto :goto_17

    .line 11240
    :cond_17
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 11242
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    .line 11243
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_18

    .line 11245
    :cond_18
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11247
    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 11248
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    goto :goto_19

    .line 11250
    :cond_19
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11252
    :goto_19
    const/4 v0, 0x7

    iput v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 11253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_1b

    .line 11254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 11255
    invoke-virtual {v8, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    goto :goto_1b

    .line 11257
    :cond_1a
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aput-object v13, v2, v1

    .line 11253
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 11260
    .end local v1    # "i":I
    :cond_1b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 11261
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/16 v3, 0x9

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v0, v6

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v6, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_1c

    .line 11264
    :cond_1c
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 11266
    :goto_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 11267
    sget v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11268
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    sget v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_1d

    .line 11269
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v2, v1, v0

    .line 11268
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .end local v0    # "i":I
    :cond_1d
    goto :goto_1e

    .line 11272
    :cond_1e
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 11274
    :goto_1e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    .line 11275
    const/16 v0, 0xa

    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11276
    new-array v1, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11278
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1f
    if-ge v1, v0, :cond_1f

    .line 11279
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 11281
    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v3, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v4, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v3, v2, v1

    .line 11278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 11284
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 11285
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v1, 0x5

    invoke-static {v9, v0, v1, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 11290
    :cond_20
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_20

    .line 11292
    :cond_21
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11293
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11296
    :goto_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 11297
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_21

    .line 11300
    :cond_22
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 11303
    :goto_21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 11304
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v3, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v2, v3, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_22

    .line 11307
    :cond_23
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 11310
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    .line 11311
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 11312
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_23

    .line 11314
    :cond_24
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 11317
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_25

    .line 11318
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mMeasuredEnergyStatsConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    .line 11322
    :cond_25
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11323
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11325
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mreadCpuSpeedCountersFromParcel(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11327
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 11328
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-static {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 11331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11332
    .local v0, "stateCount":I
    if-eqz v0, :cond_26

    .line 11333
    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v2, 0x5

    invoke-static {v9, v1, v2, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v1

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    .line 11337
    :cond_26
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    iget-object v2, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2, v9, v13}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray-IA;)V

    iput-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    .line 11339
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11340
    .end local v0    # "stateCount":I
    .local v6, "stateCount":I
    if-eqz v6, :cond_27

    .line 11341
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v2, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 11343
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 11341
    move-object/from16 v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    goto :goto_24

    .line 11345
    :cond_27
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 11348
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11349
    if-eqz v6, :cond_28

    .line 11350
    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v2, 0x8

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 11352
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getCpuFreqCount()I

    move-result v3

    iget-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    .line 11350
    move-object/from16 v0, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IIJ)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    goto :goto_25

    .line 11354
    :cond_28
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    .line 11357
    :goto_25
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_29

    .line 11358
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_26

    .line 11360
    :cond_29
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11363
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 11364
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1, v9}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_27

    .line 11366
    :cond_2a
    iput-object v13, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 11369
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    .line 11370
    return-void
.end method

.method greylist-max-o readJobCompletionsFromParcelLocked(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 11055
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11056
    .local v0, "numJobCompletions":I
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 11057
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11058
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 11059
    .local v2, "jobName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11060
    .local v3, "numTypes":I
    if-lez v3, :cond_1

    .line 11061
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 11062
    .local v4, "types":Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 11063
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 11064
    .local v6, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11065
    .local v7, "count":I
    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 11062
    .end local v6    # "type":I
    .end local v7    # "count":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11067
    .end local v5    # "k":I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11057
    .end local v2    # "jobName":Ljava/lang/String;
    .end local v3    # "numTypes":I
    .end local v4    # "types":Landroid/util/SparseIntArray;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11070
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public greylist-max-o readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 12396
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12397
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12398
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12399
    return-void
.end method

.method public greylist-max-o readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 12390
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 12391
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12392
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12393
    return-void
.end method

.method public greylist-max-o readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .line 12402
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 12403
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12404
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 12405
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12407
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 12408
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12410
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 12411
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12413
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 12414
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWakelockTimerLocked(Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 12416
    :cond_3
    return-void
.end method

.method public greylist-max-o removeIsolatedUid(I)V
    .locals 2
    .param p1, "isolatedUid"    # I

    .line 9342
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 9343
    .local v0, "idx":I
    :goto_0
    if-gez v0, :cond_1

    .line 9344
    return-void

    .line 9346
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mChildUids:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 9347
    return-void
.end method

.method public greylist-max-o reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTimeMs"    # J
    .param p4, "usedTimeMs"    # J

    .line 12565
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 12566
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 12567
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 12569
    :cond_0
    return-void
.end method

.method public blacklist reset(JJI)Z
    .locals 17
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J
    .param p5, "resetReason"    # I

    .line 10482
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const/4 v5, 0x0

    .line 10484
    .local v5, "active":Z
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 10485
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->init(JJ)V

    .line 10487
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    .line 10488
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10489
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    or-int/2addr v5, v6

    .line 10491
    :cond_0
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_1

    .line 10492
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10493
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    or-int/2addr v5, v6

    .line 10495
    :cond_1
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v6, :cond_2

    .line 10496
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10497
    iget-boolean v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    or-int/2addr v5, v6

    .line 10499
    :cond_2
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_6

    .line 10500
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v9, 0x5

    if-ge v6, v9, :cond_4

    .line 10501
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    if-eqz v9, :cond_3

    .line 10502
    invoke-virtual {v9, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v9

    xor-int/2addr v9, v7

    or-int/2addr v5, v9

    .line 10500
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10505
    .end local v6    # "i":I
    :cond_4
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    move v6, v8

    :goto_1
    or-int/2addr v5, v6

    .line 10507
    :cond_6
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_8

    .line 10508
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10509
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastWakelockCount:I

    if-lez v6, :cond_7

    move v6, v7

    goto :goto_2

    :cond_7
    move v6, v8

    :goto_2
    or-int/2addr v5, v6

    .line 10512
    :cond_8
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10513
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10514
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10515
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10516
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10517
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10518
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10519
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10520
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v6

    xor-int/2addr v6, v7

    or-int/2addr v5, v6

    .line 10522
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10523
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10525
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v6, :cond_b

    .line 10526
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    const/4 v9, 0x7

    if-ge v6, v9, :cond_9

    .line 10527
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    invoke-static {v9, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v9

    xor-int/2addr v9, v7

    or-int/2addr v5, v9

    .line 10526
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 10529
    .end local v6    # "i":I
    :cond_9
    iget v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v6, v9, :cond_a

    move v6, v7

    goto :goto_4

    :cond_a
    move v6, v8

    :goto_4
    or-int/2addr v5, v6

    .line 10531
    :cond_b
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    const/4 v9, 0x0

    if-eqz v6, :cond_d

    .line 10532
    invoke-virtual {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(ZJ)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 10533
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    .line 10534
    iput-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_5

    .line 10536
    :cond_c
    const/4 v5, 0x1

    .line 10540
    :cond_d
    :goto_5
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10542
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10543
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10544
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10545
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10547
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 10548
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 10549
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;ZJ)Z

    .line 10551
    const/4 v6, 0x4

    move/from16 v10, p5

    if-ne v10, v6, :cond_e

    .line 10552
    iput-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    goto :goto_6

    .line 10554
    :cond_e
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-static {v6}, Lcom/android/internal/power/MeasuredEnergyStats;->resetIfNotNull(Lcom/android/internal/power/MeasuredEnergyStats;)V

    .line 10557
    :goto_6
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10558
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10560
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([[Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10562
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10563
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10566
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10567
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10569
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10571
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10573
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10575
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10578
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 10579
    .local v6, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "iw":I
    :goto_7
    if-ltz v9, :cond_10

    .line 10580
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10581
    .local v11, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset(J)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 10582
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_8

    .line 10584
    :cond_f
    const/4 v5, 0x1

    .line 10579
    .end local v11    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :goto_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 10587
    .end local v9    # "iw":I
    :cond_10
    const-wide/16 v11, 0x3e8

    div-long v11, v3, v11

    .line 10588
    .local v11, "realtimeMs":J
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v9, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 10589
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 10590
    .local v9, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v13

    sub-int/2addr v13, v7

    .local v13, "is":I
    :goto_9
    if-ltz v13, :cond_12

    .line 10591
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10592
    .local v14, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 10593
    invoke-virtual {v9, v13}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 10594
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_a

    .line 10596
    :cond_11
    const/4 v5, 0x1

    .line 10590
    .end local v14    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    :goto_a
    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    .line 10599
    .end local v13    # "is":I
    :cond_12
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v13, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 10600
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v13

    .line 10601
    .local v13, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    sub-int/2addr v14, v7

    .local v14, "ij":I
    :goto_b
    if-ltz v14, :cond_14

    .line 10602
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10603
    .local v15, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-virtual {v15, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(ZJ)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 10604
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 10605
    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->detach()V

    goto :goto_c

    .line 10607
    :cond_13
    const/4 v5, 0x1

    .line 10601
    .end local v15    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    :goto_c
    add-int/lit8 v14, v14, -0x1

    goto :goto_b

    .line 10610
    .end local v14    # "ij":I
    :cond_14
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v14, v11, v12}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup(J)V

    .line 10611
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->clear()V

    .line 10613
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10614
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10615
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10616
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-static {v14, v8, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    .line 10618
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "ise":I
    :goto_d
    if-ltz v8, :cond_16

    .line 10619
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 10620
    .local v14, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v14, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset(J)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 10621
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_e

    .line 10623
    :cond_15
    const/4 v5, 0x1

    .line 10618
    .end local v14    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :goto_e
    add-int/lit8 v8, v8, -0x1

    goto :goto_d

    .line 10627
    .end local v8    # "ise":I
    :cond_16
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "ip":I
    :goto_f
    if-ltz v8, :cond_17

    .line 10628
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 10629
    .local v14, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v14}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 10627
    .end local v14    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .line 10631
    .end local v8    # "ip":I
    :cond_17
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 10633
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .local v8, "i":I
    :goto_10
    if-ltz v8, :cond_19

    .line 10634
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    .line 10635
    .local v14, "pid":Landroid/os/BatteryStats$Uid$Pid;
    iget v15, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v15, :cond_18

    .line 10636
    const/4 v5, 0x1

    goto :goto_11

    .line 10638
    :cond_18
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->removeAt(I)V

    .line 10633
    .end local v14    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :goto_11
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    .line 10643
    .end local v8    # "i":I
    :cond_19
    iget-object v8, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    sub-int/2addr v8, v7

    .restart local v8    # "i":I
    :goto_12
    if-ltz v8, :cond_1a

    .line 10644
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 10645
    .local v7, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 10643
    .end local v7    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    add-int/lit8 v8, v8, -0x1

    goto :goto_12

    .line 10647
    .end local v8    # "i":I
    :cond_1a
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 10649
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallCount:J

    .line 10650
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBinderCallStats:Landroid/util/ArraySet;

    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 10652
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    .line 10654
    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTimeMs:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTimeMs:J

    .line 10655
    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTimeMs:J

    iput-wide v7, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTimeMs:J

    .line 10658
    xor-int/lit8 v7, v5, 0x1

    return v7
.end method

.method public blacklist setProcessStateForTest(IJ)V
    .locals 4
    .param p1, "procState"    # I
    .param p2, "elapsedTimeMs"    # J

    .line 9211
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 9212
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V

    .line 9213
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;IJ)V

    .line 9214
    nop

    .line 9215
    invoke-static {p1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v0

    .line 9216
    .local v0, "batteryConsumerProcessState":I
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v1

    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 9217
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v1

    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 9218
    nop

    .line 9219
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v1

    .line 9220
    .local v1, "wifiControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v1, :cond_0

    .line 9221
    invoke-static {v1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 9223
    :cond_0
    nop

    .line 9224
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v2

    .line 9225
    .local v2, "bluetoothControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v2, :cond_1

    .line 9226
    invoke-static {v2, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 9228
    :cond_1
    nop

    .line 9229
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsIfSupportedLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v3

    .line 9230
    .local v3, "energyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    if-eqz v3, :cond_2

    .line 9231
    invoke-virtual {v3, v0, p2, p3}, Lcom/android/internal/power/MeasuredEnergyStats;->setState(IJ)V

    .line 9233
    :cond_2
    return-void
.end method

.method public greylist-max-o updateOnBatteryBgTimeBase(JJ)Z
    .locals 7
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J

    .line 12338
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 12339
    .local v2, "on":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o updateOnBatteryScreenOffBgTimeBase(JJ)Z
    .locals 7
    .param p1, "uptimeUs"    # J
    .param p3, "realtimeUs"    # J

    .line 12343
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 12344
    .local v2, "on":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->setRunning(ZJJ)Z

    move-result v0

    return v0
.end method

.method public blacklist updateUidProcessStateLocked(IJJ)V
    .locals 9
    .param p1, "procState"    # I
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "uptimeMs"    # J

    .line 12225
    nop

    .line 12226
    invoke-static {p1}, Landroid/app/ActivityManager;->isForegroundService(I)Z

    move-result v0

    .line 12227
    .local v0, "userAwareService":Z
    invoke-static {p1}, Landroid/os/BatteryStats;->mapToInternalProcessState(I)I

    move-result v1

    .line 12229
    .local v1, "uidRunningState":I
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v2, v1, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-ne v0, v3, :cond_0

    .line 12230
    return-void

    .line 12233
    :cond_0
    if-eq v2, v1, :cond_8

    .line 12234
    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 12235
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v4, v2

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 12237
    :cond_1
    if-eq v1, v3, :cond_3

    .line 12238
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 12239
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 12241
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 12244
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12245
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->updateProcStateCpuTimesLocked(IJ)V

    .line 12247
    nop

    .line 12248
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object v2

    .line 12249
    .local v2, "onBatteryCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    nop

    .line 12250
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcStateScreenOffTimeCounter(J)Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getCounter()Lcom/android/internal/os/LongArrayMultiStateCounter;

    move-result-object v3

    .line 12252
    .local v3, "onBatteryScreenOffCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    invoke-virtual {v2, v1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 12253
    invoke-virtual {v3, v1, p2, p3}, Lcom/android/internal/os/LongArrayMultiStateCounter;->setState(IJ)V

    .line 12256
    .end local v2    # "onBatteryCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    .end local v3    # "onBatteryScreenOffCounter":Lcom/android/internal/os/LongArrayMultiStateCounter;
    :cond_4
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 12257
    invoke-static {v2}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v2

    .line 12259
    .local v2, "prevBatteryConsumerProcessState":I
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 12261
    const-wide/16 v3, 0x3e8

    mul-long v5, p4, v3

    mul-long v7, p2, v3

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryBgTimeBase(JJ)Z

    .line 12262
    mul-long v5, p4, v3

    mul-long/2addr v3, p2

    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->updateOnBatteryScreenOffBgTimeBase(JJ)Z

    .line 12264
    nop

    .line 12265
    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v3

    .line 12266
    .local v3, "batteryConsumerProcessState":I
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCpuActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    invoke-static {v4, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 12268
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getMobileRadioActiveTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    .line 12269
    invoke-static {v4, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    .line 12271
    nop

    .line 12272
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getWifiControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v4

    .line 12273
    .local v4, "wifiControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v4, :cond_5

    .line 12274
    invoke-static {v4, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 12277
    :cond_5
    nop

    .line 12278
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothControllerActivity()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-result-object v5

    .line 12279
    .local v5, "bluetoothControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    if-eqz v5, :cond_6

    .line 12280
    invoke-static {v5, v3, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V

    .line 12284
    :cond_6
    nop

    .line 12285
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getOrCreateMeasuredEnergyStatsIfSupportedLocked()Lcom/android/internal/power/MeasuredEnergyStats;

    move-result-object v6

    .line 12286
    .local v6, "energyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    if-eqz v6, :cond_7

    .line 12287
    invoke-virtual {v6, v3, p2, p3}, Lcom/android/internal/power/MeasuredEnergyStats;->setState(IJ)V

    .line 12289
    :cond_7
    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->maybeScheduleExternalStatsSync(II)V

    .line 12293
    .end local v2    # "prevBatteryConsumerProcessState":I
    .end local v3    # "batteryConsumerProcessState":I
    .end local v4    # "wifiControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .end local v5    # "bluetoothControllerActivity":Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .end local v6    # "energyStats":Lcom/android/internal/power/MeasuredEnergyStats;
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    if-eq v0, v2, :cond_a

    .line 12294
    if-eqz v0, :cond_9

    .line 12295
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServiceResumedLocked(J)V

    goto :goto_0

    .line 12297
    :cond_9
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteForegroundServicePausedLocked(J)V

    .line 12299
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mInForegroundService:Z

    .line 12301
    :cond_a
    return-void
.end method

.method greylist-max-o writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;

    .line 10765
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 10766
    .local v0, "NJC":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 10767
    const/4 v1, 0x0

    .local v1, "ijc":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10768
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10769
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobCompletions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    .line 10770
    .local v2, "types":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 10771
    .local v3, "NT":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 10772
    const/4 v4, 0x0

    .local v4, "it":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 10773
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10774
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 10772
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10767
    .end local v2    # "types":Landroid/util/SparseIntArray;
    .end local v3    # "NT":I
    .end local v4    # "it":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10777
    .end local v1    # "ijc":I
    :cond_1
    return-void
.end method

.method greylist-max-o writeToParcelLocked(Landroid/os/Parcel;JJ)V
    .locals 16
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "uptimeUs"    # J
    .param p4, "elapsedRealtimeUs"    # J

    .line 10780
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10781
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mOnBatteryScreenOffBackgroundTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->writeToParcel(Landroid/os/Parcel;JJ)V

    .line 10783
    iget-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 10784
    .local v1, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 10785
    .local v2, "NW":I
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10786
    const/4 v3, 0x0

    .local v3, "iw":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 10787
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10788
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 10789
    .local v4, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 10786
    .end local v4    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10792
    .end local v3    # "iw":I
    :cond_0
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 10793
    .local v3, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 10794
    .local v4, "NS":I
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 10795
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 10796
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10797
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10798
    .local v6, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v7, v6, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 10795
    .end local v6    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10801
    .end local v5    # "is":I
    :cond_1
    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 10802
    .local v5, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$DualTimer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 10803
    .local v6, "NJ":I
    invoke-virtual {v7, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 10804
    const/4 v10, 0x0

    .local v10, "ij":I
    :goto_2
    if-ge v10, v6, :cond_2

    .line 10805
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10806
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    .line 10807
    .local v11, "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    invoke-static {v7, v11, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 10804
    .end local v11    # "timer":Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 10810
    .end local v10    # "ij":I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->writeJobCompletionsToParcelLocked(Landroid/os/Parcel;)V

    .line 10812
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredEventCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v10, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10813
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsDeferredCount:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v10, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10814
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v10, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10815
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    sget-object v11, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    array-length v11, v11

    if-ge v10, v11, :cond_3

    .line 10816
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobsFreshnessBuckets:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v11, v11, v10

    invoke-static {v7, v11}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeCounterToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Counter;)V

    .line 10815
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 10819
    .end local v10    # "i":I
    :cond_3
    iget-object v10, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 10820
    .local v10, "NSE":I
    invoke-virtual {v7, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 10821
    const/4 v11, 0x0

    .local v11, "ise":I
    :goto_4
    if-ge v11, v10, :cond_4

    .line 10822
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 10823
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 10824
    .local v12, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 10821
    .end local v12    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 10827
    .end local v11    # "ise":I
    :cond_4
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 10828
    .local v11, "NP":I
    invoke-virtual {v7, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 10829
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_5
    if-ge v12, v11, :cond_5

    .line 10830
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10831
    iget-object v13, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 10832
    .local v13, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual {v13, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 10829
    .end local v13    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 10835
    .end local v12    # "ip":I
    :cond_5
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 10836
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 10837
    .local v13, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10838
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 10839
    .local v14, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual {v14, v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 10840
    .end local v13    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v14    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    goto :goto_6

    .line 10842
    :cond_6
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_7

    .line 10843
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10844
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_7

    .line 10846
    :cond_7
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10848
    :goto_7
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_8

    .line 10849
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10850
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_8

    .line 10852
    :cond_8
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10854
    :goto_8
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_9

    .line 10855
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10856
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_9

    .line 10858
    :cond_9
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10860
    :goto_9
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a
    const/4 v15, 0x5

    if-ge v12, v15, :cond_b

    .line 10861
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    if-eqz v15, :cond_a

    .line 10862
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10863
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_b

    .line 10865
    :cond_a
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10860
    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 10868
    .end local v12    # "i":I
    :cond_b
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_c

    .line 10869
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10870
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 10872
    :cond_c
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10875
    :goto_c
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_d

    .line 10876
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10877
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_d

    .line 10879
    :cond_d
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10881
    :goto_d
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_e

    .line 10882
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10883
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_e

    .line 10885
    :cond_e
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10887
    :goto_e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_f

    .line 10888
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10889
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_f

    .line 10891
    :cond_f
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10893
    :goto_f
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_10

    .line 10894
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10895
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_10

    .line 10897
    :cond_10
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10899
    :goto_10
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_11

    .line 10900
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10901
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_11

    .line 10903
    :cond_11
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10905
    :goto_11
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v12, :cond_12

    .line 10906
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10907
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundServiceTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_12

    .line 10909
    :cond_12
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10911
    :goto_12
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_13

    .line 10912
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10913
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAggregatedPartialWakelockTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_13

    .line 10915
    :cond_13
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10917
    :goto_13
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_14

    .line 10918
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10919
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_14

    .line 10921
    :cond_14
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10923
    :goto_14
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-eqz v12, :cond_15

    .line 10924
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10925
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothUnoptimizedScanTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_15

    .line 10927
    :cond_15
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10929
    :goto_15
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v12, :cond_16

    .line 10930
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10931
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_16

    .line 10933
    :cond_16
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10935
    :goto_16
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v12, :cond_17

    .line 10936
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10937
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanResultBgCounter:Lcom/android/internal/os/BatteryStatsImpl$Counter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_17

    .line 10939
    :cond_17
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10941
    :goto_17
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_18
    const/4 v15, 0x7

    if-ge v12, v15, :cond_19

    .line 10942
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    if-eqz v15, :cond_18

    .line 10943
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10944
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_19

    .line 10946
    :cond_18
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10941
    :goto_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 10949
    .end local v12    # "i":I
    :cond_19
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v12, :cond_1a

    .line 10950
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10951
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    invoke-virtual {v12, v7, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_1a

    .line 10953
    :cond_1a
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10955
    :goto_1a
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v12, :cond_1c

    .line 10956
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10957
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1b
    sget v15, Lcom/android/internal/os/BatteryStatsImpl$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v12, v15, :cond_1b

    .line 10958
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10957
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .end local v12    # "i":I
    :cond_1b
    goto :goto_1c

    .line 10961
    :cond_1c
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10963
    :goto_1c
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v12, :cond_1f

    .line 10964
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10965
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1d
    const/16 v15, 0xa

    if-ge v12, v15, :cond_1d

    .line 10966
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10967
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v15, v15, v12

    invoke-virtual {v15, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 10965
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    .line 10969
    .end local v12    # "i":I
    :cond_1d
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v12, :cond_1e

    .line 10970
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10971
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_1e

    .line 10973
    :cond_1e
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10975
    :goto_1e
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_1f

    .line 10977
    :cond_1f
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10980
    :goto_1f
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v12, :cond_20

    .line 10981
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10982
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 10984
    :cond_20
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10987
    :goto_20
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v12, :cond_21

    .line 10988
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10989
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 10991
    :cond_21
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 10994
    :goto_21
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-eqz v12, :cond_22

    .line 10995
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 10996
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    invoke-virtual {v12, v7, v13}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 10998
    :cond_22
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11001
    :goto_22
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    if-eqz v12, :cond_23

    .line 11002
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11003
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUidMeasuredEnergyStats:Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-virtual {v12, v7}, Lcom/android/internal/power/MeasuredEnergyStats;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_23

    .line 11005
    :cond_23
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11008
    :goto_23
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 11009
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 11011
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeedTimesUs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v12, v7, v15}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$mwriteCpuSpeedCountersToParcel(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    .line 11013
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 11014
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mScreenOffCpuFreqTimeMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v7, v12}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V

    .line 11016
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v12, :cond_24

    .line 11017
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->getStateCount()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 11018
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuActiveTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_24

    .line 11020
    :cond_24
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11023
    :goto_24
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterTimesMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;Landroid/os/Parcel;)V

    .line 11025
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-eqz v12, :cond_25

    .line 11026
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getStateCount()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 11027
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_25

    .line 11029
    :cond_25
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11031
    :goto_25
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    if-eqz v12, :cond_26

    .line 11032
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->getStateCount()I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 11033
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcStateScreenOffTimeMs:Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;

    invoke-static {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeInFreqMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_26

    .line 11035
    :cond_26
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11038
    :goto_26
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v12, :cond_27

    .line 11039
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11040
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_27

    .line 11042
    :cond_27
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11045
    :goto_27
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v12, :cond_28

    .line 11046
    invoke-virtual {v7, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 11047
    iget-object v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v12, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_28

    .line 11049
    :cond_28
    invoke-virtual {v7, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 11051
    :goto_28
    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProportionalSystemServiceUsage:D

    invoke-virtual {v7, v12, v13}, Landroid/os/Parcel;->writeDouble(D)V

    .line 11052
    return-void
.end method
