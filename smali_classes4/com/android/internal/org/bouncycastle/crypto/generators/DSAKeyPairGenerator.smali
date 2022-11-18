.class public Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 27
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "g"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    .line 69
    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "q"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;

    .line 52
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x2

    .line 59
    .local v0, "minWeight":I
    :goto_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 60
    .local v1, "x":Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 62
    return-object v1

    .line 64
    .end local v1    # "x":Ljava/math/BigInteger;
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 41
    .local v0, "dsaParams":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 42
    .local v1, "x":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 44
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-direct {v4, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-direct {v5, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    invoke-direct {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 35
    return-void
.end method
