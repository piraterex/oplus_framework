.class public Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# static fields
.field public static final blacklist GNB:I = 0x1

.field public static final blacklist PPB:I = 0x3

.field public static final blacklist TPB:I = 0x2


# instance fields
.field private blacklist ks:[I

.field private blacklist m:I

.field private blacklist representation:I

.field blacklist x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;


# direct methods
.method public constructor blacklist <init>(IIIILjava/math/BigInteger;)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "x"    # Ljava/math/BigInteger;

    .line 651
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 652
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p5}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p1, :cond_3

    .line 657
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 659
    iput v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 660
    new-array v1, v1, [I

    aput p2, v1, v0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    goto :goto_0

    .line 664
    :cond_0
    if-ge p3, p4, :cond_2

    .line 669
    if-lez p3, :cond_1

    .line 674
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 675
    new-array v3, v3, [I

    aput p2, v3, v0

    aput p3, v3, v1

    aput p4, v3, v2

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 678
    :goto_0
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 679
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, p5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 680
    return-void

    .line 671
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be larger than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be smaller than k3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid in F2m field element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .param p3, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 683
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;-><init>()V

    .line 684
    iput p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 685
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 686
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 687
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 688
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 730
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 731
    .local v0, "iarrClone":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 732
    .local v1, "bF2m":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 733
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v2, v3, v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v2
.end method

.method public blacklist addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 738
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist bitLength()I
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public blacklist divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 785
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 786
    .local v0, "bInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "anObject"    # Ljava/lang/Object;

    .line 897
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 899
    return v0

    .line 902
    :cond_0
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 904
    return v2

    .line 907
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    .line 909
    .local v1, "b":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;
    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 911
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 912
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 909
    :goto_0
    return v0
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .locals 1

    .line 717
    const-string v0, "F2m"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    .line 722
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getK1()I
    .locals 2

    .line 870
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getK2()I
    .locals 3

    .line 881
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getK3()I
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getM()I
    .locals 1

    .line 857
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public blacklist getRepresentation()I
    .locals 1

    .line 848
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->representation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 917
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 830
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist isOne()Z
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 756
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-object v4, p1

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v4, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modMultiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 761
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist multiplyPlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 9
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 766
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v0, "ax":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v1, "bx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v2, "xx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v3, p3

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 768
    .local v3, "yx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v4

    .line 769
    .local v4, "ab":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v5

    .line 771
    .local v5, "xy":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-eq v4, v0, :cond_0

    if-ne v4, v1, :cond_1

    .line 773
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 776
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 777
    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 779
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v6, v7, v8, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v6
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 0

    .line 792
    return-object p0
.end method

.method public blacklist sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public blacklist square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4

    .line 797
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquare(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public blacklist squareMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 802
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist squarePlusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 8
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 807
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v0, "ax":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .local v1, "xx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    move-object v2, p2

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 809
    .local v2, "yx":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->square(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    .line 810
    .local v3, "aa":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    iget v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v4

    .line 812
    .local v4, "xy":Lcom/android/internal/org/bouncycastle/math/ec/LongArray;
    if-ne v3, v0, :cond_0

    .line 814
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    .line 817
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->addShiftedByWords(Lcom/android/internal/org/bouncycastle/math/ec/LongArray;I)V

    .line 818
    iget v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->reduce(I[I)V

    .line 820
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v5, v6, v7, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    return-object v5
.end method

.method public blacklist squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4
    .param p1, "pow"    # I

    .line 825
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modSquareN(II[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/internal/org/bouncycastle/math/ec/LongArray;)V

    :goto_0
    return-object v0
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist testBitZero()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
