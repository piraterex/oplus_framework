.class public Landroid/location/GpsMeasurement;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o ADR_ALL:S = 0x7s

.field public static final whitelist ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final whitelist ADR_STATE_RESET:S = 0x2s

.field public static final whitelist ADR_STATE_UNKNOWN:S = 0x0s

.field public static final whitelist ADR_STATE_VALID:S = 0x1s

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o GPS_MEASUREMENT_HAS_UNCORRECTED_PSEUDORANGE_RATE:I = 0x40000

.field private static final greylist-max-o HAS_AZIMUTH:I = 0x8

.field private static final greylist-max-o HAS_AZIMUTH_UNCERTAINTY:I = 0x10

.field private static final greylist-max-o HAS_BIT_NUMBER:I = 0x2000

.field private static final greylist-max-o HAS_CARRIER_CYCLES:I = 0x400

.field private static final greylist-max-o HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final greylist-max-o HAS_CARRIER_PHASE:I = 0x800

.field private static final greylist-max-o HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final greylist-max-o HAS_CODE_PHASE:I = 0x80

.field private static final greylist-max-o HAS_CODE_PHASE_UNCERTAINTY:I = 0x100

.field private static final greylist-max-o HAS_DOPPLER_SHIFT:I = 0x8000

.field private static final greylist-max-o HAS_DOPPLER_SHIFT_UNCERTAINTY:I = 0x10000

.field private static final greylist-max-o HAS_ELEVATION:I = 0x2

.field private static final greylist-max-o HAS_ELEVATION_UNCERTAINTY:I = 0x4

.field private static final greylist-max-o HAS_NO_FLAGS:I = 0x0

.field private static final greylist-max-o HAS_PSEUDORANGE:I = 0x20

.field private static final greylist-max-o HAS_PSEUDORANGE_UNCERTAINTY:I = 0x40

.field private static final greylist-max-o HAS_SNR:I = 0x1

.field private static final greylist-max-o HAS_TIME_FROM_LAST_BIT:I = 0x4000

.field private static final greylist-max-o HAS_USED_IN_FIX:I = 0x20000

.field public static final whitelist LOSS_OF_LOCK_CYCLE_SLIP:B = 0x2t

.field public static final whitelist LOSS_OF_LOCK_OK:B = 0x1t

.field public static final whitelist LOSS_OF_LOCK_UNKNOWN:B = 0x0t

.field public static final whitelist MULTIPATH_INDICATOR_DETECTED:B = 0x1t

.field public static final whitelist MULTIPATH_INDICATOR_NOT_USED:B = 0x2t

.field public static final whitelist MULTIPATH_INDICATOR_UNKNOWN:B = 0x0t

.field private static final greylist-max-o STATE_ALL:S = 0x1fs

.field public static final whitelist STATE_BIT_SYNC:S = 0x2s

.field public static final whitelist STATE_CODE_LOCK:S = 0x1s

.field public static final whitelist STATE_MSEC_AMBIGUOUS:S = 0x10s

.field public static final whitelist STATE_SUBFRAME_SYNC:S = 0x4s

.field public static final whitelist STATE_TOW_DECODED:S = 0x8s

.field public static final whitelist STATE_UNKNOWN:S


# instance fields
.field private greylist-max-o mAccumulatedDeltaRangeInMeters:D

.field private greylist-max-o mAccumulatedDeltaRangeState:S

.field private greylist-max-o mAccumulatedDeltaRangeUncertaintyInMeters:D

.field private greylist-max-o mAzimuthInDeg:D

.field private greylist-max-o mAzimuthUncertaintyInDeg:D

.field private greylist-max-o mBitNumber:I

.field private greylist-max-o mCarrierCycles:J

.field private greylist-max-o mCarrierFrequencyInHz:F

.field private greylist-max-o mCarrierPhase:D

.field private greylist-max-o mCarrierPhaseUncertainty:D

.field private greylist-max-o mCn0InDbHz:D

.field private greylist-max-o mCodePhaseInChips:D

.field private greylist-max-o mCodePhaseUncertaintyInChips:D

.field private greylist-max-o mDopplerShiftInHz:D

.field private greylist-max-o mDopplerShiftUncertaintyInHz:D

.field private greylist-max-o mElevationInDeg:D

.field private greylist-max-o mElevationUncertaintyInDeg:D

.field private greylist-max-o mFlags:I

.field private greylist-max-o mLossOfLock:B

.field private greylist-max-o mMultipathIndicator:B

.field private greylist-max-o mPrn:B

.field private greylist-max-o mPseudorangeInMeters:D

.field private greylist-max-o mPseudorangeRateInMetersPerSec:D

.field private greylist-max-o mPseudorangeRateUncertaintyInMetersPerSec:D

.field private greylist-max-o mPseudorangeUncertaintyInMeters:D

.field private greylist-max-o mReceivedGpsTowInNs:J

.field private greylist-max-o mReceivedGpsTowUncertaintyInNs:J

.field private greylist-max-o mSnrInDb:D

.field private greylist-max-o mState:S

.field private greylist-max-o mTimeFromLastBitInMs:S

.field private greylist-max-o mTimeOffsetInNs:D

.field private greylist-max-o mUsedInFix:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeInMeters(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeState(Landroid/location/GpsMeasurement;S)V
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeUncertaintyInMeters(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAzimuthInDeg(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAzimuthUncertaintyInDeg(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBitNumber(Landroid/location/GpsMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierCycles(Landroid/location/GpsMeasurement;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierFrequencyInHz(Landroid/location/GpsMeasurement;F)V
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPhase(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPhaseUncertainty(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCn0InDbHz(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCodePhaseInChips(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCodePhaseUncertaintyInChips(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDopplerShiftInHz(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDopplerShiftUncertaintyInHz(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElevationInDeg(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElevationUncertaintyInDeg(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/location/GpsMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLossOfLock(Landroid/location/GpsMeasurement;B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMultipathIndicator(Landroid/location/GpsMeasurement;B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrn(Landroid/location/GpsMeasurement;B)V
    .locals 0

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeInMeters(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeRateInMetersPerSec(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeRateUncertaintyInMetersPerSec(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeUncertaintyInMeters(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceivedGpsTowInNs(Landroid/location/GpsMeasurement;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceivedGpsTowUncertaintyInNs(Landroid/location/GpsMeasurement;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSnrInDb(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/location/GpsMeasurement;S)V
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeFromLastBitInMs(Landroid/location/GpsMeasurement;S)V
    .locals 0

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeOffsetInNs(Landroid/location/GpsMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUsedInFix(Landroid/location/GpsMeasurement;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1164
    new-instance v0, Landroid/location/GpsMeasurement$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    .line 185
    return-void
.end method

.method private greylist-max-o getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    .line 445
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    if-nez v0, :cond_0

    .line 446
    const-string v0, "Unknown"

    return-object v0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 450
    const-string v1, "Valid|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_1
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 453
    const-string v1, "Reset|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_2
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 456
    const-string v1, "CycleSlip|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_3
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    and-int/lit8 v1, v1, -0x8

    .line 459
    .local v1, "remainingStates":I
    if-lez v1, :cond_4

    .line 460
    const-string v3, "Other("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v3, ")|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o getLossOfLockString()Ljava/lang/String;
    .locals 2

    .line 799
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    packed-switch v0, :pswitch_data_0

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 805
    :pswitch_0
    const-string v0, "CycleSlip"

    return-object v0

    .line 803
    :pswitch_1
    const-string v0, "Ok"

    return-object v0

    .line 801
    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    .line 964
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    packed-switch v0, :pswitch_data_0

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 970
    :pswitch_0
    const-string v0, "NotUsed"

    return-object v0

    .line 968
    :pswitch_1
    const-string v0, "Detected"

    return-object v0

    .line 966
    :pswitch_2
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getStateString()Ljava/lang/String;
    .locals 4

    .line 293
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    if-nez v0, :cond_0

    .line 294
    const-string v0, "Unknown"

    return-object v0

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 298
    const-string v1, "CodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_1
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 301
    const-string v1, "BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_2
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 304
    const-string v1, "SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_3
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 307
    const-string v1, "TowDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_4
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    .line 310
    const-string v1, "MsecAmbiguous"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    :cond_5
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v1, v1, -0x20

    .line 313
    .local v1, "remainingStates":I
    if-lez v1, :cond_6

    .line 314
    const-string v3, "Other("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v3, ")|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o initialize()V
    .locals 3

    .line 1373
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 1374
    const/16 v1, -0x80

    invoke-virtual {p0, v1}, Landroid/location/GpsMeasurement;->setPrn(B)V

    .line 1375
    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setTimeOffsetInNs(D)V

    .line 1376
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setState(S)V

    .line 1377
    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowInNs(J)V

    .line 1378
    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowUncertaintyInNs(J)V

    .line 1379
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setCn0InDbHz(D)V

    .line 1380
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateInMetersPerSec(D)V

    .line 1381
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateUncertaintyInMetersPerSec(D)V

    .line 1382
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeState(S)V

    .line 1383
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeInMeters(D)V

    .line 1384
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeUncertaintyInMeters(D)V

    .line 1385
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeInMeters()V

    .line 1386
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeUncertaintyInMeters()V

    .line 1387
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseInChips()V

    .line 1388
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseUncertaintyInChips()V

    .line 1389
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierFrequencyInHz()V

    .line 1390
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierCycles()V

    .line 1391
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhase()V

    .line 1392
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhaseUncertainty()V

    .line 1393
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setLossOfLock(B)V

    .line 1394
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetBitNumber()V

    .line 1395
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetTimeFromLastBitInMs()V

    .line 1396
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftInHz()V

    .line 1397
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftUncertaintyInHz()V

    .line 1398
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setMultipathIndicator(B)V

    .line 1399
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetSnrInDb()V

    .line 1400
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationInDeg()V

    .line 1401
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationUncertaintyInDeg()V

    .line 1402
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthInDeg()V

    .line 1403
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthUncertaintyInDeg()V

    .line 1404
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setUsedInFix(Z)V

    .line 1405
    return-void
.end method

.method private greylist-max-o isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 1416
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o resetFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 1412
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 1413
    return-void
.end method

.method private greylist-max-o setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 1408
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 1409
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1248
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccumulatedDeltaRangeInMeters()D
    .locals 2

    .line 480
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide v0
.end method

.method public whitelist getAccumulatedDeltaRangeState()S
    .locals 1

    .line 430
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return v0
.end method

.method public whitelist getAccumulatedDeltaRangeUncertaintyInMeters()D
    .locals 2

    .line 497
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public whitelist getAzimuthInDeg()D
    .locals 2

    .line 1093
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide v0
.end method

.method public whitelist getAzimuthUncertaintyInDeg()D
    .locals 2

    .line 1128
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide v0
.end method

.method public whitelist getBitNumber()I
    .locals 1

    .line 824
    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return v0
.end method

.method public whitelist getCarrierCycles()J
    .locals 2

    .line 691
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public whitelist getCarrierFrequencyInHz()F
    .locals 1

    .line 658
    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return v0
.end method

.method public whitelist getCarrierPhase()D
    .locals 2

    .line 728
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public whitelist getCarrierPhaseUncertainty()D
    .locals 2

    .line 761
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public whitelist getCn0InDbHz()D
    .locals 2

    .line 365
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide v0
.end method

.method public whitelist getCodePhaseInChips()D
    .locals 2

    .line 592
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide v0
.end method

.method public whitelist getCodePhaseUncertaintyInChips()D
    .locals 2

    .line 625
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide v0
.end method

.method public whitelist getDopplerShiftInHz()D
    .locals 2

    .line 893
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide v0
.end method

.method public whitelist getDopplerShiftUncertaintyInHz()D
    .locals 2

    .line 926
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide v0
.end method

.method public whitelist getElevationInDeg()D
    .locals 2

    .line 1023
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide v0
.end method

.method public whitelist getElevationUncertaintyInDeg()D
    .locals 2

    .line 1058
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide v0
.end method

.method public whitelist getLossOfLock()B
    .locals 1

    .line 784
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return v0
.end method

.method public whitelist getMultipathIndicator()B
    .locals 1

    .line 949
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return v0
.end method

.method public whitelist getPrn()B
    .locals 1

    .line 239
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return v0
.end method

.method public whitelist getPseudorangeInMeters()D
    .locals 2

    .line 523
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide v0
.end method

.method public whitelist getPseudorangeRateInMetersPerSec()D
    .locals 2

    .line 389
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide v0
.end method

.method public whitelist getPseudorangeRateUncertaintyInMetersPerSec()D
    .locals 2

    .line 414
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide v0
.end method

.method public whitelist getPseudorangeUncertaintyInMeters()D
    .locals 2

    .line 557
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public whitelist getReceivedGpsTowInNs()J
    .locals 2

    .line 334
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide v0
.end method

.method public whitelist getReceivedGpsTowUncertaintyInNs()J
    .locals 2

    .line 348
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide v0
.end method

.method public whitelist getSnrInDb()D
    .locals 2

    .line 989
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public whitelist getState()S
    .locals 1

    .line 278
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    return v0
.end method

.method public whitelist getTimeFromLastBitInMs()S
    .locals 1

    .line 857
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return v0
.end method

.method public whitelist getTimeOffsetInNs()D
    .locals 2

    .line 261
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide v0
.end method

.method public whitelist hasAzimuthInDeg()Z
    .locals 1

    .line 1081
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasAzimuthUncertaintyInDeg()Z
    .locals 1

    .line 1116
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasBitNumber()Z
    .locals 1

    .line 815
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierCycles()Z
    .locals 1

    .line 681
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierFrequencyInHz()Z
    .locals 1

    .line 648
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierPhase()Z
    .locals 1

    .line 714
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierPhaseUncertainty()Z
    .locals 1

    .line 751
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCodePhaseInChips()Z
    .locals 1

    .line 580
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCodePhaseUncertaintyInChips()Z
    .locals 1

    .line 615
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasDopplerShiftInHz()Z
    .locals 1

    .line 880
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasDopplerShiftUncertaintyInHz()Z
    .locals 1

    .line 916
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasElevationInDeg()Z
    .locals 1

    .line 1012
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasElevationUncertaintyInDeg()Z
    .locals 1

    .line 1046
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasPseudorangeInMeters()Z
    .locals 1

    .line 513
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasPseudorangeUncertaintyInMeters()Z
    .locals 1

    .line 546
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSnrInDb()Z
    .locals 1

    .line 980
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasTimeFromLastBitInMs()Z
    .locals 1

    .line 847
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isPseudorangeRateCorrected()Z
    .locals 1

    .line 406
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isUsedInFix()Z
    .locals 1

    .line 1154
    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return v0
.end method

.method public whitelist reset()V
    .locals 0

    .line 231
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    .line 232
    return-void
.end method

.method public whitelist resetAzimuthInDeg()V
    .locals 2

    .line 1108
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1109
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 1110
    return-void
.end method

.method public whitelist resetAzimuthUncertaintyInDeg()V
    .locals 2

    .line 1143
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1144
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 1145
    return-void
.end method

.method public whitelist resetBitNumber()V
    .locals 1

    .line 839
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 840
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 841
    return-void
.end method

.method public whitelist resetCarrierCycles()V
    .locals 2

    .line 706
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 707
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 708
    return-void
.end method

.method public whitelist resetCarrierFrequencyInHz()V
    .locals 1

    .line 673
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 674
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 675
    return-void
.end method

.method public whitelist resetCarrierPhase()V
    .locals 2

    .line 743
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 744
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 745
    return-void
.end method

.method public whitelist resetCarrierPhaseUncertainty()V
    .locals 2

    .line 776
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 777
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 778
    return-void
.end method

.method public whitelist resetCodePhaseInChips()V
    .locals 2

    .line 607
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 608
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 609
    return-void
.end method

.method public whitelist resetCodePhaseUncertaintyInChips()V
    .locals 2

    .line 640
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 641
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 642
    return-void
.end method

.method public whitelist resetDopplerShiftInHz()V
    .locals 2

    .line 908
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 909
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 910
    return-void
.end method

.method public whitelist resetDopplerShiftUncertaintyInHz()V
    .locals 2

    .line 941
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 942
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 943
    return-void
.end method

.method public whitelist resetElevationInDeg()V
    .locals 2

    .line 1038
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1039
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 1040
    return-void
.end method

.method public whitelist resetElevationUncertaintyInDeg()V
    .locals 2

    .line 1073
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1074
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 1075
    return-void
.end method

.method public whitelist resetPseudorangeInMeters()V
    .locals 2

    .line 538
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 539
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 540
    return-void
.end method

.method public whitelist resetPseudorangeUncertaintyInMeters()V
    .locals 2

    .line 572
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 573
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 574
    return-void
.end method

.method public whitelist resetSnrInDb()V
    .locals 2

    .line 1004
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 1005
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 1006
    return-void
.end method

.method public whitelist resetTimeFromLastBitInMs()V
    .locals 1

    .line 872
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    .line 873
    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 874
    return-void
.end method

.method public whitelist set(Landroid/location/GpsMeasurement;)V
    .locals 2
    .param p1, "measurement"    # Landroid/location/GpsMeasurement;

    .line 191
    iget v0, p1, Landroid/location/GpsMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 192
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 193
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 194
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 195
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 196
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 197
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 198
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 199
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 201
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 202
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 203
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 205
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 206
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 207
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 208
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 209
    iget v0, p1, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 210
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 211
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 212
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 213
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mLossOfLock:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 214
    iget v0, p1, Landroid/location/GpsMeasurement;->mBitNumber:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 215
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 216
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 217
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 218
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 219
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 220
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 221
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 222
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 223
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 224
    iget-boolean v0, p1, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 225
    return-void
.end method

.method public whitelist setAccumulatedDeltaRangeInMeters(D)V
    .locals 0
    .param p1, "value"    # D

    .line 487
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 488
    return-void
.end method

.method public whitelist setAccumulatedDeltaRangeState(S)V
    .locals 0
    .param p1, "value"    # S

    .line 437
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 438
    return-void
.end method

.method public whitelist setAccumulatedDeltaRangeUncertaintyInMeters(D)V
    .locals 0
    .param p1, "value"    # D

    .line 506
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 507
    return-void
.end method

.method public whitelist setAzimuthInDeg(D)V
    .locals 1
    .param p1, "value"    # D

    .line 1100
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1101
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 1102
    return-void
.end method

.method public whitelist setAzimuthUncertaintyInDeg(D)V
    .locals 1
    .param p1, "value"    # D

    .line 1135
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1136
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 1137
    return-void
.end method

.method public whitelist setBitNumber(I)V
    .locals 1
    .param p1, "bitNumber"    # I

    .line 831
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 832
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 833
    return-void
.end method

.method public whitelist setCarrierCycles(J)V
    .locals 1
    .param p1, "value"    # J

    .line 698
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 699
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 700
    return-void
.end method

.method public whitelist setCarrierFrequencyInHz(F)V
    .locals 1
    .param p1, "carrierFrequencyInHz"    # F

    .line 665
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 666
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 667
    return-void
.end method

.method public whitelist setCarrierPhase(D)V
    .locals 1
    .param p1, "value"    # D

    .line 735
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 736
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 737
    return-void
.end method

.method public whitelist setCarrierPhaseUncertainty(D)V
    .locals 1
    .param p1, "value"    # D

    .line 768
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 769
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 770
    return-void
.end method

.method public whitelist setCn0InDbHz(D)V
    .locals 0
    .param p1, "value"    # D

    .line 372
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 373
    return-void
.end method

.method public whitelist setCodePhaseInChips(D)V
    .locals 1
    .param p1, "value"    # D

    .line 599
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 600
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 601
    return-void
.end method

.method public whitelist setCodePhaseUncertaintyInChips(D)V
    .locals 1
    .param p1, "value"    # D

    .line 632
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 633
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 634
    return-void
.end method

.method public whitelist setDopplerShiftInHz(D)V
    .locals 1
    .param p1, "value"    # D

    .line 900
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 901
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 902
    return-void
.end method

.method public whitelist setDopplerShiftUncertaintyInHz(D)V
    .locals 1
    .param p1, "value"    # D

    .line 933
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 934
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 935
    return-void
.end method

.method public whitelist setElevationInDeg(D)V
    .locals 1
    .param p1, "elevationInDeg"    # D

    .line 1030
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1031
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 1032
    return-void
.end method

.method public whitelist setElevationUncertaintyInDeg(D)V
    .locals 1
    .param p1, "value"    # D

    .line 1065
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1066
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 1067
    return-void
.end method

.method public whitelist setLossOfLock(B)V
    .locals 0
    .param p1, "value"    # B

    .line 791
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 792
    return-void
.end method

.method public whitelist setMultipathIndicator(B)V
    .locals 0
    .param p1, "value"    # B

    .line 956
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 957
    return-void
.end method

.method public whitelist setPrn(B)V
    .locals 0
    .param p1, "value"    # B

    .line 246
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 247
    return-void
.end method

.method public whitelist setPseudorangeInMeters(D)V
    .locals 1
    .param p1, "value"    # D

    .line 530
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 531
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 532
    return-void
.end method

.method public whitelist setPseudorangeRateInMetersPerSec(D)V
    .locals 0
    .param p1, "value"    # D

    .line 396
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 397
    return-void
.end method

.method public whitelist setPseudorangeRateUncertaintyInMetersPerSec(D)V
    .locals 0
    .param p1, "value"    # D

    .line 421
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 422
    return-void
.end method

.method public whitelist setPseudorangeUncertaintyInMeters(D)V
    .locals 1
    .param p1, "value"    # D

    .line 564
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 565
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 566
    return-void
.end method

.method public whitelist setReceivedGpsTowInNs(J)V
    .locals 0
    .param p1, "value"    # J

    .line 341
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 342
    return-void
.end method

.method public whitelist setReceivedGpsTowUncertaintyInNs(J)V
    .locals 0
    .param p1, "value"    # J

    .line 355
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 356
    return-void
.end method

.method public whitelist setSnrInDb(D)V
    .locals 1
    .param p1, "snrInDb"    # D

    .line 996
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 997
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 998
    return-void
.end method

.method public whitelist setState(S)V
    .locals 0
    .param p1, "value"    # S

    .line 285
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 286
    return-void
.end method

.method public whitelist setTimeFromLastBitInMs(S)V
    .locals 1
    .param p1, "value"    # S

    .line 864
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 865
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 866
    return-void
.end method

.method public whitelist setTimeOffsetInNs(D)V
    .locals 0
    .param p1, "value"    # D

    .line 268
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 269
    return-void
.end method

.method public whitelist setUsedInFix(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1161
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    .line 1162
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 15

    .line 1254
    const-string v0, "   %-29s = %s\n"

    .line 1255
    .local v0, "format":Ljava/lang/String;
    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1256
    .local v1, "formatWithUncertainty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GpsMeasurement:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Prn"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-byte v5, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "   %-29s = %s\n"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "TimeOffsetInNs"

    aput-object v8, v4, v6

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "State"

    aput-object v8, v4, v6

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "ReceivedGpsTowInNs"

    aput-object v9, v8, v6

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 1267
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, "ReceivedGpsTowUncertaintyInNs"

    aput-object v9, v8, v3

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 1269
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 1264
    const-string v9, "   %-29s = %-25s   %-40s = %s\n"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "Cn0InDbHz"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "PseudorangeRateInMetersPerSec"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 1276
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    const-string v11, "PseudorangeRateUncertaintyInMetersPerSec"

    aput-object v11, v8, v3

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 1278
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v10

    .line 1273
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "PseudorangeRateIsCorrected"

    aput-object v11, v8, v6

    .line 1282
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->isPseudorangeRateCorrected()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v7

    .line 1279
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "AccumulatedDeltaRangeState"

    aput-object v11, v8, v6

    .line 1287
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    .line 1284
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "AccumulatedDeltaRangeInMeters"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 1292
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    const-string v11, "AccumulatedDeltaRangeUncertaintyInMeters"

    aput-object v11, v8, v3

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 1294
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v10

    .line 1289
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "PseudorangeInMeters"

    aput-object v11, v8, v6

    .line 1299
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeInMeters()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v12

    :goto_0
    aput-object v11, v8, v7

    const-string v11, "PseudorangeUncertaintyInMeters"

    aput-object v11, v8, v3

    .line 1301
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeUncertaintyInMeters()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v12

    :goto_1
    aput-object v11, v8, v10

    .line 1296
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "CodePhaseInChips"

    aput-object v11, v8, v6

    .line 1306
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseInChips()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v12

    :goto_2
    aput-object v11, v8, v7

    const-string v11, "CodePhaseUncertaintyInChips"

    aput-object v11, v8, v3

    .line 1308
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseUncertaintyInChips()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_3

    :cond_3
    move-object v11, v12

    :goto_3
    aput-object v11, v8, v10

    .line 1303
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "CarrierFrequencyInHz"

    aput-object v11, v8, v6

    .line 1313
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierFrequencyInHz()Z

    move-result v11

    if-eqz v11, :cond_4

    iget v11, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_4

    :cond_4
    move-object v11, v12

    :goto_4
    aput-object v11, v8, v7

    .line 1310
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "CarrierCycles"

    aput-object v11, v8, v6

    .line 1318
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierCycles()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_5

    :cond_5
    move-object v11, v12

    :goto_5
    aput-object v11, v8, v7

    .line 1315
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "CarrierPhase"

    aput-object v11, v8, v6

    .line 1323
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhase()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_6

    :cond_6
    move-object v11, v12

    :goto_6
    aput-object v11, v8, v7

    const-string v11, "CarrierPhaseUncertainty"

    aput-object v11, v8, v3

    .line 1325
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_7

    :cond_7
    move-object v11, v12

    :goto_7
    aput-object v11, v8, v10

    .line 1320
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "LossOfLock"

    aput-object v11, v8, v6

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getLossOfLockString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "BitNumber"

    aput-object v11, v8, v6

    .line 1332
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasBitNumber()Z

    move-result v11

    if-eqz v11, :cond_8

    iget v11, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_8

    :cond_8
    move-object v11, v12

    :goto_8
    aput-object v11, v8, v7

    .line 1329
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "TimeFromLastBitInMs"

    aput-object v11, v8, v6

    .line 1337
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasTimeFromLastBitInMs()Z

    move-result v11

    if-eqz v11, :cond_9

    iget-short v11, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object v11, v12

    :goto_9
    aput-object v11, v8, v7

    .line 1334
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "DopplerShiftInHz"

    aput-object v11, v8, v6

    .line 1342
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftInHz()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_a

    :cond_a
    move-object v11, v12

    :goto_a
    aput-object v11, v8, v7

    const-string v11, "DopplerShiftUncertaintyInHz"

    aput-object v11, v8, v3

    .line 1344
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftUncertaintyInHz()Z

    move-result v11

    if-eqz v11, :cond_b

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_b

    :cond_b
    move-object v11, v12

    :goto_b
    aput-object v11, v8, v10

    .line 1339
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "MultipathIndicator"

    aput-object v11, v8, v6

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "SnrInDb"

    aput-object v11, v8, v6

    .line 1351
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasSnrInDb()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_c

    :cond_c
    move-object v11, v12

    :goto_c
    aput-object v11, v8, v7

    .line 1348
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "ElevationInDeg"

    aput-object v11, v8, v6

    .line 1356
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationInDeg()Z

    move-result v11

    if-eqz v11, :cond_d

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_d

    :cond_d
    move-object v11, v12

    :goto_d
    aput-object v11, v8, v7

    const-string v11, "ElevationUncertaintyInDeg"

    aput-object v11, v8, v3

    .line 1358
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationUncertaintyInDeg()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_e

    :cond_e
    move-object v11, v12

    :goto_e
    aput-object v11, v8, v10

    .line 1353
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "AzimuthInDeg"

    aput-object v8, v4, v6

    .line 1363
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthInDeg()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-wide v13, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_f

    :cond_f
    move-object v8, v12

    :goto_f
    aput-object v8, v4, v7

    const-string v8, "AzimuthUncertaintyInDeg"

    aput-object v8, v4, v3

    .line 1365
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthUncertaintyInDeg()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-wide v11, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    :cond_10
    aput-object v12, v4, v10

    .line 1360
    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "UsedInFix"

    aput-object v4, v3, v6

    iget-boolean v4, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1212
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1214
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1215
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1217
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1218
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1219
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1220
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1221
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1223
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1224
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1225
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1226
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1227
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1228
    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1229
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1230
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1231
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1232
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1233
    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1236
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1237
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1238
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1239
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1240
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1241
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1242
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1243
    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    return-void
.end method
