.class Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$3;
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

    .line 233
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 13

    .line 236
    const/4 v6, 0x0

    .line 237
    .local v6, "S":[B
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "6b8cf07d4ca75c88957d9d670591"

    invoke-direct {v7, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x0

    aput-object v7, v8, v10

    new-instance v7, Ljava/math/BigInteger;

    const-string v11, "-b8adf1378a6eb73409fa6c9c637d"

    invoke-direct {v7, v11, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v11, 0x1

    aput-object v7, v8, v11

    new-array v5, v5, [Ljava/math/BigInteger;

    new-instance v7, Ljava/math/BigInteger;

    const-string v12, "1243ae1b4d71613bc9f780a03690e"

    invoke-direct {v7, v12, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v10

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v11

    new-instance v10, Ljava/math/BigInteger;

    const-string v7, "6b8cf07d4ca75c88957d9d67059037a4"

    invoke-direct {v10, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v7, "b8adf1378a6eb73409fa6c9c637ba7f5"

    invoke-direct {v11, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v12, 0xf0

    move-object v7, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    move-object v7, v0

    .line 250
    .local v7, "glv":Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;-><init>()V

    invoke-static {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureCurveGLV(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .line 251
    .local v8, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v0, "04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    invoke-static {v8, v0}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v9

    .line 253
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
