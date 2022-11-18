.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# instance fields
.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist forWrapping:Z

.field private blacklist iv:[B

.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist wrapCipherMode:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V
    .locals 1
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "useReverseDirection"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 52
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 53
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    .line 54
    return-void

    nop

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 60
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 62
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 67
    :cond_0
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    .line 69
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 71
    :cond_1
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 73
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 74
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV not equal to 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_5

    .line 149
    div-int/lit8 v4, v3, 0x8

    .line 151
    .local v4, "n":I
    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_4

    .line 156
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v5

    sub-int v6, v3, v6

    new-array v6, v6, [B

    .line 157
    .local v6, "block":[B
    array-length v7, v5

    new-array v7, v7, [B

    .line 158
    .local v7, "a":[B
    array-length v8, v5

    const/16 v9, 0x8

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 160
    .local v8, "buf":[B
    array-length v5, v5

    const/4 v10, 0x0

    invoke-static {v1, v2, v7, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v5

    add-int/2addr v11, v2

    array-length v5, v5

    sub-int v5, v3, v5

    invoke-static {v1, v11, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v5, v11, v13}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 165
    sub-int/2addr v4, v12

    .line 167
    const/4 v5, 0x5

    .local v5, "j":I
    :goto_0
    if-ltz v5, :cond_2

    .line 169
    move v11, v4

    .local v11, "i":I
    :goto_1
    if-lt v11, v12, :cond_1

    .line 171
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v13

    invoke-static {v7, v10, v8, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    add-int/lit8 v13, v11, -0x1

    mul-int/2addr v13, v9

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v6, v13, v8, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    mul-int v13, v4, v5

    add-int/2addr v13, v11

    .line 175
    .local v13, "t":I
    const/4 v14, 0x1

    .local v14, "k":I
    :goto_2
    if-eqz v13, :cond_0

    .line 177
    int-to-byte v15, v13

    .line 179
    .local v15, "v":B
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    sub-int/2addr v12, v14

    aget-byte v16, v8, v12

    xor-int v9, v16, v15

    int-to-byte v9, v9

    aput-byte v9, v8, v12

    .line 181
    ushr-int/lit8 v13, v13, 0x8

    .line 175
    .end local v15    # "v":B
    add-int/lit8 v14, v14, 0x1

    const/16 v9, 0x8

    const/4 v12, 0x1

    goto :goto_2

    .line 184
    .end local v14    # "k":I
    :cond_0
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v9, v8, v10, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 185
    const/16 v9, 0x8

    invoke-static {v8, v10, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    add-int/lit8 v12, v11, -0x1

    mul-int/2addr v12, v9

    invoke-static {v8, v9, v6, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    .end local v13    # "t":I
    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    goto :goto_1

    .line 167
    .end local v11    # "i":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    const/4 v12, 0x1

    goto :goto_0

    .line 190
    .end local v5    # "j":I
    :cond_2
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v7, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    return-object v6

    .line 192
    :cond_3
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "checksum failed"

    invoke-direct {v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    .end local v6    # "block":[B
    .end local v7    # "a":[B
    .end local v8    # "buf":[B
    :cond_4
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v6, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    .end local v4    # "n":I
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "not set for unwrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist wrap([BII)[B
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .line 92
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_4

    .line 97
    div-int/lit8 v0, p3, 0x8

    .line 99
    .local v0, "n":I
    mul-int/lit8 v1, v0, 0x8

    if-ne v1, p3, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v1

    add-int/2addr v2, p3

    new-array v2, v2, [B

    .line 105
    .local v2, "block":[B
    array-length v3, v1

    const/16 v4, 0x8

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 107
    .local v3, "buf":[B
    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 112
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v5, 0x6

    if-eq v1, v5, :cond_2

    .line 114
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    if-gt v5, v0, :cond_1

    .line 116
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v2, v6, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    mul-int/lit8 v7, v5, 0x8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    invoke-static {v2, v7, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v3, v6, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 120
    mul-int v7, v0, v1

    add-int/2addr v7, v5

    .line 121
    .local v7, "t":I
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_2
    if-eqz v7, :cond_0

    .line 123
    int-to-byte v9, v7

    .line 125
    .local v9, "v":B
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-byte v11, v3, v10

    xor-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 127
    ushr-int/lit8 v7, v7, 0x8

    .line 121
    .end local v9    # "v":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 130
    .end local v8    # "k":I
    :cond_0
    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    mul-int/lit8 v8, v5, 0x8

    invoke-static {v3, v4, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    .end local v7    # "t":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
    .end local v5    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "j":I
    :cond_2
    return-object v2

    .line 101
    .end local v2    # "block":[B
    .end local v3    # "buf":[B
    :cond_3
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "n":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
