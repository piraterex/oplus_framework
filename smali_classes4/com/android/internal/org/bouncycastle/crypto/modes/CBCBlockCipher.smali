.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;
.source "CBCBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private blacklist IV:[B

.field private blacklist blockSize:I

.field private blacklist cbcNextV:[B

.field private blacklist cbcV:[B

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist encrypting:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 33
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 34
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    .line 36
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    .line 37
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 38
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 39
    return-void
.end method

.method private blacklist decryptBlock([BI[BI)I
    .locals 5
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

    .line 227
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 239
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_0

    .line 241
    add-int v2, p4, v1

    aget-byte v3, p3, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v4, v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 250
    .local v1, "tmp":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 251
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 253
    return v0

    .line 229
    .end local v0    # "length":I
    .end local v1    # "tmp":[B
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist encryptBlock([BI[BI)I
    .locals 4
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

    .line 184
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v2, v1, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 203
    .local v0, "length":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v3, v1

    invoke-static {p3, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    return v0

    .line 186
    .end local v0    # "length":I
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 66
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 68
    .local v0, "oldEncrypting":Z
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 70
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const-string v2, "cannot change encrypting state without providing key."

    if-eqz v1, :cond_3

    .line 72
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 73
    .local v1, "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 75
    .local v3, "iv":[B
    array-length v4, v3

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ne v4, v5, :cond_2

    .line 80
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 85
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v2, p1, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 89
    :cond_0
    if-ne v0, p1, :cond_1

    .line 93
    .end local v1    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :goto_0
    goto :goto_1

    .line 91
    .restart local v1    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .restart local v3    # "iv":[B
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "initialisation vector must be the same length as block size"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    .end local v1    # "ivParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 99
    if-eqz p2, :cond_4

    .line 101
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 103
    :cond_4
    if-ne v0, p1, :cond_5

    .line 108
    :goto_1
    return-void

    .line 105
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist processBlock([BI[BI)I
    .locals 1
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

    .line 150
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public blacklist reset()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 163
    return-void
.end method
