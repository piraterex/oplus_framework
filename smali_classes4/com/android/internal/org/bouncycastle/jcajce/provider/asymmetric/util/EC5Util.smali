.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;
.super Ljava/lang/Object;
.source "EC5Util.java"


# static fields
.field private static blacklist customCurves:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    .line 46
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 47
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 52
    .local v2, "curveParams":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-eqz v2, :cond_0

    .line 54
    sget-object v3, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "curveParams":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    :cond_0
    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 14
    .param p0, "ec"    # Ljava/security/spec/EllipticCurve;

    .line 277
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    .line 278
    .local v0, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v8

    .line 279
    .local v8, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v9

    .line 281
    .local v9, "b":Ljava/math/BigInteger;
    instance-of v1, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_1

    .line 283
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    move-object v2, v0

    check-cast v2, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v2}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 285
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    sget-object v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->customCurves:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    return-object v2

    .line 290
    :cond_0
    return-object v1

    .line 294
    .end local v1    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;
    :cond_1
    move-object v10, v0

    check-cast v10, Ljava/security/spec/ECFieldF2m;

    .line 295
    .local v10, "fieldF2m":Ljava/security/spec/ECFieldF2m;
    invoke-virtual {v10}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v11

    .line 296
    .local v11, "m":I
    invoke-virtual {v10}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->convertMidTerms([I)[I

    move-result-object v12

    .line 297
    .local v12, "ks":[I
    new-instance v13, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v1, 0x0

    aget v3, v12, v1

    const/4 v1, 0x1

    aget v4, v12, v1

    const/4 v1, 0x2

    aget v5, v12, v1

    move-object v1, v13

    move v2, v11

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v13
.end method

.method public static blacklist convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 5
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "seed"    # [B

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    move-result-object v0

    .line 267
    .local v0, "field":Ljava/security/spec/ECField;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .local v1, "a":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 271
    .local v2, "b":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/EllipticCurve;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v3
.end method

.method public static blacklist convertField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
    .locals 5
    .param p0, "field"    # Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    .line 303
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 309
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    move-result-object v0

    .line 310
    .local v0, "poly":Lcom/android/internal/org/bouncycastle/math/field/Polynomial;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v1

    .line 311
    .local v1, "exponents":[I
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v3, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->reverse([I)[I

    move-result-object v2

    .line 312
    .local v2, "ks":[I
    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v4

    invoke-direct {v3, v4, v2}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v3
.end method

.method public static blacklist convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p1, "point"    # Ljava/security/spec/ECPoint;

    .line 361
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "point"    # Ljava/security/spec/ECPoint;

    .line 356
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;
    .locals 3
    .param p0, "point"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 368
    new-instance v0, Ljava/security/spec/ECPoint;

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 368
    return-object v0
.end method

.method public static blacklist convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    .locals 13
    .param p0, "ecSpec"    # Ljava/security/spec/ECParameterSpec;

    .line 336
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 338
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 339
    .local v8, "g":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    .line 340
    .local v9, "n":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 341
    .local v10, "h":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v11

    .line 343
    .local v11, "seed":[B
    instance-of v1, p0, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v1, :cond_0

    .line 345
    new-instance v12, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v12

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;-><init>(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v12

    .line 350
    :cond_0
    new-instance v7, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method

.method public static blacklist convertSpec(Ljava/security/spec/EllipticCurve;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .locals 9
    .param p0, "ellipticCurve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "spec"    # Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    .line 320
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 322
    .local v0, "g":Ljava/security/spec/ECPoint;
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v1, :cond_0

    .line 324
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v8

    move-object v2, v7

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v8

    .line 330
    .end local v7    # "name":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public static blacklist convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/ECParameterSpec;
    .locals 10
    .param p0, "params"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 166
    .local v0, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 167
    .local v1, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v1, :cond_0

    .line 169
    sget-object v2, Lcom/android/internal/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v2

    .line 170
    .local v2, "additionalECParameters":Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 176
    .end local v2    # "additionalECParameters":Ljava/util/Map;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 178
    .local v2, "ellipticCurve":Ljava/security/spec/EllipticCurve;
    new-instance v9, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;

    .line 179
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getCurveName(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 182
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 183
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    move-object v3, v9

    move-object v5, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v9

    .line 184
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .local v0, "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_1

    .line 185
    .end local v0    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const/4 v0, 0x0

    .restart local v0    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_1

    .line 191
    .end local v0    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 192
    .local v0, "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 194
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 196
    .restart local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 198
    .restart local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 200
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 202
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 203
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 204
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .local v3, "ecSpec":Ljava/security/spec/ECParameterSpec;
    goto :goto_0

    .line 208
    .end local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_3
    new-instance v3, Ljava/security/spec/ECParameterSpec;

    .line 210
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 211
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 214
    .end local v1    # "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :goto_0
    move-object v0, v3

    goto :goto_1

    .line 235
    .end local v2    # "ellipticCurve":Ljava/security/spec/EllipticCurve;
    .end local v3    # "ecSpec":Ljava/security/spec/ECParameterSpec;
    :cond_4
    const/4 v1, 0x0

    move-object v0, v1

    .line 239
    .local v0, "ecSpec":Ljava/security/spec/ECParameterSpec;
    :goto_1
    return-object v0
.end method

.method public static blacklist convertToSpec(Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 5
    .param p0, "domainParameters"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 245
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 245
    return-object v0
.end method

.method public static blacklist convertToSpec(Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 5
    .param p0, "domainParameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 255
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Ljava/security/spec/ECPoint;

    move-result-object v2

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 255
    return-object v0
.end method

.method public static blacklist getCurve(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 4
    .param p0, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;

    .line 79
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAcceptableNamedCurves()Ljava/util/Set;

    move-result-object v0

    .line 81
    .local v0, "acceptableCurves":Ljava/util/Set;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 85
    .local v1, "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "named curve not acceptable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 89
    .local v2, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v2, :cond_2

    .line 91
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    .line 94
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 95
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    nop

    .line 100
    .end local v1    # "oid":Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_1

    .line 101
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 103
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .restart local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    goto :goto_1

    .line 107
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 108
    .local v1, "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_5

    .line 112
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 114
    .local v2, "ecP":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 115
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    nop

    .line 134
    .end local v1    # "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :goto_1
    return-object v2

    .line 125
    .end local v2    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .restart local v1    # "pSeq":Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "GOST is not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "encoded parameters not acceptable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    .locals 8
    .param p0, "configuration"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
    .param p1, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 143
    if-nez p1, :cond_0

    .line 145
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 147
    .local v0, "iSpec":Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v7

    .line 148
    .local v0, "domainParameters":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    goto :goto_0

    .line 151
    .end local v0    # "domainParameters":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->getDomainParameters(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;)Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 154
    .restart local v0    # "domainParameters":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    :goto_0
    return-object v0
.end method
