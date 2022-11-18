.class Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;
.super Ljava/lang/Object;
.source "ECUtils.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 27
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetKeyParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static blacklist getDomainParametersFromGenSpec(Ljava/security/spec/ECGenParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 1
    .param p0, "genSpec"    # Ljava/security/spec/ECGenParameterSpec;

    .line 32
    invoke-virtual {p0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getDomainParametersFromName(Ljava/security/spec/ECParameterSpec;Z)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .locals 8
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "withCompression"    # Z

    .line 69
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_1

    .line 71
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 72
    .local v0, "curveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object v2, p0

    check-cast v2, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 76
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    move-object v0, v1

    .line 77
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 78
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    if-nez p0, :cond_2

    .line 80
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V

    .restart local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 84
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 86
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 88
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-direct {v3, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V

    .line 89
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    .line 90
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 91
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 93
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v0, v2

    .line 96
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_0
    return-object v0
.end method

.method static blacklist getDomainParametersFromName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 3
    .param p0, "curveName"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "oidID":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    move-object v0, v1

    .line 44
    .local v0, "domainParameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    .line 47
    .end local v0    # "domainParameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 50
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .restart local v0    # "domainParameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    .line 54
    .end local v0    # "domainParameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_1
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .restart local v0    # "domainParameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :goto_0
    goto :goto_1

    .line 58
    .end local v0    # "domainParameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    move-object v0, v1

    .line 62
    .local v0, "domainParameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :goto_1
    return-object v0
.end method
