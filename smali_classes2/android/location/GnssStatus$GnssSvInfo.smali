.class Landroid/location/GnssStatus$GnssSvInfo;
.super Ljava/lang/Object;
.source "GnssStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssSvInfo"
.end annotation


# instance fields
.field private final blacklist mAzimuth:F

.field private final blacklist mBasebandCn0DbHz:F

.field private final blacklist mCarrierFrequency:F

.field private final blacklist mCn0DbHz:F

.field private final blacklist mElevation:F

.field private final blacklist mSvidWithFlags:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAzimuth(Landroid/location/GnssStatus$GnssSvInfo;)F
    .locals 0

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBasebandCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F
    .locals 0

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierFrequency(Landroid/location/GnssStatus$GnssSvInfo;)F
    .locals 0

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCn0DbHz(Landroid/location/GnssStatus$GnssSvInfo;)F
    .locals 0

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmElevation(Landroid/location/GnssStatus$GnssSvInfo;)F
    .locals 0

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSvidWithFlags(Landroid/location/GnssStatus$GnssSvInfo;)I
    .locals 0

    iget p0, p0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    return p0
.end method

.method private constructor blacklist <init>(IIFFFZZZZFZF)V
    .locals 6
    .param p1, "constellationType"    # I
    .param p2, "svid"    # I
    .param p3, "cn0DbHz"    # F
    .param p4, "elevation"    # F
    .param p5, "azimuth"    # F
    .param p6, "hasEphemeris"    # Z
    .param p7, "hasAlmanac"    # Z
    .param p8, "usedInFix"    # Z
    .param p9, "hasCarrierFrequency"    # Z
    .param p10, "carrierFrequency"    # F
    .param p11, "hasBasebandCn0DbHz"    # Z
    .param p12, "basebandCn0DbHz"    # F

    .line 524
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    shl-int/lit8 v1, p2, 0xc

    and-int/lit8 v2, p1, 0xf

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 528
    or-int/2addr v1, p6

    .line 529
    const/4 v2, 0x0

    if-eqz p7, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    or-int/2addr v1, v4

    .line 530
    if-eqz p8, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    or-int/2addr v1, v4

    .line 531
    if-eqz p9, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    or-int/2addr v1, v3

    .line 532
    if-eqz p11, :cond_3

    const/16 v2, 0x10

    :cond_3
    or-int/2addr v1, v2

    iput v1, v0, Landroid/location/GnssStatus$GnssSvInfo;->mSvidWithFlags:I

    .line 533
    move v1, p3

    iput v1, v0, Landroid/location/GnssStatus$GnssSvInfo;->mCn0DbHz:F

    .line 534
    move v2, p4

    iput v2, v0, Landroid/location/GnssStatus$GnssSvInfo;->mElevation:F

    .line 535
    move v3, p5

    iput v3, v0, Landroid/location/GnssStatus$GnssSvInfo;->mAzimuth:F

    .line 536
    const/4 v4, 0x0

    if-eqz p9, :cond_4

    move/from16 v5, p10

    goto :goto_3

    :cond_4
    move v5, v4

    :goto_3
    iput v5, v0, Landroid/location/GnssStatus$GnssSvInfo;->mCarrierFrequency:F

    .line 537
    if-eqz p11, :cond_5

    move/from16 v4, p12

    :cond_5
    iput v4, v0, Landroid/location/GnssStatus$GnssSvInfo;->mBasebandCn0DbHz:F

    .line 538
    return-void
.end method

.method synthetic constructor blacklist <init>(IIFFFZZZZFZFLandroid/location/GnssStatus$GnssSvInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Landroid/location/GnssStatus$GnssSvInfo;-><init>(IIFFFZZZZFZF)V

    return-void
.end method
