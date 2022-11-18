.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$12;
.super Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 18

    .line 362
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 363
    .local v0, "p":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 364
    .local v7, "a":Ljava/math/BigInteger;
    const-wide/16 v1, 0x7

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 365
    .local v8, "b":Ljava/math/BigInteger;
    const/4 v9, 0x0

    .line 366
    .local v9, "S":[B
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v10

    .line 367
    .local v10, "n":Ljava/math/BigInteger;
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 369
    .local v11, "h":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v6, 0x2

    new-array v13, v6, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v14, "3086d221a7d46bcde86c90e49284eb15"

    invoke-direct {v12, v14, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x0

    aput-object v12, v13, v15

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "-e4437ed6010e88286f547fa90abfe4c3"

    invoke-direct {v12, v15, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x1

    aput-object v12, v13, v15

    new-array v6, v6, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "114ca50f7a8e2f3f657c1108d9d44cfd8"

    invoke-direct {v12, v15, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x0

    aput-object v12, v6, v15

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v14, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v14, 0x1

    aput-object v12, v6, v14

    new-instance v15, Ljava/math/BigInteger;

    const-string v12, "3086d221a7d46bcde86c90e49284eb153dab"

    invoke-direct {v15, v12, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v12, "e4437ed6010e88286f547fa90abfe4c42212"

    invoke-direct {v14, v12, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v17, 0x110

    move-object v12, v5

    move-object v4, v14

    move-object v14, v6

    move-object/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    move-object v12, v1

    .line 383
    .local v12, "glv":Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v13, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    move-object v1, v13

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v13, v12}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v13

    .line 385
    .local v13, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8"

    invoke-static {v13, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v14

    .line 388
    .local v14, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v1, v15

    move-object v2, v13

    move-object v3, v14

    move-object v4, v10

    move-object v5, v11

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v15
.end method
