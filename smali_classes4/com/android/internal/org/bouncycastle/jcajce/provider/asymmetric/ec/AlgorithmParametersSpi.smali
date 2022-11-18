.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;
.super Ljava/security/AlgorithmParametersSpi;
.source "AlgorithmParametersSpi.java"


# instance fields
.field private blacklist curveName:Ljava/lang/String;

.field private blacklist ecParameterSpec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetEncoded(Ljava/lang/String;)[B
    .locals 8
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;)V

    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 161
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 163
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .restart local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 167
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 168
    .local v0, "ecSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 169
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 170
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V

    .line 171
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    .line 173
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 175
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v0, v2

    .line 178
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getEncoded()[B

    move-result-object v1

    return-object v1

    .line 181
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameters format in AlgorithmParameters object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 113
    .local p1, "paramSpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    const-class v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 121
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 123
    .local v0, "namedCurveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_1

    .line 125
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 127
    :cond_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 131
    .end local v0    # "namedCurveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveOid(Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 133
    .restart local v0    # "namedCurveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v0, :cond_3

    .line 135
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 139
    .end local v0    # "namedCurveOid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EC AlgorithmParameters cannot convert to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 12
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 41
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECGenParameterSpec;

    .line 44
    .local v0, "ecGenParameterSpec":Ljava/security/spec/ECGenParameterSpec;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->getDomainParametersFromGenSpec(Ljava/security/spec/ECGenParameterSpec;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 46
    .local v1, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    .line 51
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 52
    .local v2, "baseSpec":Ljava/security/spec/ECParameterSpec;
    new-instance v9, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    .line 53
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v9, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    .line 54
    .end local v0    # "ecGenParameterSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v2    # "baseSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_1

    .line 48
    .restart local v0    # "ecGenParameterSpec":Ljava/security/spec/ECGenParameterSpec;
    .restart local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_0
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EC curve name not recognized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v0    # "ecGenParameterSpec":Ljava/security/spec/ECGenParameterSpec;
    .end local v1    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_3

    .line 57
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v0, :cond_2

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    .line 65
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    .line 71
    :goto_1
    return-void

    .line 69
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineInit([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const-string v0, "ASN.1"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->engineInit([BLjava/lang/String;)V

    .line 78
    return-void
.end method

.method protected whitelist test-api engineInit([BLjava/lang/String;)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 88
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->getCurve(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 90
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    .line 94
    .local v2, "curveId":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    .line 95
    if-nez v3, :cond_0

    .line 97
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->curveName:Ljava/lang/String;

    .line 101
    .end local v2    # "curveId":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/AlgorithmParametersSpi;->ecParameterSpec:Ljava/security/spec/ECParameterSpec;

    .line 102
    .end local v0    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v1    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    nop

    .line 107
    return-void

    .line 105
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoded parameters format in AlgorithmParameters object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineToString()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "EC Parameters"

    return-object v0
.end method

.method protected blacklist isASN1FormatString(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .line 34
    if-eqz p1, :cond_1

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
