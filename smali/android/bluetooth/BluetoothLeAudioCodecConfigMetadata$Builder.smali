.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfigMetadata.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioLocation:J

.field private blacklist mRawMetadata:[B


# direct methods
.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    .line 194
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)V
    .locals 2
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    .line 204
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getAudioLocation()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 205
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getRawMetadata()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    .line 206
    return-void
.end method

.method static synthetic blacklist lambda$build$0(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z
    .locals 2
    .param p0, "entry"    # Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 241
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    if-eqz v1, :cond_1

    .line 233
    invoke-static {v1}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v0

    .line 234
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No LTV entries are found from rawBytes of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " please check the original object passed to Builder\'s copy constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_1
    :goto_0
    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 241
    new-instance v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 242
    new-instance v1, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    const/4 v2, 0x3

    const/16 v3, 0x8

    .line 243
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    .line 242
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_2
    invoke-static {v0}, Landroid/bluetooth/BluetoothUtils;->serializeTypeValue(Ljava/util/List;)[B

    move-result-object v1

    .line 246
    .local v1, "rawBytes":[B
    if-eqz v1, :cond_3

    .line 249
    new-instance v2, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iget-wide v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v1, v5}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(J[BLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata-IA;)V

    return-object v2

    .line 247
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to serialize entries to bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist setAudioLocation(J)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    .locals 0
    .param p1, "audioLocation"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 218
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 219
    return-object p0
.end method
