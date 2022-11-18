.class Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves$20;
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

    .line 434
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist createParameters()Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    .locals 12

    .line 437
    const-string v0, "0101D556572AABAC800101D556572AABAC8001022D5C91DD173F8FB561DA6899164443051D"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    .line 438
    .local v0, "n":Ljava/math/BigInteger;
    const-wide/32 v1, 0xfe2e

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 440
    .local v10, "h":Ljava/math/BigInteger;
    new-instance v11, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;

    .line 443
    const-string v1, "FD0D693149A118F651E6DCE6802085377E5F882D1B510B44160074C1288078365A0396C8E681"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 444
    const-string v1, "BDDB97E555A50A908E43B01C798EA5DAA6788F1EA2794EFCF57166B8C14039601E55827340BE"

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smfromHex(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v2, 0x130

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0xb

    move-object v1, v11

    move-object v8, v0

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 440
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureCurve(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 447
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    const-string v2, "02197B07845E9BE2D96ADB0F5F3C7F2CFFBD7A3EB8B6FEC35C7FD67F26DDF6285A644F740A2614"

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X962NamedCurves;->-$$Nest$smconfigureBasepoint(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    .line 450
    .local v2, "G":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;
    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    invoke-direct {v3, v1, v2, v0, v10}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v3
.end method
