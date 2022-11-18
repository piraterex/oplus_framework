.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$22;
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

    .line 628
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 19

    .line 631
    const/16 v9, 0xa3

    .line 632
    .local v9, "m":I
    const/4 v10, 0x3

    .line 633
    .local v10, "k1":I
    const/4 v11, 0x6

    .line 634
    .local v11, "k2":I
    const/4 v12, 0x7

    .line 636
    .local v12, "k3":I
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 637
    .local v13, "a":Ljava/math/BigInteger;
    const-string v0, "020A601907B8C953CA1481EB10512F78744A3205FD"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v14

    .line 638
    .local v14, "b":Ljava/math/BigInteger;
    const-string v0, "85E25BFE5C86226CDB12016F7553F9D0E693A268"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v15

    .line 639
    .local v15, "S":[B
    const-string v0, "040000000000000000000292FE77E70C12A4234C33"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v16

    .line 640
    .local v16, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    .line 642
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

    move-result-object v0

    .line 644
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "0403F0EBA16286A2D57EA0991168D4994637E8343E3600D51FBC6C71A0094FA2CDD545B11C5C0C797324F1"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v7

    .line 647
    .local v7, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v8, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v1, v8

    move-object v2, v0

    move-object v3, v7

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8
.end method
