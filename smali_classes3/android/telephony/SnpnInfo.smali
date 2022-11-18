.class public final Landroid/telephony/SnpnInfo;
.super Ljava/lang/Object;
.source "SnpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SnpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist UNAVAILABLE:I = 0x7fffffff


# instance fields
.field private blacklist mLevel:I

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNid:[B

.field private blacklist mOperatorNumeric:Ljava/lang/String;

.field private blacklist mSignalQuality:I

.field private blacklist mSignalStrength:I

.field private blacklist mSsRsrpThresholds:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 256
    new-instance v0, Landroid/telephony/SnpnInfo$1;

    invoke-direct {v0}, Landroid/telephony/SnpnInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SnpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    .line 119
    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 122
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    .line 123
    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    .line 125
    return-void

    nop

    :array_0
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "arrayLength":I
    if-lez v0, :cond_0

    .line 170
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    .line 173
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    .line 175
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    .line 181
    return-void

    nop

    :array_0
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SnpnInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SnpnInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/SnpnInfo;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SnpnInfo;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    .line 154
    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mNid:[B

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    .line 155
    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    .line 157
    iget-object v0, p1, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 158
    iget v0, p1, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    .line 159
    iget v0, p1, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    iput v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    .line 160
    iget v0, p1, Landroid/telephony/SnpnInfo;->mLevel:I

    iput v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    .line 161
    return-void

    :array_0
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method public constructor blacklist <init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "nid"    # [B
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;
    .param p4, "operatorNumeric"    # Ljava/lang/String;
    .param p5, "signalStrength"    # I
    .param p6, "signalQuality"    # I

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    .line 140
    iput-object p1, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    .line 141
    iput-object p2, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 144
    iput p5, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    .line 145
    iput p6, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    .line 146
    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->updateLevel()V

    .line 147
    return-void

    nop

    :array_0
    .array-data 4
        -0x6e
        -0x5a
        -0x50
        -0x41
    .end array-data
.end method

.method private blacklist updateLevelWithMeasure(I[I)I
    .locals 1
    .param p1, "measure"    # I
    .param p2, "thresholds"    # [I

    .line 199
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 200
    const/4 v0, 0x0

    .local v0, "level":I
    goto :goto_0

    .line 201
    .end local v0    # "level":I
    :cond_0
    const/4 v0, 0x3

    aget v0, p2, v0

    if-lt p1, v0, :cond_1

    .line 202
    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 203
    .end local v0    # "level":I
    :cond_1
    const/4 v0, 0x2

    aget v0, p2, v0

    if-lt p1, v0, :cond_2

    .line 204
    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 205
    .end local v0    # "level":I
    :cond_2
    const/4 v0, 0x1

    aget v0, p2, v0

    if-lt p1, v0, :cond_3

    .line 206
    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 207
    .end local v0    # "level":I
    :cond_3
    const/4 v0, 0x0

    aget v0, p2, v0

    if-lt p1, v0, :cond_4

    .line 208
    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 210
    .end local v0    # "level":I
    :cond_4
    const/4 v0, 0x0

    .line 212
    .restart local v0    # "level":I
    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 275
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 276
    return v0

    .line 278
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 279
    return v1

    .line 281
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/SnpnInfo;

    .line 282
    .local v2, "other":Landroid/telephony/SnpnInfo;
    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mNid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    .line 283
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    .line 284
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    .line 285
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iget v4, v2, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    iget v4, v2, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    iget v4, v2, Landroid/telephony/SnpnInfo;->mLevel:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 282
    :goto_0
    return v0
.end method

.method public blacklist getLevel()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    return v0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMnc()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNid()[B
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    return-object v0
.end method

.method public blacklist getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSignalQuality()I
    .locals 1

    .line 105
    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    return v0
.end method

.method public blacklist getSignalStrength()I
    .locals 1

    .line 97
    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 267
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 267
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 269
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 270
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getNid()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMcc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getMcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mMnc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getMnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mOperatorNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getSignalStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSignalQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/SnpnInfo;->getSignalQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method public blacklist updateLevel()V
    .locals 3

    .line 185
    const v0, 0x7fffffff

    .line 186
    .local v0, "ssRsrpLevel":I
    iget v1, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    iget-object v2, p0, Landroid/telephony/SnpnInfo;->mSsRsrpThresholds:[I

    invoke-direct {p0, v1, v2}, Landroid/telephony/SnpnInfo;->updateLevelWithMeasure(I[I)I

    move-result v0

    .line 187
    iput v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    .line 188
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 239
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 240
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mNid:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 243
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    :goto_0
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/telephony/SnpnInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v0, p0, Landroid/telephony/SnpnInfo;->mSignalQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Landroid/telephony/SnpnInfo;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    return-void
.end method
