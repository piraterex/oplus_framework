.class public Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final blacklist beta:Ljava/math/BigInteger;

.field protected final blacklist lambda:Ljava/math/BigInteger;

.field protected final blacklist splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V
    .locals 0
    .param p1, "beta"    # Ljava/math/BigInteger;
    .param p2, "lambda"    # Ljava/math/BigInteger;
    .param p3, "splitParams"    # Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    .line 28
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    .line 29
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 7
    .param p1, "beta"    # Ljava/math/BigInteger;
    .param p2, "lambda"    # Ljava/math/BigInteger;
    .param p3, "v1"    # [Ljava/math/BigInteger;
    .param p4, "v2"    # [Ljava/math/BigInteger;
    .param p5, "g1"    # Ljava/math/BigInteger;
    .param p6, "g2"    # Ljava/math/BigInteger;
    .param p7, "bits"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    .line 21
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    .line 22
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist getBeta()Ljava/math/BigInteger;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getBits()I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getBits()I

    move-result v0

    return v0
.end method

.method public blacklist getG1()Ljava/math/BigInteger;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getG2()Ljava/math/BigInteger;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLambda()Ljava/math/BigInteger;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->splitParams:Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    return-object v0
.end method

.method public blacklist getV1A()Ljava/math/BigInteger;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV1A()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getV1B()Ljava/math/BigInteger;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV1B()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getV2A()Ljava/math/BigInteger;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV2A()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getV2B()Ljava/math/BigInteger;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getSplitParams()Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV2B()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
