.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static blacklist lock:Ljava/lang/Object;

.field private static blacklist params:Ljava/util/Hashtable;


# instance fields
.field blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

.field blacklist initialised:Z

.field blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

.field blacklist random:Ljava/security/SecureRandom;

.field blacklist strength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 49
    const-string v0, "DSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    .line 42
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 44
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .locals 8

    .line 107
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_5

    .line 109
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    .local v0, "paramStrength":Ljava/lang/Integer;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    goto/16 :goto_2

    .line 117
    :cond_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    goto :goto_1

    .line 130
    :cond_1
    iget v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v2

    .line 139
    .local v2, "certainty":I
    iget v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    const/16 v4, 0x400

    if-ne v3, v4, :cond_3

    .line 141
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 142
    .local v3, "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    const-string v5, "com.android.internal.org.bouncycastle.dsa.FIPS186-2for1024bits"

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_0

    .line 148
    :cond_2
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v6, 0xa0

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v5, v4, v6, v2, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    move-object v4, v5

    .line 149
    .local v4, "dsaParams":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_0

    .line 152
    .end local v3    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    .end local v4    # "dsaParams":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    :cond_3
    if-le v3, v4, :cond_4

    .line 154
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v5, 0x100

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v4, v3, v5, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    move-object v3, v4

    .line 155
    .local v3, "dsaParams":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 156
    .local v4, "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    move-object v3, v4

    goto :goto_0

    .line 160
    .end local v3    # "dsaParams":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    .end local v4    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_4
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 161
    .local v3, "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 163
    :goto_0
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 165
    sget-object v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v2    # "certainty":I
    .end local v3    # "pGen":Lcom/android/internal/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_2
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    goto :goto_3

    .line 167
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 174
    .end local v0    # "paramStrength":Ljava/lang/Integer;
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 175
    .local v0, "pair":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .line 176
    .local v1, "pub":Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 178
    .local v2, "priv":Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-direct {v4, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    invoke-direct {v5, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .locals 6
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 56
    const/16 v0, 0x200

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_4

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_4

    :cond_0
    if-lt p1, v0, :cond_1

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_4

    .line 62
    :cond_1
    if-nez p2, :cond_2

    .line 63
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    move-object p2, v0

    .line 66
    :cond_2
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;

    move-result-object v0

    .line 68
    .local v0, "spec":Ljava/security/spec/DSAParameterSpec;
    if-eqz v0, :cond_3

    .line 70
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 72
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    goto :goto_0

    .line 77
    :cond_3
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 78
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 81
    :goto_0
    return-void

    .line 58
    .end local v0    # "spec":Ljava/security/spec/DSAParameterSpec;
    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be from 512 - 4096 and a multiple of 1024 above 1024"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 88
    instance-of v0, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v0, :cond_1

    .line 92
    move-object v0, p1

    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    .line 95
    .local v0, "dsaParams":Ljava/security/spec/DSAParameterSpec;
    if-nez p2, :cond_0

    .line 96
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    move-object p2, v1

    .line 99
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/internal/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 101
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 103
    return-void

    .line 90
    .end local v0    # "dsaParams":Ljava/security/spec/DSAParameterSpec;
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "parameter object not a DSAParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
