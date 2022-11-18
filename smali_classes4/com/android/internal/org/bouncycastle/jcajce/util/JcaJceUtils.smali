.class public Lcom/android/internal/org/bouncycastle/jcajce/util/JcaJceUtils;
.super Ljava/lang/Object;
.source "JcaJceUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static blacklist extractParameters(Ljava/security/AlgorithmParameters;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    :try_start_0
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v0, "asn1Params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 46
    .end local v0    # "asn1Params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    move-object v0, v1

    .line 51
    .local v0, "asn1Params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    return-object v0
.end method

.method public static blacklist getDigestAlgName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1
    .param p0, "digestAlgOID"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "MD5"

    return-object v0

    .line 90
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "SHA1"

    return-object v0

    .line 94
    :cond_1
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "SHA224"

    return-object v0

    .line 98
    :cond_2
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    const-string v0, "SHA256"

    return-object v0

    .line 102
    :cond_3
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    const-string v0, "SHA384"

    return-object v0

    .line 106
    :cond_4
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    const-string v0, "SHA512"

    return-object v0

    .line 132
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist loadParameters(Ljava/security/AlgorithmParameters;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p0, "params"    # Ljava/security/AlgorithmParameters;
    .param p1, "sParams"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    const-string v1, "ASN.1"

    invoke-virtual {p0, v0, v1}, Ljava/security/AlgorithmParameters;->init([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 74
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
