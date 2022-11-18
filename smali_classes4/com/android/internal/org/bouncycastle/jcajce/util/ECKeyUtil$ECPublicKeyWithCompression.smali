.class Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;
.super Ljava/lang/Object;
.source "ECKeyUtil.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECPublicKeyWithCompression"
.end annotation


# instance fields
.field private final blacklist ecPublicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor blacklist <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0
    .param p1, "ecPublicKey"    # Ljava/security/interfaces/ECPublicKey;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;->ecPublicKey:Ljava/security/interfaces/ECPublicKey;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist test-api getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;->ecPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEncoded()[B
    .locals 9

    .line 63
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;->ecPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 65
    .local v0, "publicKeyInfo":Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    move-result-object v1

    .line 69
    .local v1, "params":Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    .local v2, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    .line 74
    .local v3, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v3, :cond_0

    .line 76
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    .line 78
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 79
    .end local v3    # "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    goto :goto_0

    .line 80
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 87
    .local v2, "x9":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    move-object v2, v3

    .line 90
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 91
    .local v3, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Z)V

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    .line 95
    .local v4, "pEnc":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    :try_start_0
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 97
    :catch_0
    move-exception v5

    .line 99
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to encode EC public key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v3    # "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v4    # "pEnc":Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "unable to identify implictlyCA"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api getFormat()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;->ecPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;->ecPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getW()Ljava/security/spec/ECPoint;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/util/ECKeyUtil$ECPublicKeyWithCompression;->ecPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method
