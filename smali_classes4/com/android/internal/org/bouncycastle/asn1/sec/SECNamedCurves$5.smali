.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$5;
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

    .line 148
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 18

    .line 152
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 153
    .local v0, "p":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 154
    .local v7, "a":Ljava/math/BigInteger;
    const-wide/16 v1, 0x7

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 155
    .local v8, "b":Ljava/math/BigInteger;
    const/4 v9, 0x0

    .line 156
    .local v9, "S":[B
    const-string v1, "0100000000000000000001B8FA16DFAB9ACA16B6B3"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v10

    .line 157
    .local v10, "n":Ljava/math/BigInteger;
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    .line 159
    .local v11, "h":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "9ba48cba5ebcb9b6bd33b92830b2a2e0e192f10a"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "c39c6c3b3a36d7701b9c71a1f5804ae5d0003f4"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;

    const/4 v6, 0x2

    new-array v13, v6, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v14, "9162fbe73984472a0a9e"

    invoke-direct {v12, v14, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x0

    aput-object v12, v13, v15

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "-96341f1138933bc2f505"

    invoke-direct {v12, v15, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x1

    aput-object v12, v13, v15

    new-array v6, v6, [Ljava/math/BigInteger;

    new-instance v12, Ljava/math/BigInteger;

    const-string v15, "127971af8721782ecffa3"

    invoke-direct {v12, v15, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v15, 0x0

    aput-object v12, v6, v15

    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v14, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v14, 0x1

    aput-object v12, v6, v14

    new-instance v15, Ljava/math/BigInteger;

    const-string v12, "9162fbe73984472a0a9d0590"

    invoke-direct {v15, v12, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v14, Ljava/math/BigInteger;

    const-string v12, "96341f1138933bc2f503fd44"

    invoke-direct {v14, v12, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v17, 0xb0

    move-object v12, v5

    move-object v4, v14

    move-object v14, v6

    move-object/from16 v16, v4

    invoke-direct/range {v12 .. v17}, Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    move-object v12, v1

    .line 173
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

    .line 175
    .local v13, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "043B4C382CE37AA192A4019E763036F4F5DD4D7EBB938CF935318FDCED6BC28286531733C3F03C4FEE"

    invoke-static {v13, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v14

    .line 178
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
