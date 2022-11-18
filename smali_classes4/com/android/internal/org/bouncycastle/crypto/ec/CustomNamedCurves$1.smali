.class Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$1;
.super Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, "S":[B
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "71169be7330b3038edb025f1"

    invoke-direct {v7, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x0

    aput-object v7, v8, v10

    new-instance v7, Ljava/math/BigInteger;

    const-string v11, "-b3fb3400dec5c4adceb8655c"

    invoke-direct {v7, v11, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x1

    aput-object v7, v8, v11

    new-array v5, v5, [Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v12, "12511cfe811d0f4e6bc688b4d"

    invoke-direct {v7, v12, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v10

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v11

    new-instance v10, Ljava/math/BigInteger;

    const-string v7, "71169be7330b3038edb025f1d0f9"

    invoke-direct {v10, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v7, "b3fb3400dec5c4adceb8655d4c94"

    invoke-direct {v11, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v12, 0xd0

    move-object v7, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    move-object v7, v0

    .line 207
    .local v7, "glv":Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP192K1Curve;-><init>()V

    invoke-static {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .line 208
    .local v8, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v0, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {v8, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v9

    .line 210
    .local v9, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v10, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    move-object v0, v10

    move-object v1, v8

    move-object v2, v9

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v10
.end method
