.class Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$11;
.super Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 12

    .line 248
    const-string v0, "010092537397ECA4F6145799D62B0A19CE06FE26AD"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 249
    .local v0, "n":Ljava/math/BigInteger;
    const-wide/32 v1, 0xff6e

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 251
    .local v10, "h":Ljava/math/BigInteger;
    new-instance v11, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 254
    const-string v1, "E4E6DB2995065C407D9D39B8D0967B96704BA8E9C90B"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 255
    const-string v1, "5DDA470ABE6414DE8EC133AE28E9BBD7FCEC0AE0FFF2"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v2, 0xb0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x2b

    move-object v1, v11

    move-object v8, v0

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 251
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 258
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v2, "038D16C2866798B600F9F08BB4A8E860F3298CE04A5798"

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 261
    .local v2, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-direct {v3, v1, v2, v0, v10}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method
