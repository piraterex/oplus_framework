.class public final Landroid/util/apk/ApkSigningBlockUtils;
.super Ljava/lang/Object;
.source "ApkSigningBlockUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;,
        Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;
    }
.end annotation


# static fields
.field private static final blacklist APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final blacklist APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final blacklist APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final blacklist CHUNK_SIZE_BYTES:I = 0x100000

.field public static final blacklist CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field public static final blacklist CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field public static final blacklist CONTENT_DIGEST_SHA256:I = 0x4

.field public static final blacklist CONTENT_DIGEST_VERITY_CHUNKED_SHA256:I = 0x3

.field static final blacklist SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field static final blacklist SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field static final blacklist SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field static final blacklist SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field static final blacklist SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field static final blacklist SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field static final blacklist SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102

.field static final blacklist SIGNATURE_VERITY_DSA_WITH_SHA256:I = 0x425

.field static final blacklist SIGNATURE_VERITY_ECDSA_WITH_SHA256:I = 0x423

.field static final blacklist SIGNATURE_VERITY_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x421


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private static blacklist checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 794
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 797
    return-void

    .line 795
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist compareContentDigestAlgorithm(II)I
    .locals 4
    .param p0, "digestAlgorithm1"    # I
    .param p1, "digestAlgorithm2"    # I

    .line 451
    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, "Unknown digestAlgorithm2: "

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :pswitch_1
    return v3

    .line 477
    :pswitch_2
    return v1

    .line 481
    :pswitch_3
    return v0

    .line 464
    :pswitch_4
    packed-switch p1, :pswitch_data_2

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :pswitch_5
    return v3

    .line 467
    :pswitch_6
    return v0

    .line 453
    :pswitch_7
    packed-switch p1, :pswitch_data_3

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :pswitch_8
    return v1

    .line 455
    :pswitch_9
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method static blacklist compareSignatureAlgorithm(II)I
    .locals 3
    .param p0, "sigAlgorithm1"    # I
    .param p1, "sigAlgorithm2"    # I

    .line 445
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v0

    .line 446
    .local v0, "digestAlgorithm1":I
    invoke-static {p1}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    .line 447
    .local v1, "digestAlgorithm2":I
    invoke-static {v0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->compareContentDigestAlgorithm(II)I

    move-result v2

    return v2
.end method

.method public static blacklist computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B
    .locals 7
    .param p0, "digestAlgorithms"    # [I
    .param p1, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 202
    iget-wide v0, p2, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    .line 203
    const-wide/16 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v0

    .line 204
    .local v0, "beforeApkSigningBlock":Landroid/util/apk/DataSource;
    iget-wide v1, p2, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v3, p2, Landroid/util/apk/SignatureInfo;->eocdOffset:J

    iget-wide v5, p2, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    sub-long/2addr v3, v5

    .line 205
    invoke-static {p1, v1, v2, v3, v4}, Landroid/util/apk/DataSource;->create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;

    move-result-object v1

    .line 211
    .local v1, "centralDir":Landroid/util/apk/DataSource;
    iget-object v2, p2, Landroid/util/apk/SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 212
    .local v2, "eocdBuf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 213
    iget-wide v3, p2, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    invoke-static {v2, v3, v4}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    .line 214
    new-instance v3, Landroid/util/apk/ByteBufferDataSource;

    invoke-direct {v3, v2}, Landroid/util/apk/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    .line 216
    .local v3, "eocd":Landroid/util/apk/DataSource;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/util/apk/DataSource;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {p0, v4}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([I[Landroid/util/apk/DataSource;)[[B

    move-result-object v4

    return-object v4
.end method

.method private static blacklist computeContentDigestsPer1MbChunk([I[Landroid/util/apk/DataSource;)[[B
    .locals 29
    .param p0, "digestAlgorithms"    # [I
    .param p1, "contents"    # [Landroid/util/apk/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 233
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    .line 234
    .local v3, "totalChunkCountLong":J
    array-length v0, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_0

    aget-object v7, v2, v6

    .line 235
    .local v7, "input":Landroid/util/apk/DataSource;
    invoke-interface {v7}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/util/apk/ApkSigningBlockUtils;->getChunkCount(J)J

    move-result-wide v8

    add-long/2addr v3, v8

    .line 234
    .end local v7    # "input":Landroid/util/apk/DataSource;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const-wide/32 v6, 0x1fffff

    cmp-long v0, v3, v6

    if-gez v0, :cond_9

    .line 240
    long-to-int v6, v3

    .line 242
    .local v6, "totalChunkCount":I
    array-length v0, v1

    new-array v7, v0, [[B

    .line 243
    .local v7, "digestsOfChunks":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v1

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-ge v0, v8, :cond_1

    .line 244
    aget v8, v1, v0

    .line 245
    .local v8, "digestAlgorithm":I
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v11

    .line 246
    .local v11, "digestOutputSizeBytes":I
    mul-int v12, v6, v11

    add-int/2addr v12, v9

    new-array v9, v12, [B

    .line 248
    .local v9, "concatenationOfChunkCountAndChunkDigests":[B
    const/16 v12, 0x5a

    aput-byte v12, v9, v5

    .line 249
    invoke-static {v6, v9, v10}, Landroid/util/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    .line 253
    aput-object v9, v7, v0

    .line 243
    .end local v8    # "digestAlgorithm":I
    .end local v9    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v11    # "digestOutputSizeBytes":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 256
    .end local v0    # "i":I
    :cond_1
    new-array v8, v9, [B

    .line 257
    .local v8, "chunkContentPrefix":[B
    const/16 v0, -0x5b

    aput-byte v0, v8, v5

    .line 258
    const/4 v11, 0x0

    .line 259
    .local v11, "chunkIndex":I
    array-length v0, v1

    new-array v12, v0, [Ljava/security/MessageDigest;

    .line 260
    .local v12, "mds":[Ljava/security/MessageDigest;
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_2
    array-length v0, v1

    const-string v14, " digest not supported"

    if-ge v13, v0, :cond_2

    .line 261
    aget v0, v1, v13

    .line 262
    invoke-static {v0}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_0
    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    aput-object v0, v12, v13
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    nop

    .line 260
    .end local v15    # "jcaAlgorithmName":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 265
    .restart local v15    # "jcaAlgorithmName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 272
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "i":I
    .end local v15    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;

    invoke-direct {v0, v12}, Landroid/util/apk/ApkSigningBlockUtils$MultipleDigestDataDigester;-><init>([Ljava/security/MessageDigest;)V

    move-object v13, v0

    .line 273
    .local v13, "digester":Landroid/util/apk/DataDigester;
    const/4 v0, 0x0

    .line 274
    .local v0, "dataSourceIndex":I
    array-length v15, v2

    move/from16 v28, v5

    move v5, v0

    move/from16 v0, v28

    .end local v0    # "dataSourceIndex":I
    .local v5, "dataSourceIndex":I
    :goto_3
    if-ge v0, v15, :cond_7

    aget-object v9, v2, v0

    .line 275
    .local v9, "input":Landroid/util/apk/DataSource;
    const-wide/16 v17, 0x0

    .line 276
    .local v17, "inputOffset":J
    invoke-interface {v9}, Landroid/util/apk/DataSource;->size()J

    move-result-wide v19

    move-wide/from16 v21, v17

    move/from16 v18, v11

    move-wide/from16 v10, v19

    .line 277
    .end local v11    # "chunkIndex":I
    .end local v17    # "inputOffset":J
    .local v10, "inputRemaining":J
    .local v18, "chunkIndex":I
    .local v21, "inputOffset":J
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-lez v19, :cond_6

    .line 278
    move-wide/from16 v19, v3

    .end local v3    # "totalChunkCountLong":J
    .local v19, "totalChunkCountLong":J
    const-wide/32 v2, 0x100000

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 279
    .local v2, "chunkSize":I
    const/4 v3, 0x1

    invoke-static {v2, v8, v3}, Landroid/util/apk/ApkSigningBlockUtils;->setUnsignedInt32LittleEndian(I[BI)V

    .line 280
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    array-length v3, v12

    if-ge v4, v3, :cond_3

    .line 281
    aget-object v3, v12, v4

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 280
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x1

    goto :goto_5

    .line 284
    .end local v4    # "i":I
    :cond_3
    move-wide/from16 v3, v21

    .end local v21    # "inputOffset":J
    .local v3, "inputOffset":J
    :try_start_1
    invoke-interface {v9, v13, v3, v4, v2}, Landroid/util/apk/DataSource;->feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    nop

    .line 291
    const/16 v21, 0x0

    move/from16 v22, v6

    move/from16 v6, v21

    .local v6, "i":I
    .local v22, "totalChunkCount":I
    :goto_6
    move-object/from16 v21, v8

    .end local v8    # "chunkContentPrefix":[B
    .local v21, "chunkContentPrefix":[B
    array-length v8, v1

    if-ge v6, v8, :cond_5

    .line 292
    aget v8, v1, v6

    .line 293
    .local v8, "digestAlgorithm":I
    move-object/from16 v23, v9

    .end local v9    # "input":Landroid/util/apk/DataSource;
    .local v23, "input":Landroid/util/apk/DataSource;
    aget-object v9, v7, v6

    .line 294
    .local v9, "concatenationOfChunkCountAndChunkDigests":[B
    nop

    .line 295
    move-object/from16 v24, v13

    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .local v24, "digester":Landroid/util/apk/DataDigester;
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v13

    .line 296
    .local v13, "expectedDigestSizeBytes":I
    move/from16 v25, v8

    .end local v8    # "digestAlgorithm":I
    .local v25, "digestAlgorithm":I
    aget-object v8, v12, v6

    .line 297
    .local v8, "md":Ljava/security/MessageDigest;
    mul-int v26, v18, v13

    move-object/from16 v27, v12

    const/16 v16, 0x5

    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .local v27, "mds":[Ljava/security/MessageDigest;
    add-int/lit8 v12, v26, 0x5

    .line 298
    invoke-virtual {v8, v9, v12, v13}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v12

    .line 302
    .local v12, "actualDigestSizeBytes":I
    if-ne v12, v13, :cond_4

    .line 291
    .end local v8    # "md":Ljava/security/MessageDigest;
    .end local v9    # "concatenationOfChunkCountAndChunkDigests":[B
    .end local v12    # "actualDigestSizeBytes":I
    .end local v13    # "expectedDigestSizeBytes":I
    .end local v25    # "digestAlgorithm":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, v21

    move-object/from16 v9, v23

    move-object/from16 v13, v24

    move-object/from16 v12, v27

    goto :goto_6

    .line 303
    .restart local v8    # "md":Ljava/security/MessageDigest;
    .restart local v9    # "concatenationOfChunkCountAndChunkDigests":[B
    .restart local v12    # "actualDigestSizeBytes":I
    .restart local v13    # "expectedDigestSizeBytes":I
    .restart local v25    # "digestAlgorithm":I
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected output size of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 304
    invoke-virtual {v8}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " digest: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    .end local v8    # "md":Ljava/security/MessageDigest;
    .end local v23    # "input":Landroid/util/apk/DataSource;
    .end local v24    # "digester":Landroid/util/apk/DataDigester;
    .end local v25    # "digestAlgorithm":I
    .end local v27    # "mds":[Ljava/security/MessageDigest;
    .local v9, "input":Landroid/util/apk/DataSource;
    .local v12, "mds":[Ljava/security/MessageDigest;
    .local v13, "digester":Landroid/util/apk/DataDigester;
    :cond_5
    move-object/from16 v23, v9

    move-object/from16 v27, v12

    move-object/from16 v24, v13

    const/16 v16, 0x5

    .line 308
    .end local v6    # "i":I
    .end local v9    # "input":Landroid/util/apk/DataSource;
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v23    # "input":Landroid/util/apk/DataSource;
    .restart local v24    # "digester":Landroid/util/apk/DataDigester;
    .restart local v27    # "mds":[Ljava/security/MessageDigest;
    int-to-long v8, v2

    add-long/2addr v3, v8

    .line 309
    int-to-long v8, v2

    sub-long/2addr v10, v8

    .line 310
    nop

    .end local v2    # "chunkSize":I
    add-int/lit8 v18, v18, 0x1

    .line 311
    move-object/from16 v2, p1

    move-object/from16 v8, v21

    move/from16 v6, v22

    move-object/from16 v9, v23

    move-wide/from16 v21, v3

    move-wide/from16 v3, v19

    goto/16 :goto_4

    .line 285
    .end local v21    # "chunkContentPrefix":[B
    .end local v22    # "totalChunkCount":I
    .end local v23    # "input":Landroid/util/apk/DataSource;
    .end local v24    # "digester":Landroid/util/apk/DataDigester;
    .end local v27    # "mds":[Ljava/security/MessageDigest;
    .restart local v2    # "chunkSize":I
    .local v6, "totalChunkCount":I
    .local v8, "chunkContentPrefix":[B
    .restart local v9    # "input":Landroid/util/apk/DataSource;
    .restart local v12    # "mds":[Ljava/security/MessageDigest;
    .restart local v13    # "digester":Landroid/util/apk/DataDigester;
    :catch_1
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move-object/from16 v27, v12

    move-object/from16 v24, v13

    move-object v6, v0

    .end local v6    # "totalChunkCount":I
    .end local v8    # "chunkContentPrefix":[B
    .end local v9    # "input":Landroid/util/apk/DataSource;
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v21    # "chunkContentPrefix":[B
    .restart local v22    # "totalChunkCount":I
    .restart local v23    # "input":Landroid/util/apk/DataSource;
    .restart local v24    # "digester":Landroid/util/apk/DataDigester;
    .restart local v27    # "mds":[Ljava/security/MessageDigest;
    move-object v0, v6

    .line 286
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/security/DigestException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to digest chunk #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v9, v18

    .end local v18    # "chunkIndex":I
    .local v9, "chunkIndex":I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " of section #"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v0}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 312
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "chunkSize":I
    .end local v19    # "totalChunkCountLong":J
    .end local v22    # "totalChunkCount":I
    .end local v23    # "input":Landroid/util/apk/DataSource;
    .end local v24    # "digester":Landroid/util/apk/DataDigester;
    .end local v27    # "mds":[Ljava/security/MessageDigest;
    .local v3, "totalChunkCountLong":J
    .restart local v6    # "totalChunkCount":I
    .restart local v8    # "chunkContentPrefix":[B
    .local v9, "input":Landroid/util/apk/DataSource;
    .restart local v12    # "mds":[Ljava/security/MessageDigest;
    .restart local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v18    # "chunkIndex":I
    .local v21, "inputOffset":J
    :cond_6
    move-wide/from16 v19, v3

    move-object/from16 v23, v9

    move-object/from16 v27, v12

    move-object/from16 v24, v13

    move/from16 v9, v18

    move-wide/from16 v3, v21

    const/16 v16, 0x5

    move/from16 v22, v6

    move-object/from16 v21, v8

    .end local v3    # "totalChunkCountLong":J
    .end local v6    # "totalChunkCount":I
    .end local v8    # "chunkContentPrefix":[B
    .end local v10    # "inputRemaining":J
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .end local v18    # "chunkIndex":I
    .local v9, "chunkIndex":I
    .restart local v19    # "totalChunkCountLong":J
    .local v21, "chunkContentPrefix":[B
    .restart local v22    # "totalChunkCount":I
    .restart local v24    # "digester":Landroid/util/apk/DataDigester;
    .restart local v27    # "mds":[Ljava/security/MessageDigest;
    add-int/lit8 v5, v5, 0x1

    .line 274
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    move v11, v9

    move/from16 v9, v16

    move-wide/from16 v3, v19

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 315
    .end local v9    # "chunkIndex":I
    .end local v19    # "totalChunkCountLong":J
    .end local v21    # "chunkContentPrefix":[B
    .end local v22    # "totalChunkCount":I
    .end local v24    # "digester":Landroid/util/apk/DataDigester;
    .end local v27    # "mds":[Ljava/security/MessageDigest;
    .restart local v3    # "totalChunkCountLong":J
    .restart local v6    # "totalChunkCount":I
    .restart local v8    # "chunkContentPrefix":[B
    .restart local v11    # "chunkIndex":I
    .restart local v12    # "mds":[Ljava/security/MessageDigest;
    .restart local v13    # "digester":Landroid/util/apk/DataDigester;
    :cond_7
    move-wide/from16 v19, v3

    move/from16 v22, v6

    move-object/from16 v21, v8

    move-object/from16 v27, v12

    move-object/from16 v24, v13

    .end local v3    # "totalChunkCountLong":J
    .end local v6    # "totalChunkCount":I
    .end local v8    # "chunkContentPrefix":[B
    .end local v12    # "mds":[Ljava/security/MessageDigest;
    .end local v13    # "digester":Landroid/util/apk/DataDigester;
    .restart local v19    # "totalChunkCountLong":J
    .restart local v21    # "chunkContentPrefix":[B
    .restart local v22    # "totalChunkCount":I
    .restart local v24    # "digester":Landroid/util/apk/DataDigester;
    .restart local v27    # "mds":[Ljava/security/MessageDigest;
    array-length v0, v1

    new-array v2, v0, [[B

    .line 316
    .local v2, "result":[[B
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_7
    array-length v0, v1

    if-ge v3, v0, :cond_8

    .line 317
    aget v4, v1, v3

    .line 318
    .local v4, "digestAlgorithm":I
    aget-object v6, v7, v3

    .line 319
    .local v6, "input":[B
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "jcaAlgorithmName":Ljava/lang/String;
    :try_start_2
    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 325
    .local v0, "md":Ljava/security/MessageDigest;
    nop

    .line 326
    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    .line 327
    .local v9, "output":[B
    aput-object v9, v2, v3

    .line 316
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v4    # "digestAlgorithm":I
    .end local v6    # "input":[B
    .end local v8    # "jcaAlgorithmName":Ljava/lang/String;
    .end local v9    # "output":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 323
    .restart local v4    # "digestAlgorithm":I
    .restart local v6    # "input":[B
    .restart local v8    # "jcaAlgorithmName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 324
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 329
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v3    # "i":I
    .end local v4    # "digestAlgorithm":I
    .end local v6    # "input":[B
    .end local v8    # "jcaAlgorithmName":Ljava/lang/String;
    :cond_8
    return-object v2

    .line 238
    .end local v2    # "result":[[B
    .end local v5    # "dataSourceIndex":I
    .end local v7    # "digestsOfChunks":[[B
    .end local v11    # "chunkIndex":I
    .end local v19    # "totalChunkCountLong":J
    .end local v21    # "chunkContentPrefix":[B
    .end local v22    # "totalChunkCount":I
    .end local v24    # "digester":Landroid/util/apk/DataDigester;
    .end local v27    # "mds":[Ljava/security/MessageDigest;
    .local v3, "totalChunkCountLong":J
    :cond_9
    move-wide/from16 v19, v3

    .end local v3    # "totalChunkCountLong":J
    .restart local v19    # "totalChunkCountLong":J
    new-instance v0, Ljava/security/DigestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many chunks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, v19

    .end local v19    # "totalChunkCountLong":J
    .restart local v3    # "totalChunkCountLong":J
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "apkSigningBlock"    # Ljava/nio/ByteBuffer;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 753
    invoke-static {p0}, Landroid/util/apk/ApkSigningBlockUtils;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    .line 760
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Landroid/util/apk/ApkSigningBlockUtils;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 762
    .local v0, "pairs":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 763
    .local v2, "entryCount":I
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 764
    add-int/lit8 v2, v2, 0x1

    .line 765
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_3

    .line 769
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 770
    .local v3, "lenLong":J
    const-wide/16 v5, 0x4

    cmp-long v5, v3, v5

    const-string v6, " size out of range: "

    const-string v7, "APK Signing Block entry #"

    if-ltz v5, :cond_2

    const-wide/32 v8, 0x7fffffff

    cmp-long v5, v3, v8

    if-gtz v5, :cond_2

    .line 775
    long-to-int v5, v3

    .line 776
    .local v5, "len":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v5

    .line 777
    .local v8, "nextEntryPos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    if-gt v5, v9, :cond_1

    .line 782
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 783
    .local v6, "id":I
    if-ne v6, p1, :cond_0

    .line 784
    add-int/lit8 v1, v5, -0x4

    invoke-static {v0, v1}, Landroid/util/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 786
    :cond_0
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 787
    .end local v3    # "lenLong":J
    .end local v5    # "len":I
    .end local v6    # "id":I
    .end local v8    # "nextEntryPos":I
    goto :goto_0

    .line 778
    .restart local v3    # "lenLong":J
    .restart local v5    # "len":I
    .restart local v8    # "nextEntryPos":I
    :cond_1
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 780
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    .end local v5    # "len":I
    .end local v8    # "nextEntryPos":I
    :cond_2
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 766
    .end local v3    # "lenLong":J
    :cond_3
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 789
    :cond_4
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No block with ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in APK Signing Block."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .locals 12
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "centralDirOffset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 708
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    .line 716
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 717
    .local v0, "footer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 718
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 719
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 720
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x20676953204b5041L

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const/16 v1, 0x10

    .line 721
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 726
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 727
    .local v2, "apkSigBlockSizeInFooter":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    const-wide/32 v4, 0x7ffffff7

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    .line 732
    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    long-to-int v4, v4

    .line 733
    .local v4, "totalSize":I
    int-to-long v5, v4

    sub-long v5, p1, v5

    .line 734
    .local v5, "apkSigBlockOffset":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    .line 738
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 739
    .local v7, "apkSigBlock":Ljava/nio/ByteBuffer;
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 740
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 741
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 742
    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    .line 743
    .local v8, "apkSigBlockSizeInHeader":J
    cmp-long v1, v8, v2

    if-nez v1, :cond_0

    .line 748
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 744
    :cond_0
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " vs "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    .end local v7    # "apkSigBlock":Ljava/nio/ByteBuffer;
    .end local v8    # "apkSigBlockSizeInHeader":J
    :cond_1
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APK Signing Block offset out of range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    .end local v4    # "totalSize":I
    .end local v5    # "apkSigBlockOffset":J
    :cond_2
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APK Signing Block size out of range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    .end local v2    # "apkSigBlockSizeInFooter":J
    :cond_3
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v1, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 709
    .end local v0    # "footer":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance v0, Landroid/util/apk/SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist findSignature(Ljava/io/RandomAccessFile;I)Landroid/util/apk/SignatureInfo;
    .locals 22
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .param p1, "blockId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 72
    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v1

    .line 73
    .local v1, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 74
    .local v2, "eocd":Ljava/nio/ByteBuffer;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 75
    .local v12, "eocdOffset":J
    invoke-static {v0, v12, v13}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    invoke-static {v2, v12, v13}, Landroid/util/apk/ApkSigningBlockUtils;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v14

    .line 81
    .local v14, "centralDirOffset":J
    nop

    .line 82
    invoke-static {v0, v14, v15}, Landroid/util/apk/ApkSigningBlockUtils;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object v11

    .line 83
    .local v11, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 84
    .local v9, "apkSigningBlock":Ljava/nio/ByteBuffer;
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 87
    .local v16, "apkSigningBlockOffset":J
    move/from16 v10, p1

    invoke-static {v9, v10}, Landroid/util/apk/ApkSigningBlockUtils;->findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 90
    .local v18, "apkSignatureSchemeBlock":Ljava/nio/ByteBuffer;
    new-instance v19, Landroid/util/apk/SignatureInfo;

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move-wide/from16 v5, v16

    move-wide v7, v14

    move-object/from16 v20, v9

    .end local v9    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    .local v20, "apkSigningBlock":Ljava/nio/ByteBuffer;
    move-wide v9, v12

    move-object/from16 v21, v11

    .end local v11    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    .local v21, "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    move-object v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/util/apk/SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-object v19

    .line 76
    .end local v14    # "centralDirOffset":J
    .end local v16    # "apkSigningBlockOffset":J
    .end local v18    # "apkSignatureSchemeBlock":Ljava/nio/ByteBuffer;
    .end local v20    # "apkSigningBlock":Ljava/nio/ByteBuffer;
    .end local v21    # "apkSigningBlockAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    :cond_0
    new-instance v3, Landroid/util/apk/SignatureNotFoundException;

    const-string v4, "ZIP64 APK not supported"

    invoke-direct {v3, v4}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static blacklist getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 638
    if-ltz p1, :cond_1

    .line 641
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 642
    .local v0, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 643
    .local v1, "position":I
    add-int v2, v1, p1

    .line 644
    .local v2, "limit":I
    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    .line 647
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 649
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 650
    .local v3, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 651
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    nop

    .line 654
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 652
    return-object v3

    .line 654
    .end local v3    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 655
    throw v3

    .line 645
    :cond_0
    new-instance v3, Ljava/nio/BufferUnderflowException;

    invoke-direct {v3}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v3

    .line 639
    .end local v0    # "originalLimit":I
    .end local v1    # "position":I
    .end local v2    # "limit":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 6
    .param p0, "eocd"    # Ljava/nio/ByteBuffer;
    .param p1, "eocdOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 407
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 408
    .local v0, "centralDirOffset":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_1

    .line 413
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 414
    .local v2, "centralDirSize":J
    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 419
    return-wide v0

    .line 415
    :cond_0
    new-instance v4, Landroid/util/apk/SignatureNotFoundException;

    const-string v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    .end local v2    # "centralDirSize":J
    :cond_1
    new-instance v2, Landroid/util/apk/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZIP Central Directory offset out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". ZIP End of Central Directory offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist getChunkCount(J)J
    .locals 6
    .param p0, "inputSizeBytes"    # J

    .line 423
    const-wide/32 v0, 0x100000

    add-long v2, p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    return-wide v2
.end method

.method static blacklist getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .locals 3
    .param p0, "digestAlgorithm"    # I

    .line 514
    packed-switch p0, :pswitch_data_0

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :pswitch_0
    const-string v0, "SHA-512"

    return-object v0

    .line 517
    :pswitch_1
    const-string v0, "SHA-256"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getContentDigestAlgorithmOutputSizeBytes(I)I
    .locals 3
    .param p0, "digestAlgorithm"    # I

    .line 527
    packed-switch p0, :pswitch_data_0

    .line 534
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :pswitch_0
    const/16 v0, 0x40

    return v0

    .line 530
    :pswitch_1
    const/16 v0, 0x20

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static blacklist getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .locals 3
    .param p0, "apk"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 395
    nop

    .line 396
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    .line 397
    .local v0, "eocdAndOffsetInFile":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/nio/ByteBuffer;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 401
    return-object v0

    .line 398
    :cond_0
    new-instance v1, Landroid/util/apk/SignatureNotFoundException;

    const-string v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Landroid/util/apk/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 664
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 665
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 667
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 671
    invoke-static {p0, v0}, Landroid/util/apk/ApkSigningBlockUtils;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 668
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 669
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    .end local v0    # "len":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 662
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getSignatureAlgorithmContentDigestAlgorithm(I)I
    .locals 4
    .param p0, "sigAlgorithm"    # I

    .line 492
    sparse-switch p0, :sswitch_data_0

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 509
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 501
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 497
    :sswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_2
        0x102 -> :sswitch_1
        0x103 -> :sswitch_2
        0x104 -> :sswitch_1
        0x201 -> :sswitch_2
        0x202 -> :sswitch_1
        0x301 -> :sswitch_2
        0x421 -> :sswitch_0
        0x423 -> :sswitch_0
        0x425 -> :sswitch_0
    .end sparse-switch
.end method

.method static blacklist getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .locals 4
    .param p0, "sigAlgorithm"    # I

    .line 540
    sparse-switch p0, :sswitch_data_0

    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 557
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :sswitch_0
    const-string v0, "DSA"

    return-object v0

    .line 550
    :sswitch_1
    const-string v0, "EC"

    return-object v0

    .line 546
    :sswitch_2
    const-string v0, "RSA"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_2
        0x102 -> :sswitch_2
        0x103 -> :sswitch_2
        0x104 -> :sswitch_2
        0x201 -> :sswitch_1
        0x202 -> :sswitch_1
        0x301 -> :sswitch_0
        0x421 -> :sswitch_2
        0x423 -> :sswitch_1
        0x425 -> :sswitch_0
    .end sparse-switch
.end method

.method static blacklist getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .locals 7
    .param p0, "sigAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    .line 563
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 588
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    .line 590
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :sswitch_0
    const-string v1, "SHA256withDSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 583
    :sswitch_1
    const-string v1, "SHA512withECDSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 581
    :sswitch_2
    const-string v1, "SHA256withECDSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 578
    :sswitch_3
    const-string v1, "SHA512withRSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 576
    :sswitch_4
    const-string v1, "SHA256withRSA"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 570
    :sswitch_5
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x40

    const/4 v6, 0x1

    const-string v2, "SHA-512"

    const-string v3, "MGF1"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v1, "SHA512withRSA/PSS"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 565
    :sswitch_6
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v5, 0x20

    const/4 v6, 0x1

    const-string v2, "SHA-256"

    const-string v3, "MGF1"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    const-string v1, "SHA256withRSA/PSS"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_6
        0x102 -> :sswitch_5
        0x103 -> :sswitch_4
        0x104 -> :sswitch_3
        0x201 -> :sswitch_2
        0x202 -> :sswitch_1
        0x301 -> :sswitch_0
        0x421 -> :sswitch_4
        0x423 -> :sswitch_2
        0x425 -> :sswitch_0
    .end sparse-switch
.end method

.method static blacklist isSupportedSignatureAlgorithm(I)Z
    .locals 1
    .param p0, "sigAlgorithm"    # I

    .line 139
    sparse-switch p0, :sswitch_data_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 150
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x101 -> :sswitch_0
        0x102 -> :sswitch_0
        0x103 -> :sswitch_0
        0x104 -> :sswitch_0
        0x201 -> :sswitch_0
        0x202 -> :sswitch_0
        0x301 -> :sswitch_0
        0x421 -> :sswitch_0
        0x423 -> :sswitch_0
        0x425 -> :sswitch_0
    .end sparse-switch
.end method

.method static blacklist parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "fileSize"    # J
    .param p3, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 346
    const/16 v0, 0x20

    .line 347
    .local v0, "kRootHashSize":I
    const/16 v1, 0x8

    .line 349
    .local v1, "kSourceLengthSize":I
    array-length v2, p0

    add-int v3, v0, v1

    if-ne v2, v3, :cond_1

    .line 352
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 353
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 354
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 356
    .local v3, "expectedSourceLength":J
    iget-wide v5, p3, Landroid/util/apk/SignatureInfo;->centralDirOffset:J

    iget-wide v7, p3, Landroid/util/apk/SignatureInfo;->apkSigningBlockOffset:J

    sub-long/2addr v5, v7

    .line 358
    .local v5, "signingBlockSize":J
    sub-long v7, p1, v5

    cmp-long v7, v3, v7

    if-nez v7, :cond_0

    .line 362
    const/4 v7, 0x0

    invoke-static {p0, v7, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    return-object v7

    .line 359
    :cond_0
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "APK content size did not verify"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 350
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "expectedSourceLength":J
    .end local v5    # "signingBlockSize":J
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Verity digest size is wrong: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 676
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 682
    new-array v1, v0, [B

    .line 683
    .local v1, "result":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 684
    return-object v1

    .line 679
    .end local v1    # "result":[B
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 680
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 677
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist setUnsignedInt32LittleEndian(I[BI)V
    .locals 2
    .param p0, "value"    # I
    .param p1, "result"    # [B
    .param p2, "offset"    # I

    .line 688
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 689
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 690
    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 691
    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 692
    return-void
.end method

.method static blacklist sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "source"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 601
    if-ltz p1, :cond_2

    .line 604
    if-lt p2, p1, :cond_1

    .line 607
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 608
    .local v0, "capacity":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 611
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 612
    .local v1, "originalLimit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 614
    .local v2, "originalPosition":I
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 615
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 616
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 617
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 618
    .local v4, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    nop

    .line 621
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 623
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 619
    return-object v4

    .line 621
    .end local v4    # "result":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 622
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 623
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 624
    throw v4

    .line 609
    .end local v1    # "originalLimit":I
    .end local v2    # "originalPosition":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end > capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 605
    .end local v0    # "capacity":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end < start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist verifyIntegrity(Ljava/util/Map;Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
    .locals 5
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/RandomAccessFile;",
            "Landroid/util/apk/SignatureInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 102
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 106
    const/4 v0, 0x1

    .line 108
    .local v0, "neverVerified":Z
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    .local v1, "expected1MbChunkDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 110
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 114
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrityFor1MbChunkBasedAlgorithm(Ljava/util/Map;Ljava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v0, 0x0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Cannot get FD"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 128
    nop

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 128
    invoke-static {v2, p1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->verifyIntegrityForVerityBasedAlgorithm([BLjava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V

    .line 130
    const/4 v0, 0x0

    .line 133
    :cond_3
    if-nez v0, :cond_4

    .line 136
    return-void

    .line 134
    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "No known digest exists for integrity check"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    .end local v0    # "neverVerified":Z
    .end local v1    # "expected1MbChunkDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No digests provided"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist verifyIntegrityFor1MbChunkBasedAlgorithm(Ljava/util/Map;Ljava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)V
    .locals 10
    .param p1, "apkFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "Landroid/util/apk/SignatureInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 160
    .local p0, "expectedDigests":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[B>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 161
    .local v0, "digestAlgorithms":[I
    const/4 v1, 0x0

    .line 162
    .local v1, "digestAlgorithmCount":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 163
    .local v3, "digestAlgorithm":I
    aput v3, v0, v1

    .line 164
    nop

    .end local v3    # "digestAlgorithm":I
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_0

    .line 168
    :cond_0
    :try_start_0
    invoke-static {v0, p1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->computeContentDigestsPer1MbChunk([ILjava/io/FileDescriptor;Landroid/util/apk/SignatureInfo;)[[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v2, "actualDigests":[[B
    nop

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 174
    aget v4, v0, v3

    .line 175
    .local v4, "digestAlgorithm":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 176
    .local v5, "expectedDigest":[B
    aget-object v6, v2, v3

    .line 177
    .local v6, "actualDigest":[B
    invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    .end local v4    # "digestAlgorithm":I
    .end local v5    # "expectedDigest":[B
    .end local v6    # "actualDigest":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    .restart local v4    # "digestAlgorithm":I
    .restart local v5    # "expectedDigest":[B
    .restart local v6    # "actualDigest":[B
    :cond_1
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-static {v4}, Landroid/util/apk/ApkSigningBlockUtils;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " digest of contents did not verify"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 183
    .end local v3    # "i":I
    .end local v4    # "digestAlgorithm":I
    .end local v5    # "expectedDigest":[B
    .end local v6    # "actualDigest":[B
    :cond_2
    return-void

    .line 170
    .end local v2    # "actualDigests":[[B
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/security/DigestException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Failed to compute digest(s) of contents"

    invoke-direct {v3, v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static blacklist verifyIntegrityForVerityBasedAlgorithm([BLjava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;)V
    .locals 4
    .param p0, "expectedDigest"    # [B
    .param p1, "apk"    # Ljava/io/RandomAccessFile;
    .param p2, "signatureInfo"    # Landroid/util/apk/SignatureInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 370
    nop

    .line 371
    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    .line 370
    invoke-static {p0, v0, v1, p2}, Landroid/util/apk/ApkSigningBlockUtils;->parseVerityDigestAndVerifySourceLength([BJLandroid/util/apk/SignatureInfo;)[B

    move-result-object v0

    .line 372
    .local v0, "expectedRootHash":[B
    new-instance v1, Landroid/util/apk/ApkSigningBlockUtils$1;

    invoke-direct {v1}, Landroid/util/apk/ApkSigningBlockUtils$1;-><init>()V

    invoke-static {p1, p2, v1}, Landroid/util/apk/VerityBuilder;->generateApkVerityTree(Ljava/io/RandomAccessFile;Landroid/util/apk/SignatureInfo;Landroid/util/apk/ByteBufferFactory;)Landroid/util/apk/VerityBuilder$VerityResult;

    move-result-object v1

    .line 379
    .local v1, "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    iget-object v2, v1, Landroid/util/apk/VerityBuilder$VerityResult;->rootHash:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    .end local v0    # "expectedRootHash":[B
    .end local v1    # "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    nop

    .line 385
    return-void

    .line 380
    .restart local v0    # "expectedRootHash":[B
    .restart local v1    # "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "APK verity digest of contents did not verify"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "expectedDigest":[B
    .end local p1    # "apk":Ljava/io/RandomAccessFile;
    .end local p2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    throw v2
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0    # "expectedRootHash":[B
    .end local v1    # "verity":Landroid/util/apk/VerityBuilder$VerityResult;
    .restart local p0    # "expectedDigest":[B
    .restart local p1    # "apk":Ljava/io/RandomAccessFile;
    .restart local p2    # "signatureInfo":Landroid/util/apk/SignatureInfo;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Error during verification"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist verifyProofOfRotationStruct(Ljava/nio/ByteBuffer;Ljava/security/cert/CertificateFactory;)Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;
    .locals 18
    .param p0, "porBuf"    # Ljava/nio/ByteBuffer;
    .param p1, "certFactory"    # Ljava/security/cert/CertificateFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    const-string v1, " when verifying Proof-of-rotation record"

    const/4 v2, 0x0

    .line 824
    .local v2, "levelCount":I
    const/4 v3, -0x1

    .line 825
    .local v3, "lastSigAlgorithm":I
    const/4 v4, 0x0

    .line 826
    .local v4, "lastCert":Ljava/security/cert/X509Certificate;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 827
    .local v5, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 846
    .local v6, "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 847
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 848
    .local v0, "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 849
    add-int/lit8 v2, v2, 0x1

    .line 850
    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 851
    .local v7, "level":Ljava/nio/ByteBuffer;
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 852
    .local v8, "signedData":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 853
    .local v9, "flags":I
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 854
    .local v10, "sigAlgorithm":I
    invoke-static {v7}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v11

    .line 856
    .local v11, "signature":[B
    if-eqz v4, :cond_2

    .line 858
    nop

    .line 859
    invoke-static {v3}, Landroid/util/apk/ApkSigningBlockUtils;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v12

    .line 860
    .local v12, "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    .line 861
    .local v13, "publicKey":Ljava/security/PublicKey;
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v14

    .line 862
    .local v14, "sig":Ljava/security/Signature;
    invoke-virtual {v14, v13}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 863
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v15, :cond_0

    .line 864
    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v14, v15}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 866
    :cond_0
    invoke-virtual {v14, v8}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    .line 867
    invoke-virtual {v14, v11}, Ljava/security/Signature;->verify([B)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    goto :goto_1

    .line 868
    :cond_1
    new-instance v15, Ljava/lang/SecurityException;

    move-object/from16 v16, v7

    .end local v7    # "level":Ljava/nio/ByteBuffer;
    .local v16, "level":Ljava/nio/ByteBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v11

    .end local v11    # "signature":[B
    .local v17, "signature":[B
    const-string v11, "Unable to verify signature of certificate #"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " using "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "levelCount":I
    .end local v3    # "lastSigAlgorithm":I
    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .end local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v15

    .line 856
    .end local v12    # "sigAlgParams":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;+Ljava/security/spec/AlgorithmParameterSpec;>;"
    .end local v13    # "publicKey":Ljava/security/PublicKey;
    .end local v14    # "sig":Ljava/security/Signature;
    .end local v16    # "level":Ljava/nio/ByteBuffer;
    .end local v17    # "signature":[B
    .restart local v2    # "levelCount":I
    .restart local v3    # "lastSigAlgorithm":I
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "level":Ljava/nio/ByteBuffer;
    .restart local v11    # "signature":[B
    .restart local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_2
    move-object/from16 v16, v7

    move-object/from16 v17, v11

    .line 874
    .end local v7    # "level":Ljava/nio/ByteBuffer;
    .end local v11    # "signature":[B
    .restart local v16    # "level":Ljava/nio/ByteBuffer;
    .restart local v17    # "signature":[B
    :goto_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 875
    invoke-static {v8}, Landroid/util/apk/ApkSigningBlockUtils;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 876
    .local v7, "encodedCert":[B
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    .line 877
    .local v11, "signedSigAlgorithm":I
    if-eqz v4, :cond_4

    if-ne v3, v11, :cond_3

    goto :goto_2

    .line 878
    :cond_3
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Signing algorithm ID mismatch for certificate #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "levelCount":I
    .end local v3    # "lastSigAlgorithm":I
    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .end local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v12

    .line 881
    .restart local v2    # "levelCount":I
    .restart local v3    # "lastSigAlgorithm":I
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :cond_4
    :goto_2
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 882
    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {v13, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    move-object v4, v12

    .line 883
    new-instance v12, Landroid/util/apk/VerbatimX509Certificate;

    invoke-direct {v12, v4, v7}, Landroid/util/apk/VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    move-object v4, v12

    .line 885
    move v3, v10

    .line 886
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 891
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    nop

    .end local v7    # "encodedCert":[B
    .end local v8    # "signedData":Ljava/nio/ByteBuffer;
    .end local v9    # "flags":I
    .end local v10    # "sigAlgorithm":I
    .end local v11    # "signedSigAlgorithm":I
    .end local v16    # "level":Ljava/nio/ByteBuffer;
    .end local v17    # "signature":[B
    goto/16 :goto_0

    .line 887
    .restart local v7    # "encodedCert":[B
    .restart local v8    # "signedData":Ljava/nio/ByteBuffer;
    .restart local v9    # "flags":I
    .restart local v10    # "sigAlgorithm":I
    .restart local v11    # "signedSigAlgorithm":I
    .restart local v16    # "level":Ljava/nio/ByteBuffer;
    .restart local v17    # "signature":[B
    :cond_5
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Encountered duplicate entries in Proof-of-rotation record at certificate #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".  All signing certificates should be unique"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "levelCount":I
    .end local v3    # "lastSigAlgorithm":I
    .end local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .end local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    throw v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 902
    .end local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v7    # "encodedCert":[B
    .end local v8    # "signedData":Ljava/nio/ByteBuffer;
    .end local v9    # "flags":I
    .end local v10    # "sigAlgorithm":I
    .end local v11    # "signedSigAlgorithm":I
    .end local v16    # "level":Ljava/nio/ByteBuffer;
    .end local v17    # "signature":[B
    .restart local v2    # "levelCount":I
    .restart local v3    # "lastSigAlgorithm":I
    .restart local v4    # "lastCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "flagsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p0    # "porBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 897
    :catch_1
    move-exception v0

    goto :goto_4

    .line 895
    :catch_2
    move-exception v0

    goto :goto_5

    .line 848
    .restart local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    :cond_6
    move-object/from16 v13, p1

    .line 905
    .end local v0    # "certHistorySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    nop

    .line 906
    new-instance v0, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;

    invoke-direct {v0, v5, v6}, Landroid/util/apk/ApkSigningBlockUtils$VerifiedProofOfRotation;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 902
    :catch_3
    move-exception v0

    move-object/from16 v13, p1

    .line 903
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_3
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to decode certificate #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 897
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_4
    move-exception v0

    move-object/from16 v13, p1

    .line 899
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_4
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to verify signature over signed data for certificate #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 895
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_5
    move-exception v0

    move-object/from16 v13, p1

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v1, Ljava/io/IOException;

    const-string v7, "Failed to parse Proof-of-rotation record"

    invoke-direct {v1, v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
