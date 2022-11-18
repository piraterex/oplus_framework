.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$28;
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

    .line 780
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 19

    .line 783
    const/16 v9, 0x11b

    .line 784
    .local v9, "m":I
    const/4 v10, 0x5

    .line 785
    .local v10, "k1":I
    const/4 v11, 0x7

    .line 786
    .local v11, "k2":I
    const/16 v12, 0xc

    .line 788
    .local v12, "k3":I
    sget-object v13, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 789
    .local v13, "a":Ljava/math/BigInteger;
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    .line 790
    .local v14, "b":Ljava/math/BigInteger;
    const/4 v15, 0x0

    .line 791
    .local v15, "S":[B
    const-string v0, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9AE2ED07577265DFF7F94451E061E163C61"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v16

    .line 792
    .local v16, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    .line 794
    .local v17, "h":Ljava/math/BigInteger;
    new-instance v18, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    move-object/from16 v0, v18

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static/range {v18 .. v18}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    .line 796
    .local v6, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v0, "040503213F78CA44883F1A3B8162F188E553CD265F23C1567A16876913B0C2AC245849283601CCDA380F1C9E318D90F95D07E5426FE87E45C0E8184698E45962364E34116177DD2259"

    invoke-static {v6, v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v7

    .line 800
    .local v7, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v0, v8

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8
.end method
