.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfigMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    }
.end annotation


# static fields
.field private static final blacklist AUDIO_CHANNEL_LOCATION_TYPE:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioLocation:J

.field private final blacklist mRawMetadata:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(J[B)V
    .locals 0
    .param p1, "audioLocation"    # J
    .param p3, "rawMetadata"    # [B

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    .line 47
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(J[BLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(J[B)V

    return-void
.end method

.method public static whitelist fromRawBytes([B)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .locals 12
    .param p0, "rawBytes"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 160
    if-eqz p0, :cond_4

    .line 163
    invoke-static {p0}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_1

    aget-byte v1, p0, v2

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No LTV entries are found from rawBytes of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    .line 169
    .local v3, "audioLocation":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 170
    .local v5, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 171
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v6

    .line 173
    .local v6, "bytes":[B
    aget-byte v8, v6, v2

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v2

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    int-to-long v8, v8

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v10, v7

    const/16 v7, 0x18

    shl-long/2addr v10, v7

    or-long v3, v8, v10

    .line 176
    .end local v5    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    .end local v6    # "bytes":[B
    :cond_2
    goto :goto_1

    .line 177
    :cond_3
    new-instance v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    invoke-direct {v1, v3, v4, p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(J[B)V

    return-object v1

    .line 161
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    .end local v3    # "audioLocation":J
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Raw bytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    if-eqz v1, :cond_1

    .line 53
    move-object v1, p1

    check-cast v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 54
    .local v1, "oth":Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getAudioLocation()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    .line 55
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getRawMetadata()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 54
    :goto_0
    return v0

    .line 57
    .end local v1    # "oth":Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    :cond_1
    return v0
.end method

.method public whitelist getAudioLocation()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 74
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    return-wide v0
.end method

.method public whitelist getRawMetadata()[B
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    if-eqz v0, :cond_0

    .line 109
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    :goto_0
    return-void
.end method
