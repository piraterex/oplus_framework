.class public final Landroid/media/MediaPlayer$DrmInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmInfo"
.end annotation


# instance fields
.field private greylist-max-o mapPssh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o supportedSchemes:[Ljava/util/UUID;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmakeCopy(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaPlayer$DrmInfo;->makeCopy()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 5335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5339
    .local v0, "psshsize":I
    new-array v2, v0, [B

    .line 5340
    .local v2, "pssh":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 5342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfo() PSSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5343
    invoke-direct {p0, v2, v0}, Landroid/media/MediaPlayer$DrmInfo;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 5344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5347
    .local v3, "supportedDRMsCount":I
    new-array v4, v3, [Ljava/util/UUID;

    iput-object v4, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 5348
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 5349
    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 5350
    .local v5, "uuid":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 5352
    iget-object v6, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v5}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v7

    aput-object v7, v6, v4

    .line 5354
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrmInfo() supportedScheme["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5348
    .end local v5    # "uuid":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5358
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmInfo() Parcel psshsize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supportedDRMsCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5360
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/MediaPlayer$DrmInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .locals 0
    .param p2, "SupportedSchemes"    # [Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;[",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 5330
    .local p1, "Pssh":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5331
    iput-object p1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 5332
    iput-object p2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 5333
    return-void
.end method

.method private greylist-max-o arrToHex([B)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B

    .line 5367
    const-string v0, "0x"

    .line 5368
    .local v0, "out":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5372
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private greylist-max-o bytesToUUID([B)Ljava/util/UUID;
    .locals 11
    .param p1, "uuid"    # [B

    .line 5376
    const-wide/16 v0, 0x0

    .local v0, "msb":J
    const-wide/16 v2, 0x0

    .line 5377
    .local v2, "lsb":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 5378
    aget-byte v6, p1, v4

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    rsub-int/lit8 v10, v4, 0x7

    mul-int/2addr v10, v5

    shl-long/2addr v6, v10

    or-long/2addr v0, v6

    .line 5379
    add-int/lit8 v6, v4, 0x8

    aget-byte v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    rsub-int/lit8 v8, v4, 0x7

    mul-int/2addr v8, v5

    shl-long v5, v6, v8

    or-long/2addr v2, v5

    .line 5377
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5382
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method private greylist-max-o makeCopy()Landroid/media/MediaPlayer$DrmInfo;
    .locals 3

    .line 5363
    new-instance v0, Landroid/media/MediaPlayer$DrmInfo;

    iget-object v1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    iget-object v2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private greylist-max-o parsePSSH([BI)Ljava/util/Map;
    .locals 18
    .param p1, "pssh"    # [B
    .param p2, "psshsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 5386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5388
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    const/16 v3, 0x10

    .line 5389
    .local v3, "UUID_SIZE":I
    const/4 v4, 0x4

    .line 5391
    .local v4, "DATALEN_SIZE":I
    move/from16 v5, p2

    .line 5392
    .local v5, "len":I
    const/4 v6, 0x0

    .line 5393
    .local v6, "numentries":I
    const/4 v7, 0x0

    .line 5395
    .local v7, "i":I
    :goto_0
    if-lez v5, :cond_4

    .line 5396
    const/4 v8, 0x0

    const-string v9, "MediaPlayer"

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v5, v10, :cond_0

    .line 5397
    new-array v10, v12, [Ljava/lang/Object;

    .line 5398
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    .line 5397
    const-string v11, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5399
    return-object v8

    .line 5402
    :cond_0
    add-int/lit8 v14, v7, 0x10

    invoke-static {v1, v7, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 5403
    .local v14, "subset":[B
    invoke-direct {v0, v14}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v15

    .line 5404
    .local v15, "uuid":Ljava/util/UUID;
    add-int/lit8 v7, v7, 0x10

    .line 5405
    add-int/lit8 v5, v5, -0x10

    .line 5408
    const/4 v10, 0x4

    if-ge v5, v10, :cond_1

    .line 5409
    new-array v10, v12, [Ljava/lang/Object;

    .line 5410
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    .line 5409
    const-string v11, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5411
    return-object v8

    .line 5414
    :cond_1
    add-int/lit8 v10, v7, 0x4

    invoke-static {v1, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 5415
    .end local v14    # "subset":[B
    .local v10, "subset":[B
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v11, 0x3

    if-ne v14, v8, :cond_2

    .line 5417
    aget-byte v8, v10, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    aget-byte v14, v10, v12

    and-int/lit16 v14, v14, 0xff

    const/16 v16, 0x10

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v8, v14

    aget-byte v14, v10, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v8, v14

    const/4 v14, 0x0

    aget-byte v11, v10, v14

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v8, v11

    goto :goto_1

    .line 5419
    :cond_2
    const/4 v14, 0x0

    aget-byte v8, v10, v14

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    aget-byte v11, v10, v13

    and-int/lit16 v11, v11, 0xff

    const/16 v14, 0x10

    shl-int/2addr v11, v14

    or-int/2addr v8, v11

    aget-byte v11, v10, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v8, v11

    const/4 v11, 0x3

    aget-byte v14, v10, v11

    and-int/lit16 v11, v14, 0xff

    or-int/2addr v8, v11

    :goto_1
    nop

    .line 5420
    .local v8, "datalen":I
    add-int/lit8 v7, v7, 0x4

    .line 5421
    add-int/lit8 v5, v5, -0x4

    .line 5423
    if-ge v5, v8, :cond_3

    .line 5424
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 5425
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v11, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 5424
    const-string v12, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    const/4 v9, 0x0

    return-object v9

    .line 5429
    :cond_3
    add-int v11, v7, v8

    invoke-static {v1, v7, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 5432
    .local v11, "data":[B
    add-int/2addr v7, v8

    .line 5433
    sub-int/2addr v5, v8

    .line 5435
    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    .line 5436
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v14, v17

    aput-object v15, v14, v13

    invoke-direct {v0, v11}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v14, v13

    .line 5435
    const-string v12, "parsePSSH[%d]: <%s, %s> pssh: %d"

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    add-int/lit8 v6, v6, 0x1

    .line 5438
    invoke-interface {v2, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5439
    .end local v8    # "datalen":I
    .end local v10    # "subset":[B
    .end local v11    # "data":[B
    .end local v15    # "uuid":Ljava/util/UUID;
    goto/16 :goto_0

    .line 5441
    :cond_4
    return-object v2
.end method


# virtual methods
.method public whitelist getPssh()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 5318
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getSupportedSchemes()[Ljava/util/UUID;
    .locals 1

    .line 5327
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    return-object v0
.end method
