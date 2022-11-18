.class public Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;
.source "RSAPrivateCrtKeyParameters.java"


# instance fields
.field private blacklist dP:Ljava/math/BigInteger;

.field private blacklist dQ:Ljava/math/BigInteger;

.field private blacklist e:Ljava/math/BigInteger;

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist qInv:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "publicExponent"    # Ljava/math/BigInteger;
    .param p3, "privateExponent"    # Ljava/math/BigInteger;
    .param p4, "p"    # Ljava/math/BigInteger;
    .param p5, "q"    # Ljava/math/BigInteger;
    .param p6, "dP"    # Ljava/math/BigInteger;
    .param p7, "dQ"    # Ljava/math/BigInteger;
    .param p8, "qInv"    # Ljava/math/BigInteger;

    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 34
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    .line 35
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    .line 36
    iput-object p5, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    .line 37
    iput-object p6, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    .line 38
    iput-object p7, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    .line 39
    iput-object p8, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getDP()Ljava/math/BigInteger;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getDQ()Ljava/math/BigInteger;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->dQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getQInv()Ljava/math/BigInteger;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->qInv:Ljava/math/BigInteger;

    return-object v0
.end method
