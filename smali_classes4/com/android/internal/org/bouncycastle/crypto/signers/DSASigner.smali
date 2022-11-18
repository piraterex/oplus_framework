.class public Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/DSAExt;


# instance fields
.field private final blacklist kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 46
    return-void
.end method

.method private blacklist calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .line 158
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 160
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 166
    .local v0, "trunc":[B
    array-length v1, v0

    const/4 v3, 0x0

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private blacklist getRandomizer(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .line 180
    const/4 v0, 0x7

    .line 182
    .local v0, "randomBits":I
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v2, 0x80

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist generateSignature([B)[Ljava/math/BigInteger;
    .locals 9
    .param p1, "message"    # [B

    .line 91
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 92
    .local v0, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 93
    .local v1, "q":Ljava/math/BigInteger;
    invoke-direct {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 94
    .local v2, "m":Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    .line 96
    .local v3, "x":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4, v1, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 105
    :goto_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v4

    .line 108
    .local v4, "k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->getRandomizer(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 110
    .local v5, "r":Ljava/math/BigInteger;
    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 112
    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 114
    .local v6, "s":Ljava/math/BigInteger;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v6, v7, v8

    return-object v7
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_1

    .line 56
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    .line 58
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 60
    .local v1, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    .line 61
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 62
    .end local v1    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_0

    .line 65
    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_0

    .line 70
    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    .line 73
    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 74
    return-void
.end method

.method protected blacklist initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .line 174
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 10
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 128
    .local v0, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 129
    .local v1, "q":Ljava/math/BigInteger;
    invoke-direct {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 130
    .local v2, "m":Ljava/math/BigInteger;
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 132
    .local v3, "zero":Ljava/math/BigInteger;
    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, 0x0

    if-gez v4, :cond_3

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    invoke-virtual {v3, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_2

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {v1, p3}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 144
    .local v4, "w":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 145
    .local v5, "u1":Ljava/math/BigInteger;
    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 147
    .local v6, "u2":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    .line 148
    .local v7, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 149
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v8, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 151
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 153
    .local v8, "v":Ljava/math/BigInteger;
    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    return v9

    .line 139
    .end local v4    # "w":Ljava/math/BigInteger;
    .end local v5    # "u1":Ljava/math/BigInteger;
    .end local v6    # "u2":Ljava/math/BigInteger;
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "v":Ljava/math/BigInteger;
    :cond_2
    :goto_0
    return v5

    .line 134
    :cond_3
    :goto_1
    return v5
.end method
