.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$AdrState;,
        Landroid/location/GnssMeasurement$State;,
        Landroid/location/GnssMeasurement$MultipathIndicator;
    }
.end annotation


# static fields
.field public static final blacklist ADR_STATE_ALL:I = 0x1f

.field public static final whitelist ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final whitelist ADR_STATE_HALF_CYCLE_REPORTED:I = 0x10

.field public static final whitelist ADR_STATE_HALF_CYCLE_RESOLVED:I = 0x8

.field public static final whitelist ADR_STATE_RESET:I = 0x2

.field public static final whitelist ADR_STATE_UNKNOWN:I = 0x0

.field public static final whitelist ADR_STATE_VALID:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HAS_BASEBAND_CN0:I = 0x8000

.field private static final blacklist HAS_CODE_TYPE:I = 0x4000

.field private static final blacklist HAS_CORRELATION_VECTOR:I = 0x200000

.field private static final greylist-max-o HAS_NO_FLAGS:I = 0x0

.field private static final blacklist HAS_SATELLITE_PVT:I = 0x100000

.field public static final whitelist MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final whitelist MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final whitelist MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field public static final whitelist STATE_2ND_CODE_LOCK:I = 0x10000

.field private static final greylist-max-o STATE_ALL:I = 0x3fff

.field public static final whitelist STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final whitelist STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final whitelist STATE_BIT_SYNC:I = 0x2

.field public static final whitelist STATE_CODE_LOCK:I = 0x1

.field public static final whitelist STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final whitelist STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final whitelist STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final whitelist STATE_GLO_STRING_SYNC:I = 0x40

.field public static final whitelist STATE_GLO_TOD_DECODED:I = 0x80

.field public static final whitelist STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final whitelist STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final whitelist STATE_SBAS_SYNC:I = 0x2000

.field public static final whitelist STATE_SUBFRAME_SYNC:I = 0x4

.field public static final whitelist STATE_SYMBOL_SYNC:I = 0x20

.field public static final whitelist STATE_TOW_DECODED:I = 0x8

.field public static final whitelist STATE_TOW_KNOWN:I = 0x4000

.field public static final whitelist STATE_UNKNOWN:I


# instance fields
.field private greylist-max-o mAccumulatedDeltaRangeMeters:D

.field private greylist-max-o mAccumulatedDeltaRangeState:I

.field private greylist-max-o mAccumulatedDeltaRangeUncertaintyMeters:D

.field private greylist-max-o mAutomaticGainControlLevelInDb:D

.field private blacklist mBasebandCn0DbHz:D

.field private greylist-max-o mCarrierCycles:J

.field private greylist-max-o mCarrierFrequencyHz:F

.field private greylist-max-o mCarrierPhase:D

.field private greylist-max-o mCarrierPhaseUncertainty:D

.field private greylist-max-o mCn0DbHz:D

.field private blacklist mCodeType:Ljava/lang/String;

.field private greylist-max-o mConstellationType:I

.field private greylist-max-o mFlags:I

.field private blacklist mFullInterSignalBiasNanos:D

.field private blacklist mFullInterSignalBiasUncertaintyNanos:D

.field private greylist-max-o mMultipathIndicator:I

.field private greylist-max-o mPseudorangeRateMetersPerSecond:D

.field private greylist-max-o mPseudorangeRateUncertaintyMetersPerSecond:D

.field private blacklist mReadOnlyCorrelationVectors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/location/CorrelationVector;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReceivedSvTimeNanos:J

.field private greylist-max-o mReceivedSvTimeUncertaintyNanos:J

.field private blacklist mSatelliteInterSignalBiasNanos:D

.field private blacklist mSatelliteInterSignalBiasUncertaintyNanos:D

.field private blacklist mSatellitePvt:Landroid/location/SatellitePvt;

.field private greylist-max-o mSnrInDb:D

.field private greylist-max-o mState:I

.field private greylist-max-o mSvid:I

.field private greylist-max-o mTimeOffsetNanos:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeMeters(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeState(Landroid/location/GnssMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAccumulatedDeltaRangeUncertaintyMeters(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAutomaticGainControlLevelInDb(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBasebandCn0DbHz(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierCycles(Landroid/location/GnssMeasurement;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierFrequencyHz(Landroid/location/GnssMeasurement;F)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPhase(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierPhaseUncertainty(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCn0DbHz(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCodeType(Landroid/location/GnssMeasurement;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConstellationType(Landroid/location/GnssMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/location/GnssMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMultipathIndicator(Landroid/location/GnssMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeRateMetersPerSecond(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPseudorangeRateUncertaintyMetersPerSecond(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReadOnlyCorrelationVectors(Landroid/location/GnssMeasurement;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceivedSvTimeNanos(Landroid/location/GnssMeasurement;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceivedSvTimeUncertaintyNanos(Landroid/location/GnssMeasurement;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatelliteInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSatellitePvt(Landroid/location/GnssMeasurement;Landroid/location/SatellitePvt;)V
    .locals 0

    iput-object p1, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSnrInDb(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/location/GnssMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSvid(Landroid/location/GnssMeasurement;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeOffsetNanos(Landroid/location/GnssMeasurement;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1838
    new-instance v0, Landroid/location/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 268
    return-void
.end method

.method private greylist-max-o getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    .line 1009
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    if-nez v0, :cond_0

    .line 1010
    const-string v0, "Unknown"

    return-object v0

    .line 1012
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1014
    const-string v1, "Valid|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :cond_1
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 1017
    const-string v1, "Reset|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    :cond_2
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 1020
    const-string v1, "CycleSlip|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_3
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1024
    const-string v1, "HalfCycleResolved|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :cond_4
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    .line 1028
    const-string v1, "HalfCycleReported|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    :cond_5
    iget v1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v1, v1, -0x20

    .line 1031
    .local v1, "remainingStates":I
    if-lez v1, :cond_6

    .line 1032
    const-string v3, "Other("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v3, ")|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    .line 1334
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    packed-switch v0, :pswitch_data_0

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1340
    :pswitch_0
    const-string v0, "NotDetected"

    return-object v0

    .line 1338
    :pswitch_1
    const-string v0, "Detected"

    return-object v0

    .line 1336
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
    .locals 3

    .line 411
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    if-nez v0, :cond_0

    .line 412
    const-string v0, "Unknown"

    return-object v0

    .line 415
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 417
    const-string v1, "CodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 420
    const-string v1, "BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_2
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 423
    const-string v1, "SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_3
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 426
    const-string v1, "TowDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_4
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_5

    .line 429
    const-string v1, "TowKnown|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_5
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    .line 432
    const-string v1, "MsecAmbiguous|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_6
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 435
    const-string v1, "SymbolSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_7
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    .line 438
    const-string v1, "GloStringSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_8
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_9

    .line 441
    const-string v1, "GloTodDecoded|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_9
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 444
    const-string v1, "GloTodKnown|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_a
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_b

    .line 447
    const-string v1, "BdsD2BitSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_b
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c

    .line 450
    const-string v1, "BdsD2SubframeSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_c
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_d

    .line 453
    const-string v1, "GalE1bcCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_d
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_e

    .line 456
    const-string v1, "E1c2ndCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_e
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_f

    .line 459
    const-string v1, "GalE1bPageSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_f
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_10

    .line 462
    const-string v1, "SbasSync|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_10
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 465
    const-string v1, "2ndCodeLock|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_11
    iget v1, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v1, -0x4000

    .line 469
    .local v1, "remainingStates":I
    if-lez v1, :cond_12

    .line 470
    const-string v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o initialize()V
    .locals 3

    .line 2047
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2048
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setSvid(I)V

    .line 2049
    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    .line 2050
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setState(I)V

    .line 2051
    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    .line 2052
    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    .line 2053
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    .line 2054
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    .line 2055
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    .line 2056
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    .line 2057
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    .line 2058
    invoke-virtual {p0, v1, v2}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    .line 2059
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    .line 2060
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    .line 2061
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    .line 2062
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    .line 2063
    invoke-virtual {p0, v0}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    .line 2064
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    .line 2065
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetAutomaticGainControlLevel()V

    .line 2066
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCodeType()V

    .line 2067
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetBasebandCn0DbHz()V

    .line 2068
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetFullInterSignalBiasNanos()V

    .line 2069
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetFullInterSignalBiasUncertaintyNanos()V

    .line 2070
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatelliteInterSignalBiasNanos()V

    .line 2071
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatelliteInterSignalBiasUncertaintyNanos()V

    .line 2072
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatellitePvt()V

    .line 2073
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCorrelationVectors()V

    .line 2074
    return-void
.end method

.method private greylist-max-o isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 2085
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

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

    .line 2081
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2082
    return-void
.end method

.method private greylist-max-o setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 2077
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 2078
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 1933
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAccumulatedDeltaRangeMeters()D
    .locals 2

    .line 1068
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide v0
.end method

.method public whitelist getAccumulatedDeltaRangeState()I
    .locals 1

    .line 991
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return v0
.end method

.method public whitelist getAccumulatedDeltaRangeUncertaintyMeters()D
    .locals 2

    .line 1088
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide v0
.end method

.method public whitelist getAutomaticGainControlLevelDb()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1412
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide v0
.end method

.method public whitelist getBasebandCn0DbHz()D
    .locals 2

    .line 861
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    return-wide v0
.end method

.method public whitelist getCarrierCycles()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1166
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public whitelist getCarrierFrequencyHz()F
    .locals 1

    .line 1122
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return v0
.end method

.method public whitelist getCarrierPhase()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1225
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public whitelist getCarrierPhaseUncertainty()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1279
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public whitelist getCn0DbHz()D
    .locals 2

    .line 830
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide v0
.end method

.method public whitelist getCodeType()Ljava/lang/String;
    .locals 1

    .line 1495
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getConstellationType()I
    .locals 1

    .line 346
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return v0
.end method

.method public whitelist getCorrelationVectors()Ljava/util/Collection;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/location/CorrelationVector;",
            ">;"
        }
    .end annotation

    .line 1807
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    return-object v0
.end method

.method public whitelist getFullInterSignalBiasNanos()D
    .locals 2

    .line 1564
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    return-wide v0
.end method

.method public whitelist getFullInterSignalBiasUncertaintyNanos()D
    .locals 2

    .line 1605
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public whitelist getMultipathIndicator()I
    .locals 1

    .line 1316
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return v0
.end method

.method public whitelist getPseudorangeRateMetersPerSecond()D
    .locals 2

    .line 902
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getPseudorangeRateUncertaintyMetersPerSecond()D
    .locals 2

    .line 920
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide v0
.end method

.method public whitelist getReceivedSvTimeNanos()J
    .locals 2

    .line 792
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide v0
.end method

.method public whitelist getReceivedSvTimeUncertaintyNanos()J
    .locals 2

    .line 808
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide v0
.end method

.method public whitelist getSatelliteInterSignalBiasNanos()D
    .locals 2

    .line 1665
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    return-wide v0
.end method

.method public whitelist getSatelliteInterSignalBiasUncertaintyNanos()D
    .locals 2

    .line 1706
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public whitelist getSatellitePvt()Landroid/location/SatellitePvt;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1754
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    return-object v0
.end method

.method public whitelist getSnrInDb()D
    .locals 2

    .line 1359
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public whitelist getState()I
    .locals 1

    .line 393
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    return v0
.end method

.method public whitelist getSvid()I
    .locals 1

    .line 326
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return v0
.end method

.method public whitelist getTimeOffsetNanos()D
    .locals 2

    .line 372
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide v0
.end method

.method public whitelist hasAutomaticGainControlLevelDb()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasBasebandCn0DbHz()Z
    .locals 1

    .line 846
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierCycles()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1152
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierFrequencyHz()Z
    .locals 1

    .line 1108
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierPhase()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1205
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCarrierPhaseUncertainty()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1265
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCodeType()Z
    .locals 1

    .line 1441
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasCorrelationVectors()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1790
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFullInterSignalBiasNanos()Z
    .locals 1

    .line 1525
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFullInterSignalBiasUncertaintyNanos()Z
    .locals 1

    .line 1593
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSatelliteInterSignalBiasNanos()Z
    .locals 1

    .line 1636
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSatelliteInterSignalBiasUncertaintyNanos()Z
    .locals 1

    .line 1694
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSatellitePvt()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1740
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasSnrInDb()Z
    .locals 1

    .line 1350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .locals 0

    .line 316
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    .line 317
    return-void
.end method

.method public blacklist resetAutomaticGainControlLevel()V
    .locals 1

    .line 1433
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1434
    return-void
.end method

.method public blacklist resetBasebandCn0DbHz()V
    .locals 1

    .line 882
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 883
    return-void
.end method

.method public blacklist resetCarrierCycles()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1194
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1195
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 1196
    return-void
.end method

.method public blacklist resetCarrierFrequencyHz()V
    .locals 1

    .line 1141
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1142
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 1143
    return-void
.end method

.method public blacklist resetCarrierPhase()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1254
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1255
    return-void
.end method

.method public blacklist resetCarrierPhaseUncertainty()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1308
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1309
    return-void
.end method

.method public blacklist resetCodeType()V
    .locals 1

    .line 1516
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1517
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    .line 1518
    return-void
.end method

.method public blacklist resetCorrelationVectors()V
    .locals 1

    .line 1834
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1835
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    .line 1836
    return-void
.end method

.method public blacklist resetFullInterSignalBiasNanos()V
    .locals 1

    .line 1585
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1586
    return-void
.end method

.method public blacklist resetFullInterSignalBiasUncertaintyNanos()V
    .locals 1

    .line 1628
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1629
    return-void
.end method

.method public blacklist resetSatelliteInterSignalBiasNanos()V
    .locals 1

    .line 1686
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1687
    return-void
.end method

.method public blacklist resetSatelliteInterSignalBiasUncertaintyNanos()V
    .locals 1

    .line 1729
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1730
    return-void
.end method

.method public blacklist resetSatellitePvt()V
    .locals 1

    .line 1779
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1780
    return-void
.end method

.method public blacklist resetSnrInDb()V
    .locals 1

    .line 1378
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    .line 1379
    return-void
.end method

.method public blacklist set(Landroid/location/GnssMeasurement;)V
    .locals 2
    .param p1, "measurement"    # Landroid/location/GnssMeasurement;

    .line 276
    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    .line 277
    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 278
    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 279
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 280
    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 281
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 282
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 283
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 284
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    .line 285
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 286
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 288
    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 289
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 290
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 292
    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 293
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 294
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 295
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 296
    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 297
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 298
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 299
    iget-object v0, p1, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    .line 300
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    .line 301
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    .line 303
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    .line 304
    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    .line 306
    iget-object v0, p1, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    .line 307
    iget-object v0, p1, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    .line 308
    return-void
.end method

.method public blacklist setAccumulatedDeltaRangeMeters(D)V
    .locals 0
    .param p1, "value"    # D

    .line 1077
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 1078
    return-void
.end method

.method public blacklist setAccumulatedDeltaRangeState(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1000
    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    .line 1001
    return-void
.end method

.method public blacklist setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .locals 0
    .param p1, "value"    # D

    .line 1100
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 1101
    return-void
.end method

.method public blacklist setAutomaticGainControlLevelInDb(D)V
    .locals 1
    .param p1, "agcLevelDb"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1423
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1424
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    .line 1425
    return-void
.end method

.method public blacklist setBasebandCn0DbHz(D)V
    .locals 1
    .param p1, "value"    # D

    .line 871
    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 872
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    .line 873
    return-void
.end method

.method public blacklist setCarrierCycles(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1180
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1181
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    .line 1182
    return-void
.end method

.method public blacklist setCarrierFrequencyHz(F)V
    .locals 1
    .param p1, "carrierFrequencyHz"    # F

    .line 1131
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1132
    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    .line 1133
    return-void
.end method

.method public blacklist setCarrierPhase(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1239
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1240
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    .line 1241
    return-void
.end method

.method public blacklist setCarrierPhaseUncertainty(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1293
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1294
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    .line 1295
    return-void
.end method

.method public blacklist setCn0DbHz(D)V
    .locals 0
    .param p1, "value"    # D

    .line 839
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    .line 840
    return-void
.end method

.method public blacklist setCodeType(Ljava/lang/String;)V
    .locals 1
    .param p1, "codeType"    # Ljava/lang/String;

    .line 1505
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1506
    iput-object p1, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    .line 1507
    return-void
.end method

.method public blacklist setConstellationType(I)V
    .locals 0
    .param p1, "value"    # I

    .line 355
    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    .line 356
    return-void
.end method

.method public blacklist setCorrelationVectors(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/location/CorrelationVector;",
            ">;)V"
        }
    .end annotation

    .line 1819
    .local p1, "correlationVectors":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/CorrelationVector;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1822
    :cond_0
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1823
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    goto :goto_1

    .line 1820
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCorrelationVectors()V

    .line 1825
    :goto_1
    return-void
.end method

.method public blacklist setFullInterSignalBiasNanos(D)V
    .locals 1
    .param p1, "fullInterSignalBiasNanos"    # D

    .line 1574
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1575
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    .line 1576
    return-void
.end method

.method public blacklist setFullInterSignalBiasUncertaintyNanos(D)V
    .locals 1
    .param p1, "fullInterSignalBiasUncertaintyNanos"    # D

    .line 1616
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1617
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    .line 1618
    return-void
.end method

.method public blacklist setMultipathIndicator(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1325
    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    .line 1326
    return-void
.end method

.method public blacklist setPseudorangeRateMetersPerSecond(D)V
    .locals 0
    .param p1, "value"    # D

    .line 911
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 912
    return-void
.end method

.method public blacklist setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .locals 0
    .param p1, "value"    # D

    .line 929
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 930
    return-void
.end method

.method public blacklist setReceivedSvTimeNanos(J)V
    .locals 0
    .param p1, "value"    # J

    .line 801
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 802
    return-void
.end method

.method public blacklist setReceivedSvTimeUncertaintyNanos(J)V
    .locals 0
    .param p1, "value"    # J

    .line 817
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 818
    return-void
.end method

.method public blacklist setSatelliteInterSignalBiasNanos(D)V
    .locals 1
    .param p1, "satelliteInterSignalBiasNanos"    # D

    .line 1675
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1676
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    .line 1677
    return-void
.end method

.method public blacklist setSatelliteInterSignalBiasUncertaintyNanos(D)V
    .locals 1
    .param p1, "satelliteInterSignalBiasUncertaintyNanos"    # D

    .line 1717
    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1718
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    .line 1719
    return-void
.end method

.method public blacklist setSatellitePvt(Landroid/location/SatellitePvt;)V
    .locals 1
    .param p1, "satellitePvt"    # Landroid/location/SatellitePvt;

    .line 1764
    if-nez p1, :cond_0

    .line 1765
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSatellitePvt()V

    goto :goto_0

    .line 1767
    :cond_0
    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1768
    iput-object p1, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    .line 1770
    :goto_0
    return-void
.end method

.method public blacklist setSnrInDb(D)V
    .locals 1
    .param p1, "snrInDb"    # D

    .line 1368
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    .line 1369
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    .line 1370
    return-void
.end method

.method public blacklist setState(I)V
    .locals 0
    .param p1, "value"    # I

    .line 402
    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    .line 403
    return-void
.end method

.method public blacklist setSvid(I)V
    .locals 0
    .param p1, "value"    # I

    .line 335
    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    .line 336
    return-void
.end method

.method public blacklist setTimeOffsetNanos(D)V
    .locals 0
    .param p1, "value"    # D

    .line 381
    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    .line 382
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 14

    .line 1938
    const-string v0, "   %-29s = %s\n"

    .line 1939
    .local v0, "format":Ljava/lang/String;
    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1940
    .local v1, "formatWithUncertainty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GnssMeasurement:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1942
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Svid"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "   %-29s = %s\n"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "ConstellationType"

    aput-object v8, v4, v6

    iget v8, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "TimeOffsetNanos"

    aput-object v8, v4, v6

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1946
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "State"

    aput-object v8, v4, v6

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "ReceivedSvTimeNanos"

    aput-object v9, v8, v6

    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    .line 1951
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, "ReceivedSvTimeUncertaintyNanos"

    aput-object v9, v8, v3

    iget-wide v9, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    .line 1953
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 1948
    const-string v9, "   %-29s = %-25s   %-40s = %s\n"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "Cn0DbHz"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1957
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasBasebandCn0DbHz()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1958
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "BasebandCn0DbHz"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    :cond_0
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "PseudorangeRateMetersPerSecond"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    .line 1964
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    const-string v11, "PseudorangeRateUncertaintyMetersPerSecond"

    aput-object v11, v8, v3

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    .line 1966
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v10

    .line 1961
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "AccumulatedDeltaRangeState"

    aput-object v11, v8, v6

    .line 1971
    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v7

    .line 1968
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1973
    new-array v8, v4, [Ljava/lang/Object;

    const-string v11, "AccumulatedDeltaRangeMeters"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    .line 1976
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v7

    const-string v11, "AccumulatedDeltaRangeUncertaintyMeters"

    aput-object v11, v8, v3

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    .line 1978
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v8, v10

    .line 1973
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1981
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "CarrierFrequencyHz"

    aput-object v11, v8, v6

    iget v11, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1984
    :cond_1
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1985
    new-array v8, v3, [Ljava/lang/Object;

    const-string v11, "CarrierCycles"

    aput-object v11, v8, v6

    iget-wide v11, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    :cond_2
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v8

    const/4 v11, 0x0

    if-nez v8, :cond_3

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1989
    :cond_3
    new-array v8, v4, [Ljava/lang/Object;

    const-string v12, "CarrierPhase"

    aput-object v12, v8, v6

    .line 1992
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_0

    :cond_4
    move-object v12, v11

    :goto_0
    aput-object v12, v8, v7

    const-string v12, "CarrierPhaseUncertainty"

    aput-object v12, v8, v3

    .line 1994
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_1

    :cond_5
    move-object v12, v11

    :goto_1
    aput-object v12, v8, v10

    .line 1989
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :cond_6
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "MultipathIndicator"

    aput-object v12, v8, v6

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2000
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "SnrInDb"

    aput-object v12, v8, v6

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2003
    :cond_7
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasAutomaticGainControlLevelDb()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2004
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "AgcLevelDb"

    aput-object v12, v8, v6

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    :cond_8
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCodeType()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2008
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "CodeType"

    aput-object v12, v8, v6

    iget-object v12, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    aput-object v12, v8, v7

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    :cond_9
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasNanos()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasUncertaintyNanos()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2012
    :cond_a
    new-array v5, v4, [Ljava/lang/Object;

    const-string v8, "InterSignalBiasNs"

    aput-object v8, v5, v6

    .line 2015
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasNanos()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_2

    :cond_b
    move-object v8, v11

    :goto_2
    aput-object v8, v5, v7

    const-string v8, "InterSignalBiasUncertaintyNs"

    aput-object v8, v5, v3

    .line 2017
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasFullInterSignalBiasUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 2018
    iget-wide v12, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_3

    :cond_c
    move-object v8, v11

    :goto_3
    aput-object v8, v5, v10

    .line 2012
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :cond_d
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasNanos()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasUncertaintyNanos()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2022
    :cond_e
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "SatelliteInterSignalBiasNs"

    aput-object v5, v4, v6

    .line 2025
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasNanos()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-wide v5, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_4

    :cond_f
    move-object v5, v11

    :goto_4
    aput-object v5, v4, v7

    const-string v5, "SatelliteInterSignalBiasUncertaintyNs"

    aput-object v5, v4, v3

    .line 2027
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatelliteInterSignalBiasUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2028
    iget-wide v5, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_5

    .line 2029
    :cond_10
    nop

    :goto_5
    aput-object v11, v4, v10

    .line 2022
    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    :cond_11
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatellitePvt()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2033
    iget-object v3, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    invoke-virtual {v3}, Landroid/location/SatellitePvt;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    :cond_12
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCorrelationVectors()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2037
    iget-object v3, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/CorrelationVector;

    .line 2038
    .local v4, "correlationVector":Landroid/location/CorrelationVector;
    invoke-virtual {v4}, Landroid/location/CorrelationVector;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    .end local v4    # "correlationVector":Landroid/location/CorrelationVector;
    goto :goto_6

    .line 2043
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1893
    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1894
    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1895
    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1897
    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1899
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1900
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1901
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1902
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1903
    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1904
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1905
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1906
    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1907
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1908
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1909
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1910
    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1912
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1913
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mCodeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1914
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mBasebandCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1915
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1916
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mFullInterSignalBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1917
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1918
    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSatelliteInterSignalBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1919
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSatellitePvt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1920
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mSatellitePvt:Landroid/location/SatellitePvt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1922
    :cond_0
    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCorrelationVectors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1923
    iget-object v0, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1924
    .local v0, "correlationVectorCount":I
    iget-object v1, p0, Landroid/location/GnssMeasurement;->mReadOnlyCorrelationVectors:Ljava/util/Collection;

    new-array v2, v0, [Landroid/location/CorrelationVector;

    .line 1925
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/CorrelationVector;

    .line 1926
    .local v1, "correlationVectorArray":[Landroid/location/CorrelationVector;
    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1927
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1929
    .end local v0    # "correlationVectorCount":I
    .end local v1    # "correlationVectorArray":[Landroid/location/CorrelationVector;
    :cond_1
    return-void
.end method
