.class public Lcom/android/internal/org/bouncycastle/jce/provider/DHUtil;
.super Ljava/lang/Object;
.source "DHUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 42
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p0

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 46
    .local v0, "k":Ljavax/crypto/interfaces/DHPrivateKey;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 47
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    .line 46
    return-object v1

    .line 50
    .end local v0    # "k":Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify DH private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 27
    instance-of v0, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 31
    .local v0, "k":Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 32
    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V

    .line 31
    return-object v1

    .line 35
    .end local v0    # "k":Ljavax/crypto/interfaces/DHPublicKey;
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify DH public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
