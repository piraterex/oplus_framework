.class public Landroid/security/keystore2/AndroidKeyStoreKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "AndroidKeyStoreKeyFactorySpi.java"


# instance fields
.field private final blacklist mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 42
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreKeyFactorySpi;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "spec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To generate a key pair in Android Keystore, use KeyPairGenerator initialized with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    .line 130
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 47
    .local p2, "keySpecClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_f

    .line 49
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    const-string v1, "Unsupported key type: "

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". This KeyFactory supports only Android Keystore asymmetric keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    :goto_0
    if-eqz p2, :cond_e

    .line 60
    const-class v0, Landroid/security/keystore/KeyInfo;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_2

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    .line 68
    .local v0, "keystorePrivateKey":Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreSecretKeyFactorySpi;->getKeyInfo(Landroid/security/keystore2/AndroidKeyStoreKey;)Landroid/security/keystore/KeyInfo;

    move-result-object v1

    .line 69
    .local v1, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 62
    .end local v0    # "keystorePrivateKey":Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". KeyInfo can be obtained only for Android Keystore private keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_4

    .line 78
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 79
    .local v0, "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v0

    .line 72
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". X509EncodedKeySpec can be obtained only for Android Keystore public keys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_5
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_6

    .line 82
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Key material export of Android Keystore private keys is not supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_6
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Cannot export key material of public key in PKCS#8 format. Only X.509 format (X509EncodedKeySpec) supported for public keys."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_7
    const-class v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " key"

    const-string/jumbo v2, "private"

    const-string/jumbo v3, "public"

    const-string v4, " "

    if-eqz v0, :cond_a

    .line 90
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;

    if-eqz v0, :cond_8

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;

    .line 93
    .local v0, "rsaKey":Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 94
    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 95
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 97
    .end local v0    # "rsaKey":Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_8
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Obtaining RSAPublicKeySpec not supported for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 98
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    instance-of v5, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v5, :cond_9

    goto :goto_1

    :cond_9
    move-object v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_a
    const-class v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;

    if-eqz v0, :cond_b

    .line 104
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;

    .line 106
    .local v0, "ecKey":Landroid/security/keystore2/AndroidKeyStoreECPublicKey;
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 107
    .restart local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    return-object v1

    .line 109
    .end local v0    # "ecKey":Landroid/security/keystore2/AndroidKeyStoreECPublicKey;
    .end local v1    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_b
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Obtaining ECPublicKeySpec not supported for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 110
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    instance-of v5, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    move-object v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_d
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_e
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "keySpecClass == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_f
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 135
    if-eqz p1, :cond_2

    .line 137
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "To import a key into Android Keystore, use KeyStore.setEntry"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    :goto_0
    return-object p1

    .line 136
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
