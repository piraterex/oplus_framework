.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$29;
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

    .line 808
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 19

    .line 811
    const/16 v9, 0x11b

    .line 812
    .local v9, "m":I
    const/4 v10, 0x5

    .line 813
    .local v10, "k1":I
    const/4 v11, 0x7

    .line 814
    .local v11, "k2":I
    const/16 v12, 0xc

    .line 816
    .local v12, "k3":I
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    .line 817
    .local v13, "a":Ljava/math/BigInteger;
    const-string v0, "027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v14

    .line 818
    .local v14, "b":Ljava/math/BigInteger;
    const-string v0, "77E2B07370EB0F832A6DD5B62DFC88CD06BB84BE"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v15

    .line 819
    .local v15, "S":[B
    const-string v0, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v16

    .line 820
    .local v16, "n":Ljava/math/BigInteger;
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    .line 822
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

    .line 824
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "0405F939258DB7DD90E1934F8C70B0DFEC2EED25B8557EAC9C80E2E198F8CDBECD86B1205303676854FE24141CB98FE6D4B20D02B4516FF702350EDDB0826779C813F0DF45BE8112F4"

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v7

    .line 828
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
