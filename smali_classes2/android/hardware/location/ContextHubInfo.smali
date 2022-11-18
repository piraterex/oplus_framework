.class public Landroid/hardware/location/ContextHubInfo;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

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
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mChreApiMajorVersion:B

.field private greylist-max-o mChreApiMinorVersion:B

.field private greylist-max-o mChrePatchVersion:S

.field private greylist-max-o mChrePlatformId:J

.field private greylist-max-o mId:I

.field private greylist-max-o mMaxPacketLengthBytes:I

.field private greylist-max-o mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPeakMips:F

.field private greylist-max-o mPeakPowerDrawMw:F

.field private greylist-max-o mPlatformVersion:I

.field private greylist-max-o mSleepPowerDrawMw:F

.field private greylist-max-o mStoppedPowerDrawMw:F

.field private greylist-max-o mSupportedSensors:[I

.field private greylist-max-o mToolchain:Ljava/lang/String;

.field private greylist-max-o mToolchainVersion:I

.field private greylist-max-o mVendor:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 398
    new-instance v0, Landroid/hardware/location/ContextHubInfo$1;

    invoke-direct {v0}, Landroid/hardware/location/ContextHubInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/location/ContextHubInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/ContextHubInfo;)V
    .locals 3
    .param p1, "contextHub"    # Landroid/hardware/contexthub/ContextHubInfo;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iget v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->id:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 87
    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 91
    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 92
    iget v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->peakMips:F

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 94
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 95
    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 96
    iget v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->maxSupportedMessageLengthBytes:I

    iput v1, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 97
    iget-wide v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chrePlatformId:J

    iput-wide v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    .line 98
    iget-byte v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMajorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    .line 99
    iget-byte v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chreApiMinorVersion:B

    iput-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    .line 100
    iget-char v1, p1, Landroid/hardware/contexthub/ContextHubInfo;->chrePatchVersion:C

    int-to-short v1, v1

    iput-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    .line 102
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 103
    new-array v0, v0, [Landroid/hardware/location/MemoryRegion;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 104
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V
    .locals 2
    .param p1, "contextHub"    # Landroid/hardware/contexthub/V1_0/ContextHub;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 64
    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->vendor:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchain:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 67
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->platformVersion:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 68
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->toolchainVersion:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 69
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakMips:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 70
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->stoppedPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 71
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->sleepPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 72
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->peakPowerDrawMw:F

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 73
    iget v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->maxSupportedMsgLen:I

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 74
    iget-wide v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePlatformId:J

    iput-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    .line 75
    iget-byte v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMajorVersion:B

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    .line 76
    iget-byte v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chreApiMinorVersion:B

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    .line 77
    iget-short v0, p1, Landroid/hardware/contexthub/V1_0/ContextHub;->chrePatchVersion:S

    iput-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    .line 79
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 80
    new-array v0, v0, [Landroid/hardware/location/MemoryRegion;

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 81
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 367
    .local v0, "numSupportedSensors":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    .line 368
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 369
    sget-object v1, Landroid/hardware/location/MemoryRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/location/MemoryRegion;

    iput-object v1, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    .line 370
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 306
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 307
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 308
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 309
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    const-wide v1, 0x10900000004L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 310
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 311
    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v0

    const-wide v1, 0x10500000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 312
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    const-wide v1, 0x10500000007L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 313
    iget-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    const-wide v2, 0x10300000008L

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 314
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    const-wide v1, 0x10200000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 315
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    const-wide v1, 0x1020000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 316
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    const-wide v1, 0x1020000000bL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 317
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    const-wide v1, 0x1020000000cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 318
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    const-wide v1, 0x1050000000dL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 319
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 323
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 324
    return v0

    .line 327
    :cond_0
    const/4 v1, 0x0

    .line 328
    .local v1, "isEqual":Z
    instance-of v2, p1, Landroid/hardware/location/ContextHubInfo;

    if-eqz v2, :cond_2

    .line 329
    move-object v2, p1

    check-cast v2, Landroid/hardware/location/ContextHubInfo;

    .line 330
    .local v2, "other":Landroid/hardware/location/ContextHubInfo;
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    if-ne v3, v4, :cond_1

    .line 331
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 332
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getVendor()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getToolchain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getToolchainVersion()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    if-ne v3, v4, :cond_1

    .line 335
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getStaticSwVersion()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 336
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getChrePlatformId()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 337
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getPeakMips()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 338
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getStoppedPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 339
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getSleepPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 340
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getPeakPowerDrawMw()F

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 341
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getMaxPacketLengthBytes()I

    move-result v3

    iget v4, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    if-ne v3, v4, :cond_1

    .line 342
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getSupportedSensors()[I

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v2}, Landroid/hardware/location/ContextHubInfo;->getMemoryRegions()[Landroid/hardware/location/MemoryRegion;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 346
    .end local v2    # "other":Landroid/hardware/location/ContextHubInfo;
    :cond_2
    return v1
.end method

.method public whitelist getChreApiMajorVersion()B
    .locals 1

    .line 259
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    return v0
.end method

.method public whitelist getChreApiMinorVersion()B
    .locals 1

    .line 266
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    return v0
.end method

.method public whitelist getChrePatchVersion()S
    .locals 1

    .line 273
    iget-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    return v0
.end method

.method public whitelist getChrePlatformId()J
    .locals 2

    .line 252
    iget-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    return-wide v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    return v0
.end method

.method public whitelist getMaxPacketLengthBytes()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    return v0
.end method

.method public whitelist getMemoryRegions()[Landroid/hardware/location/MemoryRegion;
    .locals 2

    .line 245
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/location/MemoryRegion;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPeakMips()F
    .locals 1

    .line 185
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    return v0
.end method

.method public whitelist getPeakPowerDrawMw()F
    .locals 1

    .line 223
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    return v0
.end method

.method public whitelist getPlatformVersion()I
    .locals 1

    .line 158
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    return v0
.end method

.method public whitelist getSleepPowerDrawMw()F
    .locals 1

    .line 213
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    return v0
.end method

.method public whitelist getStaticSwVersion()I
    .locals 2

    .line 167
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    shl-int/lit8 v0, v0, 0x18

    iget-byte v1, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-short v1, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getStoppedPowerDrawMw()F
    .locals 1

    .line 198
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    return v0
.end method

.method public whitelist getSupportedSensors()[I
    .locals 2

    .line 234
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getToolchain()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getToolchainVersion()I
    .locals 1

    .line 176
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    return v0
.end method

.method public whitelist getVendor()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 279
    const-string v0, ""

    .line 280
    .local v0, "retVal":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ID/handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tVendor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Toolchain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Toolchain version: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPlatformVersion : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SwVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v3, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CHRE platform ID: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\tPeakMips : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", StoppedPowerDraw : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", PeakPowerDraw : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MaxPacketLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 377
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPlatformVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mToolchainVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakMips:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 384
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mStoppedPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 385
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mSleepPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 386
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mPeakPowerDrawMw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 387
    iget v0, p0, Landroid/hardware/location/ContextHubInfo;->mMaxPacketLengthBytes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-wide v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePlatformId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 389
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMajorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 390
    iget-byte v0, p0, Landroid/hardware/location/ContextHubInfo;->mChreApiMinorVersion:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 391
    iget-short v0, p0, Landroid/hardware/location/ContextHubInfo;->mChrePatchVersion:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mSupportedSensors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 395
    iget-object v0, p0, Landroid/hardware/location/ContextHubInfo;->mMemoryRegions:[Landroid/hardware/location/MemoryRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 396
    return-void
.end method
