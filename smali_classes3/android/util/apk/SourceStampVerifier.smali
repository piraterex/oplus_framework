.class public abstract Landroid/util/apk/SourceStampVerifier;
.super Ljava/lang/Object;
.source "SourceStampVerifier.java"


# static fields
.field private static final blacklist APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final blacklist APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field private static final blacklist PROOF_OF_ROTATION_ATTR_ID:I = -0x629cfc09

.field private static final blacklist SOURCE_STAMP_BLOCK_ID:I = 0x6dff800d

.field private static final blacklist SOURCE_STAMP_CERTIFICATE_HASH_ZIP_ENTRY_NAME:Ljava/lang/String; = "stamp-cert-sha256"

.field private static final blacklist TAG:Ljava/lang/String; = "SourceStampVerifier"

.field private static final blacklist VERSION_APK_SIGNATURE_SCHEME_V2:I = 0x2

.field private static final blacklist VERSION_APK_SIGNATURE_SCHEME_V3:I = 0x3

.field private static final blacklist VERSION_JAR_SIGNATURE_SCHEME:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method private static blacklist closeApkJar(Landroid/util/jar/StrictJarFile;)V
    .locals 3
    .param p0, "apkJar"    # Landroid/util/jar/StrictJarFile;

    .line 501
    if-nez p0, :cond_0

    .line 502
    return-void

    .line 504
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SourceStampVerifier"

    const-string v2, "Could not close APK jar"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static blacklist computeSha256Digest([B)[B
    .locals 3
    .param p0, "input"    # [B

    .line 491
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 492
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 493
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 494
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to find SHA-256"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist encodeApkContentDigests(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;)[B"
        }
    .end annotation

    .line 433
    .local p0, "apkContentDigests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    const/4 v0, 0x0

    .line 434
    .local v0, "resultSize":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 435
    .local v2, "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [B

    array-length v3, v3

    add-int/lit8 v3, v3, 0xc

    add-int/2addr v0, v3

    .line 436
    .end local v2    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    goto :goto_0

    .line 437
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 438
    .local v1, "result":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 439
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 440
    .local v3, "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [B

    .line 441
    .local v4, "second":[B
    array-length v5, v4

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 442
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 443
    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 444
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 445
    .end local v3    # "element":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;[B>;"
    .end local v4    # "second":[B
    goto :goto_1

    .line 446
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 10
    .param p0, "signatureBlock"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v0, "apkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 376
    .local v1, "signers":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 378
    .local v2, "signer":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 379
    .local v3, "signedData":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 380
    .local v4, "digests":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 382
    .local v5, "digest":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 383
    .local v6, "sigAlgorithm":I
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 384
    .local v7, "contentDigest":[B
    invoke-static {v6}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v8

    .line 385
    .local v8, "digestAlgorithm":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .end local v5    # "digest":Ljava/nio/ByteBuffer;
    .end local v6    # "sigAlgorithm":I
    .end local v7    # "contentDigest":[B
    .end local v8    # "digestAlgorithm":I
    goto :goto_1

    .line 387
    .end local v2    # "signer":Ljava/nio/ByteBuffer;
    .end local v3    # "signedData":Ljava/nio/ByteBuffer;
    .end local v4    # "digests":Ljava/nio/ByteBuffer;
    :cond_0
    goto :goto_0

    .line 388
    :cond_1
    return-object v0
.end method

.method private static blacklist getApkDigests(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    .line 406
    .local p0, "apkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v0, "digests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 408
    .local v2, "apkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v2    # "apkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    goto :goto_0

    .line 410
    :cond_0
    new-instance v1, Landroid/util/apk/SourceStampVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/util/apk/SourceStampVerifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 411
    return-object v0
.end method

.method private static blacklist getManifestBytes(Landroid/util/jar/StrictJarFile;)[B
    .locals 2
    .param p0, "apkJar"    # Landroid/util/jar/StrictJarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 426
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 427
    const/4 v1, 0x0

    return-object v1

    .line 429
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getSignatureSchemeApkContentDigests(Ljava/io/RandomAccessFile;[B)Ljava/util/Map;
    .locals 4
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "manifestBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v0, "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    const v1, -0xfac9740

    .line 341
    :try_start_0
    invoke-static {p0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 342
    .local v1, "v3SignatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v2, 0x3

    .line 343
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 344
    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v3

    .line 342
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    nop

    .end local v1    # "v3SignatureInfo":Landroid/util/apk/SignatureInfo;
    goto :goto_0

    .line 345
    :catch_0
    move-exception v1

    .line 351
    :goto_0
    const v1, 0x7109871a

    .line 352
    :try_start_1
    invoke-static {p0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v1

    .line 353
    .local v1, "v2SignatureInfo":Landroid/util/apk/SignatureInfo;
    const/4 v2, 0x2

    .line 354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, v1, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 355
    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->getApkContentDigestsFromSignatureBlock(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v3

    .line 353
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    nop

    .end local v1    # "v2SignatureInfo":Landroid/util/apk/SignatureInfo;
    goto :goto_1

    .line 356
    :catch_1
    move-exception v1

    .line 361
    :goto_1
    if-eqz p1, :cond_0

    .line 362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v1, "jarSignatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v2, 0x4

    .line 364
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Landroid/util/apk/SourceStampVerifier;->computeSha256Digest([B)[B

    move-result-object v3

    .line 363
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v2, 0x1

    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 365
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .end local v1    # "jarSignatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :cond_0
    return-object v0
.end method

.method private static blacklist getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    .line 393
    .local p0, "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v0, "digests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 396
    .local v2, "signatureSchemeApkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    nop

    .line 397
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->getApkDigests(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    .line 398
    .local v3, "apkDigests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    nop

    .line 399
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->encodeApkContentDigests(Ljava/util/List;)[B

    move-result-object v5

    .line 398
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    .end local v2    # "signatureSchemeApkContentDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    .end local v3    # "apkDigests":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;[B>;>;"
    goto :goto_0

    .line 401
    :cond_0
    return-object v0
.end method

.method private static blacklist getSourceStampCertificateDigest(Landroid/util/jar/StrictJarFile;)[B
    .locals 2
    .param p0, "apkJar"    # Landroid/util/jar/StrictJarFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    const-string/jumbo v0, "stamp-cert-sha256"

    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 416
    .local v0, "zipEntry":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_0

    .line 419
    const/4 v1, 0x0

    return-object v1

    .line 421
    :cond_0
    invoke-virtual {p0, v0}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getApkDigests$0(Landroid/util/Pair;)Ljava/lang/Integer;
    .locals 1
    .param p0, "pair"    # Landroid/util/Pair;

    .line 410
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method private static blacklist verify(Landroid/util/apk/SignatureInfo;Ljava/util/Map;[B)Landroid/util/apk/SourceStampVerificationResult;
    .locals 10
    .param p0, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .param p2, "sourceStampCertificateDigest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/apk/SignatureInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;[B)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    .local p1, "signatureSchemeDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    iget-object v0, p0, Landroid/util/apk/SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 165
    .local v0, "sourceStampBlock":Ljava/nio/ByteBuffer;
    nop

    .line 166
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 168
    .local v1, "sourceStampBlockData":Ljava/nio/ByteBuffer;
    nop

    .line 169
    invoke-static {v1, p2}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampCertificate(Ljava/nio/ByteBuffer;[B)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 172
    .local v2, "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    nop

    .line 173
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 174
    .local v3, "signedSignatureSchemes":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v4, "signedSignatureSchemeData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    nop

    .line 177
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 178
    .local v5, "signedSignatureScheme":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 179
    .local v6, "signatureSchemeId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v5    # "signedSignatureScheme":Ljava/nio/ByteBuffer;
    .end local v6    # "signatureSchemeId":I
    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 183
    .local v6, "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 189
    nop

    .line 190
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 189
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 191
    .local v7, "signatures":Ljava/nio/ByteBuffer;
    nop

    .line 192
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 191
    invoke-static {v8, v2, v7}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V

    .line 195
    .end local v6    # "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    .end local v7    # "signatures":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 184
    .restart local v6    # "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    :cond_1
    new-instance v5, Ljava/lang/SecurityException;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 187
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    .line 185
    const-string v8, "No signatures found for signature scheme %d"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 197
    .end local v6    # "signatureSchemeDigest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[B>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 198
    .local v5, "sourceStampCertificateLineage":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 200
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 201
    .local v6, "stampAttributeData":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 203
    .local v7, "stampAttributeDataSignatures":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    new-array v8, v8, [B

    .line 204
    .local v8, "stampAttributeBytes":[B
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 207
    invoke-static {v8, v2, v7}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V

    .line 209
    nop

    .line 210
    invoke-static {v6, v2}, Landroid/util/apk/SourceStampVerifier;->verifySourceStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v9

    .line 211
    .local v9, "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    if-eqz v9, :cond_3

    .line 212
    iget-object v5, v9, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 216
    .end local v6    # "stampAttributeData":Ljava/nio/ByteBuffer;
    .end local v7    # "stampAttributeDataSignatures":Ljava/nio/ByteBuffer;
    .end local v8    # "stampAttributeBytes":[B
    .end local v9    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :cond_3
    invoke-static {v2, v5}, Landroid/util/apk/SourceStampVerificationResult;->verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v6

    return-object v6
.end method

.method private static blacklist verify(Ljava/io/RandomAccessFile;[B[B)Landroid/util/apk/SourceStampVerificationResult;
    .locals 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "sourceStampCertificateDigest"    # [B
    .param p2, "manifestBytes"    # [B

    .line 146
    const v0, 0x6dff800d

    .line 147
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;

    move-result-object v0

    .line 148
    .local v0, "signatureInfo":Landroid/util/apk/SignatureInfo;
    nop

    .line 149
    invoke-static {p0, p2}, Landroid/util/apk/SourceStampVerifier;->getSignatureSchemeApkContentDigests(Ljava/io/RandomAccessFile;[B)Ljava/util/Map;

    move-result-object v1

    .line 150
    .local v1, "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    nop

    .line 152
    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->getSignatureSchemeDigests(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 150
    invoke-static {v0, v2, p1}, Landroid/util/apk/SourceStampVerifier;->verify(Landroid/util/apk/SignatureInfo;Ljava/util/Map;[B)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 154
    .end local v0    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    .end local v1    # "signatureSchemeApkContentDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;[B>;>;"
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notVerified()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;
    .locals 5
    .param p0, "apkFile"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "apkJar":Landroid/util/jar/StrictJarFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 121
    .local v1, "apk":Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v2, Landroid/util/jar/StrictJarFile;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v3}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v2

    .line 126
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->getSourceStampCertificateDigest(Landroid/util/jar/StrictJarFile;)[B

    move-result-object v2

    .line 127
    .local v2, "sourceStampCertificateDigest":[B
    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 139
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 130
    return-object v3

    .line 132
    :cond_0
    :try_start_3
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->getManifestBytes(Landroid/util/jar/StrictJarFile;)[B

    move-result-object v3

    .line 133
    .local v3, "manifestBytes":[B
    invoke-static {v1, v2, v3}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/io/RandomAccessFile;[B[B)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 139
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 133
    return-object v4

    .line 120
    .end local v2    # "sourceStampCertificateDigest":[B
    .end local v3    # "manifestBytes":[B
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "apkJar":Landroid/util/jar/StrictJarFile;
    .end local p0    # "apkFile":Ljava/lang/String;
    :goto_0
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 139
    .end local v1    # "apk":Ljava/io/RandomAccessFile;
    .restart local v0    # "apkJar":Landroid/util/jar/StrictJarFile;
    .restart local p0    # "apkFile":Ljava/lang/String;
    :catchall_2
    move-exception v1

    goto :goto_1

    .line 134
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notPresent()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 139
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 137
    return-object v2

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Landroid/util/apk/SourceStampVerifier;->closeApkJar(Landroid/util/jar/StrictJarFile;)V

    .line 140
    throw v1
.end method

.method public static blacklist verify(Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/apk/SourceStampVerificationResult;"
        }
    .end annotation

    .line 97
    .local p0, "apkFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 98
    .local v0, "stampCertificate":Ljava/security/cert/Certificate;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "stampCertificateLineage":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "apkFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/apk/SourceStampVerifier;->verify(Ljava/lang/String;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v4

    .line 101
    .local v4, "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->isVerified()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificateLineage()Ljava/util/List;

    move-result-object v5

    .line 107
    invoke-interface {v1, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 109
    :cond_1
    invoke-static {}, Landroid/util/apk/SourceStampVerificationResult;->notVerified()Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2

    return-object v2

    .line 111
    :cond_2
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    .line 112
    invoke-virtual {v4}, Landroid/util/apk/SourceStampVerificationResult;->getCertificateLineage()Ljava/util/List;

    move-result-object v1

    .line 113
    .end local v3    # "apkFile":Ljava/lang/String;
    .end local v4    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    goto :goto_0

    .line 103
    .restart local v3    # "apkFile":Ljava/lang/String;
    .restart local v4    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :cond_3
    :goto_1
    return-object v4

    .line 114
    .end local v3    # "apkFile":Ljava/lang/String;
    .end local v4    # "sourceStampVerificationResult":Landroid/util/apk/SourceStampVerificationResult;
    :cond_4
    invoke-static {v0, v1}, Landroid/util/apk/SourceStampVerificationResult;->verified(Ljava/security/cert/Certificate;Ljava/util/List;)Landroid/util/apk/SourceStampVerificationResult;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist verifySourceStampAttributes(Ljava/nio/ByteBuffer;Ljava/security/cert/X509Certificate;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .locals 8
    .param p0, "stampAttributeData"    # Ljava/nio/ByteBuffer;
    .param p1, "sourceStampCertificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 459
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 460
    .local v1, "stampAttributes":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 461
    .local v2, "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 462
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 463
    .local v3, "attribute":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 464
    .local v4, "id":I
    const v5, -0x629cfc09

    if-ne v4, v5, :cond_3

    .line 465
    if-nez v2, :cond_2

    .line 469
    invoke-static {v3, v0}, Landroid/util/apk/ApkSigningBlockUtils;->verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    move-result-object v2

    .line 473
    :try_start_1
    iget-object v5, v2, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, v2, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    iget-object v6, v2, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;->certs:Ljava/util/List;

    .line 475
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 474
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 475
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    .line 476
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    .line 474
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 477
    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Terminal certificate in Proof-of-rotation record does not match source stamp certificate"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "stampAttributes":Ljava/nio/ByteBuffer;
    .end local v2    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .end local v3    # "attribute":Ljava/nio/ByteBuffer;
    .end local v4    # "id":I
    .end local p0    # "stampAttributeData":Ljava/nio/ByteBuffer;
    .end local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    throw v5
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 483
    .restart local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "stampAttributes":Ljava/nio/ByteBuffer;
    .restart local v2    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .restart local v3    # "attribute":Ljava/nio/ByteBuffer;
    .restart local v4    # "id":I
    .restart local p0    # "stampAttributeData":Ljava/nio/ByteBuffer;
    .restart local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    :cond_1
    :goto_1
    goto :goto_2

    .line 480
    :catch_0
    move-exception v5

    .line 481
    .local v5, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Failed to encode certificate when comparing Proof-of-rotation record and source stamp certificate"

    invoke-direct {v6, v7, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 466
    .end local v5    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_2
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Encountered multiple Proof-of-rotation records when verifying source stamp signature"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 485
    .end local v3    # "attribute":Ljava/nio/ByteBuffer;
    .end local v4    # "id":I
    :cond_3
    :goto_2
    goto :goto_0

    .line 486
    :cond_4
    return-object v2

    .line 456
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "stampAttributes":Ljava/nio/ByteBuffer;
    .end local v2    # "verifiedProofOfRotation":Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    :catch_1
    move-exception v0

    .line 457
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist verifySourceStampCertificate(Ljava/nio/ByteBuffer;[B)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "sourceStampBlockData"    # Ljava/nio/ByteBuffer;
    .param p1, "sourceStampCertificateDigest"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    nop

    .line 240
    nop

    .line 241
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 244
    .local v1, "sourceStampEncodedCertificate":[B
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 246
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    .local v2, "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    nop

    .line 252
    nop

    .line 253
    invoke-static {v1}, Landroid/util/apk/SourceStampVerifier;->computeSha256Digest([B)[B

    move-result-object v3

    .line 254
    .local v3, "sourceStampBlockCertificateDigest":[B
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    new-instance v4, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v4, v2, v1}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v4

    .line 255
    :cond_0
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Certificate mismatch between APK and signature block"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    .end local v2    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .end local v3    # "sourceStampBlockCertificateDigest":[B
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Failed to decode certificate"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 235
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "sourceStampEncodedCertificate":[B
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist verifySourceStampSignature([BLjava/security/cert/X509Certificate;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p0, "data"    # [B
    .param p1, "sourceStampCertificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "signatures"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "signatureCount":I
    const/4 v1, -0x1

    .line 277
    .local v1, "bestSigAlgorithm":I
    const/4 v2, 0x0

    .line 278
    .local v2, "bestSigAlgorithmSignatureBytes":[B
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    .line 279
    add-int/lit8 v0, v0, 0x1

    .line 281
    :try_start_0
    invoke-static {p2}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 282
    .local v3, "signature":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_3

    .line 285
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 286
    .local v5, "sigAlgorithm":I
    invoke-static {v5}, Landroid/util/apk/ApkSigningBlockUtils;->isSupportedSignatureAlgorithm(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 287
    goto :goto_0

    .line 289
    :cond_0
    if-eq v1, v4, :cond_1

    .line 290
    invoke-static {v5, v1}, Landroid/util/apk/ApkSigningBlockUtils;->compareSignatureAlgorithm(II)I

    move-result v4

    if-lez v4, :cond_2

    .line 291
    :cond_1
    move v1, v5

    .line 292
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    move-object v2, v4

    .line 297
    .end local v3    # "signature":Ljava/nio/ByteBuffer;
    .end local v5    # "sigAlgorithm":I
    :cond_2
    goto :goto_0

    .line 283
    .restart local v3    # "signature":Ljava/nio/ByteBuffer;
    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Signature record too short"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "signatureCount":I
    .end local v1    # "bestSigAlgorithm":I
    .end local v2    # "bestSigAlgorithmSignatureBytes":[B
    .end local p0    # "data":[B
    .end local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .end local p2    # "signatures":Ljava/nio/ByteBuffer;
    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v3    # "signature":Ljava/nio/ByteBuffer;
    .restart local v0    # "signatureCount":I
    .restart local v1    # "bestSigAlgorithm":I
    .restart local v2    # "bestSigAlgorithmSignatureBytes":[B
    .restart local p0    # "data":[B
    .restart local p1    # "sourceStampCertificate":Ljava/security/cert/X509Certificate;
    .restart local p2    # "signatures":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 295
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse signature record #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 299
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    if-ne v1, v4, :cond_6

    .line 300
    if-nez v0, :cond_5

    .line 301
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "No signatures found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 303
    :cond_5
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "No supported signatures found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 308
    :cond_6
    nop

    .line 309
    invoke-static {v1}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v3

    .line 310
    .local v3, "signatureAlgorithmParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 311
    .local v4, "jcaSignatureAlgorithm":Ljava/lang/String;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/security/spec/AlgorithmParameterSpec;

    .line 312
    .local v5, "jcaSignatureAlgorithmParams":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    .line 315
    .local v6, "publicKey":Ljava/security/PublicKey;
    :try_start_1
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    .line 316
    .local v7, "sig":Ljava/security/Signature;
    invoke-virtual {v7, v6}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 317
    if-eqz v5, :cond_7

    .line 318
    invoke-virtual {v7, v5}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 320
    :cond_7
    invoke-virtual {v7, p0}, Ljava/security/Signature;->update([B)V

    .line 321
    invoke-virtual {v7, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v8
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v8

    .line 328
    .local v7, "sigVerified":Z
    nop

    .line 329
    if-eqz v7, :cond_8

    .line 332
    return-void

    .line 330
    :cond_8
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " signature did not verify"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 322
    .end local v7    # "sigVerified":Z
    :catch_1
    move-exception v7

    .line 326
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to verify "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " signature"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method
