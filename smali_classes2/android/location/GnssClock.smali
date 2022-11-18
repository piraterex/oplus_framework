.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o HAS_BIAS:I = 0x8

.field private static final greylist-max-o HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final greylist-max-o HAS_DRIFT:I = 0x20

.field private static final greylist-max-o HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final blacklist HAS_ELAPSED_REALTIME_NANOS:I = 0x80

.field private static final blacklist HAS_ELAPSED_REALTIME_UNCERTAINTY_NANOS:I = 0x100

.field private static final greylist-max-o HAS_FULL_BIAS:I = 0x4

.field private static final greylist-max-o HAS_LEAP_SECOND:I = 0x1

.field private static final greylist-max-o HAS_NO_FLAGS:I = 0x0

.field private static final blacklist HAS_REFERENCE_CARRIER_FREQUENCY_FOR_ISB:I = 0x400

.field private static final blacklist HAS_REFERENCE_CODE_TYPE_FOR_ISB:I = 0x800

.field private static final blacklist HAS_REFERENCE_CONSTELLATION_TYPE_FOR_ISB:I = 0x200

.field private static final greylist-max-o HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private greylist-max-o mBiasNanos:D

.field private greylist-max-o mBiasUncertaintyNanos:D

.field private greylist-max-o mDriftNanosPerSecond:D

.field private greylist-max-o mDriftUncertaintyNanosPerSecond:D

.field private blacklist mElapsedRealtimeNanos:J

.field private blacklist mElapsedRealtimeUncertaintyNanos:D

.field private greylist-max-o mFlags:I

.field private greylist-max-o mFullBiasNanos:J

.field private greylist-max-o mHardwareClockDiscontinuityCount:I

.field private greylist-max-o mLeapSecond:I

.field private blacklist mReferenceCarrierFrequencyHzForIsb:D

.field private blacklist mReferenceCodeTypeForIsb:Ljava/lang/String;

.field private blacklist mReferenceConstellationTypeForIsb:I

.field private greylist-max-o mTimeNanos:J

.field private greylist-max-o mTimeUncertaintyNanos:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBiasNanos(Landroid/location/GnssClock;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBiasUncertaintyNanos(Landroid/location/GnssClock;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDriftNanosPerSecond(Landroid/location/GnssClock;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDriftUncertaintyNanosPerSecond(Landroid/location/GnssClock;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeNanos(Landroid/location/GnssClock;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeUncertaintyNanos(Landroid/location/GnssClock;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFlags(Landroid/location/GnssClock;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFullBiasNanos(Landroid/location/GnssClock;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHardwareClockDiscontinuityCount(Landroid/location/GnssClock;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeapSecond(Landroid/location/GnssClock;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReferenceCarrierFrequencyHzForIsb(Landroid/location/GnssClock;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReferenceCodeTypeForIsb(Landroid/location/GnssClock;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReferenceConstellationTypeForIsb(Landroid/location/GnssClock;I)V
    .locals 0

    iput p1, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeNanos(Landroid/location/GnssClock;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeUncertaintyNanos(Landroid/location/GnssClock;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 655
    new-instance v0, Landroid/location/GnssClock$1;

    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    .line 71
    return-void
.end method

.method private greylist-max-o initialize()V
    .locals 2

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 783
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    .line 784
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    .line 785
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    .line 786
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    .line 787
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    .line 788
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    .line 789
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    .line 790
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    .line 791
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    .line 792
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetElapsedRealtimeNanos()V

    .line 793
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetElapsedRealtimeUncertaintyNanos()V

    .line 794
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetReferenceConstellationTypeForIsb()V

    .line 795
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetReferenceCarrierFrequencyHzForIsb()V

    .line 796
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetReferenceCodeTypeForIsb()V

    .line 797
    return-void
.end method

.method private greylist-max-o isFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 808
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

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

    .line 804
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 805
    return-void
.end method

.method private greylist-max-o setFlag(I)V
    .locals 1
    .param p1, "flag"    # I

    .line 800
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 801
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 706
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBiasNanos()D
    .locals 2

    .line 278
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide v0
.end method

.method public whitelist getBiasUncertaintyNanos()D
    .locals 2

    .line 318
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public whitelist getDriftNanosPerSecond()D
    .locals 2

    .line 361
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide v0
.end method

.method public whitelist getDriftUncertaintyNanosPerSecond()D
    .locals 2

    .line 399
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeNanos()J
    .locals 2

    .line 437
    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeUncertaintyNanos()D
    .locals 2

    .line 478
    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    return-wide v0
.end method

.method public whitelist getFullBiasNanos()J
    .locals 2

    .line 236
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide v0
.end method

.method public whitelist getHardwareClockDiscontinuityCount()I
    .locals 1

    .line 643
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return v0
.end method

.method public whitelist getLeapSecond()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return v0
.end method

.method public whitelist getReferenceCarrierFrequencyHzForIsb()D
    .locals 2

    .line 563
    iget-wide v0, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    return-wide v0
.end method

.method public whitelist getReferenceCodeTypeForIsb()Ljava/lang/String;
    .locals 1

    .line 604
    iget-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReferenceConstellationTypeForIsb()I
    .locals 1

    .line 524
    iget v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    return v0
.end method

.method public whitelist getTimeNanos()J
    .locals 2

    .line 157
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide v0
.end method

.method public whitelist getTimeUncertaintyNanos()D
    .locals 2

    .line 189
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide v0
.end method

.method public whitelist hasBiasNanos()Z
    .locals 1

    .line 263
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasBiasUncertaintyNanos()Z
    .locals 1

    .line 305
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasDriftNanosPerSecond()Z
    .locals 1

    .line 345
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasDriftUncertaintyNanosPerSecond()Z
    .locals 1

    .line 388
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasElapsedRealtimeNanos()Z
    .locals 1

    .line 427
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasElapsedRealtimeUncertaintyNanos()Z
    .locals 1

    .line 465
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFullBiasNanos()Z
    .locals 1

    .line 215
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasLeapSecond()Z
    .locals 1

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasReferenceCarrierFrequencyHzForIsb()Z
    .locals 1

    .line 552
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasReferenceCodeTypeForIsb()Z
    .locals 1

    .line 590
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasReferenceConstellationTypeForIsb()Z
    .locals 1

    .line 510
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public whitelist hasTimeUncertaintyNanos()Z
    .locals 1

    .line 174
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    .line 103
    return-void
.end method

.method public blacklist resetBiasNanos()V
    .locals 1

    .line 297
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 298
    return-void
.end method

.method public blacklist resetBiasUncertaintyNanos()V
    .locals 1

    .line 337
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 338
    return-void
.end method

.method public blacklist resetDriftNanosPerSecond()V
    .locals 1

    .line 380
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 381
    return-void
.end method

.method public blacklist resetDriftUncertaintyNanosPerSecond()V
    .locals 1

    .line 419
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 420
    return-void
.end method

.method public blacklist resetElapsedRealtimeNanos()V
    .locals 2

    .line 456
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 457
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    .line 458
    return-void
.end method

.method public blacklist resetElapsedRealtimeUncertaintyNanos()V
    .locals 1

    .line 502
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 503
    return-void
.end method

.method public blacklist resetFullBiasNanos()V
    .locals 2

    .line 255
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 256
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 257
    return-void
.end method

.method public blacklist resetLeapSecond()V
    .locals 1

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 142
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 143
    return-void
.end method

.method public blacklist resetReferenceCarrierFrequencyHzForIsb()V
    .locals 1

    .line 582
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 583
    return-void
.end method

.method public blacklist resetReferenceCodeTypeForIsb()V
    .locals 1

    .line 623
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 624
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public blacklist resetReferenceConstellationTypeForIsb()V
    .locals 1

    .line 543
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    .line 545
    return-void
.end method

.method public blacklist resetTimeUncertaintyNanos()V
    .locals 1

    .line 208
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    .line 209
    return-void
.end method

.method public blacklist set(Landroid/location/GnssClock;)V
    .locals 2
    .param p1, "clock"    # Landroid/location/GnssClock;

    .line 79
    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 80
    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 81
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 82
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 83
    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 84
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 85
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 86
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 87
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 88
    iget v0, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    iput v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 89
    iget-wide v0, p1, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    .line 90
    iget-wide v0, p1, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    .line 91
    iget v0, p1, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    iput v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    .line 92
    iget-wide v0, p1, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    .line 93
    iget-object v0, p1, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public blacklist setBiasNanos(D)V
    .locals 1
    .param p1, "biasNanos"    # D

    .line 287
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 288
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 289
    return-void
.end method

.method public blacklist setBiasUncertaintyNanos(D)V
    .locals 1
    .param p1, "biasUncertaintyNanos"    # D

    .line 327
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 328
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 329
    return-void
.end method

.method public blacklist setDriftNanosPerSecond(D)V
    .locals 1
    .param p1, "driftNanosPerSecond"    # D

    .line 370
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 371
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 372
    return-void
.end method

.method public blacklist setDriftUncertaintyNanosPerSecond(D)V
    .locals 1
    .param p1, "driftUncertaintyNanosPerSecond"    # D

    .line 409
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 410
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 411
    return-void
.end method

.method public blacklist setElapsedRealtimeNanos(J)V
    .locals 1
    .param p1, "elapsedRealtimeNanos"    # J

    .line 446
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 447
    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    .line 448
    return-void
.end method

.method public blacklist setElapsedRealtimeUncertaintyNanos(D)V
    .locals 1
    .param p1, "elapsedRealtimeUncertaintyNanos"    # D

    .line 490
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 491
    iput-wide p1, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    .line 492
    return-void
.end method

.method public blacklist setFullBiasNanos(J)V
    .locals 1
    .param p1, "value"    # J

    .line 245
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 246
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 247
    return-void
.end method

.method public blacklist setHardwareClockDiscontinuityCount(I)V
    .locals 0
    .param p1, "value"    # I

    .line 652
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 653
    return-void
.end method

.method public blacklist setLeapSecond(I)V
    .locals 1
    .param p1, "leapSecond"    # I

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 132
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 133
    return-void
.end method

.method public blacklist setReferenceCarrierFrequencyHzForIsb(D)V
    .locals 1
    .param p1, "value"    # D

    .line 572
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 573
    iput-wide p1, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    .line 574
    return-void
.end method

.method public blacklist setReferenceCodeTypeForIsb(Ljava/lang/String;)V
    .locals 1
    .param p1, "codeType"    # Ljava/lang/String;

    .line 613
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 614
    iput-object p1, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    .line 615
    return-void
.end method

.method public blacklist setReferenceConstellationTypeForIsb(I)V
    .locals 1
    .param p1, "value"    # I

    .line 533
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 534
    iput p1, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    .line 535
    return-void
.end method

.method public blacklist setTimeNanos(J)V
    .locals 0
    .param p1, "timeNanos"    # J

    .line 166
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 167
    return-void
.end method

.method public blacklist setTimeUncertaintyNanos(D)V
    .locals 1
    .param p1, "timeUncertaintyNanos"    # D

    .line 198
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 199
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 200
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 14

    .line 711
    const-string v0, "   %-15s = %s\n"

    .line 712
    .local v0, "format":Ljava/lang/String;
    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 713
    .local v1, "formatWithUncertainty":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GnssClock:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    move-result v3

    const-string v4, "   %-15s = %s\n"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 716
    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "LeapSecond"

    aput-object v8, v3, v7

    iget v8, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_0
    const/4 v3, 0x4

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "TimeNanos"

    aput-object v9, v8, v7

    iget-wide v9, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 722
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "TimeUncertaintyNanos"

    aput-object v9, v8, v5

    .line 724
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    iget-wide v11, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v9, v10

    :goto_0
    const/4 v11, 0x3

    aput-object v9, v8, v11

    .line 719
    const-string v9, "   %-15s = %-25s   %-26s = %s\n"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 727
    new-array v8, v5, [Ljava/lang/Object;

    const-string v12, "FullBiasNanos"

    aput-object v12, v8, v7

    iget-wide v12, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v8, v6

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_2
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 731
    :cond_3
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "BiasNanos"

    aput-object v12, v8, v7

    .line 734
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-wide v12, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_1

    :cond_4
    move-object v12, v10

    :goto_1
    aput-object v12, v8, v6

    const-string v12, "BiasUncertaintyNanos"

    aput-object v12, v8, v5

    .line 736
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v12

    if-eqz v12, :cond_5

    iget-wide v12, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_2

    :cond_5
    move-object v12, v10

    :goto_2
    aput-object v12, v8, v11

    .line 731
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_6
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 740
    :cond_7
    new-array v8, v3, [Ljava/lang/Object;

    const-string v12, "DriftNanosPerSecond"

    aput-object v12, v8, v7

    .line 743
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-wide v12, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_3

    :cond_8
    move-object v12, v10

    :goto_3
    aput-object v12, v8, v6

    const-string v12, "DriftUncertaintyNanosPerSecond"

    aput-object v12, v8, v5

    .line 745
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v12

    if-eqz v12, :cond_9

    iget-wide v12, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_4

    :cond_9
    move-object v12, v10

    :goto_4
    aput-object v12, v8, v11

    .line 740
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_a
    new-array v8, v5, [Ljava/lang/Object;

    const-string v12, "HardwareClockDiscontinuityCount"

    aput-object v12, v8, v7

    iget v12, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 751
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v6

    .line 748
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeNanos()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 754
    :cond_b
    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "ElapsedRealtimeNanos"

    aput-object v8, v3, v7

    .line 757
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeNanos()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-wide v12, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_5

    :cond_c
    move-object v8, v10

    :goto_5
    aput-object v8, v3, v6

    const-string v8, "ElapsedRealtimeUncertaintyNanos"

    aput-object v8, v3, v5

    .line 759
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-wide v12, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_6

    .line 760
    :cond_d
    nop

    :goto_6
    aput-object v10, v3, v11

    .line 754
    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    :cond_e
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasReferenceConstellationTypeForIsb()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 764
    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "ReferenceConstellationTypeForIsb"

    aput-object v8, v3, v7

    iget v8, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    .line 765
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    .line 764
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_f
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasReferenceCarrierFrequencyHzForIsb()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 769
    new-array v3, v5, [Ljava/lang/Object;

    const-string v8, "ReferenceCarrierFrequencyHzForIsb"

    aput-object v8, v3, v7

    iget-wide v8, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    .line 770
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v3, v6

    .line 769
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_10
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasReferenceCodeTypeForIsb()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 774
    new-array v3, v5, [Ljava/lang/Object;

    const-string v5, "ReferenceCodeTypeForIsb"

    aput-object v5, v3, v7

    iget-object v5, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    aput-object v5, v3, v6

    .line 775
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 687
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 690
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 691
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 692
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 693
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 694
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 695
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 696
    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 698
    iget-wide v0, p0, Landroid/location/GnssClock;->mElapsedRealtimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 699
    iget v0, p0, Landroid/location/GnssClock;->mReferenceConstellationTypeForIsb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget-wide v0, p0, Landroid/location/GnssClock;->mReferenceCarrierFrequencyHzForIsb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 701
    iget-object v0, p0, Landroid/location/GnssClock;->mReferenceCodeTypeForIsb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 702
    return-void
.end method
