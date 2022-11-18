.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.super Ljava/lang/Object;
.source "ECFieldElement.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;,
        Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist bitLength()I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public abstract blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist getEncoded()[B
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getFieldName()Ljava/lang/String;
.end method

.method public abstract blacklist getFieldSize()I
.end method

.method public abstract blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist isOne()Z
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isZero()Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist squareMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "pow"    # I

    .line 72
    move-object v0, p0

    .line 73
    .local v0, "r":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public abstract blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist testBitZero()Z
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public abstract blacklist toBigInteger()Ljava/math/BigInteger;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
