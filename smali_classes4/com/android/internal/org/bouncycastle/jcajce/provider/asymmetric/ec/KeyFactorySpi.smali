.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;
.source "KeyFactorySpi.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECMQV;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDHC;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDH;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$ECDSA;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi$EC;
    }
.end annotation


# instance fields
.field blacklist algorithm:Ljava/lang/String;

.field blacklist configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 51
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    .line 54
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 228
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v0

    .line 232
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v0, :cond_1

    .line 234
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Ljava/security/spec/ECPrivateKeySpec;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v0

    .line 254
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 263
    :try_start_0
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;

    if-eqz v0, :cond_0

    .line 265
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v0

    .line 267
    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Ljava/security/spec/ECPublicKeySpec;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 295
    :cond_1
    nop

    .line 297
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid KeySpec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "spec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 77
    const-class v0, Ljava/security/spec/KeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    .line 79
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 80
    .local v0, "k":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v1

    .line 86
    :cond_1
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 88
    .local v1, "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    .line 91
    .end local v0    # "k":Ljava/security/interfaces/ECPublicKey;
    .end local v1    # "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_2
    const-class v0, Ljava/security/spec/KeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_5

    .line 93
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 95
    .local v0, "k":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 97
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v1

    .line 101
    :cond_4
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 103
    .restart local v1    # "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    return-object v2

    .line 106
    .end local v0    # "k":Ljava/security/interfaces/ECPrivateKey;
    .end local v1    # "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_5
    const-class v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_7

    .line 108
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    .line 109
    .local v0, "k":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 111
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    return-object v1

    .line 115
    :cond_6
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 117
    .restart local v1    # "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPublicKeySpec;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    return-object v2

    .line 120
    .end local v0    # "k":Ljava/security/interfaces/ECPublicKey;
    .end local v1    # "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_7
    const-class v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_9

    .line 122
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 124
    .local v0, "k":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 126
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    return-object v1

    .line 130
    :cond_8
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 132
    .restart local v1    # "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)V

    return-object v2

    .line 221
    .end local v0    # "k":Ljava/security/interfaces/ECPrivateKey;
    .end local v1    # "implicitSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 60
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v0

    .line 64
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    move-object v1, p1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/security/interfaces/ECPrivateKey;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v0

    .line 69
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generatePrivate(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 305
    .local v0, "algOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v1

    .line 311
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist generatePublic(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 320
    .local v0, "algOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/KeyFactorySpi;->configuration:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V

    return-object v1

    .line 326
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
