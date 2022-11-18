.class public Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# instance fields
.field blacklist q:Ljava/math/BigInteger;

.field blacklist r:Ljava/math/BigInteger;

.field blacklist x:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    .line 128
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "x"    # Ljava/math/BigInteger;

    .line 132
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 133
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    .line 139
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    .line 140
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .line 141
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid in Fp field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # Ljava/math/BigInteger;

    .line 111
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 112
    .local v0, "bitLength":I
    const/16 v1, 0x60

    if-lt v0, v1, :cond_0

    .line 114
    add-int/lit8 v1, v0, -0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 115
    .local v1, "firstWord":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 117
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    return-object v2

    .line 120
    .end local v1    # "firstWord":Ljava/math/BigInteger;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist checkSqrt(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "z"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 332
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private blacklist lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "P"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Ljava/math/BigInteger;
    .param p3, "k"    # Ljava/math/BigInteger;

    .line 342
    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 343
    .local v0, "n":I
    invoke-virtual {p3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    .line 347
    .local v1, "s":I
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 348
    .local v2, "Uh":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 349
    .local v3, "Vl":Ljava/math/BigInteger;
    move-object v4, p1

    .line 350
    .local v4, "Vh":Ljava/math/BigInteger;
    sget-object v5, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 351
    .local v5, "Ql":Ljava/math/BigInteger;
    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 353
    .local v6, "Qh":Ljava/math/BigInteger;
    add-int/lit8 v7, v0, -0x1

    .local v7, "j":I
    :goto_0
    add-int/lit8 v8, v1, 0x1

    const/4 v9, 0x1

    if-lt v7, v8, :cond_1

    .line 355
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 357
    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 359
    invoke-virtual {p0, v5, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 360
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 361
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 362
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_1

    .line 366
    :cond_0
    move-object v6, v5

    .line 367
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 368
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 369
    invoke-virtual {v3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 353
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 373
    .end local v7    # "j":I
    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 374
    invoke-virtual {p0, v5, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 375
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 376
    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 377
    invoke-virtual {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 379
    const/4 v7, 0x1

    .restart local v7    # "j":I
    :goto_2
    if-gt v7, v1, :cond_2

    .line 381
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 382
    invoke-virtual {v3, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 383
    invoke-virtual {p0, v5, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 379
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 386
    .end local v7    # "j":I
    :cond_2
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    return-object v7
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 170
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 176
    .local v0, "x2":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_0

    .line 178
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 180
    :cond_0
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 211
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 486
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 488
    return v0

    .line 491
    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 493
    return v2

    .line 496
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    .line 497
    .local v1, "o":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 1

    .line 155
    const-string v0, "Fp"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 243
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method protected blacklist modAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    .line 391
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 392
    .local v0, "x3":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 396
    :cond_0
    return-object v0
.end method

.method protected blacklist modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 401
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 402
    .local v0, "_2x":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 406
    :cond_0
    return-object v0
.end method

.method protected blacklist modHalf(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 415
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 420
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 424
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 429
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    .line 434
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 439
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    if-eqz v0, :cond_6

    .line 441
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 442
    .local v0, "negative":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 447
    .local v1, "qLen":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 448
    .local v2, "rIsOne":Z
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_3

    .line 450
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 451
    .local v3, "u":Ljava/math/BigInteger;
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 452
    .local v4, "v":Ljava/math/BigInteger;
    if-nez v2, :cond_2

    .line 454
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 456
    :cond_2
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 457
    .end local v3    # "u":Ljava/math/BigInteger;
    .end local v4    # "v":Ljava/math/BigInteger;
    goto :goto_1

    .line 458
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_4

    .line 460
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_2

    .line 462
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_5

    .line 464
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 466
    .end local v0    # "negative":Z
    .end local v1    # "qLen":I
    .end local v2    # "rIsOne":Z
    :cond_5
    goto :goto_3

    .line 469
    :cond_6
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 471
    :goto_3
    return-object p1
.end method

.method protected blacklist modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "x1"    # Ljava/math/BigInteger;
    .param p2, "x2"    # Ljava/math/BigInteger;

    .line 476
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 477
    .local v0, "x3":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 481
    :cond_0
    return-object v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 190
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .local v0, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .local v1, "bx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "xx":Ljava/math/BigInteger;
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 196
    .local v3, "yx":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 197
    .local v4, "ab":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 198
    .local v5, "xy":Ljava/math/BigInteger;
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 10
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 203
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .local v0, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .local v1, "bx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "xx":Ljava/math/BigInteger;
    invoke-virtual {p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 204
    .local v3, "yx":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 205
    .local v4, "ab":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 206
    .local v5, "xy":Ljava/math/BigInteger;
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v0
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 14

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->isZero()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 269
    .local v0, "e":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {v4, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1

    .line 272
    .end local v0    # "e":Ljava/math/BigInteger;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 275
    .local v0, "t1":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 276
    .local v1, "t2":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 278
    .local v2, "t3":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    return-object v3

    .line 284
    :cond_2
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v4, v3, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 286
    .local v3, "t4":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 288
    .local v4, "y":Ljava/math/BigInteger;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v5, v6, v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->checkSqrt(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    return-object v5

    .line 293
    .end local v0    # "t1":Ljava/math/BigInteger;
    .end local v1    # "t2":Ljava/math/BigInteger;
    .end local v2    # "t3":Ljava/math/BigInteger;
    .end local v3    # "t4":Ljava/math/BigInteger;
    .end local v4    # "y":Ljava/math/BigInteger;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 294
    .local v0, "legendreExponent":Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v3, v0, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 296
    return-object v4

    .line 299
    :cond_4
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .line 300
    .local v3, "X":Ljava/math/BigInteger;
    invoke-virtual {p0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modDouble(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 302
    .local v5, "fourX":Ljava/math/BigInteger;
    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .local v6, "k":Ljava/math/BigInteger;
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 305
    .local v7, "qMinusOne":Ljava/math/BigInteger;
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    .line 311
    .local v8, "rand":Ljava/util/Random;
    :cond_5
    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    invoke-direct {v9, v10, v8}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 313
    .local v9, "P":Ljava/math/BigInteger;
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_5

    .line 314
    invoke-virtual {v9, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v10, v0, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 316
    invoke-direct {p0, v9, v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->lucasSequence(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v10

    .line 317
    .local v10, "result":[Ljava/math/BigInteger;
    aget-object v11, v10, v1

    .line 318
    .local v11, "U":Ljava/math/BigInteger;
    aget-object v12, v10, v2

    .line 320
    .local v12, "V":Ljava/math/BigInteger;
    invoke-virtual {p0, v12, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 322
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {p0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modHalfAbs(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v1, v2, v4, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 325
    .end local v9    # "P":Ljava/math/BigInteger;
    .end local v10    # "result":[Ljava/math/BigInteger;
    :cond_6
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 327
    return-object v4

    .line 260
    .end local v0    # "legendreExponent":Ljava/math/BigInteger;
    .end local v3    # "X":Ljava/math/BigInteger;
    .end local v5    # "fourX":Ljava/math/BigInteger;
    .end local v6    # "k":Ljava/math/BigInteger;
    .end local v7    # "qMinusOne":Ljava/math/BigInteger;
    .end local v8    # "rand":Ljava/util/Random;
    .end local v11    # "U":Ljava/math/BigInteger;
    .end local v12    # "V":Ljava/math/BigInteger;
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "not done yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_8
    :goto_0
    return-object p0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 221
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modMult(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist squareMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 226
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .local v0, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .local v1, "xx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 227
    .local v2, "yx":Ljava/math/BigInteger;
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 228
    .local v3, "aa":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 229
    .local v4, "xy":Ljava/math/BigInteger;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v5
.end method

.method public blacklist squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 234
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    .local v0, "ax":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .local v1, "xx":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 235
    .local v2, "yx":Ljava/math/BigInteger;
    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 236
    .local v3, "aa":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 237
    .local v4, "xy":Ljava/math/BigInteger;
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v5
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 185
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->modSubtract(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->x:Ljava/math/BigInteger;

    return-object v0
.end method
