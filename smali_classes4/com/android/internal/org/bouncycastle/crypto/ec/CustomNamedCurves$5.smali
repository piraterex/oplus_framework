.class Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$5;
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

    .line 276
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    .line 279
    const/4 v6, 0x0

    .line 280
    .local v6, "S":[B
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "3086d221a7d46bcde86c90e49284eb15"

    invoke-direct {v7, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x0

    aput-object v7, v8, v10

    new-instance v7, Ljava/math/BigInteger;

    const-string v11, "-e4437ed6010e88286f547fa90abfe4c3"

    invoke-direct {v7, v11, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x1

    aput-object v7, v8, v11

    new-array v5, v5, [Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v12, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    invoke-direct {v7, v12, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v10

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v11

    new-instance v10, Ljava/math/BigInteger;

    const-string v7, "3086d221a7d46bcde86c90e49284eb153dab"

    invoke-direct {v10, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v7, "e4437ed6010e88286f547fa90abfe4c42212"

    invoke-direct {v11, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v12, 0x110

    move-object v7, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    move-object v7, v0

    .line 293
    .local v7, "glv":Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;-><init>()V

    invoke-static {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .line 294
    .local v8, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v0, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    invoke-static {v8, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v9

    .line 296
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
