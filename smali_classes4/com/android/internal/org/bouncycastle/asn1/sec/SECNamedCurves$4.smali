.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$4;
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

    .line 124
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 18

    .line 128
    const-string v0, "FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 129
    .local v0, "p":Ljava/math/BigInteger;
    const-string v1, "D6031998D1B3BBFEBF59CC9BBFF9AEE1"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    .line 130
    .local v7, "a":Ljava/math/BigInteger;
    const-string v1, "5EEEFCA380D02919DC2C6558BB6D8A5D"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    .line 131
    .local v8, "b":Ljava/math/BigInteger;
    const-string v1, "004D696E67687561517512D8F03431FCE63B88F4"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v15

    .line 132
    .local v15, "S":[B
    const-string v1, "3FFFFFFF7FFFFFFFBE0024720613B5A3"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v16

    .line 133
    .local v16, "n":Ljava/math/BigInteger;
    const-wide/16 v1, 0x4

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    .line 135
    .local v17, "h":Ljava/math/BigInteger;
    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;

    move-object v1, v9

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 137
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v2, "047B6AA5D85E572983E6FB32A7CDEBC14027B6916A894D3AEE7106FE805FC34B44"

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 140
    .local v2, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-object v9, v3

    move-object v10, v1

    move-object v11, v2

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v3
.end method
