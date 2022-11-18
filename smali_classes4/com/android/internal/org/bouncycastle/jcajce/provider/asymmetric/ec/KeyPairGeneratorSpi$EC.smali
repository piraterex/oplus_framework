.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.source "KeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EC"
.end annotation


# static fields
.field private static blacklist ecParameters:Ljava/util/Hashtable;


# instance fields
.field blacklist algorithm:Ljava/lang/String;

.field blacklist configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field blacklist ecParams:Ljava/lang/Object;

.field blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

.field blacklist initialised:Z

.field blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

.field blacklist random:Ljava/security/SecureRandom;

.field blacklist strength:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    .line 69
    const/16 v1, 0xc0

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v3, "prime192v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xef

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v3, "prime239v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x100

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v3, "prime256v1"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0xe0

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-224"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x180

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-384"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    const/16 v1, 0x209

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    const-string v3, "P-521"

    invoke-direct {v2, v3}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 80
    const-string v0, "EC"

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    .line 58
    const/16 v1, 0x100

    iput v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    .line 59
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    .line 81
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    .line 58
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    .line 59
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    .line 90
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 92
    return-void
.end method


# virtual methods
.method protected blacklist createKeyGenParamsBC(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    .locals 6
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .line 216
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method protected blacklist createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    .locals 6
    .param p1, "p"    # Ljava/security/spec/ECParameterSpec;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .line 221
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_0

    .line 223
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 225
    .local v0, "x9P":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 229
    .local v1, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v2, v1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v2

    .line 233
    .end local v0    # "x9P":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v1    # "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 234
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 235
    .local v1, "g":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    .line 236
    .local v2, "n":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 237
    .local v3, "h":Ljava/math/BigInteger;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 238
    .local v4, "dp":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-direct {v5, v4, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    return-object v5
.end method

.method protected blacklist createNamedCurveSpec(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;
    .locals 10
    .param p1, "curveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 246
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 247
    .local v0, "p":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_2

    .line 252
    :try_start_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    move-object v0, v1

    .line 253
    if-nez v0, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v1

    .line 257
    .local v1, "extraCurves":Ljava/util/Map;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v0, v2

    .line 259
    if-eqz v0, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown curve OID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .end local v0    # "p":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
    .end local p1    # "curveName":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "extraCurves":Ljava/util/Map;
    .restart local v0    # "p":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;
    .restart local p1    # "curveName":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 265
    :catch_0
    move-exception v1

    .line 267
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown curve name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    const/4 v8, 0x0

    .line 274
    .local v8, "seed":[B
    new-instance v9, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v9

    move-object v2, p1

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v9
.end method

.method public whitelist test-api generateKeyPair()Ljava/security/KeyPair;
    .locals 13

    .line 182
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    if-nez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialize(ILjava/security/SecureRandom;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 188
    .local v0, "pair":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 189
    .local v1, "pub":Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 191
    .local v2, "priv":Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    instance-of v4, v3, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v4, :cond_1

    .line 193
    move-object v9, v3

    check-cast v9, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 195
    .local v9, "p":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v3, v4, v1, v9, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    move-object v10, v3

    .line 196
    .local v10, "pubKey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    new-instance v11, Ljava/security/KeyPair;

    new-instance v12, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    move-object v3, v12

    move-object v5, v2

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v11, v10, v12}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v11

    .line 199
    .end local v9    # "p":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .end local v10    # "pubKey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    :cond_1
    if-nez v3, :cond_2

    .line 201
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v4, v5, v1, v6}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v5, v6, v2, v7}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3

    .line 206
    :cond_2
    move-object v9, v3

    check-cast v9, Ljava/security/spec/ECParameterSpec;

    .line 208
    .local v9, "p":Ljava/security/spec/ECParameterSpec;
    new-instance v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v3, v4, v1, v9, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    move-object v10, v3

    .line 210
    .restart local v10    # "pubKey":Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
    new-instance v11, Ljava/security/KeyPair;

    new-instance v12, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->algorithm:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    move-object v3, v12

    move-object v5, v2

    move-object v6, v10

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    invoke-direct {v11, v10, v12}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v11
.end method

.method public whitelist test-api initialize(ILjava/security/SecureRandom;)V
    .locals 4
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 98
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->strength:I

    .line 102
    if-eqz p2, :cond_0

    .line 103
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    .line 107
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    .line 108
    .local v0, "ecParams":Ljava/security/spec/ECGenParameterSpec;
    if-eqz v0, :cond_1

    .line 115
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string/jumbo v3, "key size not configurable."

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_1
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string/jumbo v2, "unknown key size."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 129
    if-nez p2, :cond_0

    .line 130
    iget-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->random:Ljava/security/SecureRandom;

    .line 133
    :cond_0
    if-nez p1, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 136
    .local v0, "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    if-eqz v0, :cond_1

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    .line 142
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsBC(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 143
    .end local v0    # "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    goto :goto_0

    .line 138
    .restart local v0    # "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "null parameter passed but no implicitCA set"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v0    # "implicitCA":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    if-eqz v0, :cond_3

    .line 146
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    .line 147
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsBC(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    goto :goto_0

    .line 149
    :cond_3
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_4

    .line 151
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    goto :goto_0

    .line 154
    :cond_4
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_5

    .line 156
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 158
    :cond_5
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    if-eqz v0, :cond_6

    .line 160
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 164
    :cond_6
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 168
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 176
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->engine:Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->initialised:Z

    .line 178
    return-void

    .line 172
    .restart local v0    # "name":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameterSpec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected blacklist initializeNamedCurve(Ljava/lang/String;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "curveName"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createNamedCurveSpec(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    move-result-object v0

    .line 281
    .local v0, "namedCurve":Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->ecParams:Ljava/lang/Object;

    .line 282
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->createKeyGenParamsJCE(Ljava/security/spec/ECParameterSpec;Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyPairGeneratorSpi$EC;->param:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 283
    return-void
.end method
