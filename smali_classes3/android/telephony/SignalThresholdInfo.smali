.class public final Landroid/telephony/SignalThresholdInfo;
.super Ljava/lang/Object;
.source "SignalThresholdInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalThresholdInfo$Builder;,
        Landroid/telephony/SignalThresholdInfo$SignalMeasurementType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HYSTERESIS_DB_DISABLED:I = 0x0

.field public static final blacklist HYSTERESIS_MS_DISABLED:I = 0x0

.field public static final blacklist MAXIMUM_NUMBER_OF_THRESHOLDS_ALLOWED:I = 0x4

.field public static final blacklist MINIMUM_NUMBER_OF_THRESHOLDS_ALLOWED:I = 0x1

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSCP:I = 0x2

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSRP:I = 0x3

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSRQ:I = 0x4

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSSI:I = 0x1

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_RSSNR:I = 0x5

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_SSRSRP:I = 0x6

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_SSRSRQ:I = 0x7

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_SSSINR:I = 0x8

.field public static final whitelist SIGNAL_MEASUREMENT_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist SIGNAL_RSCP_MAX_VALUE:I = -0x19

.field public static final blacklist SIGNAL_RSCP_MIN_VALUE:I = -0x78

.field public static final blacklist SIGNAL_RSRP_MAX_VALUE:I = -0x2c

.field public static final blacklist SIGNAL_RSRP_MIN_VALUE:I = -0x8c

.field public static final blacklist SIGNAL_RSRQ_MAX_VALUE:I = 0x3

.field public static final blacklist SIGNAL_RSRQ_MIN_VALUE:I = -0x22

.field public static final blacklist SIGNAL_RSSI_MAX_VALUE:I = -0x33

.field public static final blacklist SIGNAL_RSSI_MIN_VALUE:I = -0x71

.field public static final blacklist SIGNAL_RSSNR_MAX_VALUE:I = 0x1e

.field public static final blacklist SIGNAL_RSSNR_MIN_VALUE:I = -0x14

.field public static final blacklist SIGNAL_SSRSRP_MAX_VALUE:I = -0x2c

.field public static final blacklist SIGNAL_SSRSRP_MIN_VALUE:I = -0x8c

.field public static final blacklist SIGNAL_SSRSRQ_MAX_VALUE:I = 0x14

.field public static final blacklist SIGNAL_SSRSRQ_MIN_VALUE:I = -0x2b

.field public static final blacklist SIGNAL_SSSINR_MAX_VALUE:I = 0x28

.field public static final blacklist SIGNAL_SSSINR_MIN_VALUE:I = -0x17


# instance fields
.field private final blacklist mHysteresisDb:I

.field private final blacklist mHysteresisMs:I

.field private final blacklist mIsEnabled:Z

.field private final blacklist mRan:I

.field private final blacklist mSignalMeasurementType:I

.field private final blacklist mThresholds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 581
    new-instance v0, Landroid/telephony/SignalThresholdInfo$1;

    invoke-direct {v0}, Landroid/telephony/SignalThresholdInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIII[IZ)V
    .locals 2
    .param p1, "ran"    # I
    .param p2, "signalMeasurementType"    # I
    .param p3, "hysteresisMs"    # I
    .param p4, "hysteresisDb"    # I
    .param p5, "thresholds"    # [I
    .param p6, "isEnabled"    # Z

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const-string/jumbo v0, "thresholds must not be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    invoke-direct {p0, p1, p2}, Landroid/telephony/SignalThresholdInfo;->validateRanWithMeasurementType(II)V

    .line 311
    invoke-direct {p0, p2, p5}, Landroid/telephony/SignalThresholdInfo;->validateThresholdRange(I[I)V

    .line 313
    iput p1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    .line 314
    iput p2, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    .line 315
    const/4 v0, 0x0

    if-gez p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    iput v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    .line 316
    if-gez p4, :cond_1

    goto :goto_1

    :cond_1
    move v0, p4

    :goto_1
    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    .line 317
    iput-object p5, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    .line 318
    iput-boolean p6, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    .line 319
    return-void
.end method

.method synthetic constructor blacklist <init>(IIII[IZLandroid/telephony/SignalThresholdInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telephony/SignalThresholdInfo;-><init>(IIII[IZ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    .line 556
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SignalThresholdInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SignalThresholdInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist getMaximumNumberOfThresholdsAllowed()I
    .locals 1

    .line 531
    const/4 v0, 0x4

    return v0
.end method

.method public static whitelist getMinimumNumberOfThresholdsAllowed()I
    .locals 1

    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist isValidRanWithMeasurementType(II)Z
    .locals 3
    .param p0, "ran"    # I
    .param p1, "type"    # I

    .line 638
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 653
    return v0

    .line 651
    :pswitch_0
    const/4 v2, 0x6

    if-ne p0, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 647
    :pswitch_1
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 643
    :pswitch_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 640
    :pswitch_3
    if-eq p0, v1, :cond_3

    const/4 v2, 0x4

    if-ne p0, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isValidThreshold(II)Z
    .locals 4
    .param p0, "type"    # I
    .param p1, "threshold"    # I

    .line 610
    const/16 v0, -0x2c

    const/16 v1, -0x8c

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    .line 628
    return v3

    .line 626
    :pswitch_0
    const/16 v0, -0x17

    if-lt p1, v0, :cond_0

    const/16 v0, 0x28

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 624
    :pswitch_1
    const/16 v0, -0x2b

    if-lt p1, v0, :cond_1

    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    .line 622
    :pswitch_2
    if-lt p1, v1, :cond_2

    if-gt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2

    .line 620
    :pswitch_3
    const/16 v0, -0x14

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2

    .line 618
    :pswitch_4
    const/16 v0, -0x22

    if-lt p1, v0, :cond_4

    const/4 v0, 0x3

    if-gt p1, v0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    return v2

    .line 616
    :pswitch_5
    if-lt p1, v1, :cond_5

    if-gt p1, v0, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    return v2

    .line 614
    :pswitch_6
    const/16 v0, -0x78

    if-lt p1, v0, :cond_6

    const/16 v0, -0x19

    if-gt p1, v0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    return v2

    .line 612
    :pswitch_7
    const/16 v0, -0x71

    if-lt p1, v0, :cond_7

    const/16 v0, -0x33

    if-gt p1, v0, :cond_7

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist validateRanWithMeasurementType(II)V
    .locals 3
    .param p1, "ran"    # I
    .param p2, "signalMeasurement"    # I

    .line 660
    invoke-static {p1, p2}, Landroid/telephony/SignalThresholdInfo;->isValidRanWithMeasurementType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    return-void

    .line 661
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid RAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with signal measurement type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateThresholdRange(I[I)V
    .locals 4
    .param p1, "signalMeasurement"    # I
    .param p2, "thresholds"    # [I

    .line 668
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 669
    .local v2, "threshold":I
    invoke-static {p1, v2}, Landroid/telephony/SignalThresholdInfo;->isValidThreshold(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    .end local v2    # "threshold":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 670
    .restart local v2    # "threshold":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid signal measurement type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with threshold: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    .end local v2    # "threshold":I
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 560
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 562
    :cond_0
    instance-of v1, p1, Landroid/telephony/SignalThresholdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 563
    return v2

    .line 566
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    .line 567
    .local v1, "other":Landroid/telephony/SignalThresholdInfo;
    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mRan:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    iget v4, v1, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    iget-object v4, v1, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    .line 571
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    iget-boolean v4, v1, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 567
    :goto_0
    return v0
.end method

.method public blacklist getHysteresisDb()I
    .locals 1

    .line 484
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    return v0
.end method

.method public blacklist getHysteresisMs()I
    .locals 1

    .line 479
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    return v0
.end method

.method public whitelist getRadioAccessNetworkType()I
    .locals 1

    .line 465
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    return v0
.end method

.method public whitelist getSignalMeasurementType()I
    .locals 1

    .line 474
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    return v0
.end method

.method public whitelist getThresholds()[I
    .locals 1

    .line 513
    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 577
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    .line 578
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 577
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalThresholdInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    const-string/jumbo v1, "mRan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 598
    const-string v1, " mSignalMeasurementType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 599
    const-string v1, " mHysteresisMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 600
    const-string v1, " mHysteresisDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 601
    const-string v1, " mThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 602
    const-string v1, " mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 603
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 541
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mRan:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mSignalMeasurementType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget v0, p0, Landroid/telephony/SignalThresholdInfo;->mHysteresisDb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    iget-object v0, p0, Landroid/telephony/SignalThresholdInfo;->mThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 546
    iget-boolean v0, p0, Landroid/telephony/SignalThresholdInfo;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 547
    return-void
.end method
