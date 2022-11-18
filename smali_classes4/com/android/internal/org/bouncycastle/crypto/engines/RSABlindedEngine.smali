.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;
.super Ljava/lang/Object;
.source "RSABlindedEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 23
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    return-void
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 41
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 45
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 47
    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    .line 55
    .end local v0    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_0
    goto :goto_1

    .line 58
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 60
    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    goto :goto_1

    .line 66
    :cond_2
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    .line 69
    :goto_1
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 117
    .local v0, "input":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v2, :cond_2

    .line 119
    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 121
    .local v1, "k":Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 122
    .local v2, "e":Ljava/math/BigInteger;
    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 125
    .local v3, "m":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 127
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {v4, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 128
    .local v5, "blindedInput":Ljava/math/BigInteger;
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 130
    .local v6, "blindedResult":Ljava/math/BigInteger;
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 131
    .local v7, "rInv":Ljava/math/BigInteger;
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 133
    .local v8, "result":Ljava/math/BigInteger;
    invoke-virtual {v8, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 137
    .end local v3    # "m":Ljava/math/BigInteger;
    .end local v4    # "r":Ljava/math/BigInteger;
    .end local v5    # "blindedInput":Ljava/math/BigInteger;
    .end local v6    # "blindedResult":Ljava/math/BigInteger;
    .end local v7    # "rInv":Ljava/math/BigInteger;
    goto :goto_0

    .line 135
    .restart local v3    # "m":Ljava/math/BigInteger;
    .restart local v4    # "r":Ljava/math/BigInteger;
    .restart local v5    # "blindedInput":Ljava/math/BigInteger;
    .restart local v6    # "blindedResult":Ljava/math/BigInteger;
    .restart local v7    # "rInv":Ljava/math/BigInteger;
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "RSA engine faulty decryption/signing detected"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 140
    .end local v3    # "m":Ljava/math/BigInteger;
    .end local v4    # "r":Ljava/math/BigInteger;
    .end local v5    # "blindedInput":Ljava/math/BigInteger;
    .end local v6    # "blindedResult":Ljava/math/BigInteger;
    .end local v7    # "rInv":Ljava/math/BigInteger;
    .end local v8    # "result":Ljava/math/BigInteger;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 142
    .end local v1    # "k":Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v2    # "e":Ljava/math/BigInteger;
    .restart local v8    # "result":Ljava/math/BigInteger;
    :goto_0
    goto :goto_1

    .line 145
    .end local v8    # "result":Ljava/math/BigInteger;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 148
    .restart local v8    # "result":Ljava/math/BigInteger;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object v1

    return-object v1

    .line 111
    .end local v0    # "input":Ljava/math/BigInteger;
    .end local v8    # "result":Ljava/math/BigInteger;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
