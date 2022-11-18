.class public Landroid/net/lowpan/LowpanChannelInfo;
.super Ljava/lang/Object;
.source "LowpanChannelInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist UNKNOWN_BANDWIDTH:F = 0.0f

.field public static final blacklist UNKNOWN_FREQUENCY:F = 0.0f

.field public static final blacklist UNKNOWN_POWER:I = 0x7fffffff


# instance fields
.field private blacklist mIndex:I

.field private blacklist mIsMaskedByRegulatoryDomain:Z

.field private blacklist mMaxTransmitPower:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mSpectrumBandwidth:F

.field private blacklist mSpectrumCenterFrequency:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmIndex(Landroid/net/lowpan/LowpanChannelInfo;I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsMaskedByRegulatoryDomain(Landroid/net/lowpan/LowpanChannelInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxTransmitPower(Landroid/net/lowpan/LowpanChannelInfo;I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmName(Landroid/net/lowpan/LowpanChannelInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpectrumBandwidth(Landroid/net/lowpan/LowpanChannelInfo;F)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpectrumCenterFrequency(Landroid/net/lowpan/LowpanChannelInfo;F)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 38
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 39
    const v1, 0x7fffffff

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 40
    iput-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 71
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;FF)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cf"    # F
    .param p4, "bw"    # F

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 38
    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 39
    const v1, 0x7fffffff

    iput v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 40
    iput-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 74
    iput p1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 75
    iput-object p2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 76
    iput p3, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 77
    iput p4, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 78
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/lowpan/LowpanChannelInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    return-void
.end method

.method public static blacklist getChannelInfoForIeee802154Page0(I)Landroid/net/lowpan/LowpanChannelInfo;
    .locals 5
    .param p0, "index"    # I

    .line 44
    new-instance v0, Landroid/net/lowpan/LowpanChannelInfo;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanChannelInfo;-><init>()V

    .line 46
    .local v0, "info":Landroid/net/lowpan/LowpanChannelInfo;
    if-gez p0, :cond_0

    .line 47
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_0
    if-nez p0, :cond_1

    .line 50
    const v1, 0x4e4f04d4    # 8.6830003E8f

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 51
    const v1, 0x49127c00    # 600000.0f

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    .line 53
    :cond_1
    const/16 v1, 0xb

    const v2, 0x49f42400    # 2000000.0f

    if-ge p0, v1, :cond_2

    .line 54
    const v1, 0x4e5787c8    # 9.04E8f

    int-to-float v3, p0

    mul-float/2addr v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 55
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    .line 57
    :cond_2
    const/16 v1, 0x1a

    if-ge p0, v1, :cond_3

    .line 58
    const v1, 0x4f0c1227    # 2.34999987E9f

    const v3, 0x4a989680    # 5000000.0f

    int-to-float v4, p0

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    iput v4, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 60
    iput v2, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    goto :goto_0

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    .line 68
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 155
    instance-of v0, p1, Landroid/net/lowpan/LowpanChannelInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    return v1

    .line 158
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanChannelInfo;

    .line 159
    .local v0, "rhs":Landroid/net/lowpan/LowpanChannelInfo;
    iget-object v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    iget-boolean v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    iget v3, v0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public blacklist getIndex()I
    .locals 1

    .line 85
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    return v0
.end method

.method public blacklist getMaxTransmitPower()I
    .locals 1

    .line 89
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSpectrumBandwidth()F
    .locals 1

    .line 101
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    return v0
.end method

.method public blacklist getSpectrumCenterFrequency()F
    .locals 1

    .line 97
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 169
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    .line 173
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    .line 174
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 169
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isMaskedByRegulatoryDomain()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 11

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const-string v4, "MHz"

    const-string v5, "kHz"

    const/high16 v6, 0x447a0000    # 1000.0f

    const-string v7, "GHz"

    const v8, 0x49742400    # 1000000.0f

    const v9, 0x4e6e6b28    # 1.0E9f

    if-lez v3, :cond_3

    .line 115
    cmpl-float v3, v1, v9

    const-string v10, ", SpectrumCenterFrequency: "

    if-lez v3, :cond_1

    .line 116
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v3, v9

    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 119
    :cond_1
    cmpl-float v1, v1, v8

    if-lez v1, :cond_2

    .line 120
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v3, v8

    .line 121
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    div-float/2addr v3, v6

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_3
    :goto_0
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    .line 131
    cmpl-float v2, v1, v9

    const-string v3, ", SpectrumBandwidth: "

    if-lez v2, :cond_4

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v2, v9

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 135
    :cond_4
    cmpl-float v1, v1, v8

    if-lez v1, :cond_5

    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v2, v8

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 140
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    div-float/2addr v2, v6

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_6
    :goto_1
    iget v1, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_7

    .line 147
    const-string v1, ", MaxTransmitPower: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 187
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumCenterFrequency:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 190
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mSpectrumBandwidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 191
    iget v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mMaxTransmitPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v0, p0, Landroid/net/lowpan/LowpanChannelInfo;->mIsMaskedByRegulatoryDomain:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    return-void
.end method
