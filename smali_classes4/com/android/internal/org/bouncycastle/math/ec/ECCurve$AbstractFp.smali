.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "q"    # Ljava/math/BigInteger;

    .line 595
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->getPrimeField(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)V

    .line 596
    return-void
.end method

.method private static blacklist implRandomFieldElement(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "p"    # Ljava/math/BigInteger;

    .line 655
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 657
    .local v0, "x":Ljava/math/BigInteger;
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 658
    return-object v0

    .line 657
    :cond_0
    goto :goto_0
.end method

.method private static blacklist implRandomFieldElementMult(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "p"    # Ljava/math/BigInteger;

    .line 666
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 668
    .local v0, "x":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    .line 669
    return-object v0

    .line 668
    :cond_0
    goto :goto_0
.end method


# virtual methods
.method protected blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .line 629
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 630
    .local v0, "x":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 631
    .local v1, "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 636
    .local v2, "y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v2, :cond_2

    .line 641
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v3, v4, :cond_1

    .line 644
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 647
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 638
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid point compression"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 600
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    .line 610
    .local v0, "p":Ljava/math/BigInteger;
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElement(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 611
    .local v1, "fe1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElement(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 612
    .local v2, "fe2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    return-object v3
.end method

.method public blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 621
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->getField()Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    .line 622
    .local v0, "p":Ljava/math/BigInteger;
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElementMult(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 623
    .local v1, "fe1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->implRandomFieldElementMult(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 624
    .local v2, "fe2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    return-object v3
.end method
