.class public final Landroid/os/incremental/IncrementalStorage;
.super Ljava/lang/Object;
.source "IncrementalStorage.java"


# static fields
.field private static final blacklist INCFS_MAX_ADD_DATA_SIZE:I = 0x80

.field private static final blacklist INCFS_MAX_HASH_SIZE:I = 0x20

.field private static final blacklist TAG:Ljava/lang/String; = "IncrementalStorage"

.field private static final blacklist UUID_BYTE_SIZE:I = 0x10


# instance fields
.field private final blacklist mId:I

.field private final blacklist mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/IIncrementalService;I)V
    .locals 0
    .param p1, "is"    # Landroid/os/incremental/IIncrementalService;
    .param p2, "id"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    .line 52
    iput p2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    .line 53
    return-void
.end method

.method public static blacklist bytesToId([B)Ljava/util/UUID;
    .locals 6
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 461
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 465
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 466
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    .line 467
    .local v1, "msb":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 468
    .local v3, "lsb":J
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v5

    .line 462
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "msb":J
    .end local v3    # "lsb":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected array of size 16, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist idToBytes(Ljava/util/UUID;)[B
    .locals 3
    .param p0, "id"    # Ljava/util/UUID;

    .line 444
    if-nez p0, :cond_0

    .line 445
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 447
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 449
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 450
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist validateV4Signature([B)V
    .locals 6
    .param p0, "v4signatureBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 490
    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 496
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .local v0, "signature":Landroid/os/incremental/V4Signature;
    nop

    .line 501
    invoke-virtual {v0}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 506
    iget-object v1, v0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v1

    .line 508
    .local v1, "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    iget-object v2, v0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {v2}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object v2

    .line 511
    .local v2, "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    iget v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 514
    iget-byte v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    .line 517
    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    array-length v3, v3

    if-gtz v3, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported salt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 520
    :cond_2
    :goto_0
    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    array-length v3, v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 523
    iget-object v3, v2, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    iget-object v3, v3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    array-length v3, v3

    const/16 v4, 0x80

    if-gt v3, v4, :cond_3

    .line 527
    return-void

    .line 524
    :cond_3
    new-instance v3, Ljava/io/IOException;

    const-string v4, "additionalData has to be at most 128 bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 521
    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "rawRootHash has to be 32 bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 515
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported log2BlockSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 512
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported hashAlgorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 502
    .end local v1    # "hashingInfo":Landroid/os/incremental/V4Signature$HashingInfo;
    .end local v2    # "signingInfos":Landroid/os/incremental/V4Signature$SigningInfos;
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v4 signature version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    .end local v0    # "signature":Landroid/os/incremental/V4Signature;
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to read v4 signature:"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 491
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist bind(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public blacklist bind(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 87
    .end local v0    # "res":I
    goto :goto_0

    .line 83
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "targetPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;)V
    .locals 1
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bindPermanent(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public blacklist bindPermanent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 118
    .end local v0    # "res":I
    goto :goto_0

    .line 114
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind() permanent failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "targetPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 119
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "apkFullPath"    # Ljava/lang/String;
    .param p2, "libDirRelativePath"    # Ljava/lang/String;
    .param p3, "abi"    # Ljava/lang/String;
    .param p4, "extractNativeLibs"    # Z

    .line 544
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 548
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist disallowReadLogs()V
    .locals 2

    .line 479
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->disallowReadLogs(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 483
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist getFileMetadata(Ljava/lang/String;)[B
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 376
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 379
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getFileMetadata(Ljava/util/UUID;)[B
    .locals 3
    .param p1, "id"    # Ljava/util/UUID;

    .line 392
    :try_start_0
    invoke-static {p1}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    .line 393
    .local v0, "rawId":[B
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, v0}, Landroid/os/incremental/IIncrementalService;->getMetadataById(I[B)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 394
    .end local v0    # "rawId":[B
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 396
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getId()I
    .locals 1

    .line 56
    iget v0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    return v0
.end method

.method public blacklist getLoadingProgress()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->getLoadingProgress(I)F

    move-result v1

    .line 356
    .local v1, "res":F
    cmpg-float v2, v1, v0

    if-ltz v2, :cond_0

    .line 360
    return v1

    .line 357
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLoadingProgress() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-float v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v1    # "res":F
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 363
    return v0
.end method

.method public blacklist getMetrics()Landroid/os/PersistableBundle;
    .locals 2

    .line 597
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 600
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist isFileFullyLoaded(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, p1}, Landroid/os/incremental/IIncrementalService;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result v1

    .line 320
    .local v1, "res":I
    if-ltz v1, :cond_1

    .line 323
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 321
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFileFullyLoaded() failed, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 326
    return v0
.end method

.method public blacklist isFullyLoaded()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->isFullyLoaded(I)I

    move-result v1

    .line 337
    .local v1, "res":I
    if-ltz v1, :cond_1

    .line 341
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 338
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFullyLoaded() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 344
    return v0
.end method

.method public blacklist makeDirectories(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectories(ILjava/lang/String;)I

    move-result v0

    .line 162
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 167
    .end local v0    # "res":I
    goto :goto_0

    .line 163
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDirectory() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist makeDirectory(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectory(ILjava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 150
    .end local v0    # "res":I
    goto :goto_0

    .line 146
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDirectory() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist makeFile(Ljava/lang/String;JLjava/util/UUID;[B[B[B)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "id"    # Ljava/util/UUID;
    .param p5, "metadata"    # [B
    .param p6, "v4signatureBytes"    # [B
    .param p7, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    if-nez p4, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File ID and metadata cannot both be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "size":J
    .end local p4    # "id":Ljava/util/UUID;
    .end local p5    # "metadata":[B
    .end local p6    # "v4signatureBytes":[B
    .end local p7    # "content":[B
    throw v0

    .line 186
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "size":J
    .restart local p4    # "id":Ljava/util/UUID;
    .restart local p5    # "metadata":[B
    .restart local p6    # "v4signatureBytes":[B
    .restart local p7    # "content":[B
    :cond_1
    :goto_0
    invoke-static {p6}, Landroid/os/incremental/IncrementalStorage;->validateV4Signature([B)V

    .line 187
    new-instance v0, Landroid/os/incremental/IncrementalNewFileParams;

    invoke-direct {v0}, Landroid/os/incremental/IncrementalNewFileParams;-><init>()V

    .line 188
    .local v0, "params":Landroid/os/incremental/IncrementalNewFileParams;
    iput-wide p2, v0, Landroid/os/incremental/IncrementalNewFileParams;->size:J

    .line 189
    if-nez p5, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_1

    :cond_2
    move-object v1, p5

    :goto_1
    iput-object v1, v0, Landroid/os/incremental/IncrementalNewFileParams;->metadata:[B

    .line 190
    invoke-static {p4}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/os/incremental/IncrementalNewFileParams;->fileId:[B

    .line 191
    iput-object p6, v0, Landroid/os/incremental/IncrementalNewFileParams;->signature:[B

    .line 192
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, p1, v0, p7}, Landroid/os/incremental/IIncrementalService;->makeFile(ILjava/lang/String;Landroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result v1

    .line 193
    .local v1, "res":I
    if-nez v1, :cond_3

    .line 198
    .end local v0    # "params":Landroid/os/incremental/IncrementalNewFileParams;
    .end local v1    # "res":I
    goto :goto_2

    .line 194
    .restart local v0    # "params":Landroid/os/incremental/IncrementalNewFileParams;
    .restart local v1    # "res":I
    :cond_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeFile() failed with errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "size":J
    .end local p4    # "id":Ljava/util/UUID;
    .end local p5    # "metadata":[B
    .end local p6    # "v4signatureBytes":[B
    .end local p7    # "content":[B
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "params":Landroid/os/incremental/IncrementalNewFileParams;
    .end local v1    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "size":J
    .restart local p4    # "id":Ljava/util/UUID;
    .restart local p5    # "metadata":[B
    .restart local p6    # "v4signatureBytes":[B
    .restart local p7    # "content":[B
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 199
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public blacklist makeFileFromRange(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "sourcePath"    # Ljava/lang/String;
    .param p3, "rangeStart"    # J
    .param p5, "rangeEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/os/incremental/IIncrementalService;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result v0

    .line 216
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 221
    .end local v0    # "res":I
    goto :goto_0

    .line 217
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeFileFromRange() failed, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "destPath":Ljava/lang/String;
    .end local p2    # "sourcePath":Ljava/lang/String;
    .end local p3    # "rangeStart":J
    .end local p5    # "rangeEnd":J
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "destPath":Ljava/lang/String;
    .restart local p2    # "sourcePath":Ljava/lang/String;
    .restart local p3    # "rangeStart":J
    .restart local p5    # "rangeEnd":J
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .locals 4
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destStorage"    # Landroid/os/incremental/IncrementalStorage;
    .param p3, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p3}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 242
    .end local v0    # "res":I
    goto :goto_0

    .line 238
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeLink() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "destStorage":Landroid/os/incremental/IncrementalStorage;
    .end local p3    # "destPath":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "destStorage":Landroid/os/incremental/IncrementalStorage;
    .restart local p3    # "destPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 243
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist moveDir(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 304
    .end local v0    # "res":I
    goto :goto_0

    .line 300
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveDir() failed at making bind mount, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcePath":Ljava/lang/String;
    .end local p2    # "destPath":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcePath":Ljava/lang/String;
    .restart local p2    # "destPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    goto :goto_1

    .line 307
    :catch_1
    move-exception v0

    .line 309
    :goto_1
    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "moveDir() requires that destination dir already exists."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sourcepath"    # Ljava/lang/String;
    .param p2, "destpath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1, v1, p2}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 277
    .end local v0    # "res":I
    goto :goto_0

    .line 273
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveFile() failed at makeLink(), errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "sourcepath":Ljava/lang/String;
    .end local p2    # "destpath":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "sourcepath":Ljava/lang/String;
    .restart local p2    # "destpath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    .line 282
    :goto_1
    return-void
.end method

.method public blacklist onInstallationComplete()V
    .locals 2

    .line 427
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->onInstallationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z
    .locals 2
    .param p1, "listener"    # Landroid/os/incremental/IStorageLoadingProgressListener;

    .line 572
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 575
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .locals 7
    .param p1, "dataLoaderParams"    # Landroid/content/pm/DataLoaderParams;
    .param p2, "statusListener"    # Landroid/content/pm/IDataLoaderStatusListener;
    .param p3, "healthCheckParams"    # Landroid/os/incremental/StorageHealthCheckParams;
    .param p4, "healthListener"    # Landroid/os/incremental/IStorageHealthListener;
    .param p5, "perUidReadTimeouts"    # [Landroid/os/incremental/PerUidReadTimeouts;

    .line 412
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/incremental/IIncrementalService;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 418
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unBind(Ljava/lang/String;)V
    .locals 4
    .param p1, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 134
    .end local v0    # "res":I
    goto :goto_0

    .line 130
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "targetPath":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "targetPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unlink(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I

    move-result v0

    .line 253
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 258
    .end local v0    # "res":I
    goto :goto_0

    .line 254
    .restart local v0    # "res":I
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlink() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .end local p1    # "path":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0    # "res":I
    .restart local p0    # "this":Landroid/os/incremental/IncrementalStorage;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unregisterLoadingProgressListener()Z
    .locals 2

    .line 584
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->unregisterLoadingProgressListener(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 587
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist waitForNativeBinariesExtraction()Z
    .locals 2

    .line 559
    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->waitForNativeBinariesExtraction(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 562
    const/4 v1, 0x0

    return v1
.end method
