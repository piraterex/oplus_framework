.class public Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;
.source "RSAKeyGenerationParameters.java"


# instance fields
.field private blacklist certainty:I

.field private blacklist publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .locals 2
    .param p1, "publicExponent"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "strength"    # I
    .param p4, "certainty"    # I

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 26
    const/16 v0, 0xc

    if-lt p3, v0, :cond_1

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    .line 40
    iput p4, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    .line 41
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "public exponent cannot be even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key strength too small"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getCertainty()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->certainty:I

    return v0
.end method

.method public blacklist getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
