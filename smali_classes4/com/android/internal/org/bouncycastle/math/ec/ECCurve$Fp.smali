.class public Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# static fields
.field private static final blacklist FP_DEFAULT_COORDS:I = 0x4


# instance fields
.field blacklist infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

.field blacklist q:Ljava/math/BigInteger;

.field blacklist r:Ljava/math/BigInteger;


# direct methods
.method protected constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "a"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;

    .line 709
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 711
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 712
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 713
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 715
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 716
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 717
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    .line 718
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    .line 719
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    .line 720
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    .line 689
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 690
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "order"    # Ljava/math/BigInteger;
    .param p5, "cofactor"    # Ljava/math/BigInteger;

    .line 694
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 696
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    .line 697
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    .line 698
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    .line 700
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 701
    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 702
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    .line 703
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    .line 704
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    .line 705
    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .locals 8

    .line 724
    new-instance v7, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v7
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 758
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 763
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 753
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public blacklist getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 768
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->getCoordinateSystem()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 775
    :pswitch_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 776
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 777
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 778
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 775
    return-object v0

    .line 784
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractFp;->importPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .line 729
    packed-switch p1, :pswitch_data_0

    .line 737
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 735
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
