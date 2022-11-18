.class Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter;
.super Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "PublicKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DSAConverter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$DSAConverter;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist getPublicKeyParameters(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p1, "keyInfo"    # Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p2, "defaultParams"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 267
    .local v0, "derY":Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 269
    .local v1, "de":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    const/4 v2, 0x0

    .line 270
    .local v2, "parameters":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    if-eqz v1, :cond_0

    .line 272
    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v3

    .line 273
    .local v3, "params":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v2, v4

    .line 276
    .end local v3    # "params":Lcom/android/internal/org/bouncycastle/asn1/x509/DSAParameter;
    :cond_0
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)V

    return-object v3
.end method
