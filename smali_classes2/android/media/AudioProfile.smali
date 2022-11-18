.class public Landroid/media/AudioProfile;
.super Ljava/lang/Object;
.source "AudioProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioProfile$EncapsulationType;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_IEC61937:I = 0x1

.field public static final whitelist AUDIO_ENCAPSULATION_TYPE_NONE:I

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mChannelIndexMasks:[I

.field private final blacklist mChannelMasks:[I

.field private final blacklist mEncapsulationType:I

.field private final blacklist mFormat:I

.field private final blacklist mSamplingRates:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 206
    new-instance v0, Landroid/media/AudioProfile$1;

    invoke-direct {v0}, Landroid/media/AudioProfile$1;-><init>()V

    sput-object v0, Landroid/media/AudioProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[I[I[II)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "samplingRates"    # [I
    .param p3, "channelMasks"    # [I
    .param p4, "channelIndexMasks"    # [I
    .param p5, "encapsulationType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Landroid/media/AudioProfile;->mFormat:I

    .line 78
    iput-object p2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    .line 79
    iput-object p3, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 80
    iput-object p4, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    .line 81
    iput p5, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    .line 82
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioProfile;->mFormat:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    .line 204
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist hasIdenticalElements([I[I)Z
    .locals 3
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .line 177
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 178
    .local v0, "sortedArray1":[I
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 179
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 180
    .local v1, "sortedArray2":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 181
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2
.end method

.method static synthetic blacklist lambda$toHexString$0(I)Ljava/lang/String;
    .locals 3
    .param p0, "anInt"    # I

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0x%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toHexString([I)Ljava/lang/String;
    .locals 2
    .param p0, "ints"    # [I

    .line 169
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 173
    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    return-object v0

    .line 170
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 140
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioProfile;

    .line 143
    .local v2, "that":Landroid/media/AudioProfile;
    iget v3, p0, Landroid/media/AudioProfile;->mFormat:I

    iget v4, v2, Landroid/media/AudioProfile;->mFormat:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mSamplingRates:[I

    .line 144
    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 145
    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    .line 146
    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    iget v4, v2, Landroid/media/AudioProfile;->mEncapsulationType:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 140
    .end local v2    # "that":Landroid/media/AudioProfile;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getChannelIndexMasks()[I
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    return-object v0
.end method

.method public whitelist getChannelMasks()[I
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    return-object v0
.end method

.method public whitelist getEncapsulationType()I
    .locals 1

    .line 127
    iget v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return v0
.end method

.method public whitelist getFormat()I
    .locals 1

    .line 88
    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    return v0
.end method

.method public whitelist getSampleRates()[I
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    .line 133
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 132
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    .line 155
    const-string v1, ", sampling rates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 158
    const-string v1, ", channel masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v2}, Landroid/media/AudioProfile;->toHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_1
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    .line 161
    const-string v1, ", channel index masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", encapsulation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 193
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 194
    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 195
    iget v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
