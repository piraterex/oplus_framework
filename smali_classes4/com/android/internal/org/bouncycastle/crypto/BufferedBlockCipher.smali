.class public Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source "BufferedBlockCipher.java"


# instance fields
.field protected blacklist buf:[B

.field protected blacklist bufOff:I

.field protected blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field protected blacklist forEncryption:Z

.field protected blacklist partialBlockOkay:Z

.field protected blacklist pgpCFB:Z


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 5
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 42
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 48
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 51
    .local v2, "idx":I
    if-lez v2, :cond_0

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    .line 53
    if-nez v4, :cond_3

    instance-of v4, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    if-lez v2, :cond_2

    const-string v4, "OpenPGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    :cond_2
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_2

    .line 55
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    .line 61
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "resultLen":I
    :try_start_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v2, p2, v1

    array-length v3, p1

    if-gt v2, v3, :cond_2

    .line 280
    if-eqz v1, :cond_1

    .line 282
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 288
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    move v0, v1

    .line 289
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 290
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 284
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "data not block size aligned"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .restart local p1    # "out":[B
    .restart local p2    # "outOff":I
    :cond_1
    :goto_0
    nop

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 293
    return v0

    .line 277
    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v2, "output buffer too short for doFinal()"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v0    # "resultLen":I
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
    .restart local p1    # "out":[B
    .restart local p2    # "outOff":I
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 298
    throw v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getOutputSize(I)I
    .locals 1
    .param p1, "length"    # I

    .line 149
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I

    .line 115
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    .line 118
    .local v0, "total":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v1, :cond_1

    .line 120
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .local v1, "leftOver":I
    goto :goto_0

    .line 126
    .end local v1    # "leftOver":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .restart local v1    # "leftOver":I
    goto :goto_0

    .line 131
    .end local v1    # "leftOver":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    .line 134
    .restart local v1    # "leftOver":I
    :goto_0
    sub-int v2, v0, v1

    return v2
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 92
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .locals 4
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "resultLen":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 172
    array-length v2, v1

    if-ne v3, v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 175
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 178
    :cond_0
    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 201
    if-ltz p3, :cond_4

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 207
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    .line 209
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 211
    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 218
    .local v2, "resultLen":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v3

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr v4, v5

    .line 220
    .local v4, "gapLen":I
    const/4 v6, 0x0

    if-le p3, v4, :cond_2

    .line 222
    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v3, v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 226
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 227
    sub-int/2addr p3, v4

    .line 228
    add-int/2addr p2, v4

    .line 230
    :goto_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v3

    if-le p3, v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v2

    invoke-interface {v3, p1, p2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 234
    sub-int/2addr p3, v0

    .line 235
    add-int/2addr p2, v0

    goto :goto_1

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 243
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v7, v5

    if-ne v3, v7, :cond_3

    .line 245
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v7, p5, v2

    invoke-interface {v3, v5, v6, p4, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 246
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 249
    :cond_3
    return v2

    .line 203
    .end local v0    # "blockSize":I
    .end local v1    # "length":I
    .end local v2    # "resultLen":I
    .end local v4    # "gapLen":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 4

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 312
    aput-byte v3, v1, v0

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_0
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 320
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 321
    return-void
.end method
