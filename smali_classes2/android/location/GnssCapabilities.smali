.class public final Landroid/location/GnssCapabilities;
.super Ljava/lang/Object;
.source "GnssCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssCapabilities$Builder;,
        Landroid/location/GnssCapabilities$SubHalPowerCapabilityFlags;,
        Landroid/location/GnssCapabilities$SubHalMeasurementCorrectionsCapabilityFlags;,
        Landroid/location/GnssCapabilities$TopHalCapabilityFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SUB_HAL_MEASUREMENT_CORRECTIONS_CAPABILITY_EXCESS_PATH_LENGTH:I = 0x2

.field public static final blacklist SUB_HAL_MEASUREMENT_CORRECTIONS_CAPABILITY_LOS_SATS:I = 0x1

.field public static final blacklist SUB_HAL_MEASUREMENT_CORRECTIONS_CAPABILITY_REFLECTING_PLANE:I = 0x4

.field public static final blacklist SUB_HAL_POWER_CAPABILITY_MULTIBAND_ACQUISITION:I = 0x10

.field public static final blacklist SUB_HAL_POWER_CAPABILITY_MULTIBAND_TRACKING:I = 0x4

.field public static final blacklist SUB_HAL_POWER_CAPABILITY_OTHER_MODES:I = 0x20

.field public static final blacklist SUB_HAL_POWER_CAPABILITY_SINGLEBAND_ACQUISITION:I = 0x8

.field public static final blacklist SUB_HAL_POWER_CAPABILITY_SINGLEBAND_TRACKING:I = 0x2

.field public static final blacklist SUB_HAL_POWER_CAPABILITY_TOTAL:I = 0x1

.field public static final blacklist TOP_HAL_CAPABILITY_ANTENNA_INFO:I = 0x800

.field public static final blacklist TOP_HAL_CAPABILITY_CORRELATION_VECTOR:I = 0x1000

.field public static final blacklist TOP_HAL_CAPABILITY_GEOFENCING:I = 0x20

.field public static final blacklist TOP_HAL_CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final blacklist TOP_HAL_CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final blacklist TOP_HAL_CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field public static final blacklist TOP_HAL_CAPABILITY_MEASUREMENT_CORRECTIONS_FOR_DRIVING:I = 0x4000

.field public static final blacklist TOP_HAL_CAPABILITY_MSA:I = 0x4

.field public static final blacklist TOP_HAL_CAPABILITY_MSB:I = 0x2

.field public static final blacklist TOP_HAL_CAPABILITY_NAV_MESSAGES:I = 0x80

.field public static final blacklist TOP_HAL_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final blacklist TOP_HAL_CAPABILITY_SATELLITE_BLOCKLIST:I = 0x200

.field public static final blacklist TOP_HAL_CAPABILITY_SATELLITE_PVT:I = 0x2000

.field public static final blacklist TOP_HAL_CAPABILITY_SCHEDULING:I = 0x1

.field public static final blacklist TOP_HAL_CAPABILITY_SINGLE_SHOT:I = 0x8


# instance fields
.field private final blacklist mMeasurementCorrectionsFlags:I

.field private final blacklist mPowerFlags:I

.field private final blacklist mTopFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMeasurementCorrectionsFlags(Landroid/location/GnssCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerFlags(Landroid/location/GnssCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopFlags(Landroid/location/GnssCapabilities;)I
    .locals 0

    iget p0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 496
    new-instance v0, Landroid/location/GnssCapabilities$1;

    invoke-direct {v0}, Landroid/location/GnssCapabilities$1;-><init>()V

    sput-object v0, Landroid/location/GnssCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III)V
    .locals 0
    .param p1, "topFlags"    # I
    .param p2, "measurementCorrectionsFlags"    # I
    .param p3, "powerFlags"    # I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    .line 138
    iput p2, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    .line 139
    iput p3, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    .line 140
    return-void
.end method

.method synthetic constructor blacklist <init>(IIILandroid/location/GnssCapabilities-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-void
.end method

.method public static blacklist empty()Landroid/location/GnssCapabilities;
    .locals 2

    .line 126
    new-instance v0, Landroid/location/GnssCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 478
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 479
    return v0

    .line 481
    :cond_0
    instance-of v1, p1, Landroid/location/GnssCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 482
    return v2

    .line 485
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/location/GnssCapabilities;

    .line 486
    .local v1, "that":Landroid/location/GnssCapabilities;
    iget v3, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    iget v4, v1, Landroid/location/GnssCapabilities;->mTopFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    iget v4, v1, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    iget v4, v1, Landroid/location/GnssCapabilities;->mPowerFlags:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist hasAntennaInfo()Z
    .locals 1

    .line 342
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasGeofencing()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 238
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasGnssAntennaInfo()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasAntennaInfo()Z

    move-result v0

    return v0
.end method

.method public whitelist hasLowPowerMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 279
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMeasurementCorrections()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 323
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMeasurementCorrectionsExcessPathLength()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 387
    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMeasurementCorrectionsForDriving()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 364
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMeasurementCorrectionsLosSats()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 375
    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist hasMeasurementCorrectionsReflectingPane()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 401
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsReflectingPlane()Z

    move-result v0

    return v0
.end method

.method public whitelist hasMeasurementCorrectionsReflectingPlane()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 412
    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMeasurementCorrelationVectors()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 353
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasMeasurements()Z
    .locals 1

    .line 247
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasMsa()Z
    .locals 1

    .line 210
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasMsb()Z
    .locals 1

    .line 200
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasNavMessages()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasNavigationMessages()Z

    move-result v0

    return v0
.end method

.method public whitelist hasNavigationMessages()Z
    .locals 1

    .line 269
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasOnDemandTime()Z
    .locals 1

    .line 228
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasPowerMultibandAcquisition()Z
    .locals 1

    .line 463
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasPowerMultibandTracking()Z
    .locals 1

    .line 443
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasPowerOtherModes()Z
    .locals 1

    .line 473
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasPowerSinglebandAcquisition()Z
    .locals 1

    .line 453
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasPowerSinglebandTracking()Z
    .locals 1

    .line 433
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasPowerTotal()Z
    .locals 2

    .line 423
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist hasSatelliteBlacklist()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasSatelliteBlocklist()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 302
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist hasSatellitePvt()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 312
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasScheduling()Z
    .locals 2

    .line 190
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist hasSingleShot()Z
    .locals 1

    .line 219
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 493
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_0
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMsb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 529
    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_1
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMsa()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 532
    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_2
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasSingleShot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_3
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasOnDemandTime()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 538
    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_4
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasGeofencing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 541
    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_5
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrections()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 544
    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_6
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasNavigationMessages()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 547
    const-string v1, "NAVIGATION_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_7
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasLowPowerMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 550
    const-string v1, "LOW_POWER_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_8
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasSatelliteBlocklist()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 553
    const-string v1, "SATELLITE_BLOCKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_9
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasSatellitePvt()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 556
    const-string v1, "SATELLITE_PVT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_a
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrections()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 559
    const-string v1, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_b
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasAntennaInfo()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 562
    const-string v1, "ANTENNA_INFO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_c
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrelationVectors()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 565
    const-string v1, "MEASUREMENT_CORRELATION_VECTORS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_d
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsForDriving()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 568
    const-string v1, "MEASUREMENT_CORRECTIONS_FOR_DRIVING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    :cond_e
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsLosSats()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 571
    const-string v1, "LOS_SATS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    :cond_f
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsExcessPathLength()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 574
    const-string v1, "EXCESS_PATH_LENGTH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_10
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsReflectingPlane()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 577
    const-string v1, "REFLECTING_PLANE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_11
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerTotal()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 580
    const-string v1, "TOTAL_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_12
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerSinglebandTracking()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 583
    const-string v1, "SINGLEBAND_TRACKING_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_13
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerMultibandTracking()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 586
    const-string v1, "MULTIBAND_TRACKING_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_14
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerSinglebandAcquisition()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 589
    const-string v1, "SINGLEBAND_ACQUISITION_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_15
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerMultibandAcquisition()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 592
    const-string v1, "MULTIBAND_ACQUISITION_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_16
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerOtherModes()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 595
    const-string v1, "OTHER_MODES_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_18

    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 600
    :cond_18
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist withSubHalMeasurementCorrectionsFlags(I)Landroid/location/GnssCapabilities;
    .locals 3
    .param p1, "flags"    # I

    .line 163
    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    if-ne v0, p1, :cond_0

    .line 164
    return-object p0

    .line 166
    :cond_0
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-direct {v0, v1, p1, v2}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-object v0
.end method

.method public blacklist withSubHalPowerFlags(I)Landroid/location/GnssCapabilities;
    .locals 3
    .param p1, "flags"    # I

    .line 177
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    if-ne v0, p1, :cond_0

    .line 178
    return-object p0

    .line 180
    :cond_0
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    invoke-direct {v0, v1, v2, p1}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-object v0
.end method

.method public blacklist withTopHalFlags(I)Landroid/location/GnssCapabilities;
    .locals 3
    .param p1, "flags"    # I

    .line 148
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    if-ne v0, p1, :cond_0

    .line 149
    return-object p0

    .line 151
    :cond_0
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-direct {v0, p1, v1, v2}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 516
    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    return-void
.end method
