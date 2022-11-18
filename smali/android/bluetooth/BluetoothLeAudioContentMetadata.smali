.class public final Landroid/bluetooth/BluetoothLeAudioContentMetadata;
.super Ljava/lang/Object;
.source "BluetoothLeAudioContentMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioContentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LANGUAGE_LENGTH:I = 0x3

.field private static final blacklist LANGUAGE_TYPE:I = 0x4

.field private static final blacklist PROGRAM_INFO_TYPE:I = 0x3


# instance fields
.field private final blacklist mLanguage:Ljava/lang/String;

.field private final blacklist mProgramInfo:Ljava/lang/String;

.field private final blacklist mRawMetadata:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "programInfo"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "rawMetadata"    # [B

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    .line 53
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[BLandroid/bluetooth/BluetoothLeAudioContentMetadata-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method public static whitelist fromRawBytes([B)Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .locals 10
    .param p0, "rawBytes"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 165
    if-eqz p0, :cond_6

    .line 168
    invoke-static {p0}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v0

    .line 169
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

    .line 170
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

    .line 173
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 174
    .local v1, "programInfo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 175
    .local v3, "language":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 177
    .local v5, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    const/4 v6, 0x3

    if-nez v1, :cond_3

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 178
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v6

    .line 179
    .local v6, "bytes":[B
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v7

    .line 180
    .end local v6    # "bytes":[B
    :cond_2
    goto :goto_2

    :cond_3
    if-nez v3, :cond_2

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    .line 181
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v7

    .line 182
    .local v7, "bytes":[B
    array-length v8, v7

    if-ne v8, v6, :cond_4

    .line 187
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v2, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v8

    goto :goto_2

    .line 183
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Language byte size "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " is less than "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", needed for ISO 639-3"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    .end local v5    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    .end local v7    # "bytes":[B
    :goto_2
    goto :goto_1

    .line 190
    :cond_5
    new-instance v2, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    invoke-direct {v2, v1, v3, p0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v2

    .line 166
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    .end local v1    # "programInfo":Ljava/lang/String;
    .end local v3    # "language":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Raw bytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 58
    return v1

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 61
    .local v0, "other":Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getProgramInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    .line 63
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->getRawMetadata()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 61
    :goto_0
    return v1
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getProgramInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRawMetadata()[B
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mProgramInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioContentMetadata;->mRawMetadata:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 125
    return-void
.end method
