.class public Lcom/android/internal/org/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 23
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .line 24
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    .line 26
    .local v0, "minWidth":I
    const/4 v1, 0x1

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v3

    .line 27
    .local v3, "info":Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 28
    .local v4, "preComp":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 29
    .local v5, "preCompNeg":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v6

    .line 31
    .local v6, "width":I
    move-object/from16 v7, p2

    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object v8

    .line 33
    .local v8, "wnaf":[I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 35
    .local v9, "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    array-length v10, v8

    .line 41
    .local v10, "i":I
    const v11, 0xffff

    if-le v10, v1, :cond_2

    .line 43
    add-int/lit8 v10, v10, -0x1

    aget v12, v8, v10

    .line 44
    .local v12, "wi":I
    shr-int/lit8 v13, v12, 0x10

    .local v13, "digit":I
    and-int v14, v12, v11

    .line 46
    .local v14, "zeroes":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 47
    .local v15, "n":I
    if-gez v13, :cond_0

    move-object/from16 v16, v5

    goto :goto_0

    :cond_0
    move-object/from16 v16, v4

    .line 50
    .local v16, "table":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    shl-int/lit8 v11, v15, 0x2

    move/from16 v17, v0

    .end local v0    # "minWidth":I
    .local v17, "minWidth":I
    shl-int v0, v1, v6

    if-ge v11, v0, :cond_1

    .line 52
    invoke-static {v15}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 55
    .local v0, "highest":I
    sub-int v11, v6, v0

    .line 56
    .local v11, "scale":I
    add-int/lit8 v18, v0, -0x1

    shl-int v18, v1, v18

    xor-int v18, v15, v18

    .line 58
    .local v18, "lowBits":I
    add-int/lit8 v19, v6, -0x1

    shl-int v19, v1, v19

    add-int/lit8 v19, v19, -0x1

    .line 59
    .local v19, "i1":I
    shl-int v20, v18, v11

    add-int/lit8 v20, v20, 0x1

    .line 60
    .local v20, "i2":I
    ushr-int/lit8 v1, v19, 0x1

    aget-object v1, v16, v1

    ushr-int/lit8 v21, v20, 0x1

    move/from16 v22, v0

    .end local v0    # "highest":I
    .local v22, "highest":I
    aget-object v0, v16, v21

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 62
    .end local v9    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .local v0, "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    sub-int/2addr v14, v11

    .line 65
    .end local v11    # "scale":I
    .end local v18    # "lowBits":I
    .end local v19    # "i1":I
    .end local v20    # "i2":I
    .end local v22    # "highest":I
    goto :goto_1

    .line 68
    .end local v0    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .restart local v9    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    ushr-int/lit8 v0, v15, 0x1

    aget-object v0, v16, v0

    .line 71
    .end local v9    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .restart local v0    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_1
    invoke-virtual {v0, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .end local v0    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .restart local v9    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    goto :goto_2

    .line 41
    .end local v12    # "wi":I
    .end local v13    # "digit":I
    .end local v14    # "zeroes":I
    .end local v15    # "n":I
    .end local v16    # "table":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v17    # "minWidth":I
    .local v0, "minWidth":I
    :cond_2
    move/from16 v17, v0

    .line 74
    .end local v0    # "minWidth":I
    .restart local v17    # "minWidth":I
    :goto_2
    if-lez v10, :cond_4

    .line 76
    add-int/lit8 v10, v10, -0x1

    aget v0, v8, v10

    .line 77
    .local v0, "wi":I
    shr-int/lit8 v1, v0, 0x10

    const v11, 0xffff

    .local v1, "digit":I
    and-int v12, v0, v11

    .line 79
    .local v12, "zeroes":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 80
    .local v13, "n":I
    if-gez v1, :cond_3

    move-object v14, v5

    goto :goto_3

    :cond_3
    move-object v14, v4

    .line 81
    .local v14, "table":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_3
    ushr-int/lit8 v15, v13, 0x1

    aget-object v15, v14, v15

    .line 83
    .local v15, "r":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 84
    invoke-virtual {v9, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 85
    .end local v0    # "wi":I
    .end local v1    # "digit":I
    .end local v12    # "zeroes":I
    .end local v13    # "n":I
    .end local v14    # "table":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v15    # "r":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    goto :goto_2

    .line 87
    :cond_4
    return-object v9
.end method
