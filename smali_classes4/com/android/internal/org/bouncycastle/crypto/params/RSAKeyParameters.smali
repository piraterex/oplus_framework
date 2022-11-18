.class public Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "RSAKeyParameters.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;


# instance fields
.field private blacklist exponent:Ljava/math/BigInteger;

.field private blacklist modulus:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "isPrivate"    # Z
    .param p2, "modulus"    # Ljava/math/BigInteger;
    .param p3, "exponent"    # Ljava/math/BigInteger;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 34
    if-nez p1, :cond_1

    .line 36
    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA publicExponent is even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->validate(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    .line 43
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    .line 44
    return-void
.end method

.method private blacklist validate(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "modulus"    # Ljava/math/BigInteger;

    .line 48
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "com.android.internal.org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    return-object p1

    .line 60
    :cond_0
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    return-object p1

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus has a small prime factor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus is even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getExponent()Ljava/math/BigInteger;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method
