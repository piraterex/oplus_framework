.class Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final blacklist MINUS_ONE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_THREE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_TWO:Ljava/math/BigInteger;

.field public static final blacklist POW_2_WIDTH:B = 0x10t

.field public static final blacklist WIDTH:B = 0x4t

.field public static final blacklist alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha0Tnaf:[[B

.field public static final blacklist alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha1Tnaf:[[B


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 15
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 16
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 17
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 40
    const/16 v2, 0x9

    new-array v3, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v6, 0x2

    aput-object v5, v3, v6

    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v8, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x3

    aput-object v8, v3, v9

    const/4 v8, 0x4

    aput-object v5, v3, v8

    new-instance v10, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v10, v0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x5

    aput-object v10, v3, v11

    const/4 v10, 0x6

    aput-object v5, v3, v10

    new-instance v12, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v13, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v13, 0x7

    aput-object v12, v3, v13

    const/16 v12, 0x8

    aput-object v5, v3, v12

    sput-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 52
    new-array v3, v12, [[B

    aput-object v5, v3, v4

    new-array v14, v7, [B

    aput-byte v7, v14, v4

    aput-object v14, v3, v7

    aput-object v5, v3, v6

    new-array v14, v9, [B

    fill-array-data v14, :array_0

    aput-object v14, v3, v9

    aput-object v5, v3, v8

    new-array v14, v9, [B

    fill-array-data v14, :array_1

    aput-object v14, v3, v11

    aput-object v5, v3, v10

    new-array v14, v8, [B

    fill-array-data v14, :array_2

    aput-object v14, v3, v13

    sput-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 60
    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v2, v4

    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v14, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v3, v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v3, v2, v7

    aput-object v5, v2, v6

    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v14, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v3, v1, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v3, v2, v9

    aput-object v5, v2, v8

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v2, v11

    aput-object v5, v2, v10

    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v0, v2, v13

    aput-object v5, v2, v12

    sput-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 71
    new-array v0, v12, [[B

    aput-object v5, v0, v4

    new-array v1, v7, [B

    aput-byte v7, v1, v4

    aput-object v1, v0, v7

    aput-object v5, v0, v6

    new-array v1, v9, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v9

    aput-object v5, v0, v8

    new-array v1, v9, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v11

    aput-object v5, v0, v10

    new-array v1, v8, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "vm"    # Ljava/math/BigInteger;
    .param p3, "a"    # B
    .param p4, "m"    # I
    .param p5, "c"    # I

    .line 287
    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    .line 288
    .local v0, "_k":I
    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 290
    .local v1, "ns":Ljava/math/BigInteger;
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 292
    .local v2, "gs":Ljava/math/BigInteger;
    invoke-virtual {v2, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 294
    .local v3, "hs":Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 296
    .local v4, "js":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 297
    .local v5, "gsPlusJs":Ljava/math/BigInteger;
    sub-int v6, v0, p5

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 298
    .local v6, "ls":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 301
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 304
    :cond_0
    new-instance v7, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v6, p5}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static blacklist getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 6
    .param p0, "mu"    # B
    .param p1, "k"    # I
    .param p2, "doV"    # Z

    .line 450
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 461
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 462
    .local v1, "u0":Ljava/math/BigInteger;
    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "u1":Ljava/math/BigInteger;
    goto :goto_1

    .line 466
    .end local v1    # "u0":Ljava/math/BigInteger;
    .end local v2    # "u1":Ljava/math/BigInteger;
    :cond_2
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 467
    .restart local v1    # "u0":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 470
    .restart local v2    # "u1":Ljava/math/BigInteger;
    :goto_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, p1, :cond_4

    .line 473
    const/4 v4, 0x0

    .line 474
    .local v4, "s":Ljava/math/BigInteger;
    if-ne p0, v0, :cond_3

    .line 476
    move-object v4, v2

    goto :goto_3

    .line 481
    :cond_3
    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    .line 484
    :goto_3
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 485
    .local v5, "u2":Ljava/math/BigInteger;
    move-object v1, v2

    .line 486
    move-object v2, v5

    .line 470
    .end local v4    # "s":Ljava/math/BigInteger;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 491
    .end local v3    # "i":I
    .end local v5    # "u2":Ljava/math/BigInteger;
    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    move-object v0, v3

    .line 492
    .local v0, "retVal":[Ljava/math/BigInteger;
    return-object v0
.end method

.method public static blacklist getMu(I)B
    .locals 1
    .param p0, "curveA"    # I

    .line 431
    if-nez p0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)B
    .locals 2
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 411
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, -0x1

    return v0

    .line 421
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 413
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B
    .locals 1
    .param p0, "curveA"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist getPreComp(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 6
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "a"    # B

    .line 835
    if-nez p1, :cond_0

    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 837
    .local v0, "alphaTnaf":[[B
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 838
    .local v1, "pu":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 840
    array-length v2, v0

    .line 841
    .local v2, "precompLen":I
    const/4 v3, 0x3

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 843
    ushr-int/lit8 v4, v3, 0x1

    aget-object v5, v0, v3

    invoke-static {p0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    aput-object v5, v1, v4

    .line 841
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 846
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 848
    return-object v1
.end method

.method protected static blacklist getShiftsForCofactor(Ljava/math/BigInteger;)I
    .locals 2
    .param p0, "h"    # Ljava/math/BigInteger;

    .line 584
    if-eqz p0, :cond_1

    .line 586
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x1

    return v0

    .line 590
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    const/4 v0, 0x2

    return v0

    .line 596
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h (Cofactor) must be 2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 9
    .param p0, "fieldSize"    # I
    .param p1, "curveA"    # I
    .param p2, "cofactor"    # Ljava/math/BigInteger;

    .line 566
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v0

    .line 567
    .local v0, "mu":B
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v1

    .line 568
    .local v1, "shifts":I
    add-int/lit8 v2, p0, 0x3

    sub-int/2addr v2, p1

    .line 569
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v4

    .line 570
    .local v4, "ui":[Ljava/math/BigInteger;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 572
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v3

    .line 573
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v5

    .line 576
    :cond_0
    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 577
    .local v6, "dividend0":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 579
    .local v7, "dividend1":Ljava/math/BigInteger;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/math/BigInteger;

    aput-object v6, v8, v3

    aput-object v7, v8, v5

    return-object v8
.end method

.method public static blacklist getSi(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .locals 11
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 547
    .local v0, "m":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 548
    .local v1, "a":I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    .line 549
    .local v2, "mu":B
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v3

    .line 550
    .local v3, "shifts":I
    add-int/lit8 v4, v0, 0x3

    sub-int/2addr v4, v1

    .line 551
    .local v4, "index":I
    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v6

    .line 552
    .local v6, "ui":[Ljava/math/BigInteger;
    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 554
    aget-object v8, v6, v5

    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v6, v5

    .line 555
    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v6, v7

    .line 558
    :cond_0
    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 559
    .local v8, "dividend0":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v6, v5

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    .line 561
    .local v9, "dividend1":Ljava/math/BigInteger;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/math/BigInteger;

    aput-object v8, v10, v5

    aput-object v9, v10, v7

    return-object v10

    .line 543
    .end local v0    # "m":I
    .end local v1    # "a":I
    .end local v2    # "mu":B
    .end local v3    # "shifts":I
    .end local v4    # "index":I
    .end local v6    # "ui":[Ljava/math/BigInteger;
    .end local v8    # "dividend0":Ljava/math/BigInteger;
    .end local v9    # "dividend1":Ljava/math/BigInteger;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "si is defined for Koblitz curves only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getTw(BI)Ljava/math/BigInteger;
    .locals 5
    .param p0, "mu"    # B
    .param p1, "w"    # I

    .line 505
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 507
    if-ne p0, v0, :cond_0

    .line 509
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 514
    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 520
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v2

    .line 521
    .local v2, "us":[Ljava/math/BigInteger;
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 522
    .local v3, "twoToW":Ljava/math/BigInteger;
    aget-object v0, v2, v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 524
    .local v0, "u1invert":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v1, v2, v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 527
    .local v1, "tw":Ljava/math/BigInteger;
    return-object v1
.end method

.method public static blacklist multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 8
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "u"    # [B

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 699
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 700
    .local v1, "q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 701
    .local v2, "pNeg":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v3, 0x0

    .line 702
    .local v3, "tauCount":I
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 704
    add-int/lit8 v3, v3, 0x1

    .line 705
    aget-byte v5, p1, v4

    .line 706
    .local v5, "ui":B
    if-eqz v5, :cond_1

    .line 708
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    .line 709
    const/4 v3, 0x0

    .line 711
    if-lez v5, :cond_0

    move-object v6, p0

    goto :goto_1

    :cond_0
    move-object v6, v2

    .line 712
    .local v6, "x":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_1
    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    move-object v1, v7

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 702
    .end local v5    # "ui":B
    .end local v6    # "x":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 715
    .end local v4    # "i":I
    :cond_2
    if-lez v3, :cond_3

    .line 717
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    .line 719
    :cond_3
    return-object v1
.end method

.method public static blacklist multiplyRTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 11
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 658
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v7

    .line 659
    .local v7, "m":I
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    .line 660
    .local v8, "a":I
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v9

    .line 661
    .local v9, "mu":B
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v10

    .line 662
    .local v10, "s":[Ljava/math/BigInteger;
    int-to-byte v3, v8

    const/16 v6, 0xa

    move-object v1, p1

    move v2, v7

    move-object v4, v10

    move v5, v9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v1

    .line 664
    .local v1, "rho":Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 4
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 678
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 679
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B

    move-result v1

    .line 680
    .local v1, "mu":B
    invoke-static {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v2

    .line 682
    .local v2, "u":[B
    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    .line 684
    .local v3, "q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    return-object v3
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 5
    .param p0, "mu"    # B
    .param p1, "u"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "v"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    .line 130
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 133
    .local v0, "s1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 136
    .local v1, "s2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 138
    .local v2, "s3":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v3, :cond_0

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .local v3, "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_0

    .line 142
    .end local v3    # "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_0
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 151
    .restart local v3    # "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_0
    return-object v3

    .line 148
    .end local v3    # "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 88
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 91
    .local v0, "s1":Ljava/math/BigInteger;
    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 94
    .local v1, "s2":Ljava/math/BigInteger;
    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 96
    .local v2, "s3":Ljava/math/BigInteger;
    if-ne p0, v3, :cond_0

    .line 98
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .local v3, "norm":Ljava/math/BigInteger;
    goto :goto_0

    .line 100
    .end local v3    # "norm":Ljava/math/BigInteger;
    :cond_0
    const/4 v3, -0x1

    if-ne p0, v3, :cond_1

    .line 102
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 109
    .restart local v3    # "norm":Ljava/math/BigInteger;
    :goto_0
    return-object v3

    .line 106
    .end local v3    # "norm":Ljava/math/BigInteger;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .locals 14
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "m"    # I
    .param p2, "a"    # B
    .param p3, "s"    # [Ljava/math/BigInteger;
    .param p4, "mu"    # B
    .param p5, "c"    # B

    .line 617
    move/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 619
    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .local v3, "d0":Ljava/math/BigInteger;
    goto :goto_0

    .line 623
    .end local v3    # "d0":Ljava/math/BigInteger;
    :cond_0
    aget-object v3, p3, v1

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 626
    .restart local v3    # "d0":Ljava/math/BigInteger;
    :goto_0
    move v10, p1

    invoke-static {v0, p1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v11

    .line 627
    .local v11, "v":[Ljava/math/BigInteger;
    aget-object v12, v11, v2

    .line 629
    .local v12, "vm":Ljava/math/BigInteger;
    aget-object v5, p3, v1

    move-object v4, p0

    move-object v6, v12

    move/from16 v7, p2

    move v8, p1

    move/from16 v9, p5

    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v13

    .line 632
    .local v13, "lambda0":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    aget-object v5, p3, v2

    invoke-static/range {v4 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 635
    .local v4, "lambda1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-static {v13, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v5

    .line 638
    .local v5, "q":Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object v7, p0

    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    const-wide/16 v8, 0x2

    .line 639
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    aget-object v9, p3, v2

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v9, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 638
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 642
    .local v6, "r0":Ljava/math/BigInteger;
    aget-object v2, p3, v2

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v1, p3, v1

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 644
    .local v1, "r1":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public static blacklist round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .locals 17
    .param p0, "lambda0"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p1, "lambda1"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "mu"    # B

    .line 170
    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    .line 171
    .local v1, "scale":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 177
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mu must be 1 or -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 183
    .local v3, "f0":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v4

    .line 185
    .local v4, "f1":Ljava/math/BigInteger;
    move-object/from16 v5, p0

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v6

    .line 186
    .local v6, "eta0":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 189
    .local v8, "eta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v6}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 190
    .local v9, "eta":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne v0, v2, :cond_2

    .line 192
    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 202
    :goto_1
    invoke-virtual {v8, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 203
    .local v10, "threeEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v10, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    .line 206
    .local v11, "fourEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne v0, v2, :cond_3

    .line 208
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 209
    .local v2, "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    .local v12, "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_2

    .line 214
    .end local v2    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v12    # "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_3
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 215
    .restart local v2    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    .line 218
    .restart local v12    # "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_2
    const/4 v13, 0x0

    .line 219
    .local v13, "h0":B
    const/4 v14, 0x0

    .line 222
    .local v14, "h1":B
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_5

    .line 224
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_4

    .line 226
    move/from16 v14, p2

    goto :goto_3

    .line 230
    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    .line 236
    :cond_5
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_6

    .line 238
    move/from16 v14, p2

    .line 243
    :cond_6
    :goto_3
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_8

    .line 245
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_7

    .line 247
    neg-int v15, v0

    int-to-byte v14, v15

    goto :goto_4

    .line 251
    :cond_7
    const/4 v13, -0x1

    goto :goto_4

    .line 257
    :cond_8
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_9

    .line 259
    neg-int v15, v0

    int-to-byte v14, v15

    .line 263
    :cond_9
    :goto_4
    move v15, v1

    .end local v1    # "scale":I
    .local v15, "scale":I
    int-to-long v0, v13

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 264
    .local v0, "q0":Ljava/math/BigInteger;
    move-object/from16 v16, v2

    .end local v2    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local v16, "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    int-to-long v1, v14

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 265
    .local v1, "q1":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 173
    .end local v0    # "q0":Ljava/math/BigInteger;
    .end local v3    # "f0":Ljava/math/BigInteger;
    .end local v4    # "f1":Ljava/math/BigInteger;
    .end local v6    # "eta0":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v8    # "eta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9    # "eta":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "threeEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v11    # "fourEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v12    # "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v13    # "h0":B
    .end local v14    # "h1":B
    .end local v15    # "scale":I
    .end local v16    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local v1, "scale":I
    :cond_a
    move v15, v1

    .end local v1    # "scale":I
    .restart local v15    # "scale":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist tau(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tau()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 13
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 317
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v1

    .line 325
    .local v1, "norm":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 328
    .local v2, "log2Norm":I
    const/16 v3, 0x1e

    if-le v2, v3, :cond_2

    add-int/lit8 v3, v2, 0x4

    goto :goto_1

    :cond_2
    const/16 v3, 0x22

    .line 331
    .local v3, "maxLength":I
    :goto_1
    new-array v4, v3, [B

    .line 332
    .local v4, "u":[B
    const/4 v5, 0x0

    .line 335
    .local v5, "i":I
    const/4 v6, 0x0

    .line 337
    .local v6, "length":I
    iget-object v7, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 338
    .local v7, "r0":Ljava/math/BigInteger;
    iget-object v8, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 340
    .local v8, "r1":Ljava/math/BigInteger;
    :goto_2
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    .line 380
    :cond_3
    add-int/2addr v6, v0

    .line 383
    new-array v0, v6, [B

    .line 384
    .local v0, "tnaf":[B
    invoke-static {v4, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    return-object v0

    .line 343
    .end local v0    # "tnaf":[B
    :cond_4
    :goto_3
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 345
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    .line 348
    aget-byte v9, v4, v5

    if-ne v9, v0, :cond_5

    .line 350
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_4

    .line 355
    :cond_5
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 357
    :goto_4
    move v6, v5

    goto :goto_5

    .line 361
    :cond_6
    aput-byte v10, v4, v5

    .line 364
    :goto_5
    move-object v9, v7

    .line 365
    .local v9, "t":Ljava/math/BigInteger;
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 366
    .local v10, "s":Ljava/math/BigInteger;
    if-ne p0, v0, :cond_7

    .line 368
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_6

    .line 373
    :cond_7
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 376
    :goto_6
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    .line 377
    nop

    .end local v9    # "t":Ljava/math/BigInteger;
    .end local v10    # "s":Ljava/math/BigInteger;
    add-int/lit8 v5, v5, 0x1

    .line 378
    goto :goto_2
.end method

.method public static blacklist tauAdicWNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .locals 16
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .param p2, "width"    # B
    .param p3, "pow2w"    # Ljava/math/BigInteger;
    .param p4, "tw"    # Ljava/math/BigInteger;
    .param p5, "alpha"    # [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 739
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 741
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 744
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 747
    .local v4, "norm":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    .line 750
    .local v5, "log2Norm":I
    const/16 v6, 0x1e

    if-le v5, v6, :cond_2

    add-int/lit8 v6, v5, 0x4

    add-int v6, v6, p2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, p2, 0x22

    .line 753
    .local v6, "maxLength":I
    :goto_1
    new-array v7, v6, [B

    .line 756
    .local v7, "u":[B
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 759
    .local v8, "pow2wMin1":Ljava/math/BigInteger;
    iget-object v9, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 760
    .local v9, "r0":Ljava/math/BigInteger;
    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 761
    .local v10, "r1":Ljava/math/BigInteger;
    const/4 v11, 0x0

    .line 764
    .local v11, "i":I
    :goto_2
    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_3

    .line 824
    :cond_3
    return-object v7

    .line 767
    :cond_4
    :goto_3
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 770
    nop

    .line 771
    move-object/from16 v13, p4

    invoke-virtual {v10, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 775
    .local v12, "uUnMod":Ljava/math/BigInteger;
    invoke-virtual {v12, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v14

    if-ltz v14, :cond_5

    .line 777
    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    int-to-byte v14, v14

    .local v14, "uLocal":B
    goto :goto_4

    .line 781
    .end local v14    # "uLocal":B
    :cond_5
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    int-to-byte v14, v14

    .line 785
    .restart local v14    # "uLocal":B
    :goto_4
    aput-byte v14, v7, v11

    .line 786
    const/4 v15, 0x1

    .line 787
    .local v15, "s":Z
    if-gez v14, :cond_6

    .line 789
    const/4 v15, 0x0

    .line 790
    neg-int v3, v14

    int-to-byte v14, v3

    .line 794
    :cond_6
    if-eqz v15, :cond_7

    .line 796
    aget-object v3, p5, v14

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 797
    .end local v9    # "r0":Ljava/math/BigInteger;
    .local v3, "r0":Ljava/math/BigInteger;
    aget-object v9, p5, v14

    iget-object v9, v9, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    move-object v10, v9

    move-object v9, v3

    .end local v10    # "r1":Ljava/math/BigInteger;
    .local v9, "r1":Ljava/math/BigInteger;
    goto :goto_5

    .line 801
    .end local v3    # "r0":Ljava/math/BigInteger;
    .local v9, "r0":Ljava/math/BigInteger;
    .restart local v10    # "r1":Ljava/math/BigInteger;
    :cond_7
    aget-object v3, p5, v14

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 802
    .end local v9    # "r0":Ljava/math/BigInteger;
    .restart local v3    # "r0":Ljava/math/BigInteger;
    aget-object v9, p5, v14

    iget-object v9, v9, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    move-object v10, v9

    move-object v9, v3

    .line 804
    .end local v3    # "r0":Ljava/math/BigInteger;
    .end local v12    # "uUnMod":Ljava/math/BigInteger;
    .end local v14    # "uLocal":B
    .end local v15    # "s":Z
    .restart local v9    # "r0":Ljava/math/BigInteger;
    :goto_5
    goto :goto_6

    .line 807
    :cond_8
    move-object/from16 v13, p4

    aput-byte v12, v7, v11

    .line 810
    :goto_6
    move-object v3, v9

    .line 812
    .local v3, "t":Ljava/math/BigInteger;
    const/4 v12, 0x1

    if-ne v0, v12, :cond_9

    .line 814
    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_7

    .line 819
    :cond_9
    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 821
    :goto_7
    invoke-virtual {v3, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v10

    .line 822
    nop

    .end local v3    # "t":Ljava/math/BigInteger;
    add-int/lit8 v11, v11, 0x1

    .line 823
    move v3, v12

    goto/16 :goto_2
.end method
