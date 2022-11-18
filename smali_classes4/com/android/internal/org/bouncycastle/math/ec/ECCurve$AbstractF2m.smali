.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# instance fields
.field private blacklist si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor blacklist <init>(IIII)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I

    .line 842
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->buildField(IIII)Lcom/android/internal/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/internal/org/bouncycastle/math/field/FiniteField;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    .line 843
    return-void
.end method

.method private static blacklist buildField(IIII)Lcom/android/internal/org/bouncycastle/math/field/FiniteField;
    .locals 5
    .param p0, "m"    # I
    .param p1, "k1"    # I
    .param p2, "k2"    # I
    .param p3, "k3"    # I

    .line 812
    if-eqz p1, :cond_4

    .line 817
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 819
    if-nez p3, :cond_0

    .line 824
    new-array v2, v2, [I

    aput v3, v2, v3

    aput p1, v2, v1

    aput p0, v2, v0

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;

    move-result-object v0

    return-object v0

    .line 821
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_1
    if-le p2, p1, :cond_3

    .line 832
    if-le p3, p2, :cond_2

    .line 837
    const/4 v4, 0x5

    new-array v4, v4, [I

    aput v3, v4, v3

    aput p1, v4, v1

    aput p2, v4, v0

    aput p3, v4, v2

    const/4 v0, 0x4

    aput p0, v4, v0

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/internal/org/bouncycastle/math/field/PolynomialExtensionField;

    move-result-object v0

    return-object v0

    .line 834
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist implRandomFieldElementMult(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "m"    # I

    .line 1055
    :goto_0
    invoke-static {p1, p0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1057
    .local v0, "x":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    .line 1058
    return-object v0

    .line 1057
    :cond_0
    goto :goto_0
.end method

.method public static blacklist inverse(I[ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "m"    # I
    .param p1, "ks"    # [I
    .param p2, "x"    # Ljava/math/BigInteger;

    .line 800
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/internal/org/bouncycastle/math/ec/LongArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 849
    .local v1, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCoordinateSystem()I

    move-result v2

    .line 851
    .local v2, "coord":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 856
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 858
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 860
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 877
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 879
    nop

    .line 887
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .line 924
    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "x":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x0

    .line 925
    .local v1, "y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_1

    .line 931
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 932
    .local v2, "beta":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 933
    .local v3, "z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v3, :cond_3

    .line 935
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eq v4, v5, :cond_2

    .line 937
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 940
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCoordinateSystem()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 950
    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_1

    .line 945
    :pswitch_0
    invoke-virtual {v3, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 957
    .end local v2    # "beta":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 962
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->createRawPoint(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 959
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid point compression"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized blacklist getSi()[Ljava/math/BigInteger;
    .locals 1

    monitor-enter p0

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 1036
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    .line 1038
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1033
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist isKoblitz()Z
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->order:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->cofactor:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->b:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->a:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 892
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 898
    .local v0, "m":I
    invoke-static {v0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    return-object v1
.end method

.method public blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 4
    .param p1, "r"    # Ljava/security/SecureRandom;

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 908
    .local v0, "m":I
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->implRandomFieldElementMult(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 909
    .local v1, "fe1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->implRandomFieldElementMult(Ljava/security/SecureRandom;I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 910
    .local v2, "fe2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    return-object v3
.end method

.method protected blacklist solveQuadraticEquation(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 13
    .param p1, "beta"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 976
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    .line 978
    .local v0, "betaF2m":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->hasFastTrace()Z

    move-result v1

    .line 979
    .local v1, "fastTrace":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v3

    if-eqz v3, :cond_0

    .line 981
    return-object v2

    .line 984
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v3

    .line 987
    .local v3, "m":I
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_3

    .line 989
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->halfTrace()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 990
    .local v4, "r":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v1, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 994
    :cond_1
    return-object v2

    .line 992
    :cond_2
    :goto_0
    return-object v4

    .line 997
    .end local v4    # "r":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 999
    return-object p1

    .line 1002
    :cond_4
    sget-object v4, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1004
    .local v4, "zeroElement":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 1007
    .local v5, "rand":Ljava/util/Random;
    :goto_1
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v3, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1008
    .local v6, "t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v7, v4

    .line 1009
    .local v7, "z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v8, p1

    .line 1010
    .local v8, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2
    if-ge v9, v3, :cond_5

    .line 1012
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1013
    .local v10, "w2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v10, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1014
    invoke-virtual {v10, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1010
    .end local v10    # "w2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1016
    .end local v9    # "i":I
    :cond_5
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1018
    return-object v2

    .line 1020
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1022
    .end local v8    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "gamma":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1024
    return-object v7

    .line 1022
    :cond_7
    goto :goto_1
.end method
