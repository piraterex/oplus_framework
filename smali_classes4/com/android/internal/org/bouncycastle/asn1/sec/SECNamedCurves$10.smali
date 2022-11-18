.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$10;
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

    .line 296
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 18

    .line 300
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFE56D"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 301
    .local v0, "p":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 302
    .local v7, "a":Ljava/math/BigInteger;
    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 303
    .local v8, "b":Ljava/math/BigInteger;
    const/4 v9, 0x0

    .line 304
    .local v9, "S":[B
    const-string v1, "010000000000000000000000000001DCE8D2EC6184CAF0A971769FB1F7"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v10

    .line 305
    .local v10, "n":Ljava/math/BigInteger;
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 307
    .local v11, "h":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v6, 0x2

    new-array v13, v6, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v14, "6b8cf07d4ca75c88957d9d670591"

    invoke-direct {v12, v14, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x0

    aput-object v12, v13, v15

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "-b8adf1378a6eb73409fa6c9c637d"

    invoke-direct {v12, v15, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x1

    aput-object v12, v13, v15

    new-array v6, v6, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "1243ae1b4d71613bc9f780a03690e"

    invoke-direct {v12, v15, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x0

    aput-object v12, v6, v15

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v14, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v14, 0x1

    aput-object v12, v6, v14

    new-instance v15, Ljava/math/BigInteger;

    const-string v12, "6b8cf07d4ca75c88957d9d67059037a4"

    invoke-direct {v15, v12, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v12, "b8adf1378a6eb73409fa6c9c637ba7f5"

    invoke-direct {v14, v12, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v17, 0xf0

    move-object v12, v5

    move-object v4, v14

    move-object v14, v6

    move-object/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    move-object v12, v1

    .line 321
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

    .line 323
    .local v13, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    invoke-static {v13, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v14

    .line 326
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
