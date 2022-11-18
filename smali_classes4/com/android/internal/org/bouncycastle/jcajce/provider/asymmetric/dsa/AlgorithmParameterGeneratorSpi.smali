.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field protected blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

.field protected blacklist random:Ljava/security/SecureRandom;

.field protected blacklist strength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    .line 30
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 8

    .line 68
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 70
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .local v0, "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    goto :goto_0

    .line 74
    .end local v0    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 77
    .restart local v0    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_1

    .line 79
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 82
    :cond_1
    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    .line 84
    .local v2, "certainty":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-ne v3, v1, :cond_2

    .line 86
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v4, 0xa0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v1, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 87
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_1

    .line 89
    :cond_2
    if-le v3, v1, :cond_3

    .line 91
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v4, 0x100

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 99
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 105
    .local v1, "p":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    :try_start_0
    const-string v3, "DSA"

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 106
    .local v3, "params":Ljava/security/AlgorithmParameters;
    new-instance v4, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 113
    return-object v3

    .line 108
    .end local v3    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected whitelist test-api engineInit(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 37
    const/16 v0, 0x200

    if-lt p1, v0, :cond_4

    const/16 v0, 0xc00

    if-gt p1, v0, :cond_4

    .line 42
    const/16 v0, 0x400

    if-gt p1, v0, :cond_1

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be a multiple of 64 below 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    :goto_0
    if-le p1, v0, :cond_3

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_2

    goto :goto_1

    .line 49
    :cond_2
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be a multiple of 1024 above 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    .line 53
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 54
    return-void

    .line 39
    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be from 512 - 3072"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
