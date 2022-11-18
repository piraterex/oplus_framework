.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;
.source "CFBBlockCipher.java"


# instance fields
.field private blacklist IV:[B

.field private blacklist blockSize:I

.field private blacklist byteCount:I

.field private blacklist cfbOutV:[B

.field private blacklist cfbV:[B

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist encrypting:Z

.field private blacklist inBuf:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 3
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "bitBlockSize"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 41
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    if-lt p2, v1, :cond_0

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    .line 46
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 47
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 49
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 50
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 51
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 52
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    .line 53
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CFB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist decryptByte(B)B
    .locals 6
    .param p1, "in"    # B

    .line 152
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v2

    .line 158
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 160
    .local v0, "rv":B
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v3, v2, :cond_1

    .line 162
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 164
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {v3, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v3

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :cond_1
    return v0
.end method

.method private blacklist encryptByte(B)B
    .locals 6
    .param p1, "in"    # B

    .line 131
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    .line 137
    .local v0, "rv":B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte v0, v3, v2

    .line 139
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v4, v2, :cond_1

    .line 141
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 143
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v3

    sub-int/2addr v4, v2

    invoke-static {v3, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v4, v3

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    :cond_1
    return v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist decryptBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 249
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 251
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist encryptBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 225
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 227
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist getCurrentIV()[B
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 71
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    .line 73
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 75
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 76
    .local v0, "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 78
    .local v2, "iv":[B
    array-length v3, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v3, v5, :cond_1

    .line 81
    array-length v3, v4

    array-length v5, v2

    sub-int/2addr v3, v5

    array-length v5, v2

    invoke-static {v2, v6, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v5, v4

    array-length v7, v2

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_0

    .line 84
    aput-byte v6, v4, v3

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 89
    :cond_1
    array-length v3, v4

    invoke-static {v2, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 95
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 99
    .end local v0    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "iv":[B
    :cond_2
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 105
    if-eqz p2, :cond_4

    .line 107
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 110
    :cond_4
    :goto_2
    return-void
.end method

.method public blacklist processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 201
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->processBytes([BII[BI)I

    .line 203
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return v0
.end method

.method public blacklist reset()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 272
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 275
    return-void
.end method
