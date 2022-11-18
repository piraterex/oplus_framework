.class public Lcom/android/internal/org/bouncycastle/jcajce/util/AlgorithmParametersUtils;
.super Ljava/lang/Object;
.source "AlgorithmParametersUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
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

    .line 37
    :try_start_0
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v0, "asn1Params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 39
    .end local v0    # "asn1Params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    move-object v0, v1

    .line 44
    .local v0, "asn1Params":Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    :goto_0
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

    .line 60
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    const-string v1, "ASN.1"

    invoke-virtual {p0, v0, v1}, Ljava/security/AlgorithmParameters;->init([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 66
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
