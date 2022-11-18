.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private blacklist hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

.field private blacklist state:[B


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 38
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 44
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    .line 45
    return-void
.end method

.method private blacklist F([BI[B[BI)V
    .locals 6
    .param p1, "S"    # [B
    .param p2, "c"    # I
    .param p3, "iBuf"    # [B
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 54
    if-eqz p2, :cond_3

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p3

    invoke-interface {v1, p3, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 65
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 67
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v1

    invoke-static {v1, v0, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    const/4 v1, 0x1

    .local v1, "count":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v3

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 72
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 74
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v3

    if-eq v2, v4, :cond_1

    .line 76
    add-int v4, p5, v2

    aget-byte v5, p4, v4

    aget-byte v3, v3, v2

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "count":I
    :cond_2
    return-void

    .line 56
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist generateDerivedKey(I)[B
    .locals 14
    .param p1, "dkLen"    # I

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    .line 85
    .local v0, "hLen":I
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 86
    .local v1, "l":I
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 87
    .local v2, "iBuf":[B
    mul-int v3, v1, v0

    new-array v9, v3, [B

    .line 88
    .local v9, "outBytes":[B
    const/4 v3, 0x0

    .line 90
    .local v3, "outPos":I
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v10, v4

    .line 92
    .local v10, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v10}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 94
    const/4 v4, 0x1

    move v11, v3

    move v12, v4

    .end local v3    # "outPos":I
    .local v11, "outPos":I
    .local v12, "i":I
    :goto_0
    if-gt v12, v1, :cond_1

    .line 97
    const/4 v3, 0x3

    move v13, v3

    .line 98
    .local v13, "pos":I
    :goto_1
    aget-byte v3, v2, v13

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v13

    if-nez v3, :cond_0

    .line 100
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 103
    :cond_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v3, p0

    move-object v6, v2

    move-object v7, v9

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    .line 104
    add-int/2addr v11, v0

    .line 94
    .end local v13    # "pos":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 107
    .end local v12    # "i":I
    :cond_1
    return-object v9
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    .line 120
    div-int/lit8 p1, p1, 0x8

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 124
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    .line 140
    div-int/lit8 p1, p1, 0x8

    .line 141
    div-int/lit8 p2, p2, 0x8

    .line 143
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 145
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
