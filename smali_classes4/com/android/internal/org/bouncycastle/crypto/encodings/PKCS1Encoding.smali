.class public Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist HEADER_LENGTH:I = 0xa

.field public static final blacklist NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.not_strict"

.field public static final blacklist STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.strict"


# instance fields
.field private blacklist blockBuffer:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist fallback:[B

.field private blacklist forEncryption:Z

.field private blacklist forPrivateKey:Z

.field private blacklist pLen:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist useStrictLength:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 57
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "pLen"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 71
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 72
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 73
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 89
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 90
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 91
    return-void
.end method

.method private static blacklist checkPkcs1Encoding([BI)I
    .locals 5
    .param p0, "encoded"    # [B
    .param p1, "pLen"    # I

    .line 247
    const/4 v0, 0x0

    .line 251
    .local v0, "correct":I
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    xor-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 256
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, v2

    .line 261
    .local v1, "plen":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 263
    aget-byte v3, p0, v2

    .line 264
    .local v3, "tmp":I
    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 265
    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 266
    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 267
    and-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v0, v4

    .line 261
    .end local v3    # "tmp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "i":I
    :cond_0
    array-length v2, p0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    or-int/2addr v0, v2

    .line 278
    shr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    .line 279
    shr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    .line 280
    shr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    .line 281
    and-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, -0x1

    not-int v2, v2

    return v2
.end method

.method private blacklist decodeBlock([BII)[B
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 350
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 352
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 356
    .local v0, "block":[B
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v2, v0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    and-int/2addr v1, v2

    .line 359
    .local v1, "incorrectLength":Z
    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 361
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .local v2, "data":[B
    goto :goto_1

    .line 365
    .end local v2    # "data":[B
    :cond_2
    move-object v2, v0

    .line 368
    .restart local v2    # "data":[B
    :goto_1
    aget-byte v3, v2, v5

    .line 371
    .local v3, "type":B
    iget-boolean v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v6, :cond_4

    .line 373
    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v5

    .local v6, "badType":Z
    :goto_2
    goto :goto_3

    .line 377
    .end local v6    # "badType":Z
    :cond_4
    if-eq v3, v4, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    move v6, v5

    .line 383
    .restart local v6    # "badType":Z
    :goto_3
    invoke-direct {p0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->findStart(B[B)I

    move-result v7

    .line 385
    .local v7, "start":I
    add-int/2addr v7, v4

    .line 387
    const/16 v8, 0xa

    if-ge v7, v8, :cond_6

    goto :goto_4

    :cond_6
    move v4, v5

    :goto_4
    or-int/2addr v4, v6

    if-nez v4, :cond_8

    .line 394
    if-nez v1, :cond_7

    .line 400
    array-length v4, v2

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    .line 402
    .local v4, "result":[B
    array-length v8, v4

    invoke-static {v2, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    return-object v4

    .line 396
    .end local v4    # "result":[B
    :cond_7
    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 397
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "block incorrect size"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :cond_8
    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 390
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "block incorrect"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist decodeBlockOrRandom([BII)[B
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 305
    .local v0, "block":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_0

    .line 307
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v1, v1, [B

    .line 308
    .local v1, "random":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 312
    .end local v1    # "random":[B
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 315
    .restart local v1    # "random":[B
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v3, v0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    goto :goto_2

    :cond_2
    move-object v2, v0

    .line 320
    .local v2, "data":[B
    :goto_2
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result v3

    .line 326
    .local v3, "correct":I
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v4, v4, [B

    .line 327
    .local v4, "result":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v6, v7, :cond_3

    .line 329
    array-length v8, v2

    sub-int/2addr v8, v7

    add-int/2addr v8, v6

    aget-byte v7, v2, v8

    not-int v8, v3

    and-int/2addr v7, v8

    aget-byte v8, v1, v6

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 327
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 332
    .end local v6    # "i":I
    :cond_3
    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 334
    return-object v4

    .line 300
    .end local v0    # "block":[B
    .end local v1    # "random":[B
    .end local v2    # "data":[B
    .end local v3    # "correct":I
    .end local v4    # "result":[B
    :cond_4
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist encodeBlock([BII)[B
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 203
    .local v0, "block":[B
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 205
    aput-byte v3, v0, v2

    .line 207
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_0

    .line 209
    const/4 v4, -0x1

    aput-byte v4, v0, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_3

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 216
    const/4 v1, 0x2

    aput-byte v1, v0, v2

    .line 222
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_3

    .line 224
    :goto_2
    aget-byte v4, v0, v1

    if-nez v4, :cond_2

    .line 226
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_2

    .line 222
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 231
    .end local v1    # "i":I
    :cond_3
    :goto_3
    array-length v1, v0

    sub-int/2addr v1, p3

    sub-int/2addr v1, v3

    aput-byte v2, v0, v1

    .line 232
    array-length v1, v0

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "block":[B
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist findStart(B[B)I
    .locals 9
    .param p1, "type"    # B
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 410
    const/4 v0, -0x1

    .line 411
    .local v0, "start":I
    const/4 v1, 0x0

    .line 413
    .local v1, "padErr":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_6

    .line 415
    aget-byte v3, p2, v2

    .line 417
    .local v3, "pad":B
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    if-gez v0, :cond_1

    move v8, v6

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_2
    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    .line 419
    move v0, v2

    .line 421
    :cond_2
    if-ne p1, v6, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    if-gez v0, :cond_4

    move v8, v6

    goto :goto_4

    :cond_4
    move v8, v5

    :goto_4
    and-int/2addr v7, v8

    if-eq v3, v4, :cond_5

    move v5, v6

    :cond_5
    and-int v4, v7, v5

    or-int/2addr v1, v4

    .line 413
    .end local v3    # "pad":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 424
    .end local v2    # "i":I
    :cond_6
    if-eqz v1, :cond_7

    .line 426
    return v4

    .line 429
    :cond_7
    return v0
.end method

.method private blacklist useStrict()Z
    .locals 3

    .line 99
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 101
    return v2

    .line 104
    :cond_0
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.strict"

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 150
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 152
    add-int/lit8 v1, v0, -0xa

    return v1

    .line 156
    :cond_0
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 164
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 166
    return v0

    .line 170
    :cond_0
    add-int/lit8 v1, v0, -0xa

    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 118
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 120
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 122
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 124
    .local v0, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 127
    .end local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 128
    .restart local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 130
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 134
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 137
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 138
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 140
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoder requires random"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_3
    :goto_1
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

    .line 180
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 186
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
