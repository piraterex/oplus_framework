.class public Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

.field blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    .line 76
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 46
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 47
    .local v1, "nBitLength":I
    ushr-int/lit8 v2, v1, 0x2

    .line 52
    .local v2, "minWeight":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 54
    .local v3, "d":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 56
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 61
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 69
    .local v4, "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v7, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 35
    .local v0, "ecP":Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 36
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 37
    return-void
.end method
