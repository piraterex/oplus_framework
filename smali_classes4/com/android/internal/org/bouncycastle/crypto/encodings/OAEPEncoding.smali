.class public Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private blacklist defHash:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist forEncryption:Z

.field private blacklist mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 37
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p3, "mgf1Hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p4, "encodingParams"    # [B

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 62
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 63
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 65
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 67
    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 69
    array-length v1, p4

    invoke-interface {p2, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V
    .locals 0
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p3, "encodingParams"    # [B

    .line 52
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    .line 53
    return-void
.end method

.method private blacklist ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .line 318
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 319
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 320
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 321
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 322
    return-void
.end method

.method private blacklist maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .line 333
    new-array v0, p4, [B

    .line 334
    .local v0, "mask":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 335
    .local v1, "hashBuf":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 336
    .local v2, "C":[B
    const/4 v3, 0x0

    .line 338
    .local v3, "counter":I
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 340
    :goto_0
    array-length v4, v1

    div-int v4, p4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 342
    invoke-direct {p0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 344
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 345
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 346
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 348
    array-length v4, v1

    mul-int/2addr v4, v3

    array-length v6, v1

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_0
    array-length v4, v1

    mul-int/2addr v4, v3

    if-ge v4, p4, :cond_1

    .line 355
    invoke-direct {p0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 357
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 358
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 359
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 361
    array-length v4, v1

    mul-int/2addr v4, v3

    array-length v6, v0

    array-length v7, v1

    mul-int/2addr v7, v3

    sub-int/2addr v6, v7

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    :cond_1
    return-object v0
.end method


# virtual methods
.method public blacklist decodeBlock([BII)[B
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 223
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 230
    .local v1, "block":[B
    array-length v2, v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    if-ge v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 232
    .local v2, "wrongData":Z
    :goto_0
    array-length v3, v0

    array-length v6, v1

    if-gt v3, v6, :cond_1

    .line 234
    array-length v3, v1

    array-length v6, v0

    sub-int/2addr v3, v6

    array-length v6, v0

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 238
    :cond_1
    array-length v3, v1

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    const/4 v2, 0x1

    .line 245
    :goto_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v3

    array-length v7, v1

    array-length v8, v3

    sub-int/2addr v7, v8

    array-length v3, v3

    invoke-direct {p0, v1, v6, v7, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 248
    .local v3, "mask":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v7

    if-eq v6, v8, :cond_2

    .line 250
    aget-byte v7, v1, v6

    aget-byte v8, v3, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 248
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 256
    .end local v6    # "i":I
    :cond_2
    array-length v6, v7

    array-length v8, v1

    array-length v7, v7

    sub-int/2addr v8, v7

    invoke-direct {p0, v1, v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 258
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    .restart local v6    # "i":I
    :goto_3
    array-length v7, v1

    if-eq v6, v7, :cond_3

    .line 260
    aget-byte v7, v1, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int v8, v6, v8

    aget-byte v8, v3, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 267
    .end local v6    # "i":I
    :cond_3
    const/4 v6, 0x0

    .line 269
    .local v6, "defHashWrong":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v9, v8

    if-eq v7, v9, :cond_5

    .line 271
    aget-byte v9, v8, v7

    array-length v8, v8

    add-int/2addr v8, v7

    aget-byte v8, v1, v8

    if-eq v9, v8, :cond_4

    .line 273
    const/4 v6, 0x1

    .line 269
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 280
    .end local v7    # "i":I
    :cond_5
    array-length v7, v1

    .line 282
    .local v7, "start":I
    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    .local v8, "index":I
    :goto_5
    array-length v9, v1

    if-eq v8, v9, :cond_9

    .line 284
    aget-byte v9, v1, v8

    if-eqz v9, :cond_6

    move v9, v4

    goto :goto_6

    :cond_6
    move v9, v5

    :goto_6
    array-length v10, v1

    if-ne v7, v10, :cond_7

    move v10, v4

    goto :goto_7

    :cond_7
    move v10, v5

    :goto_7
    and-int/2addr v9, v10

    if-eqz v9, :cond_8

    .line 286
    move v7, v8

    .line 282
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 290
    .end local v8    # "index":I
    :cond_9
    array-length v8, v1

    sub-int/2addr v8, v4

    if-le v7, v8, :cond_a

    move v8, v4

    goto :goto_8

    :cond_a
    move v8, v5

    :goto_8
    aget-byte v9, v1, v7

    if-eq v9, v4, :cond_b

    move v9, v4

    goto :goto_9

    :cond_b
    move v9, v5

    :goto_9
    or-int/2addr v8, v9

    .line 292
    .local v8, "dataStartWrong":Z
    add-int/2addr v7, v4

    .line 294
    or-int v4, v6, v2

    or-int/2addr v4, v8

    if-nez v4, :cond_c

    .line 303
    array-length v4, v1

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    .line 305
    .local v4, "output":[B
    array-length v9, v4

    invoke-static {v1, v7, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 308
    return-object v4

    .line 296
    .end local v4    # "output":[B
    :cond_c
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 297
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "data wrong"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist encodeBlock([BII)[B
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 160
    .local v0, "block":[B
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v1

    aput-byte v1, v0, v2

    .line 174
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 181
    .local v1, "seed":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 186
    array-length v2, v1

    array-length v3, v0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 188
    .local v2, "mask":[B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-eq v3, v5, :cond_0

    .line 190
    aget-byte v5, v0, v3

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int v6, v3, v6

    aget-byte v6, v2, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 188
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v3

    array-length v6, v0

    array-length v7, v3

    sub-int/2addr v6, v7

    array-length v3, v3

    invoke-direct {p0, v0, v5, v6, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 204
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    if-eq v3, v5, :cond_1

    .line 206
    aget-byte v5, v0, v3

    aget-byte v6, v2, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v3

    return-object v3

    .line 152
    .end local v0    # "block":[B
    .end local v1    # "seed":[B
    .end local v2    # "mask":[B
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input data too long"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInputBlockSize()I
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 104
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 106
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1

    .line 110
    :cond_0
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 118
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 120
    return v0

    .line 124
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 84
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 88
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 89
    .end local v0    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 97
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 98
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
