.class public final Landroid/bluetooth/le/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final whitelist CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final whitelist CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final blacklist CALLBACK_TYPE_SENSOR_ROUTING:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final whitelist MATCH_MODE_STICKY:I = 0x2

.field public static final whitelist MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final whitelist MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final whitelist MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final whitelist PHY_LE_ALL_SUPPORTED:I = 0xff

.field public static final whitelist SCAN_MODE_AMBIENT_DISCOVERY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SCAN_MODE_BALANCED:I = 0x1

.field public static final whitelist SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final whitelist SCAN_MODE_LOW_POWER:I = 0x0

.field public static final whitelist SCAN_MODE_OPPORTUNISTIC:I = -0x1

.field public static final blacklist SCAN_MODE_SCREEN_OFF:I = 0x4

.field public static final blacklist SCAN_MODE_SCREEN_OFF_BALANCED:I = 0x5

.field public static final whitelist SCAN_RESULT_TYPE_ABBREVIATED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SCAN_RESULT_TYPE_FULL:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mCallbackType:I

.field private blacklist mLegacy:Z

.field private blacklist mMatchMode:I

.field private blacklist mNumOfMatchesPerFilter:I

.field private blacklist mPhy:I

.field private blacklist mReportDelayMillis:J

.field private blacklist mScanMode:I

.field private blacklist mScanResultType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Landroid/bluetooth/le/ScanSettings$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIJIIZI)V
    .locals 0
    .param p1, "scanMode"    # I
    .param p2, "callbackType"    # I
    .param p3, "scanResultType"    # I
    .param p4, "reportDelayMillis"    # J
    .param p6, "matchMode"    # I
    .param p7, "numOfMatchesPerFilter"    # I
    .param p8, "legacy"    # Z
    .param p9, "phy"    # I

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p1, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    .line 241
    iput p2, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    .line 242
    iput p3, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    .line 243
    iput-wide p4, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    .line 244
    iput p7, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 245
    iput p6, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    .line 246
    iput-boolean p8, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    .line 247
    iput p9, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    .line 248
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIJIIZILandroid/bluetooth/le/ScanSettings-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIZI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    .line 259
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ScanSettings-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallbackType()I
    .locals 1

    .line 193
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public whitelist getLegacy()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    return v0
.end method

.method public blacklist getMatchMode()I
    .locals 1

    .line 204
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public blacklist getNumOfMatches()I
    .locals 1

    .line 211
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public whitelist getPhy()I
    .locals 1

    .line 227
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    return v0
.end method

.method public whitelist getReportDelayMillis()J
    .locals 2

    .line 234
    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public whitelist getScanMode()I
    .locals 1

    .line 189
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    return v0
.end method

.method public whitelist getScanResultType()I
    .locals 1

    .line 197
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 263
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mScanResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-wide v0, p0, Landroid/bluetooth/le/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-boolean v0, p0, Landroid/bluetooth/le/ScanSettings;->mLegacy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget v0, p0, Landroid/bluetooth/le/ScanSettings;->mPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    return-void
.end method
