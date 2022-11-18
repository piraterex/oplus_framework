.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "X9ECParameters.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field private blacklist fieldID:Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

.field private blacklist g:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

.field private blacklist h:Ljava/math/BigInteger;

.field private blacklist n:Ljava/math/BigInteger;

.field private blacklist seed:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 28
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 39
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hasValue(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 48
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 50
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 53
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    const/4 v4, 0x2

    .line 55
    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    .line 57
    .local v0, "x9c":Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 58
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 60
    .local v1, "p":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    if-eqz v2, :cond_1

    .line 62
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    goto :goto_0

    .line 66
    :cond_1
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-object v4, v1

    check-cast v4, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 69
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 70
    return-void

    .line 43
    .end local v0    # "x9c":Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;
    .end local v1    # "p":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad version in X9ECParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .line 92
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .line 101
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 7
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "g"    # Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .line 110
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 112
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    .line 113
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 114
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 115
    invoke-static {p5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 117
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    goto :goto_1

    .line 121
    :cond_0
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;

    .line 124
    .local v0, "field":Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lcom/android/internal/org/bouncycastle/math/field/Polynomial;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v1

    .line 125
    .local v1, "exponents":[I
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 127
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    aget v4, v1, v4

    aget v3, v1, v3

    invoke-direct {v2, v4, v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    goto :goto_0

    .line 129
    :cond_1
    array-length v2, v1

    const/4 v6, 0x5

    if-ne v2, v6, :cond_2

    .line 131
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    const/4 v6, 0x4

    aget v6, v1, v6

    aget v3, v1, v3

    aget v4, v1, v4

    aget v5, v1, v5

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    .line 137
    .end local v0    # "field":Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;
    .end local v1    # "exponents":[I
    :goto_0
    nop

    .line 142
    :goto_1
    return-void

    .line 135
    .restart local v0    # "field":Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;
    .restart local v1    # "exponents":[I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only trinomial and pentomial curves are supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v0    # "field":Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;
    .end local v1    # "exponents":[I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'curve\' is of an unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 74
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    return-object v0

    .line 79
    :cond_0
    if-eqz p0, :cond_1

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getBaseEntry()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    return-object v0
.end method

.method public blacklist getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public blacklist getCurveEntry()Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;
    .locals 3

    .line 181
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    return-object v0
.end method

.method public blacklist getFieldIDEntry()Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    return-object v0
.end method

.method public blacklist getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getH()Ljava/math/BigInteger;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getN()Ljava/math/BigInteger;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSeed()[B
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasSeed()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 219
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 221
    .local v0, "v":Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    sget-object v2, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 222
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->fieldID:Lcom/android/internal/org/bouncycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 223
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9Curve;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 224
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->g:Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 225
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 227
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 229
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 232
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
