.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.super Ljava/lang/Object;
.source "AbstractECMultiplier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 33
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .line 13
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 14
    .local v0, "sign":I
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;->multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 20
    .local v1, "positive":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    if-lez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 26
    .local v2, "result":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;->checkResult(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 16
    .end local v1    # "positive":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "result":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method protected abstract blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end method
