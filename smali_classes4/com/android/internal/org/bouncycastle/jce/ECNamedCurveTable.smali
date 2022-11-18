.class public Lcom/android/internal/org/bouncycastle/jce/ECNamedCurveTable;
.super Ljava/lang/Object;
.source "ECNamedCurveTable.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getNames()Ljava/util/Enumeration;
    .locals 1

    .line 76
    invoke-static {}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getParameterSpec(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 27
    .local v0, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v0, :cond_0

    .line 31
    :try_start_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 36
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 38
    :goto_0
    if-nez v0, :cond_0

    .line 40
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 45
    :try_start_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 50
    goto :goto_1

    .line 47
    :catch_1
    move-exception v1

    .line 55
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 57
    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    .line 62
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 63
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 64
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    .line 65
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v7

    .line 66
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v8

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 60
    return-object v1
.end method
