.class Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves$6;
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

    .line 304
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 10

    .line 307
    const-string v0, "C49D360886E704936A6678E1139D26B7819F7E90"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v0

    .line 308
    .local v0, "S":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Curve;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP256R1Curve;-><init>()V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    .line 309
    .local v7, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v1, "046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    invoke-static {v7, v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v8

    .line 311
    .local v8, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v9, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, v9

    move-object v2, v7

    move-object v3, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v9
.end method
