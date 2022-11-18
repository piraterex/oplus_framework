.class public Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$ECConverter;,
        Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter;,
        Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHAgreementConverter;,
        Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;,
        Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;,
        Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
    }
.end annotation


# static fields
.field private static blacklist converters:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    .line 83
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHPublicNumberConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHAgreementConverter;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHAgreementConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DHAgreementConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$ECConverter;

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$ECConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$ECConverter-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 5
    .param p0, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p1, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 160
    .local v0, "algID":Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->converters:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;

    .line 161
    .local v1, "converter":Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;->getPublicKeyParameters(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    return-object v2

    .line 163
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "algorithm identifier in public key not recognised: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist createKey(Ljava/io/InputStream;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createKey([B)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "keyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;->createKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getRawKey(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;I)[B
    .locals 3
    .param p0, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p1, "defaultParams"    # Ljava/lang/Object;
    .param p2, "expectedSize"    # I

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    .line 560
    .local v0, "result":[B
    array-length v1, v0

    if-ne p2, v1, :cond_0

    .line 564
    return-object v0

    .line 562
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "public key encoding has incorrect length"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
