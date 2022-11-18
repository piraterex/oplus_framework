.class Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$FE_BYTES:I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[B


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;II[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 485
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "x"    # [B
    .param p2, "y"    # [B

    .line 528
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getSize()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "index"    # I

    .line 493
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v0, [B

    .local v1, "x":[B
    new-array v0, v0, [B

    .line 494
    .local v0, "y":[B
    const/4 v2, 0x0

    .line 496
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$len:I

    if-ge v3, v4, :cond_1

    .line 498
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    .line 500
    .local v4, "MASK":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v5, v6, :cond_0

    .line 502
    aget-byte v7, v1, v5

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v9, v2, v5

    aget-byte v9, v8, v9

    and-int/2addr v9, v4

    xor-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    .line 503
    aget-byte v7, v0, v5

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    aget-byte v6, v8, v6

    and-int/2addr v6, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 500
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 506
    .end local v5    # "j":I
    :cond_0
    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    .line 496
    .end local v4    # "MASK":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "index"    # I

    .line 514
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v0, [B

    .local v1, "x":[B
    new-array v2, v0, [B

    .line 515
    .local v2, "y":[B
    mul-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    .line 517
    .local v0, "pos":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v3, v4, :cond_0

    .line 519
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v6, v0, v3

    aget-byte v6, v5, v6

    aput-byte v6, v1, v3

    .line 520
    add-int/2addr v4, v0

    add-int/2addr v4, v3

    aget-byte v4, v5, v4

    aput-byte v4, v2, v3

    .line 517
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    .end local v3    # "j":I
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
