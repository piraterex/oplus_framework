.class public final Landroid/telephony/PhysicalChannelConfig;
.super Ljava/lang/Object;
.source "PhysicalChannelConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhysicalChannelConfig$Builder;,
        Landroid/telephony/PhysicalChannelConfig$ConnectionStatus;
    }
.end annotation


# static fields
.field public static final whitelist BAND_UNKNOWN:I = 0x0

.field public static final whitelist CELL_BANDWIDTH_UNKNOWN:I = 0x0

.field public static final whitelist CHANNEL_NUMBER_UNKNOWN:I = 0x7fffffff

.field public static final whitelist CONNECTION_PRIMARY_SERVING:I = 0x1

.field public static final whitelist CONNECTION_SECONDARY_SERVING:I = 0x2

.field public static final whitelist CONNECTION_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FREQUENCY_UNKNOWN:I = -0x1

.field public static final whitelist PHYSICAL_CELL_ID_MAXIMUM_VALUE:I = 0x3ef

.field public static final whitelist PHYSICAL_CELL_ID_UNKNOWN:I = -0x1


# instance fields
.field private blacklist mBand:I

.field private greylist-max-o mCellBandwidthDownlinkKhz:I

.field private blacklist mCellBandwidthUplinkKhz:I

.field private greylist-max-o mCellConnectionStatus:I

.field private blacklist mContextIds:[I

.field private blacklist mDownlinkChannelNumber:I

.field private blacklist mDownlinkFrequency:I

.field private blacklist mFrequencyRange:I

.field private blacklist mNetworkType:I

.field private blacklist mPhysicalCellId:I

.field private blacklist mUplinkChannelNumber:I

.field private blacklist mUplinkFrequency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 440
    new-instance v0, Landroid/telephony/PhysicalChannelConfig$1;

    invoke-direct {v0}, Landroid/telephony/PhysicalChannelConfig$1;-><init>()V

    sput-object v0, Landroid/telephony/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    .line 493
    if-lez v0, :cond_0

    .line 494
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    .line 495
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    .line 496
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    .line 498
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/telephony/PhysicalChannelConfig$Builder;

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellConnectionStatus(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 502
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthDownlinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 503
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmCellBandwidthUplinkKhz(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    .line 504
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmNetworkType(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 505
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmDownlinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    .line 506
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmUplinkChannelNumber(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    .line 507
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmFrequencyRange(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 508
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmContextIds(Landroid/telephony/PhysicalChannelConfig$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 509
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmPhysicalCellId(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    .line 510
    invoke-static {p1}, Landroid/telephony/PhysicalChannelConfig$Builder;->-$$Nest$fgetmBand(Landroid/telephony/PhysicalChannelConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    .line 511
    if-lez v0, :cond_0

    .line 512
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setDownlinkFrequency()V

    .line 513
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setUplinkFrequency()V

    .line 514
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->setFrequencyRange()V

    .line 516
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/PhysicalChannelConfig$Builder;Landroid/telephony/PhysicalChannelConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/PhysicalChannelConfig;-><init>(Landroid/telephony/PhysicalChannelConfig$Builder;)V

    return-void
.end method

.method private greylist-max-o getConnectionStatusString()Ljava/lang/String;
    .locals 2

    .line 302
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    packed-switch v0, :pswitch_data_0

    .line 310
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :pswitch_1
    const-string v0, "SecondaryServing"

    return-object v0

    .line 304
    :pswitch_2
    const-string v0, "PrimaryServing"

    return-object v0

    .line 308
    :pswitch_3
    const-string v0, "Unknown"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist setDownlinkFrequency()V
    .locals 3

    .line 315
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 317
    :pswitch_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 319
    goto :goto_0

    .line 321
    :pswitch_2
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 323
    goto :goto_0

    .line 330
    :pswitch_3
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 332
    goto :goto_0

    .line 336
    :pswitch_4
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 340
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist setFrequencyRange()V
    .locals 1

    .line 371
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-eqz v0, :cond_0

    .line 372
    return-void

    .line 375
    :cond_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    goto :goto_0

    .line 377
    :pswitch_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromNrBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 378
    goto :goto_0

    .line 380
    :pswitch_2
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromEutranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 381
    goto :goto_0

    .line 388
    :pswitch_3
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromUtranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 389
    goto :goto_0

    .line 393
    :pswitch_4
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeGroupFromGeranBand(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 394
    nop

    .line 400
    :goto_0
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-nez v0, :cond_1

    .line 401
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyRangeFromArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 404
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist setUplinkFrequency()V
    .locals 3

    .line 343
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 345
    :pswitch_1
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromNrArfcn(I)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 347
    goto :goto_0

    .line 349
    :pswitch_2
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromEarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 351
    goto :goto_0

    .line 358
    :pswitch_3
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromUarfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 360
    goto :goto_0

    .line 364
    :pswitch_4
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v2, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v0, v2, v1}, Landroid/telephony/AccessNetworkUtils;->getFrequencyFromArfcn(IIZ)I

    move-result v0

    iput v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 368
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public blacklist createLocationInfoSanitizedCopy()Landroid/telephony/PhysicalChannelConfig;
    .locals 2

    .line 294
    new-instance v0, Landroid/telephony/PhysicalChannelConfig$Builder;

    invoke-direct {v0, p0}, Landroid/telephony/PhysicalChannelConfig$Builder;-><init>(Landroid/telephony/PhysicalChannelConfig;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/telephony/PhysicalChannelConfig$Builder;->setPhysicalCellId(I)Landroid/telephony/PhysicalChannelConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/PhysicalChannelConfig$Builder;->build()Landroid/telephony/PhysicalChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 408
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 409
    return v0

    .line 412
    :cond_0
    instance-of v1, p1, Landroid/telephony/PhysicalChannelConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 413
    return v2

    .line 416
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/PhysicalChannelConfig;

    .line 417
    .local v1, "config":Landroid/telephony/PhysicalChannelConfig;
    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    iget-object v4, v1, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 425
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    iget v4, v1, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 417
    :goto_0
    return v0
.end method

.method public whitelist getBand()I
    .locals 1

    .line 224
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    return v0
.end method

.method public whitelist getCellBandwidthDownlinkKhz()I
    .locals 1

    .line 160
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    return v0
.end method

.method public whitelist getCellBandwidthUplinkKhz()I
    .locals 1

    .line 168
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    return v0
.end method

.method public whitelist getConnectionStatus()I
    .locals 1

    .line 286
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    return v0
.end method

.method public blacklist getContextIds()[I
    .locals 1

    .line 181
    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    return-object v0
.end method

.method public whitelist getDownlinkChannelNumber()I
    .locals 1

    .line 204
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    return v0
.end method

.method public whitelist getDownlinkFrequencyKhz()I
    .locals 1

    .line 232
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    return v0
.end method

.method public blacklist getFrequencyRange()I
    .locals 1

    .line 195
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    return v0
.end method

.method public whitelist getNetworkType()I
    .locals 1

    .line 272
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    return v0
.end method

.method public whitelist getPhysicalCellId()I
    .locals 1

    .line 263
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    return v0
.end method

.method public whitelist getUplinkChannelNumber()I
    .locals 1

    .line 213
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    return v0
.end method

.method public whitelist getUplinkFrequencyKhz()I
    .locals 1

    .line 240
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 433
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    .line 434
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    .line 436
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 433
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    const-string/jumbo v1, "{mConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    invoke-direct {p0}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    const-string v1, ",mCellBandwidthDownlinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    const-string v1, ",mCellBandwidthUplinkKhz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    const-string v1, ",mNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    .line 461
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    const-string v1, ",mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    .line 463
    invoke-static {v1}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    const-string v1, ",mDownlinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    const-string v1, ",mUplinkChannelNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    .line 467
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    const-string v1, ",mContextIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    .line 469
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    const-string v1, ",mPhysicalCellId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    const-string v1, ",mBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 474
    const-string v1, ",mDownlinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkFrequency:I

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    const-string v1, ",mUplinkFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkFrequency:I

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 143
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthDownlinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mCellBandwidthUplinkKhz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mDownlinkChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mUplinkChannelNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mFrequencyRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/telephony/PhysicalChannelConfig;->mContextIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 151
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mPhysicalCellId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/telephony/PhysicalChannelConfig;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
