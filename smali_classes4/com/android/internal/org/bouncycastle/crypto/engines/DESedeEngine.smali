.class public Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;
.source "DESedeEngine.java"


# static fields
.field protected static final blacklist BLOCK_SIZE:I = 0x8


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist workingKey1:[I

.field private blacklist workingKey2:[I

.field private blacklist workingKey3:[I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 19
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 20
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "DESede"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .locals 1

    .line 84
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 43
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_3

    .line 48
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 50
    .local v0, "keyMaster":[B
    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    array-length v1, v0

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "key size must be 16 or 24 bytes."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 57
    const/16 v1, 0x8

    new-array v4, v1, [B

    .line 58
    .local v4, "key1":[B
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 61
    new-array v5, v1, [B

    .line 62
    .local v5, "key2":[B
    array-length v7, v5

    invoke-static {v0, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    xor-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 65
    array-length v7, v0

    if-ne v7, v3, :cond_2

    .line 67
    new-array v1, v1, [B

    .line 68
    .local v1, "key3":[B
    array-length v3, v1

    invoke-static {v0, v2, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 70
    .end local v1    # "key3":[B
    goto :goto_1

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 75
    :goto_1
    return-void

    .line 45
    .end local v0    # "keyMaster":[B
    .end local v4    # "key1":[B
    .end local v5    # "key2":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DESede init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBlock([BI[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 93
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v1, :cond_3

    .line 98
    add-int/lit8 v0, p2, 0x8

    array-length v2, p1

    if-gt v0, v2, :cond_2

    .line 103
    add-int/lit8 v0, p4, 0x8

    array-length v2, p3

    if-gt v0, v2, :cond_1

    .line 108
    const/16 v6, 0x8

    new-array v7, v6, [B

    .line 110
    .local v7, "temp":[B
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 113
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v3, 0x0

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 119
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v3, 0x0

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 120
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 123
    :goto_0
    return v6

    .line 105
    .end local v7    # "temp":[B
    :cond_1
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .locals 0

    .line 128
    return-void
.end method
