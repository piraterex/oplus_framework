.class public Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"


# static fields
.field public static final blacklist PRECOMP_NAME:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCombSize(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I
    .locals 2
    .param p0, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 15
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 16
    .local v0, "order":Ljava/math/BigInteger;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    :goto_0
    return v1
.end method

.method public static blacklist getFixedPointPreCompInfo(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 21
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .locals 3
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 26
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 28
    .local v0, "c":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointUtil$1;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    const-string v2, "bc_fixed_point"

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    return-object v1
.end method
