.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final blacklist IV_MATERIAL:I = 0x2

.field public static final blacklist KEY_MATERIAL:I = 0x1

.field public static final blacklist MAC_MATERIAL:I = 0x3


# instance fields
.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist u:I

.field private blacklist v:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 3
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 40
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 42
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 45
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist adjust([BI[B)V
    .locals 4
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .param p3, "b"    # [B

    .line 63
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 65
    .local v0, "x":I
    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, v0

    aput-byte v2, p1, v1

    .line 66
    ushr-int/lit8 v0, v0, 0x8

    .line 68
    array-length v1, p3

    add-int/lit8 v1, v1, -0x2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 70
    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 71
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 72
    ushr-int/lit8 v0, v0, 0x8

    .line 68
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist generateDerivedKey(II)[B
    .locals 17
    .param p1, "idByte"    # I
    .param p2, "n"    # I

    .line 83
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v2, v2, [B

    .line 84
    .local v2, "D":[B
    new-array v3, v1, [B

    .line 86
    .local v3, "dKey":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 88
    move/from16 v5, p1

    int-to-byte v6, v5

    aput-byte v6, v2, v4

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    .line 93
    .end local v4    # "i":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 95
    iget v4, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v7, v7

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v8

    mul-int/2addr v4, v7

    new-array v4, v4, [B

    .line 97
    .local v4, "S":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v4

    if-eq v7, v8, :cond_1

    .line 99
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    array-length v9, v9

    rem-int v9, v7, v9

    aget-byte v8, v8, v9

    aput-byte v8, v4, v7

    .line 97
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v7    # "i":I
    :cond_1
    goto :goto_2

    .line 104
    .end local v4    # "S":[B
    :cond_2
    new-array v4, v6, [B

    .line 109
    .restart local v4    # "S":[B
    :goto_2
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v7, v7

    if-eqz v7, :cond_4

    .line 111
    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v8, v8

    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v8, v9

    mul-int/2addr v7, v8

    new-array v7, v7, [B

    .line 113
    .local v7, "P":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 115
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    array-length v10, v10

    rem-int v10, v8, v10

    aget-byte v9, v9, v10

    aput-byte v9, v7, v8

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v8    # "i":I
    :cond_3
    goto :goto_4

    .line 120
    .end local v7    # "P":[B
    :cond_4
    new-array v7, v6, [B

    .line 123
    .restart local v7    # "P":[B
    :goto_4
    array-length v8, v4

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 125
    .local v8, "I":[B
    array-length v9, v4

    invoke-static {v4, v6, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v9, v4

    array-length v10, v7

    invoke-static {v7, v6, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v9, v9, [B

    .line 129
    .local v9, "B":[B
    iget v10, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int v11, v1, v10

    add-int/lit8 v11, v11, -0x1

    div-int/2addr v11, v10

    .line 130
    .local v11, "c":I
    new-array v10, v10, [B

    .line 132
    .local v10, "A":[B
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_5
    if-gt v12, v11, :cond_9

    .line 134
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v14, v2

    invoke-interface {v13, v2, v6, v14}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 135
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v14, v8

    invoke-interface {v13, v8, v6, v14}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 136
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v13, v10, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 137
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_6
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    if-ge v13, v14, :cond_5

    .line 139
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v15, v10

    invoke-interface {v14, v10, v6, v15}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 140
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v14, v10, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 137
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 143
    .end local v13    # "j":I
    :cond_5
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    array-length v14, v9

    if-eq v13, v14, :cond_6

    .line 145
    array-length v14, v10

    rem-int v14, v13, v14

    aget-byte v14, v10, v14

    aput-byte v14, v9, v13

    .line 143
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 148
    .end local v13    # "j":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_8
    array-length v14, v8

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v14, v15

    if-eq v13, v14, :cond_7

    .line 150
    mul-int/2addr v15, v13

    invoke-direct {v0, v8, v15, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    .line 148
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 153
    .end local v13    # "j":I
    :cond_7
    if-ne v12, v11, :cond_8

    .line 155
    add-int/lit8 v13, v12, -0x1

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v13, v14

    array-length v15, v3

    add-int/lit8 v16, v12, -0x1

    mul-int v16, v16, v14

    sub-int v15, v15, v16

    invoke-static {v10, v6, v3, v13, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 159
    :cond_8
    add-int/lit8 v13, v12, -0x1

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v13, v14

    array-length v14, v10

    invoke-static {v10, v6, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 163
    .end local v12    # "i":I
    :cond_9
    return-object v3
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    .line 216
    div-int/lit8 p1, p1, 0x8

    .line 218
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 220
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    .line 176
    div-int/lit8 p1, p1, 0x8

    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 180
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    .line 196
    div-int/lit8 p1, p1, 0x8

    .line 197
    div-int/lit8 p2, p2, 0x8

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 201
    .local v0, "dKey":[B
    const/4 v1, 0x2

    invoke-direct {p0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 203
    .local v1, "iv":[B
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
