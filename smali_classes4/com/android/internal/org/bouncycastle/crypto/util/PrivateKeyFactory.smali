.class public Lcom/android/internal/org/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 13
    .param p0, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 101
    .local v0, "algId":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 103
    .local v1, "algOID":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 104
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 116
    :cond_0
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;

    move-result-object v2

    .line 119
    .local v2, "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 121
    .local v3, "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v4

    .line 122
    .local v4, "lVal":Ljava/math/BigInteger;
    if-nez v4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 123
    .local v5, "l":I
    :goto_0
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 125
    .local v6, "dhParams":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    return-object v7

    .line 139
    .end local v2    # "params":Lcom/android/internal/org/bouncycastle/asn1/pkcs/DHParameter;
    .end local v3    # "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .end local v4    # "lVal":Ljava/math/BigInteger;
    .end local v5    # "l":I
    .end local v6    # "dhParams":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    :cond_2
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 142
    .local v2, "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 144
    .local v3, "de":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v4, 0x0

    .line 145
    .local v4, "parameters":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v3, :cond_3

    .line 147
    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v5

    .line 148
    .local v5, "params":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v4, v6

    .line 151
    .end local v5    # "params":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_3
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    return-object v5

    .line 153
    .end local v2    # "derX":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .end local v3    # "de":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .end local v4    # "parameters":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    :cond_4
    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 155
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v2

    .line 160
    .local v2, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 162
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 164
    .local v3, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 165
    .local v4, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v4, :cond_5

    .line 167
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 169
    :cond_5
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v5, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v3, v5

    .line 170
    .local v3, "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_1

    .line 173
    .end local v3    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v4    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_6
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v4

    .line 174
    .restart local v4    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 175
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v10

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 178
    .restart local v3    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;

    move-result-object v5

    .line 179
    .local v5, "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v6

    .line 181
    .local v6, "d":Ljava/math/BigInteger;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-direct {v7, v6, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v7

    .line 295
    .end local v2    # "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .end local v3    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .end local v4    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .end local v5    # "ec":Lcom/android/internal/org/bouncycastle/asn1/sec/ECPrivateKey;
    .end local v6    # "d":Ljava/math/BigInteger;
    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "algorithm identifier in private key not recognised"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v2

    .line 109
    .local v2, "keyStructure":Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v12, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    .line 110
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v6

    .line 111
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v9

    .line 112
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 109
    return-object v12
.end method

.method public static blacklist createKey(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createKey([B)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "privateKeyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PrivateKeyFactory;->createKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getRawKey(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;I)[B
    .locals 3
    .param p0, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .param p1, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 303
    .local v0, "result":[B
    array-length v1, v0

    if-ne p1, v1, :cond_0

    .line 307
    return-object v0

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "private key encoding has incorrect length"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
