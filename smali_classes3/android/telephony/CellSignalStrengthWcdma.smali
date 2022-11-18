.class public final Landroid/telephony/CellSignalStrengthWcdma;
.super Landroid/telephony/CellSignalStrength;
.source "CellSignalStrengthWcdma.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellSignalStrengthWcdma$LevelCalculationMethod;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellSignalStrengthWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist DEFAULT_LEVEL_CALCULATION_METHOD:Ljava/lang/String; = "rssi"

.field public static final blacklist LEVEL_CALCULATION_METHOD_RSCP:Ljava/lang/String; = "rscp"

.field public static final blacklist LEVEL_CALCULATION_METHOD_RSSI:Ljava/lang/String; = "rssi"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "CellSignalStrengthWcdma"

.field private static final blacklist WCDMA_RSCP_GOOD:I = -0x5f

.field private static final blacklist WCDMA_RSCP_GREAT:I = -0x55

.field private static final blacklist WCDMA_RSCP_MAX:I = -0x18

.field private static final blacklist WCDMA_RSCP_MIN:I = -0x78

.field private static final blacklist WCDMA_RSCP_MODERATE:I = -0x69

.field private static final blacklist WCDMA_RSCP_POOR:I = -0x73

.field private static final blacklist WCDMA_RSSI_GOOD:I = -0x57

.field private static final blacklist WCDMA_RSSI_GREAT:I = -0x4d

.field private static final blacklist WCDMA_RSSI_MAX:I = -0x33

.field private static final blacklist WCDMA_RSSI_MIN:I = -0x71

.field private static final blacklist WCDMA_RSSI_MODERATE:I = -0x61

.field private static final blacklist WCDMA_RSSI_POOR:I = -0x6b

.field private static final blacklist sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

.field private static final blacklist sRscpThresholds:[I

.field private static final blacklist sRssiThresholds:[I


# instance fields
.field private greylist mBitErrorRate:I

.field private blacklist mEcNo:I

.field private blacklist mLevel:I

.field private blacklist mRscp:I

.field private blacklist mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 48
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    .line 58
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    .line 251
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    .line 316
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellSignalStrengthWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellSignalStrengthWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        -0x6b
        -0x61
        -0x57
        -0x4d
    .end array-data

    :array_1
    .array-data 4
        -0x73
        -0x69
        -0x5f
        -0x55
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 3
    .param p1, "rssi"    # I
    .param p2, "ber"    # I
    .param p3, "rscp"    # I
    .param p4, "ecno"    # I

    .line 89
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 90
    const/16 v0, -0x71

    const/16 v1, -0x33

    invoke-static {p1, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/16 v2, 0x63

    invoke-static {p2, v0, v1, v2}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(IIII)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 92
    const/16 v0, -0x78

    const/16 v1, -0x18

    invoke-static {p3, v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 93
    const/4 v0, 0x1

    invoke-static {p4, v1, v0}, Landroid/telephony/CellSignalStrengthWcdma;->inRangeOrUnavailable(III)I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    .line 95
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 299
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 306
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthWcdma-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 98
    invoke-direct {p0}, Landroid/telephony/CellSignalStrength;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthWcdma;->copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V

    .line 100
    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 333
    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 340
    const-string v0, "CellSignalStrengthWcdma"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist copy()Landroid/telephony/CellSignalStrength;
    .locals 1

    .line 36
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->copy()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o copy()Landroid/telephony/CellSignalStrengthWcdma;
    .locals 1

    .line 114
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0
.end method

.method protected greylist-max-o copyFrom(Landroid/telephony/CellSignalStrengthWcdma;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/CellSignalStrengthWcdma;

    .line 104
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 105
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 106
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 107
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 108
    iget v0, p1, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 109
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 261
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthWcdma;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 262
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    .line 264
    .local v0, "s":Landroid/telephony/CellSignalStrengthWcdma;
    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    iget v3, v0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getAsuLevel()I
    .locals 2

    .line 199
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0

    .line 202
    :cond_0
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRssiDbm(I)I

    move-result v0

    return v0

    .line 203
    :cond_1
    invoke-static {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuFromRscpDbm(I)I

    move-result v0

    return v0
.end method

.method public blacklist getBitErrorRate()I
    .locals 1

    .line 243
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    return v0
.end method

.method public whitelist getDbm()I
    .locals 2

    .line 186
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    return v0

    .line 187
    :cond_0
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return v0
.end method

.method public whitelist getEcNo()I
    .locals 1

    .line 233
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    return v0
.end method

.method public whitelist getLevel()I
    .locals 1

    .line 131
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    return v0
.end method

.method public blacklist getRscp()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    return v0
.end method

.method public blacklist getRssi()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 248
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .locals 1

    .line 256
    sget-object v0, Landroid/telephony/CellSignalStrengthWcdma;->sInvalid:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0, v0}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o setDefaultValues()V
    .locals 1

    .line 120
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    .line 121
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    .line 122
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    .line 123
    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 125
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellSignalStrengthWcdma: ss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rscp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ecno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1, "cc"    # Landroid/os/PersistableBundle;
    .param p2, "ss"    # Landroid/telephony/ServiceState;

    .line 140
    const-string/jumbo v0, "rssi"

    if-nez p1, :cond_0

    .line 141
    const-string/jumbo v1, "rssi"

    .line 142
    .local v1, "calcMethod":Ljava/lang/String;
    sget-object v2, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    .local v2, "rscpThresholds":[I
    goto :goto_0

    .line 145
    .end local v1    # "calcMethod":Ljava/lang/String;
    .end local v2    # "rscpThresholds":[I
    :cond_0
    const-string/jumbo v1, "wcdma_default_signal_strength_measurement_string"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1    # "calcMethod":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "rssi"

    .line 149
    :cond_1
    const-string/jumbo v2, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 151
    .restart local v2    # "rscpThresholds":[I
    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 152
    :cond_2
    sget-object v2, Landroid/telephony/CellSignalStrengthWcdma;->sRscpThresholds:[I

    .line 156
    :cond_3
    :goto_0
    const/4 v3, 0x4

    .line 157
    .local v3, "level":I
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    :cond_4
    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_1
    const-string/jumbo v0, "rscp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_2

    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 167
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Level Calculation Method for CellSignalStrengthWcdma = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthWcdma;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 159
    :pswitch_1
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    const/16 v4, -0x78

    if-lt v0, v4, :cond_7

    const/16 v4, -0x18

    if-le v0, v4, :cond_5

    goto :goto_4

    .line 163
    :cond_5
    :goto_3
    if-lez v3, :cond_6

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    add-int/lit8 v4, v3, -0x1

    aget v4, v2, v4

    if-ge v0, v4, :cond_6

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 164
    :cond_6
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 165
    return-void

    .line 160
    :cond_7
    :goto_4
    iput v5, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 161
    return-void

    .line 171
    :goto_5
    :pswitch_2
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    const/16 v4, -0x71

    if-lt v0, v4, :cond_a

    const/16 v4, -0x33

    if-le v0, v4, :cond_8

    goto :goto_7

    .line 175
    :cond_8
    :goto_6
    if-lez v3, :cond_9

    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    sget-object v4, Landroid/telephony/CellSignalStrengthWcdma;->sRssiThresholds:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    if-ge v0, v4, :cond_9

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 176
    :cond_9
    iput v3, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 177
    return-void

    .line 172
    :cond_a
    :goto_7
    iput v5, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    .line 173
    return-void

    :sswitch_data_0
    .sparse-switch
        0x358e6e -> :sswitch_1
        0x359057 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 288
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mEcNo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/telephony/CellSignalStrengthWcdma;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    return-void
.end method
