.class Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$ECConverter;
.super Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECConverter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$ECConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$ECConverter;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getPublicKeyParameters(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 9
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;

    .line 285
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v0

    .line 288
    .local v0, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 292
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 293
    .local v2, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v2, :cond_0

    .line 295
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 297
    :cond_0
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-direct {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/ECNamedDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v1, v3

    .line 298
    .end local v2    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v1, "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_0

    .line 299
    .end local v1    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .restart local v1    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_0

    .line 305
    .end local v1    # "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 306
    .local v1, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)V

    move-object v1, v2

    .line 309
    .local v1, "dParams":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v2

    .line 310
    .local v2, "bits":Lcom/android/internal/org/bouncycastle/asn1/DERBitString;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v3

    .line 311
    .local v3, "data":[B
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 316
    .local v4, "key":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    const/4 v5, 0x0

    aget-byte v5, v3, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    array-length v6, v3

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_4

    aget-byte v5, v3, v7

    const/4 v6, 0x3

    if-eq v5, v7, :cond_3

    aget-byte v5, v3, v7

    if-ne v5, v6, :cond_4

    .line 319
    :cond_3
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I

    move-result v5

    .line 321
    .local v5, "qLength":I
    array-length v7, v3

    sub-int/2addr v7, v6

    if-lt v5, v7, :cond_4

    .line 325
    :try_start_0
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 330
    goto :goto_1

    .line 327
    :catch_0
    move-exception v6

    .line 329
    .local v6, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "error recovering public key"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 334
    .end local v5    # "qLength":I
    .end local v6    # "ex":Ljava/io/IOException;
    :cond_4
    :goto_1
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    .line 336
    .local v5, "derQ":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v6
.end method
