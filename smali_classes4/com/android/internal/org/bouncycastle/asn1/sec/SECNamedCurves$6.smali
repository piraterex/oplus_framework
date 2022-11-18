.class Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves$6;
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

    .line 186
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 18

    .line 190
    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFF"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 191
    .local v0, "p":Ljava/math/BigInteger;
    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFFC"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    .line 192
    .local v7, "a":Ljava/math/BigInteger;
    const-string v1, "1C97BEFC54BD7A8B65ACF89F81D4D4ADC565FA45"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v8

    .line 193
    .local v8, "b":Ljava/math/BigInteger;
    const-string v1, "1053CDE42C14D696E67687561517533BF3F83345"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v15

    .line 194
    .local v15, "S":[B
    const-string v1, "0100000000000000000001F4C8F927AED3CA752257"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v16

    .line 195
    .local v16, "n":Ljava/math/BigInteger;
    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    .line 197
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

    .line 199
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v2, "044A96B5688EF573284664698968C38BB913CBFC8223A628553168947D59DCC912042351377AC5FB32"

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/sec/SECNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 202
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
