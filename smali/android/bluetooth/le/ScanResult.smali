.class public final Landroid/bluetooth/le/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/bluetooth/Attributable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_COMPLETE:I = 0x0

.field public static final whitelist DATA_TRUNCATED:I = 0x2

.field private static final blacklist ET_CONNECTABLE_MASK:I = 0x1

.field private static final blacklist ET_LEGACY_MASK:I = 0x10

.field public static final whitelist PERIODIC_INTERVAL_NOT_PRESENT:I = 0x0

.field public static final whitelist PHY_UNUSED:I = 0x0

.field public static final whitelist SID_NOT_PRESENT:I = 0xff

.field public static final whitelist TX_POWER_NOT_PRESENT:I = 0x7f


# instance fields
.field private blacklist mAddressType:I

.field private blacklist mAdvertisingSid:I

.field private blacklist mDevice:Landroid/bluetooth/BluetoothDevice;

.field private blacklist mEventType:I

.field private blacklist mPeriodicAdvertisingInterval:I

.field private blacklist mPrimaryPhy:I

.field private blacklist mRssi:I

.field private blacklist mScanRecord:Landroid/bluetooth/le/ScanRecord;

.field private blacklist mSecondaryPhy:I

.field private blacklist mTimestampNanos:J

.field private blacklist mTxPower:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 398
    new-instance v0, Landroid/bluetooth/le/ScanResult$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanResult$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothDevice;IIIIIIIILandroid/bluetooth/le/ScanRecord;J)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "addressType"    # I
    .param p3, "eventType"    # I
    .param p4, "primaryPhy"    # I
    .param p5, "secondaryPhy"    # I
    .param p6, "advertisingSid"    # I
    .param p7, "txPower"    # I
    .param p8, "rssi"    # I
    .param p9, "periodicAdvertisingInterval"    # I
    .param p10, "scanRecord"    # Landroid/bluetooth/le/ScanRecord;
    .param p11, "timestampNanos"    # J

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 177
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 178
    iput p4, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 179
    iput p5, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 180
    iput p6, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 181
    iput p7, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 182
    iput p8, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 183
    iput p9, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 184
    iput-object p10, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 185
    iput-wide p11, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 186
    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    .line 187
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "eventType"    # I
    .param p3, "primaryPhy"    # I
    .param p4, "secondaryPhy"    # I
    .param p5, "advertisingSid"    # I
    .param p6, "txPower"    # I
    .param p7, "rssi"    # I
    .param p8, "periodicAdvertisingInterval"    # I
    .param p9, "scanRecord"    # Landroid/bluetooth/le/ScanRecord;
    .param p10, "timestampNanos"    # J

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 142
    iput p2, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 143
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 144
    iput p4, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 145
    iput p5, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 146
    iput p6, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 147
    iput p7, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 148
    iput p8, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 149
    iput-object p9, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 150
    iput-wide p10, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    .line 152
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scanRecord"    # Landroid/bluetooth/le/ScanRecord;
    .param p3, "rssi"    # I
    .param p4, "timestampNanos"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 112
    iput-object p2, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 113
    iput p3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 114
    iput-wide p4, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 115
    const/16 v0, 0x11

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 118
    const/16 v1, 0xff

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 119
    const/16 v1, 0x7f

    iput v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 120
    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    .line 122
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 191
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 225
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    .line 234
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 369
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 370
    return v0

    .line 372
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 375
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 376
    .local v2, "other":Landroid/bluetooth/le/ScanResult;
    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v2, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mRssi:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    iget-object v4, v2, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 377
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    iget-wide v5, v2, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mEventType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    iget v4, v2, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 376
    :goto_0
    return v0

    .line 373
    .end local v2    # "other":Landroid/bluetooth/le/ScanResult;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getAddressType()I
    .locals 1

    .line 356
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    return v0
.end method

.method public whitelist getAdvertisingSid()I
    .locals 1

    .line 329
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    return v0
.end method

.method public whitelist getDataStatus()I
    .locals 1

    .line 298
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public whitelist getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public whitelist getPeriodicAdvertisingInterval()I
    .locals 1

    .line 348
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    return v0
.end method

.method public whitelist getPrimaryPhy()I
    .locals 1

    .line 308
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    return v0
.end method

.method public whitelist getRssi()I
    .locals 1

    .line 265
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    return v0
.end method

.method public whitelist getScanRecord()Landroid/bluetooth/le/ScanRecord;
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    return-object v0
.end method

.method public whitelist getSecondaryPhy()I
    .locals 1

    .line 320
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    return v0
.end method

.method public whitelist getTimestampNanos()J
    .locals 2

    .line 272
    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public whitelist getTxPower()I
    .locals 1

    .line 338
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 361
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    .line 363
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 361
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isConnectable()Z
    .locals 2

    .line 288
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isLegacy()Z
    .locals 1

    .line 281
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setAttributionSource(Landroid/content/AttributionSource;)V
    .locals 1
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;

    .line 243
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 244
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanResult{device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    .line 391
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", advertisingSid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", periodicAdvertisingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 195
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Landroid/bluetooth/le/ScanResult;->mScanRecord:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    :goto_1
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-wide v0, p0, Landroid/bluetooth/le/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPrimaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mSecondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAdvertisingSid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mPeriodicAdvertisingInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Landroid/bluetooth/le/ScanResult;->mAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    return-void
.end method
