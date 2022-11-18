.class Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;
.super Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->createCacheSafeLookupTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/internal/org/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

.field final synthetic blacklist val$FE_LONGS:I

.field final synthetic blacklist val$ks:[I

.field final synthetic blacklist val$len:I

.field final synthetic blacklist val$table:[J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 1356
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    iput p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private blacklist createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "x"    # [J
    .param p2, "y"    # [J

    .line 1399
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    .line 1400
    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->-$$Nest$fgetm(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v4, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    .line 1401
    .local v1, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist getSize()I
    .locals 1

    .line 1359
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    return v0
.end method

.method public blacklist lookup(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 13
    .param p1, "index"    # I

    .line 1364
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .local v0, "x":[J
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1365
    .local v1, "y":[J
    const/4 v2, 0x0

    .line 1367
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    if-ge v3, v4, :cond_1

    .line 1369
    xor-int v4, v3, p1

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    int-to-long v4, v4

    .line 1371
    .local v4, "MASK":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v6, v7, :cond_0

    .line 1373
    aget-wide v8, v0, v6

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v11, v2, v6

    aget-wide v11, v10, v11

    and-long/2addr v11, v4

    xor-long/2addr v8, v11

    aput-wide v8, v0, v6

    .line 1374
    aget-wide v8, v1, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v6

    aget-wide v10, v10, v7

    and-long/2addr v10, v4

    xor-long v7, v8, v10

    aput-wide v7, v1, v6

    .line 1371
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1377
    .end local v6    # "j":I
    :cond_0
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v2, v7

    .line 1367
    .end local v4    # "MASK":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1380
    .end local v3    # "i":I
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public blacklist lookupVar(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 8
    .param p1, "index"    # I

    .line 1385
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .local v0, "x":[J
    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 1386
    .local v1, "y":[J
    iget v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    .line 1388
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v3, v4, :cond_0

    .line 1390
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v6, v2, v3

    aget-wide v6, v5, v6

    aput-wide v6, v0, v3

    .line 1391
    add-int/2addr v4, v2

    add-int/2addr v4, v3

    aget-wide v4, v5, v4

    aput-wide v4, v1, v3

    .line 1388
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1394
    .end local v3    # "j":I
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
